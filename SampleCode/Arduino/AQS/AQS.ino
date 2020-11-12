
#include <Wire.h>

#define AQS_ADDRESS   0x32
#define AQS_DATA_LEN  16
#define AQS_ID        0x43

void setup()
{
  Serial.begin(9600);
  Wire.begin();
 
}

void loop()
{
  uint8_t rdata[AQS_DATA_LEN];
  uint8_t i;
  int16_t int_temp,int_humd,int_eth,int_tvoc,int_eco2,int_iaq,int_rcda;
  float temp,humd,eth,tvoc,eco2,iaq,rcda;
 
  
  Wire.requestFrom(AQS_ADDRESS, AQS_DATA_LEN);
  for(i=0;i<AQS_DATA_LEN;i++)
  {
    rdata[i]=Wire.read();
  }
  Wire.endTransmission();

  if(rdata[0]==AQS_ID)  Serial.print("Sensor is Found! ");
  else                  Serial.print("Sensor is Not Found! ");

  if(rdata[1]==1)       Serial.println("Sensor is Ready! ");
  else                  Serial.println("Sensor is Not Ready! ");

  int_temp = ((rdata[2]&0xFF)<<8) +(rdata[3]&0xFF);
  int_humd = ((rdata[4]&0xFF)<<8) +(rdata[5]&0xFF);
  int_eth  = ((rdata[6]&0xFF)<<8) +(rdata[7]&0xFF);
  int_tvoc = ((rdata[8]&0xFF)<<8) +(rdata[9]&0xFF);
  int_eco2 = ((rdata[10]&0xFF)<<8) +(rdata[11]&0xFF);
  int_iaq  = ((rdata[12]&0xFF)<<8) +(rdata[13]&0xFF);
  int_rcda = ((rdata[14]&0xFF)<<8) +(rdata[15]&0xFF);
  
  temp = int_temp/100.0;
  humd = int_humd/100.0;
  eth  = int_eth/100.0;
  tvoc = int_tvoc/100.0;
  eco2 = int_eco2/10.0;
  iaq = int_iaq/100.0;
  rcda = int_rcda/100.0;

  Serial.print(" TEMP: ");
  Serial.print(temp);
  Serial.print(" 'C ");
  
  Serial.print(" HUMD: ");
  Serial.print(humd);
  Serial.print(" % ");
  
  Serial.print(" Etoh: ");
  Serial.print(eth);
  Serial.print(" ppm ");
  
  Serial.print(" TVOC: ");
  Serial.print(tvoc);
  Serial.print(" mg/m^3 ");

  Serial.print(" eCO2: ");
  Serial.print(eco2);
  Serial.print(" ppm ");

  
  Serial.print(" IAQ: ");
  Serial.print(iaq);
  Serial.print("  ");

    
  Serial.print(" log_Rcda: ");
  Serial.print(rcda);
  Serial.print(" log ohm ");
  Serial.println("");


  delay(500);
}
