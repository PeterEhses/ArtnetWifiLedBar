
#if defined(ARDUINO_ARCH_ESP32)
#include <WiFi.h>
#else
#include <ESP8266WiFi.h>
#endif
#include <WiFiUdp.h>
#include <ArtnetWifi.h>
#include <NeoPixelBus.h>
#include <U8g2lib.h>


//display settings

U8G2_SSD1306_128X32_UNIVISION_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ 16, /* clock=*/ 5, /* data=*/ 4);

u8g2_uint_t offset;     // current offset for the scrolling text
u8g2_uint_t width;      // pixel width of the scrolling text (must be lesser than 128 unless U8G2_16BIT is defined
u8g2_uint_t width2;      // pixel width of the scrolling text (must be lesser than 128 unless U8G2_16BIT is defined
char *text = "ArtNode 2812b"; // scroll this text from right to left
char *message = ""; // scroll this text from right to left

// Wifi settings
const char* ssid = "bloody malfunctional shit";
const char* password = "thespanishinquisition";

// LED settings
const int numLeds = 144; // CHANGE FOR YOUR SETUP
const int numberOfChannels = numLeds * 3; // Total number of channels you want to receive (1 led = 3 channels)
const byte PixelPin = 2;

NeoPixelBus<NeoGrbFeature, NeoEsp8266AsyncUart1Ws2812xMethod> strip(numLeds, PixelPin);


// Art-Net settings
ArtnetWifi artnet;
const int startUniverse = 0; // CHANGE FOR YOUR SETUP most software this is 1, some software send out artnet first universe as 0.

// Check if we got all universes
const int maxUniverses = numberOfChannels / 512 + ((numberOfChannels % 512) ? 1 : 0);
bool universesReceived[maxUniverses];
bool sendFrame = 1;
int previousDataLength = 0;

String IpAddress2String(const IPAddress& ipAddress)
{
  return String(ipAddress[0]) + String(".") +\
  String(ipAddress[1]) + String(".") +\
  String(ipAddress[2]) + String(".") +\
  String(ipAddress[3])  ;
}


// connect to wifi – returns true if successful or false if not
boolean ConnectWifi(void)
{
  boolean state = true;
  int i = 0;
  char wiFiHostname[ ] = "";
  sprintf(wiFiHostname, "espArtNetNode_%05u", (ESP.getChipId() & 0xFF));
  WiFi.hostname(wiFiHostname);
  WiFi.begin(ssid, password);
  Serial.println("");
  Serial.println("Connecting to WiFi as");
  Serial.println(wiFiHostname);
  
  // Wait for connection

  while (WiFi.status() != WL_CONNECTED) {
  delay(500);
  u8g2.setFont(u8g2_font_crox1hb_tf );
  message = "Connecting...";
  width = u8g2.getUTF8Width(message); 
  u8g2.firstPage();
  u8g2.drawUTF8((128-width)/2, 20, message);     // draw theing text
  u8g2.nextPage();
  Serial.print("Connecting");
    
    
    Serial.print(".");
    if (i > 20){
      state = false;
      break;
    }
    i++;
  }
  if (state){
    Serial.println("");
    Serial.print("Connected to ");
    Serial.println(ssid);
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());
    
    sprintf(text, "SSID: %s", ssid);
    
    sprintf(message, "IP: %s", WiFi.localIP().toString().c_str());
    u8g2.setFont(u8g2_font_crox1hb_tf );
    width2 = u8g2.getUTF8Width(message); 
    u8g2.setFont(u8g2_font_crox1t_tf );
    width = u8g2.getUTF8Width(text); 
    u8g2.firstPage();
    u8g2.drawUTF8((128-width)/2, 14, text);     // draw theing text
    u8g2.setFont(u8g2_font_crox1hb_tf );
    u8g2.drawUTF8((128-width2)/2, 30, message);     // draw theing text
    u8g2.nextPage();
  } else {
    Serial.println("");
    Serial.println("Connection failed.");
  }

  return state;
}

void initTest()
{
  for (int i = 0 ; i < numLeds ; i++) {
    strip.SetPixelColor(i, RgbColor(127, 0, 0));
  }
  strip.Show();
  delay(500);
  for (int i = 0 ; i < numLeds ; i++) {
    strip.SetPixelColor(i, RgbColor(0, 127, 0));
  }
  strip.Show();
  delay(500);
  for (int i = 0 ; i < numLeds ; i++) {
    strip.SetPixelColor(i, RgbColor(0, 0, 127));
  }
  strip.Show();
  delay(500);
  for (int i = 0 ; i < numLeds ; i++) {
    strip.SetPixelColor(i, RgbColor(0, 0, 0));
  }
  strip.Show();
}

void onDmxFrame(uint16_t universe, uint16_t length, uint8_t sequence, uint8_t* data)
{
  sendFrame = 1;
  // Store which universe has got in
  if ((universe - startUniverse) < maxUniverses) {
    universesReceived[universe - startUniverse] = 1;
  }

  for (int i = 0 ; i < maxUniverses ; i++)
  {
    if (universesReceived[i] == 0)
    {
      //Serial.println("Broke");
      sendFrame = 0;
      break;
    }
  }

  // read universe and put into the right part of the display buffer
  for (int i = 0; i < length / 3; i++)
  {
    int led = i + (universe - startUniverse) * (previousDataLength / 3);
    if (led < numLeds)
      strip.SetPixelColor(led, RgbColor(data[i * 3], data[i * 3 + 1], data[i * 3 + 2]));
  }
  previousDataLength = length;

  if (sendFrame)
  {
    strip.Show();
    // Reset universeReceived to 0
    memset(universesReceived, 0, maxUniverses);
  }
}

void setup()
{
  Serial.begin(115200);
   u8g2.begin();
  u8g2.setFont(u8g2_font_logisoso16_tr ); // set the target font to calculate the pixel width
  width = u8g2.getUTF8Width(text);    // calculate the pixel width of the text
  u8g2.setFontMode(0);    // enable transparent mode, which is faster
  u8g2.firstPage();
  u8g2.drawUTF8((128-width)/2, 24, text);     // draw theing text
  u8g2.nextPage();
  ConnectWifi();
  artnet.begin();
  strip.Begin();
  initTest();

  // this will be called for each packet received
  artnet.setArtDmxCallback(onDmxFrame);
}

void loop()
{
  // we call the read function inside the loop
  artnet.read();
}
