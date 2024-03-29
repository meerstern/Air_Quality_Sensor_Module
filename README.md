# エアクオリティセンサ基板  
Air_Quality_Sensor_Module

## 概要 
  * ルネサスエレクトロニクス製 [室内空気質（IAQ）センサZMOD4410][1]及び[温湿度センサHS3001][2]を搭載したセンサ基板と専用変換基板です  
  * 専用変換基板を使用することで抵抗値からCO2等に変換する計算アルゴリズムをマイコン側に実装する必要がありません  
  * Arduino等のI2C通信を介して専用変換基板から容易に温湿度、CO2値等の情報を読み出すことが可能です 
  * 変換基板の[SEN]のコネクタにセンサ基板を接続し、[MPU]のコネクタにArduino等のマスタデバイスを接続してください  
  * 計算アルゴリズムはメーカ提供の学習済みニューラルネットワークを使用したファームウェア(20/10/19リリース版)を使用しています  
  * 学習済みニューラルネットワークによって従来よりもより正確にCO2値（eCO2）を推定できます  
  * 専用変換基板のLEDでIAQ(屋内空気質基準IAQ:2以下 青、2-3:青、黄、3-4:黄、4-5:黄、赤、5以上:赤)を確認できます  
  * MPU側のGrove互換コネクタに電源を供給するだけでもIAQレベルLEDで大まかな空気状態を確認することが可能です  
  * 専用変換基板の読み出し方法はサンプルプログラム(Arduino、[USBシリアルI2C変換基板][3]を使用したNode-Red)を参照してください  
  * 専用変換基板から読み出せる値は下記の通りです  
  * 専用変換基板の値は浮動小数点から10倍もしくは100倍した値を16bit符号無データ(温度のみ符号有)に変換しています  
  * センサ基板と専用変換基板、Grove互換ケーブル1本を同梱しています  
  * お手持ちの機器と変換基板を接続するGroveケーブルは同梱されていません  
  * 専用変換基板はGrove互換コネクタを搭載しており、3.3V~5V電源で駆動します  
  * I2C接続の他、Uart9600bpsでセンサデータを受信できます  
  
  <img src="https://github.com/meerstern/Air_Quality_Sensor_Module/blob/main/Image/img1.JPG" width="360">
  <img src="https://github.com/meerstern/Air_Quality_Sensor_Module/blob/main/Image/img2.JPG" width="360">
　<img src="https://github.com/meerstern/Air_Quality_Sensor_Module/blob/main/Image/io.JPG" width="360">
   
  |  項目  |  範囲  |  倍率  |
| ---- | ---- | ---- |
|  温度  |  -40-125℃  |  100倍  |
|  湿度  |  0-100%RH  |  100倍  |
|  CO2  |  400-5000ppm  |  10倍  |
|  IAQ  |  1.0-5.0  |  100倍  |
|  TVOC  |  0.01-10mg/m3  |  100倍  |
|  EtOH  |  0.01-655ppm*1  |  100倍  |
|  LogRcda  |  -  |  100倍  |      
 
 *1 専用変換基板上での制約で最大1000ppm→655ppmとなっています  
    
 ドイツ環境庁（UBA）の屋内空気質（IAQ）基準
 
  |  IAQ  |  レベル  |  LED  |
| ---- | ---- | ---- |
|  <2  |  非常に良い  |  青  |
|  2~3  |  良い  |  青と黄  |
|  3~4  |  中間  |  黄  |
|  4~5  |  悪い  |  黄と赤  |
|  5~  |  非常に悪い | 赤 |
        

## 注意 
 * 本センサはMOX(Metal Oxide)式のCO2センサのため、空気中の有機物から間接的にCO2に換算します。厳密なCO2計測には向きません  
 * 安定した測定をするために人通りや気流の変化が少ない場所に設置して使用してください  
 * キャリブレーション後にCO2値が安定するまで約0.5~1時間程度要します  
 * IAQは総合的な空気質の指標のため、CO2値が低くても他の有機物が多い場合に高くなります  
 * [SEN]コネクタと[MPU]コネクタの接続間違いに注意してください  
 * 電源投入後、2~3分はキャリブレーションのため、温湿度以外の値は未定で、全LEDが点灯します  
 * 専用変換基板は約2秒周期で各センサの値を取得します(データ更新時にLEDが点滅します)  
 * ZMOD4401はヒータを内蔵するため、電流を確保できる電源を使用してください(最大10mA)  
 * 専用変換基板は5V対応しておりますが、センサ基板は3.3V専用です  
 * ZMOD4410に直接アクセスして使用する場合はルネサスエレクトロニクス社にファームウェアの取得申請が必要です(法人・研究向け)  
 * ルネサスエレクトロニクス社の計算アルゴリズムは*.libもしくは*.aファイルのバイナリ形式で提供されます  
 * 告知なしに仕様を変更する場合があります    


## 参考
 * 第三者機関による[CO2センサ性能評価レポート(PDF,英語のみ)][4]  
 レポートでは他のセンサよりもZMOD4410が実際のCO2濃度に最も近い相関を示すことが報告されています  

## 販売サイト
  * [スイッチサイエンス][5]

[1]: https://www.idt.com/jp/ja/products/sensor-products/gas-sensors/zmod4410-indoor-air-quality-sensor-platform
[2]: https://www.idt.com/us/ja/products/sensor-products/humidity-sensors/hs3001-high-performance-relative-humidity-and-temperature-sensor
[3]: https://github.com/meerstern/USBSerial_I2C_Converter
[4]: https://www.renesas.com/jp/ja/document/rep/ksi-report-algorithm-evaluation-eco2-tracking?language=en
[5]: https://www.switch-science.com/products/6775

