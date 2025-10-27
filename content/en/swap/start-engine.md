---
weight: 22
title: "Starting the engine"
---

# Starting the engine

## ECU

The ECU to be ued is the Golf MK5 GTI (BWA) one; 1K0 907 115Q. Obviously it replaces the original Golf MK3 ECU, which is not longer used. However this introduces several problems:

1. **what to do with all DTCs in the ECU because missing sensors/actuators**. In that case all DTCs must be troubleshooted and determine whether they were genuine or they could be deleted because the sensor/actuator does not longer exists. Whenever a DTC was genuine it had to be further investigated until it was resolved, and when a DTC was related to a non existent sensor/actuator it had to be deleted.
2. **how to bypass the immobilizer, so the engine can be started**. Here the answer is simple, the immobilizer had to be disabled with a special program (eeprom) to disable the immobilizer in MED9.1 ECUs.

Because the ECU used was sourced from a scrapyard, a fresh and clean copy of the flash was bought (it is not known whether the previous owner of the ECU made modifications in the flash).

And now all pieces are in place; an ECU, an eeprom file read from the ECU and modified so the immobilizer is disabled and a flash with a known state it can be modified (DTCs deleted). Obviously for that a special software to be able to read and write the eeprom and flash files from and to the ECU was used. For that purpose Trasdata software from DimSport was used, with the additional bonus that all checksums were properly calculated.

## Squeezing the Engine

As part of the swap some of the components were upgraded, the long short; fuel injectors, fuel rail pressure sensor, MAP sensor and fuel pressure relief valve. The following table shows the reference numbers for different engine codes.

| Description                | BWA (200hp)   | BYD (230hp)   |
|----------------------------|---------------|---------------|
| Fuel Injector              | 06F 906 036 A | 06F 906 036 F |
| Turbo compressor           | 06F 145 701 H | 06F 145 702 C |
| Fuel Rail Pressure Sensor  | 06H 906 051 A | 06J 906 051 B |
| MAP Sensor                 | 038 906 051 D | 038 906 051 C |
| Fuel Pressure Relief Valve | 06D 130 757 C | 06D 130 757 C |
| Fuel Pump                  | 06F 127 025 K | 06F 127 025 K |
| ECU                        | 1K0 907 115 Q | 1K0 907 115 T |

<figure><video controls><source src="/images/start-engine-01.webm" type="video/webm"></video></figure>

The original engine code is a BWA engine, however if the parts in the table above are upgraded to the references under BYD column, the engine becomes a BYD engine. Note the ECU references for BWA and BYD are different, however after some investigation, the hardware for the ECUs are exactly the same, and the only difference is the software, So now the question is how to upload into a BWA ECU the software for a BYD ECU. The answer is somehow simple; upload a fresh BYD eeprom and flash into the 1K0 907 115 Q ECU. More details can be found [here](https://www.vwvortex.com/threads/software-advise-needed-for-bwa-engine-with-k04-turbo-s3-injectors.7912113).

## Engine start

After several years working on this engine swap, all the required pieces were ready to start the engine including the engine wiring harness. So we tried and no luck, so what is missing or failing?. So a VAGCOM diagnosis tool was used to help to determine the error in the engine, but it was not clear.

<figure><img src="/images/intro-engine-wiring.jpg" class="thumb-img"><figcaption>Engine Wiring Harness.</figcaption></figure>

It was decided to remove the engine wiring harness and check it thoughtfully. For full disclosure the engine wiring harness was bought from [S&P Automotive](https://s-pautomotive.com/). In principle this engine wiring harness shall be a Golf MK5 GTI (BWA) engine wiring harness adapted to be used within a Golf MK3. This means that wiring required for sensors and gateways not present in Golf MK3 was removed. So full electric diagrams for Golf MK3 and Golf MK5 were necessary to start checking the engine wiring harness and determine what changes to the original Golf MK5 GTI (BWA) engine wiring harness were introduced. After several days testing and reading the electric diagrams it could be certified that overall the changes to the original Golf MK5 GTI (BWA) engine wiring harness made by [S&P Automotive](https://s-pautomotive.com), were right with 2 caveats:

1. A pin of the crankshaft connector was broken. Therefore the full connector had to be changed.
2. The V50 (coolant circulation pump) was removed,  however the V50 wiring was reintroduced to support it again.

<figure><img src="/images/intro-engine-rebuild.jpg" class="thumb-img"><figcaption>Engine Wiring Harness.</figcaption></figure>

And now the key question is, did it work and the engine started?, so the answer is no. So after further investigation it could be determined that the engine was not properly mounted, valves in one cylinder were bended and the compression was not right, so this stopped the engine starting. Unfortunately the cylinder head had to be disassembled and sent it to a CNC. After several days waiting the cylinder head was back, so it was assembled again (this time properly) and this time yes, the engine started.


The lesson learned here is whenever you start a task finish it and do not let the time pass, otherwise you can easily forget things and cause serious problems.

## Instrument cluster

<figure><video controls><source src="/images/start-engine-02.webm" type="video/webm"></video></figure>

The original instrument cluster is retained, therefore some signals coming from the engine must be adapted to the existing cluster, as they were not designed to be compatible. Those signals are:

1. Engine speed or RPMs. This signal is provided by the new ECU through CAN bus, so an adapter must be used. In that case a solution from [Van der Veer Engineering](https://www.vdveer-engineering.nl/en/products/can-controller/can-controller-overview) was used.
2. VSS or speedometer. In Golf MK3, VSS signal comes from the gearbox and in Golf MK5 from ABS, so the signals are different. To be able to adapt the signal, a product from [MapDCCD](https://mapdccd.com/vss.html) was used.
3. Oil temperature. Golf MK3 and MK5 oil temperature sensors are completely different, so the only way to make that signal available at the Golf MK3 instrument cluster is to use the Golf MK3 oil temp. sensor. After some investigation an adapter was found, that adapter allows to connect the Golf MK3 sensor at the end of the Golf MK5 oil filter housing. For more details look a the solution provided by [Bar Tek](https://www.bar-tek.com/temperature-gauge-adapter-2-0l-2-5l-tfsi) for that purpose.

The rest of the instrument cluster works as intended.
