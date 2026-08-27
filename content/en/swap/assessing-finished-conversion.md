---
weight: 27
title: "Assessing the finished conversion"
---

# Assessing the finished conversion

After spending several years working on the conversion, and with the car now very close to being finished, this seemed like a good moment to step back and look at the project as a whole.

The objective was not simply to determine whether the BWA engine fits in a Golf Mk3 or whether the car produces enough power. Those questions were answered a long time ago.

The more interesting question is whether all the different systems have ended up forming a reasonably balanced and reliable car.

The assessment therefore looked at the conversion as a complete package: engine and calibration, gearbox and drivetrain, cooling, brakes, suspension, weight distribution and electrical integration.

## Engine and K04 conversion

The starting point is the **2.0 TFSI BWA** from the Golf Mk5 GTI.

Rather than retaining the original K03 configuration, the engine was converted to use a **K04 turbo**, together with the supporting components required by the new setup.

Among the most important changes are:

- K04 turbocharger
- **06F 906 036 F** injectors
- **038 906 051 C** 3-bar MAP sensor
- modified ECU calibration
- intake flap motor and position sensor deleted

The important point, however, is that the objective was never to extract the maximum possible output from the K04.

The final calibration produces approximately **325 Nm of maximum torque**, leaving a considerable margin compared with what a more aggressive K04 setup could produce.

This was a deliberate decision.

For a road car, particularly one based on a chassis from 1996, reliability, predictable power delivery and thermal stability are more useful than obtaining the highest possible dyno figure.

The ECU calibration was developed and tested extensively on the dyno, with more than twenty runs during the process. Knock, lambda, boost/load behaviour and temperatures were monitored while the engine was repeatedly taken through high-load and high-RPM operation.

From this point of view, the engine configuration is not simply theoretically correct: it has already been subjected to a considerable amount of controlled high-load testing.

## Engine internals

The installation of the K04 naturally raised the question of whether the standard BWA internals should also be replaced.

We investigated a possible forged configuration using **Wössner EA113 pistons** and **FCP Engineering X-beam connecting rods**, but ultimately decided not to open the engine.

There were several reasons.

The engine had already been machined during the conversion, the relevant components had very little use, and most importantly the current calibration is deliberately conservative in terms of torque.

At approximately **325 Nm**, the engine is not being asked to operate anywhere near the more aggressive torque levels possible with a K04.

Opening a recently assembled and properly functioning engine simply because forged components exist therefore did not seem justified.

If the engine needs to be opened in the future, or if considerably more torque is required, forged pistons and connecting rods remain a logical future upgrade.

For the current configuration, however, the standard BWA internals were considered appropriate.

## Gearbox and drivetrain

The original Mk3 gearbox was not retained.

The BWA is paired with an **02Q six-speed manual gearbox**, providing a drivetrain much better suited to the characteristics of the newer engine.

The engine and gearbox are installed using a **Fabless Manufacturing conversion kit**, which places the drivetrain in the intended position rather than relying on improvised engine mounts.

Clearances have been checked and tested with the complete installation.

The clutch was also upgraded to a **Stage 2 unit rated to approximately 415 Nm**.

With the engine currently producing around 325 Nm, this gives approximately 28% nominal torque margin.

The CV joints were custom made for the conversion and are rated to approximately **700 Nm**, providing an even larger margin.

The resulting hierarchy is therefore:

- **Engine:** ~325 Nm
- **Clutch:** ~415 Nm
- **CV joints:** ~700 Nm

This is exactly the type of relationship we wanted.

Rather than having one component operating close to its limit, the components downstream of the engine have been selected with increasing capacity.

## Thermal management

Thermal management was deliberately oversized from the beginning.

The cooling system uses a **Mishimoto aluminium radiator**, high-efficiency electric fans and a closely fitted aluminium shroud covering almost the complete radiator surface.

An **oversized front-mounted intercooler** was installed for the same reason.

There was initially some concern about stacking the condenser, intercooler and radiator behind the relatively small front opening of a Golf Mk3. Large heat exchangers are useful only if sufficient air can actually pass through them.

The extensive dyno calibration provided an excellent opportunity to test this.

After more than twenty runs, including repeated high-load and high-RPM operation, the cooling system showed no indication of becoming a limiting factor. The dyno operator specifically commented on how well the car was managing heat.

As a result, thermal management is now considered one of the stronger parts of the conversion rather than an area requiring further modification.

## Brakes

Increasing engine performance without addressing braking capacity would have produced a badly unbalanced conversion.

The braking system was therefore substantially upgraded at both ends of the car.

At the front, the car uses **CEIKA six-piston calipers** together with significantly larger brake discs.

