---
weight: 27
title: "Assessing the finished conversion"
description: "A full review of the finished Golf MK3 TFSI swap: engine margins, drivetrain, cooling, brakes, suspension, weight distribution and electrical design."
---

# Assessing the finished conversion

After spending several years working on the conversion, and with the car now very close to being finished, this seemed like a good moment to step back and look at the project as a whole. The objective was never simply to determine whether the BWA engine fits in a Golf Mk3 or whether the car produces enough power — those questions were answered a long time ago. The more interesting question is whether all the different systems have ended up forming a reasonably balanced and reliable car, so the assessment looked at the conversion as a complete package: engine and calibration, gearbox and drivetrain, cooling, brakes, suspension, weight distribution and electrical integration.

<figure class="flow-figure full-width"><video controls><source src="/images/golf-final.mp4" type="video/mp4"></video></figure>

## Engine and K04 conversion

The starting point is the 2.0 TFSI BWA from the Golf Mk5 GTI. Rather than retaining the original K03 configuration, the engine was converted to use a K04 turbo, together with the supporting components required by the new setup:

- K04 turbocharger
- 06F 906 036 F injectors
- 038 906 051 C 3-bar MAP sensor
- modified ECU calibration
- intake flap motor and position sensor deleted

The important point, however, is that the objective was never to extract the maximum possible output from the K04. The final calibration produces approximately 440 Nm of maximum torque, leaving a considerable margin compared with what a more aggressive K04 setup could produce — a deliberate decision, since for a road car built on a 1996 chassis, reliability, predictable power delivery and thermal stability matter more than the highest possible dyno figure. The calibration was developed and tested extensively on the dyno, with more than twenty runs during the process, monitoring knock, lambda, boost/load behaviour and temperatures while the engine was repeatedly taken through high-load and high-RPM operation — so the engine configuration is not simply theoretically sound, it has already been through a considerable amount of controlled high-load testing.

## Engine internals

The installation of the K04 naturally raised the question of whether the standard BWA internals should also be replaced. We looked into a forged configuration using Wössner EA113 pistons and FCP Engineering X-beam connecting rods, and concluded that forged internals are the right upgrade for this engine — just not immediately. The engine had already been machined during the conversion, the relevant components had very little use, and the current calibration has already been validated across more than twenty dyno runs, including repeated high-load and high-RPM pulls, without any sign of knock, fuelling or thermal issues.

At approximately 440 Nm, the standard internals are holding up well for now, but this is a meaningful step up from the stock BWA, and for a setup expected to run at this torque level over the long term, forged pistons and connecting rods are a reliability upgrade we consider necessary rather than optional. Opening a recently assembled and properly functioning engine before it actually needs it, however, did not seem justified, so the plan is to run the current internals in the near term and fit the forged pistons and connecting rods as a scheduled mid-term upgrade — a planned reliability step, not a reaction to a failure.

## Gearbox and drivetrain

The original Mk3 gearbox was not retained. The BWA is paired with an 02Q six-speed manual gearbox, giving a drivetrain much better suited to the newer engine, and the engine and gearbox are installed using a Fabless Manufacturing conversion kit, which places the drivetrain in its intended position rather than relying on improvised engine mounts. Clearances have been checked and tested with the complete installation.

The clutch was also upgraded to a Stage 2 unit rated to approximately 705 Nm which, with the engine currently producing around 440 Nm, gives roughly a 60% nominal torque margin. The CV joints were custom made for the conversion and are rated to approximately 700 Nm, providing a broadly similar margin. The resulting hierarchy is therefore:

- Engine: ~440 Nm
- Clutch: ~705 Nm
- CV joints: ~700 Nm

which is exactly the type of relationship we wanted — rather than having one component operating close to its limit, the parts downstream of the engine have been chosen with comfortable capacity margins over it.

## Thermal management

Thermal management was deliberately oversized from the beginning. The cooling system uses a Mishimoto aluminium radiator, high-efficiency electric fans and a closely fitted aluminium shroud covering almost the complete radiator surface, and an oversized front-mounted intercooler was installed for the same reason. There was initially some concern about stacking the condenser, intercooler and radiator behind the relatively small front opening of a Golf Mk3, since large heat exchangers are only useful if enough air can actually get through them — but the extensive dyno calibration provided an excellent opportunity to test this. After more than twenty runs, including repeated high-load and high-RPM operation, the cooling system showed no sign of becoming a limiting factor, and the dyno operator specifically commented on how well the car was managing heat. As a result, thermal management is now considered one of the stronger parts of the conversion rather than an area needing further work.

## Brakes

Increasing engine performance without addressing braking capacity would have produced a badly unbalanced conversion, so the braking system was substantially upgraded at both ends of the car. At the front, it uses CEIKA six-piston calipers together with significantly larger brake discs; at the rear, the original Mk3 calipers were replaced with Golf Mk4 R32 rear calipers, again combined with larger discs.

