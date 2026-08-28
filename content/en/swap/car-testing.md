---
weight: 24
title: "Car testing"
---

# Car testing

## First test
<figure class="flow-figure right stack same-width"><video controls><source src="/images/car-testing-first-test-01.webm" type="video/webm"></video></figure>
The engine was fired up for the first time in June 2024. After that a lot of work on hydraulics had to be completed; steering and brakes. In addition and to make the things more interesting the slave clutch cylinder failed (it was completely new!!!) and the union between the engine and the gearbox was leaking. As a result the engine and the gearbox had to be put down and the slave clutch cylinder replaced by a new one. Plenty of work, however we took that opportunity to ensure that everything was properly assembled to avoid further surprises.

After a lot of work on hydraulics, electrics and the problem with the gearbox, the car from a mechanical point of view was completed by the beginning of October 2024. After testing the steering and gearbox with the front wheels up in the air, and checking that everything works, it was time to do the first test; driving forward and backwards in the garage.

Keep in mind that the car has not gone through MOT-like inspection (ITV in Spain) for the last 3 years and the engine has been modified, so the car for the moment is not road legal, so it cannot be tested on the street for the moment. Because of that we had to do the first test within the garage.

The idea once the body shop finishes the car in the following days, is to take it to a closed road for testing and see how it behaves. For the moment we are really excited to see the car move.

# Further tests
<!-- <figure class="flow-figure right stack same-width"><img src="/images/tunning-03.jpg"></figure> -->

The first road tests did not go well. The engine was running rough, and we soon discovered there was a misalignment between the ECU software and the engine modifications. This was somewhat expected since we had introduced custom engine modifications: K04 turbo compressor, 3bar MAP and S3 injectors. 
<figure class="flow-figure right stack same-width"><img src="/images/tunning-02.jpg"></figure>

Our solution was to grab an original BWA flash image (aligned with our ECU hardware) and use ecufiles.com to create a Stage 3 tune featuring the K04 turbo compressor, MAP scaling, and fuel injector scaling. But it did not work—the engine continued running rough.
Almost a year passed. During that time, we tested multiple combinations, but nothing worked. Then, by luck, a Golf Mk5 EOS appeared with a BWA engine—the same engine code we are using in our swap—so we decided to try its ECU and software.

It worked. Suddenly, the engine was running fine. It still needed tuning, but at least it was running properly. Finally, we had a solid foundation to build on.
<figure class="flow-figure right stack same-width"><video controls><source src="/images/tunning-video-01.webm" type="video/webm"></video></figure>


This time, we did not take chances. We sent the car to a professional tuner for the Stage 3 calibration.

The tuning process involved more than twenty dyno runs while progressively adjusting and validating the ECU calibration. During the runs, knock, lambda, boost pressure, engine load and temperatures were monitored to make sure that the engine was not only producing the expected power, but doing so safely and consistently.

The graph below shows the final dyno run.

<figure class="flow-figure full-width"><img src="/images/golf-dyno.jpeg"></figure>

The final result was **273.2 hp and 445 Nm**.

The objective was not to extract the maximum possible power from the K04. This is a road car built around a 1996 Golf Mk3 chassis, so we deliberately chose a conservative calibration, prioritising reliability, predictable power delivery and thermal stability over the highest possible dyno figure.

The shape of the curves is probably more important than the peak numbers. Torque builds quickly and remains strong through the useful part of the rev range, while power continues to increase progressively towards the top end. For a road car, this should provide a much more useful result than simply chasing a larger peak-power number.

The dyno sessions also provided an unexpectedly useful test of the rest of the conversion. After more than twenty high-load runs, the cooling system remained completely stable, giving us considerably more confidence in the oversized radiator, intercooler and fan arrangement.