At the rear, the original Mk3 calipers were replaced with **Golf Mk4 R32 rear calipers**, again combined with larger discs.

Increasing caliper size also changes the hydraulic requirements of the braking system.

For this reason, the original **23.9 mm master cylinder was replaced by a 25.2 mm unit**.

Increasing the master-cylinder diameter reduces the pedal travel required to move a given volume of brake fluid, producing a shorter and firmer pedal with the larger calipers.

The objective was therefore not simply to install larger brakes, but to maintain appropriate pedal behaviour after doing so.

Once the ABS is fully operational, the final validation will be dynamic: checking braking stability, pedal behaviour and ABS intervention under progressively harder braking.

## Suspension and anti-roll bars

The original suspension was also replaced.

The car now uses **CEIKA adjustable suspension**, allowing both ride height and stiffness to be adjusted.

The front and rear anti-roll bars were upgraded as well.

This adjustability is particularly useful because the conversion inevitably changes the mass and dynamic behaviour of the car. Rather than accepting a fixed suspension configuration, the final setup can be adjusted around the completed vehicle.

Once the car is fully operational, the intention is therefore to concentrate on setup rather than replacing more components:

- ride height
- damping/stiffness
- wheel alignment
- tyre pressures
- front/rear handling balance

At this stage, tuning the components already installed is likely to provide considerably more benefit than adding further hardware.

## Weight distribution

One concern with installing a newer engine and six-speed gearbox into a Mk3 is additional front axle weight.

Based on the component-weight calculations made during the project, the complete conversion adds approximately **74 kg** compared with the original configuration.

The estimated change is approximately:

- **+55 kg front**
- **+19 kg rear**

This takes the estimated weight from around **1,110 kg to 1,184 kg**.

More importantly, the calculated front/rear distribution only changes from approximately:

**62 / 38**

to:

**62.7 / 37.3**

The car therefore becomes slightly more front-heavy, but the change is relatively small.

This does not mean that the additional weight is irrelevant. The larger gearbox, brakes, wheels and other components can affect transient behaviour and unsprung mass even when the static front/rear percentage changes only slightly.

For this reason, once the car is finished it would be useful to measure the actual weight at all four wheels.

A proper corner-weight measurement would provide the real total weight, front/rear distribution, left/right distribution and diagonal cross-weight, and would also provide useful information when setting up the adjustable CEIKA suspension.

## Electrical architecture

One of the basic principles of the conversion was to avoid unnecessarily combining the complete Mk5 and Mk3 electrical architectures.

The BWA engine therefore retains its own engine-management system and adapted engine wiring, while the original Mk3 body wiring was preserved wherever possible.

Only the signals that need to cross between the two systems are adapted.

For example, vehicle speed and engine RPM are handled through dedicated converters.

The original Mk3 systems, including the ABS and airbag, were intended to remain original.

This approach considerably reduces the number of dependencies between the MED9-controlled BWA engine and the much older Mk3 body electronics.

The recent ABS and airbag diagnosis also provided a good example of why understanding these boundaries is important.

The apparent airbag problem was ultimately caused by the faulty ABS unit interfering with the **K-Line shared by both controllers**. The airbag controller itself was perfectly functional.

The problem was therefore within the original Mk3 systems rather than being a consequence of the BWA engine-management architecture.

## Overall assessment

Looking at the conversion as a complete system, the most positive aspect is probably that no single modification exists in isolation.

The additional engine performance was accompanied by changes to the gearbox, clutch and driveshaft system.

The additional thermal load was addressed with a substantially upgraded cooling and intercooling system.

The increase in performance was accompanied by larger brakes, a larger master cylinder, adjustable suspension and upgraded anti-roll bars.

And instead of attempting to make a 1996 Golf electrically behave like a Mk5, the engine and body electrical systems were kept as independent as reasonably possible.

There are also deliberate engineering margins throughout the car.

The engine produces around **325 Nm**, while the clutch is rated to approximately 415 Nm and the custom CV joints to approximately 700 Nm.

The cooling system has demonstrated substantial thermal capacity during repeated dyno testing.

The brakes and suspension have considerably more capability than the original Mk3 components.

This does not mean that the car is completely validated.

The replacement ABS still needs to be installed and tested, and once the car returns to the road the suspension, alignment and braking behaviour will need to be evaluated dynamically.

It would also be useful to obtain actual four-corner weights rather than continuing to rely on calculated values.

But these are now **commissioning and setup tasks**, rather than fundamental changes to the design.

Perhaps the most important conclusion from the assessment is therefore that there is currently very little reason to continue adding modifications.

The components are already there.

The next stage is to **finish the remaining details, set the car up properly, and finally use it**.