Increasing caliper size also changes the hydraulic requirements of the braking system, which is why the original 23.9 mm master cylinder was replaced by a 25.2 mm unit — a larger diameter reduces the pedal travel required to move a given volume of brake fluid, producing a shorter and firmer pedal with the larger calipers. The objective was therefore not simply to fit larger brakes, but to maintain proper pedal behaviour after doing so. Once the ABS is fully operational, the final validation will be dynamic: checking braking stability, pedal behaviour and ABS intervention under progressively harder braking.

## Suspension and anti-roll bars

The original suspension was also replaced. The car now uses CEIKA adjustable suspension, allowing both ride height and stiffness to be tuned, and the front and rear anti-roll bars were upgraded as well. This adjustability is particularly useful because the conversion inevitably changes the mass and dynamic behaviour of the car — rather than settling for a fixed suspension configuration, the final setup can be tuned around the completed vehicle.

Once the car is fully operational, the intention is to concentrate on setup rather than replacing more components:

- ride height
- damping/stiffness
- wheel alignment
- tyre pressures
- front/rear handling balance

At this stage, tuning what is already installed is likely to give considerably more benefit than adding further hardware.

## Weight distribution

One concern with installing a newer engine and six-speed gearbox into a Mk3 is the extra weight it puts over the front axle. Based on the component-weight calculations made during the project, the complete conversion adds approximately 74 kg compared with the original configuration — around +55 kg at the front and +19 kg at the rear — taking the estimated weight from around 1,110 kg to 1,184 kg. More importantly, the calculated front/rear distribution only shifts from roughly 62/38 to 62.7/37.3, so the car becomes slightly more front-heavy, but the change is relatively small.

That does not mean the additional weight is irrelevant: the larger gearbox, brakes, wheels and other components can affect transient behaviour and unsprung mass even when the static front/rear percentage barely moves. For this reason, once the car is finished it would be worth measuring the actual weight at all four corners — a proper corner-weight measurement would give the real total weight, front/rear and left/right distribution, and diagonal cross-weight, which would also be useful when setting up the adjustable CEIKA suspension.

## Electrical architecture

One of the basic principles of the conversion was to avoid unnecessarily combining the complete Mk5 and Mk3 electrical architectures. The BWA engine therefore retains its own engine-management system and adapted engine wiring, while the original Mk3 body wiring was preserved wherever possible, and only the signals that need to cross between the two systems — vehicle speed and engine RPM, for example — are adapted through dedicated converters. The original Mk3 systems, including the ABS and airbag, were meant to remain untouched, and this approach considerably reduces the number of dependencies between the MED9-controlled BWA engine and the much older Mk3 body electronics.

The recent ABS and airbag diagnosis was a good example of why understanding these boundaries matters: the apparent airbag problem turned out to be caused by the faulty ABS unit interfering with the K-Line shared by both controllers, while the airbag controller itself was perfectly functional. The problem was therefore within the original Mk3 systems, not a consequence of the BWA engine-management architecture.

## Overall assessment

Looking at the conversion as a complete system, the most positive aspect is probably that no single modification exists in isolation. The extra engine performance was accompanied by changes to the gearbox, clutch and driveshaft system; the extra thermal load was addressed with a substantially upgraded cooling and intercooling package; and the increase in performance came together with larger brakes, a larger master cylinder, adjustable suspension and upgraded anti-roll bars. And rather than trying to make a 1996 Golf behave electrically like a Mk5, the engine and body electrical systems were kept as independent as reasonably possible.

There are also deliberate engineering margins throughout the car: the engine produces around 440 Nm, while the clutch is rated to approximately 705 Nm and the custom CV joints to approximately 700 Nm; the cooling system has shown substantial thermal capacity during repeated dyno testing; and the brakes and suspension have considerably more capability than the original Mk3 components.

That does not mean the car is completely finished. The replacement ABS still needs to be installed and tested, the suspension, alignment and braking behaviour will need to be evaluated dynamically once the car is back on the road, and it would be worth getting the actual four-corner weights rather than continuing to rely on calculated values. Most of these are commissioning and setup tasks rather than fundamental changes to the design — the one exception being the engine internals: the standard BWA pistons and rods are holding up well at the current 440 Nm, but fitting forged internals is a planned mid-term upgrade rather than an optional one, given the torque the engine is now producing long-term.

Perhaps the most important conclusion from this assessment, then, is that aside from that scheduled internals upgrade, there is currently very little reason to keep adding modifications. The components are already there — the next stage is to finish the remaining details, set the car up properly and start using it, with the forged internals upgrade lined up as the next mechanical step.
