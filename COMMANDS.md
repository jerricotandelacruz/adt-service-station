## UPLOAD ALL MODELS MODELS
> 
> az dt model create -n 'TtmDigitalTwins' --from-directory 'models'
> 
## CREATE DIGITAL TWIN  OF STATION
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Station;1' -t 'Station01'
> 
## CREATE DIGITAL TWIN OF TANKS
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Tank;1' -t 'Tank01' -p '{\"fillLevel\": 0, \"waterLevel\":0, \"temperature\":0, \"pressureLevel\":0}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Tank;1' -t 'Tank02' -p '{\"fillLevel\": 0, \"waterLevel\":0, \"temperature\":0, \"pressureLevel\":0}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Tank;1' -t 'Tank03' -p '{\"fillLevel\": 0, \"waterLevel\":0, \"temperature\":0, \"pressureLevel\":0}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Tank;1' -t 'Tank04' -p '{\"fillLevel\": 0, \"waterLevel\":0, \"temperature\":0, \"pressureLevel\":0}'
> 
## RELATIONSHIP BETWEEN STATION AND TANKS (ONE TO MANY)
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_tanks_01' --relationship 'rel_has_tanks' -t 'Station01' --target 'Tank01'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_tanks_02' --relationship 'rel_has_tanks' -t 'Station01' --target 'Tank02'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_tanks_03' --relationship 'rel_has_tanks' -t 'Station01' --target 'Tank03'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_tanks_04' --relationship 'rel_has_tanks' -t 'Station01' --target 'Tank04'
> 
## CREATE DIGITAL TWIN OF FILL PIPES
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:FillPipe;1' -t 'FillPipe01' -p '{ \"lastLeakTest\":\"2023-06-01T16:29:51.9260896Z\", \"leakTest\":1}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:FillPipe;1' -t 'FillPipe02' -p '{ \"lastLeakTest\":\"2023-06-02T16:29:51.9260896Z\", \"leakTest\":1}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:FillPipe;1' -t 'FillPipe03' -p '{ \"lastLeakTest\":\"2023-06-03T16:29:51.9260896Z\", \"leakTest\":1}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:FillPipe;1' -t 'FillPipe04' -p '{ \"lastLeakTest\":\"2023-06-04T16:29:51.9260896Z\", \"leakTest\":1}'
>
## CREATE RELATIONSHIP BETWEEN TANK AND FILL PIPE (ONE TO ONE)
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_fill_pipe_01' --relationship 'rel_has_fill_pipe' -t 'Tank01' --target 'FillPipe01'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_fill_pipe_02' --relationship 'rel_has_fill_pipe' -t 'Tank02' --target 'FillPipe02'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_fill_pipe_03' --relationship 'rel_has_fill_pipe' -t 'Tank03' --target 'FillPipe03'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_fill_pipe_04' --relationship 'rel_has_fill_pipe' -t 'Tank04' --target 'FillPipe04'
>
## CREATE DIGITAL TWIN OF VENT PIPES
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:VentPipe;1' -t 'VentPipe01'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:VentPipe;1' -t 'VentPipe02'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:VentPipe;1' -t 'VentPipe03'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:VentPipe;1' -t 'VentPipe04'
>
## CREATE RELATIONSHIP BETWEEN TANK AND VENT PIPE (ONE TO ONE)
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_vent_pipe_01' --relationship 'rel_has_vent_pipe' -t 'Tank01' --target 'VentPipe01'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_vent_pipe_02' --relationship 'rel_has_vent_pipe' -t 'Tank02' --target 'VentPipe02'Z
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_vent_pipe_03' --relationship 'rel_has_vent_pipe' -t 'Tank03' --target 'VentPipe03'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_vent_pipe_04' --relationship 'rel_has_vent_pipe' -t 'Tank04' --target 'VentPipe04'
>
## CREATE DIGITAL TWIN OF PRODUCT PIPES
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:ProductPipe;1' -t 'ProductPipe01' -p '{ \"lastLeakTest\":\"2023-06-01T16:29:51.9260896Z\", \"leakTest\":1}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:ProductPipe;1' -t 'ProductPipe02' -p '{ \"lastLeakTest\":\"2023-06-02T16:29:51.9260896Z\", \"leakTest\":1}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:ProductPipe;1' -t 'ProductPipe03' -p '{ \"lastLeakTest\":\"2023-06-03T16:29:51.9260896Z\", \"leakTest\":1}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:ProductPipe;1' -t 'ProductPipe04' -p '{ \"lastLeakTest\":\"2023-06-04T16:29:51.9260896Z\", \"leakTest\":1}'
>
## CREATE RELATIONSHIP BETWEEN TANK AND PRODUCT PIPE (ONE TO ONE)
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_product_pipe_01' --relationship 'rel_has_product_pipe' -t 'Tank01' --target 'ProductPipe01'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_product_pipe_02' --relationship 'rel_has_product_pipe' -t 'Tank02' --target 'ProductPipe02'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_product_pipe_03' --relationship 'rel_has_product_pipe' -t 'Tank03' --target 'ProductPipe03'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_product_pipe_04' --relationship 'rel_has_product_pipe' -t 'Tank04' --target 'ProductPipe04'

## CREATE DIGITAL TWIN OF DISPENSERS
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Dispenser;1' -t 'Dispenser01' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Dispenser;1' -t 'Dispenser02' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Dispenser;1' -t 'Dispenser03' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Dispenser;1' -t 'Dispenser04' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Dispenser;1' -t 'Dispenser05' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>
> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Dispenser;1' -t 'Dispenser06' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'

## CREATE RELATIONSHIP BETWEEN STATION AND DISPENSERS (ONE TO MANY)
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_dispenser_01' --relationship 'rel_has_dispensers' -t 'Station01' --target 'Dispenser01'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_dispenser_02' --relationship 'rel_has_dispensers' -t 'Station01' --target 'Dispenser02'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_dispenser_03' --relationship 'rel_has_dispensers' -t 'Station01' --target 'Dispenser03'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_dispenser_04' --relationship 'rel_has_dispensers' -t 'Station01' --target 'Dispenser04'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_dispenser_05' --relationship 'rel_has_dispensers' -t 'Station01' --target 'Dispenser05'
>
> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id 'rel_has_dispenser_06' --relationship 'rel_has_dispensers' -t 'Station01' --target 'Dispenser06'

## CREATE RELATIONSHIP BETWEEN DISPENSERS AND TANKS (MANY TO MANY)
### RELATIONSHIP BETWEEN DISPENSER 01 AND TANKS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_tank_01' --relationship 'rel_has_tanks' -t 'Dispenser01' --target 'Tank01'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_tank_02' --relationship 'rel_has_tanks' -t 'Dispenser01' --target 'Tank02'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_tank_03' --relationship 'rel_has_tanks' -t 'Dispenser01' --target 'Tank03'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_tank_04' --relationship 'rel_has_tanks' -t 'Dispenser01' --target 'Tank04'
>>
### RELATIONSHIP BETWEEN DISPENSER 02 AND TANKS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_tank_01' --relationship 'rel_has_tanks' -t 'Dispenser02' --target 'Tank01'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_tank_02' --relationship 'rel_has_tanks' -t 'Dispenser02' --target 'Tank02'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_tank_03' --relationship 'rel_has_tanks' -t 'Dispenser02' --target 'Tank03'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_tank_04' --relationship 'rel_has_tanks' -t 'Dispenser02' --target 'Tank04'
>>
### RELATIONSHIP BETWEEN DISPENSER 03 AND TANKS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_tank_01' --relationship 'rel_has_tanks' -t 'Dispenser03' --target 'Tank01'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_tank_02' --relationship 'rel_has_tanks' -t 'Dispenser03' --target 'Tank02'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_tank_03' --relationship 'rel_has_tanks' -t 'Dispenser03' --target 'Tank03'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_tank_04' --relationship 'rel_has_tanks' -t 'Dispenser03' --target 'Tank04'
>>
### RELATIONSHIP BETWEEN DISPENSER 04 AND TANKS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_tank_01' --relationship 'rel_has_tanks' -t 'Dispenser04' --target 'Tank01'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_tank_02' --relationship 'rel_has_tanks' -t 'Dispenser04' --target 'Tank02'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_tank_03' --relationship 'rel_has_tanks' -t 'Dispenser04' --target 'Tank03'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_tank_04' --relationship 'rel_has_tanks' -t 'Dispenser04' --target 'Tank04'
>>
### RELATIONSHIP BETWEEN DISPENSER 05 AND TANKS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_tank_01' --relationship 'rel_has_tanks' -t 'Dispenser05' --target 'Tank01'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_tank_02' --relationship 'rel_has_tanks' -t 'Dispenser05' --target 'Tank02'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_tank_03' --relationship 'rel_has_tanks' -t 'Dispenser05' --target 'Tank03'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_tank_04' --relationship 'rel_has_tanks' -t 'Dispenser05' --target 'Tank04'
>>
### RELATIONSHIP BETWEEN DISPENSER 06 AND TANKS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_tank_01' --relationship 'rel_has_tanks' -t 'Dispenser06' --target 'Tank01'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_tank_02' --relationship 'rel_has_tanks' -t 'Dispenser06' --target 'Tank02'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_tank_03' --relationship 'rel_has_tanks' -t 'Dispenser06' --target 'Tank03'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_tank_04' --relationship 'rel_has_tanks' -t 'Dispenser06' --target 'Tank04'
>>
## CREATE DIGITAL TWIN OF PUMPS
### DIGITAL TWIN OF PUMPS IN DIPENSER 01
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0101' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0102' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0103' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0104' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0105' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0106' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0107' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0108' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
### DIGITAL TWIN OF PUMPS IN DIPENSER 02
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0201' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0202' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0203' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0204' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0205' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0206' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0207' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0208' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
### DIGITAL TWIN OF PUMPS IN DIPENSER 03
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0301' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0302' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0303' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0304' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0305' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0306' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0307' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0308' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
### DIGITAL TWIN OF PUMPS IN DIPENSER 04
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0401' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0402' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0403' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0404' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0405' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0406' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0407' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0408' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
### DIGITAL TWIN OF PUMPS IN DIPENSER 05
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0501' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0502' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0503' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0504' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0505' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0506' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0507' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0508' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
### DIGITAL TWIN OF PUMPS IN DIPENSER 06
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0601' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0602' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0603' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0604' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0605' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0606' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0607' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'
>>
>> az dt twin create -n 'TtmDigitalTwins' -m 'dtmi:tothemoon:Pump;1' -t 'Pump0608' -p '{\"totalSales\": 0, \"salesVolume\": 0, \"lastReset\": \"2023-06-02T16:29:51.9260896Z\"}'

## CREATE RELATIONSHIP BETWEEN DISPENSER AND PUMPS (ONE TO MANY)
### CREATE RELATIONSHIP BETWEEN DISPENSER 01 TO PUMPS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_01' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0101'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_02' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0102'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_03' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0103'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_04' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0104'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_05' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0105'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_06' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0106'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_07' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0107'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser01_has_pump_08' --relationship 'rel_has_pumps' -t 'Dispenser01' --target 'Pump0108'
>>
### CREATE RELATIONSHIP BETWEEN DISPENSER 02 TO PUMPS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_01' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0201'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_02' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0202'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_03' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0203'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_04' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0204'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_05' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0205'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_06' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0206'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_07' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0207'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser02_has_pump_08' --relationship 'rel_has_pumps' -t 'Dispenser02' --target 'Pump0208'
>>
### CREATE RELATIONSHIP BETWEEN DISPENSER 03 TO PUMPS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_01' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0301'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_02' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0302'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_03' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0303'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_04' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0304'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_05' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0305'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_06' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0306'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_07' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0307'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser03_has_pump_08' --relationship 'rel_has_pumps' -t 'Dispenser03' --target 'Pump0308'
>>
### CREATE RELATIONSHIP BETWEEN DISPENSER 04 TO PUMPS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_01' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0401'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_02' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0402'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_03' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0403'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_04' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0404'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_05' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0405'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_06' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0406'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_07' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0407'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser04_has_pump_08' --relationship 'rel_has_pumps' -t 'Dispenser04' --target 'Pump0408'
>>
### CREATE RELATIONSHIP BETWEEN DISPENSER 05 TO PUMPS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_01' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0501'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_02' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0502'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_03' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0503'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_04' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0504'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_05' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0505'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_06' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0506'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_07' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0507'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser05_has_pump_08' --relationship 'rel_has_pumps' -t 'Dispenser05' --target 'Pump0508'
>>
### CREATE RELATIONSHIP BETWEEN DISPENSER 06 TO PUMPS
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_01' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0601'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_02' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0602'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_03' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0603'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_04' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0604'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_05' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0605'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_06' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0606'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_07' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0607'
>>
>> az dt twin relationship create -n 'TtmDigitalTwins' --relationship-id  'rel_dispenser06_has_pump_08' --relationship 'rel_has_pumps' -t 'Dispenser06' --target 'Pump0608'
>>