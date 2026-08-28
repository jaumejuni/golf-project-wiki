---
weight: 22
title: "Starting the engine"
description: "Reprogramming the BWA ECU, bypassing the immobilizer, fixing a wiring harness and a bent valve, and adapting the original Golf MK3 instrument cluster."
images: ["/images/intro-engine-wiring.jpg"]
---

# Starting the engine

## ECU

The ECU used is the one from the Golf MK5 GTI (BWA): 1K0 907 115Q. It obviously replaces the original Golf MK3 ECU, which is no longer used, but that introduces several problems:

1. **what to do with all the DTCs triggered by missing sensors/actuators**. Every DTC had to be investigated to determine whether it was genuine or could be cleared because the sensor or actuator no longer existed. Genuine DTCs were investigated further until resolved, while DTCs tied to non-existent sensors/actuators were simply deleted.
2. **how to bypass the immobilizer, so the engine can actually be started**. Here the answer is simple: the immobilizer had to be disabled by modifying the EEPROM, using a special program for disabling the immobilizer on MED9.1 ECUs.

Because the ECU came from a scrapyard, a fresh and clean copy of the flash was bought, since there was no way to know whether the previous owner had modified it.

With that, all the pieces were in place: an ECU, an EEPROM file read from the ECU and modified to disable the immobilizer, and a flash file in a known state that could be modified as needed — for example, to delete DTCs. Reading and writing both the EEPROM and the flash obviously required special software, so Trasdata from DimSport was used, with the added benefit that all checksums were calculated correctly.

## Squeezing the Engine

As part of the swap, some of the components were upgraded — in short, the fuel injectors, fuel rail pressure sensor, MAP sensor and fuel pressure relief valve. The table below shows the reference numbers for the different engine codes.

| Description                | BWA (200hp)   | BYD (230hp)   |
|----------------------------|---------------|---------------|
| Fuel Injector              | 06F 906 036 A | 06F 906 036 F |
| Turbo compressor           | 06F 145 701 H | 06F 145 702 C |
| Fuel Rail Pressure Sensor  | 06H 906 051 A | 06J 906 051 B |
| MAP Sensor                 | 038 906 051 D | 038 906 051 C |
| Fuel Pressure Relief Valve | 06D 130 757 C | 06D 130 757 C |
| Fuel Pump                  | 06F 127 025 K | 06F 127 025 K |

<figure><video controls><source src="/images/start-engine-01.webm" type="video/webm"></video></figure>

The original engine code is a BWA engine; upgrading the parts in the table above to the references under the BYD column brings the hardware closer to a BYD engine, but it does not turn it into one. Since the BWA and BYD use different ECUs, simply replacing the BWA ECU with a BYD one is not an option. However, the BYD EEPROM and flash files can be uploaded to the BWA ECU. This does not solve the problem either: the BYD uses a different camshaft, and its timing maps are calibrated accordingly. Running the BYD software with the BWA camshaft would therefore result in incorrect timing. The ECU must remain configured as a BWA, with the relevant maps recalibrated for the upgraded hardware (turbo, injectors and MAP sensor). More details can be found [here](https://www.vwvortex.com/threads/software-advise-needed-for-bwa-engine-with-k04-turbo-s3-injectors.7912113).

## Engine start

After several years working on this engine swap, all the required pieces — including the engine wiring harness — were finally ready to start the engine. We tried, with no luck: what was missing or failing? A VAGCOM diagnostic tool was used to help pin down the error, but the result was not conclusive.

<figure class="clear-flow"><img src="/images/intro-engine-wiring.jpg" class="thumb-img" alt="Golf MK5 GTI BWA engine wiring harness being checked before startup"><figcaption>Engine Wiring Harness.</figcaption></figure>

We decided to remove the engine wiring harness and check it thoroughly. For full disclosure, the harness had been bought from [S&P Automotive](https://s-pautomotive.com/): in principle, a Golf MK5 GTI (BWA) engine wiring harness adapted for use in a Golf MK3, with the wiring for sensors and gateways not present in the Golf MK3 removed. Checking it properly meant getting hold of the full electrical diagrams for both the Golf MK3 and the Golf MK5, to work out exactly what changes had been made to the original harness. After several days of testing and reading through the diagrams, we could confirm that the changes made by [S&P Automotive](https://s-pautomotive.com) were correct, with two caveats:

1. A pin in the crankshaft connector was broken, so the whole connector had to be replaced.
2. The V50 (coolant circulation pump) wiring had been removed, so it was reintroduced to support the pump again.

<figure class="clear-flow"><img src="/images/intro-engine-rebuild.jpg" class="thumb-img" alt="BWA engine during the rebuild after the cylinder head issue was resolved"><figcaption>Engine Wiring Harness.</figcaption></figure>

And now for the key question: did it work, did the engine start? No. Further investigation revealed that the engine had not been properly assembled — the valves in one cylinder were bent and the compression was wrong, which was enough to stop it from starting. Unfortunately, the cylinder head had to be removed and sent out for machining. After several days of waiting, it came back, was reassembled — properly, this time — and the engine started.

The lesson here: whenever you start a task, finish it and do not let time pass, or you can easily forget things and cause serious problems.

<div class="clear-flow"></div>

## Instrument cluster

<figure><video controls><source src="/images/start-engine-02.webm" type="video/webm"></video></figure>

The original instrument cluster is retained, therefore some signals coming from the engine must be adapted to the existing cluster, as they were not designed to be compatible. Those signals are:

1. Engine speed or RPMs. This signal is provided by the new ECU through CAN bus, so an adapter must be used. In that case a solution from [Van der Veer Engineering](https://www.vdveer-engineering.nl/en/products/can-controller/can-controller-overview) was used.
2. VSS or speedometer. In Golf MK3, VSS signal comes from the gearbox and in Golf MK5 from ABS, so the signals are different. To be able to adapt the signal, a product from [MapDCCD](https://mapdccd.com/vss.html) was used.
3. Oil temperature. Golf MK3 and MK5 oil temperature sensors are completely different, so the only way to make that signal available at the Golf MK3 instrument cluster is to use the Golf MK3 oil temp. sensor. After some investigation an adapter was found. That adapter allows connecting the Golf MK3 sensor at the end of the Golf MK5 oil filter housing. For more details look at the solution provided by [Bar Tek](https://www.bar-tek.com/temperature-gauge-adapter-2-0l-2-5l-tfsi) for that purpose.

The rest of the instrument cluster works as intended.
