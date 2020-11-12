# エアクオリティセンサ基板  
Air_Quality_Sensor_Module

## 概要 
  * ルネサスエレクトロニクス製 [室内空気質（IAQ）センサZMOD4410][1]及び[温湿度センサHS3001][2]を搭載したセンサ基板と専用変換基板です  
  * 専用変換基板を使用することで抵抗値からCO2等に変換する計算アルゴリズムをマイコン側に実装する必要がありません  
  * Arduino等のI2Cで専用変換基板から容易に温湿度、CO2値等の情報を読み出すことが可能です  
  * 計算アルゴリズムはルネサスエレクトロニクスの学習済みニューラルネットワークを使用したファームウェアを使用しています  
  * 学習済みニューラルネットワークにより従来よりも正確にCO2値（eCO2）を推定できます  
  * 専用変換基板のLEDでIAQ(IAQ:2以下 青、2-3:青、黄、3-4:黄、4-5:黄、赤、5以上:赤)を確認できます  
  * 専用変換基板の読み出し方法はサンプルプログラム(Arduino、Node-Red)を参照してください  
  * 専用変換基板から読み出せる値は下記の通りです  
  * 専用変換基板の値は浮動小数点から10倍もしくは100倍した値を16bit符号付データに変換しています  
  * センサ基板と専用変換基板、Grove互換ケーブル1本を同梱しています  
  * お手持ちの機器と変換基板を接続するGroveケーブルは同梱されていません  
  * 専用変換基板はGrove互換コネクタを搭載しており、3.3V~5V電源で駆動します  
  
  <img src="https://github.com/meerstern/Air_Quality_Sensor_Module/blob/main/Image/img1.JPG" width="360">
  <img src="https://github.com/meerstern/Air_Quality_Sensor_Module/blob/main/Image/img2.JPG" width="360">
  
  |  項目  |  範囲  |  倍率  |
| ---- | ---- | ---- |
|  温度  |  -40-125℃  |  100倍  |
|  湿度  |  0-100%RH  |  100倍  |
|  CO2  |  400-3276ppm*1  |  10倍  |
|  IAQ  |  1.0-5.0  |  100倍  |
|  TVOC  |  0.01-10mg/m3  |  100倍  |
|  EtOH  |  0.01-327ppm*2  |  100倍  |
|  LogRcda  |  -  |  100倍  |      
 
*1 専用変換基板上での制約で最大5000ppm→3276ppmとなっています  
*2 専用変換基板上での制約で最大1000ppm→327ppmとなっています  
      
## 注意 
 * 電源投入後、2~3分はキャリブレーションのため、温湿度以外の値は未定で、全LEDが点灯します  
 * 専用変換基板は約2秒周期で各センサの値を取得します  
 * ZMOD4401はヒータを内蔵するため、電流を確保できる電源を使用してください(最大10mA)  
 * 専用変換基板は5V対応しておりますが、センサ基板は3.3V専用です  
 * ZMOD4410に直接アクセスする場合はルネサスエレクトロニクス社にファームウェアの取得申請が必要です(法人・研究向け)  
 * ルネサスエレクトロニクス社の計算アルゴリズムは*.libもしくは*.aファイルのアセンブラ形式です  
 * ルネサスエレクトロニクス社の計算アルゴリズム及び専用変換基板のコードは公開しておりません    
 
[1]: https://www.idt.com/jp/ja/products/sensor-products/gas-sensors/zmod4410-indoor-air-quality-sensor-platform
[2]: https://www.idt.com/us/ja/products/sensor-products/humidity-sensors/hs3001-high-performance-relative-humidity-and-temperature-sensor


