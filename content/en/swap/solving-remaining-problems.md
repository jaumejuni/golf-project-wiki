---
weight: 25
title: "Solving the remaining problems"
description: "Diagnosing a shared K-Line fault between the ABS and airbag units, and validating the cooling system and engine internals after 20+ dyno runs."
---

# Solving the remaining problems

Once the engine was running correctly and the ECU calibration was finished, there were still a few areas that needed some extra attention: some were actual faults, such as the ABS and airbag systems, while others were questions about the design itself — whether the cooling system had enough capacity for the K04 setup, and whether the standard BWA engine internals offered a reasonable reliability margin. After spending so much time on the conversion, it made sense to investigate these points properly rather than simply assume everything was fine.

## Airbag and ABS

The ABS and airbag are both original Golf Mk3 systems, and neither of their wiring circuits was intentionally modified as part of the engine conversion. However, after the car had been standing for a long period during the conversion, we discovered that neither system was behaving correctly — in particular, it was not possible to communicate with the airbag control unit through the diagnostic equipment.

Because the dashboard had been removed and refitted during the project, the first suspicion was naturally a wiring problem: a connector could have been left disconnected, a ground could have been lost, or part of the original harness could have been damaged. For this reason, the airbag control unit, 6N0 909 603, was pulled from the car and tested separately on the bench — and it communicated perfectly, confirming that the unit itself was working correctly and shifting the investigation towards the wiring and diagnostic system in the car.

### A shared K-Line

The important detail turned out to be that the ABS and airbag controllers are not completely independent from a diagnostic point of view: both communicate through the same K-Line, which meant a problem with one control unit could potentially affect communication with the other.

The ABS unit had already been suspected of being faulty and had previously been removed and sent to a specialist for repair. It came back marked as functioning, but once it was reinstalled in the car, we still could not confirm it was actually working, and further testing eventually confirmed that the ABS unit was still faulty. We also discovered something more interesting along the way: when the defective ABS unit was connected to the car, it interfered with the shared K-Line and blocked communication with the airbag control unit — for some reason, the faulty ABS electronics were disturbing the diagnostic line. Once the ABS was disconnected, communication with the airbag unit worked again.

That finally explained a situation that had been quite confusing: the airbag control unit communicated correctly on the bench, its wiring had not been modified, and yet it could not be accessed once all the systems were connected in the car. The problem, in other words, was never actually in the airbag system — it was the faulty ABS unit interfering with the shared diagnostic K-Line.

### Final diagnosis

So the two problems that initially looked independent ended up sharing the same root cause. The airbag control unit is functioning correctly and does not need replacing; the ABS unit, on the other hand, has now been confirmed as faulty, despite having previously come back from repair marked as functional. A replacement ABS unit has been ordered, and once it is installed, the final steps will be to confirm communication with both control units, check the wheel-speed signals and verify through a road test that the ABS works correctly.

The whole process was also a useful reminder of something worth keeping in mind when diagnosing older electronic systems: a control unit that cannot be reached through diagnostics is not necessarily the one causing the problem. When several control units share the same communication line, a fault in one of them can block diagnosis of another unit that works perfectly well.

## Thermal management

Cooling was one of the areas we deliberately oversized when designing the conversion. A BWA with a K04 can generate considerably more heat than the original Mk3 engine, and packaging everything behind the front bumper means the airflow has to pass through several heat exchangers on its way through. For this reason, the cooling system uses a Mishimoto aluminium radiator, together with high-efficiency electric fans and a shroud covering almost the entire surface of the radiator. The fans sit very close to the radiator, with only a small gap to the aluminium shroud, which lets them draw air through a much larger part of the radiator surface instead of just the circular areas directly in front of each fan. We followed the same philosophy with the intercooler — rather than fitting the smallest one capable of supporting the expected power, we installed an oversized front-mounted intercooler for extra thermal capacity.

Initially, though, all of this was only a design assumption: fitting a large radiator and intercooler does not automatically guarantee good thermal management once everything is packaged into the car. The ECU calibration gave us a chance to test it properly. The car completed more than twenty dyno runs while the ECU software was being developed and adjusted, repeatedly running the engine at high loads and high RPM and building up considerably more heat than a single power run would. The cooling system performed extremely well throughout — the person running the dyno specifically commented on how well the car was managing its temperatures — which was probably the best validation we could get without taking the car onto a circuit.

As a result, we no longer see thermal management as an area needing further modification: the radiator, fan arrangement and oversized intercooler provide plenty of capacity for the current configuration. Temperatures will naturally keep being monitored once the car is being driven regularly, particularly through summer, but there is currently no reason to increase the cooling capacity any further.

## Engine internals

The other question raised by the K04 conversion was whether it made sense to strengthen the BWA internally. The obvious modification would be forged connecting rods and pistons, and we spent some time looking into what that would require: one possible configuration would use Wössner forged EA113 pistons, with roughly a 9.8:1 compression ratio and 21 mm wrist pins, combined with FCP Engineering 144 × 21 mm X-beam connecting rods, wrist-pin oiling and ARP2000 bolts. The final piston diameter would only be chosen after measuring the block, since there is no reason to increase the bore unnecessarily if the cylinders are in good enough condition to keep the standard 82.5 mm size.

But the really important question was not what forged components we could install — it was whether we actually needed them now, or whether they could wait. The engine had been machined as part of the conversion and the relevant components had very little use, and the calibration has also been extensively tested on the dyno: more than twenty runs, including repeated high-load and high-RPM pulls, with knock, lambda, load, boost pressure and temperatures monitored throughout, with no sign of the standard internals being overstressed.

The final ECU calibration produces approximately 440 Nm of maximum torque, and the rest of the drivetrain has deliberately been specified with considerably greater capacity:

- Maximum engine torque: ~440 Nm
- Stage 2 clutch: ~705 Nm
- Custom CV joints: ~700 Nm

so the clutch provides roughly a 60% margin over the current maximum engine torque, and the custom CV joints a broadly similar one. That answers the near-term question — the standard internals are coping well with 440 Nm right now — but this is a meaningful step up from the stock BWA, and running that kind of torque on stock pistons and rods indefinitely is not something we are comfortable with long-term. Our conclusion, therefore, is that the current internals are fine for now, but forged internals are a mid-term upgrade we consider necessary, not optional — a planned step for the next time the engine is opened, rather than a reaction to a failure.

## Where we are now

These investigations have been useful precisely because they have not all resulted in another modification. The airbag problem turned out not to be related to the airbag control unit itself — the controller works correctly, but the defective ABS unit was interfering with the shared K-Line and blocking diagnostic access to the airbag. The ABS was eventually diagnosed correctly and confirmed faulty; a replacement has already been ordered, and once it is installed, communication, wheel-speed signals and overall operation will need to be verified with a road test. The cooling system was put through repeated high-load dyno testing and proved that the deliberately oversized radiator, fan and intercooler package works as intended. And after weighing up the engine internals against the actual load we are asking the engine to produce, we concluded that the standard components are coping well for now, but that forged pistons and connecting rods are a mid-term upgrade we plan to carry out rather than an optional extra.

At this stage, therefore, the immediate objective is no longer to keep modifying the car — it is to install the replacement ABS, finish the remaining checks and start driving it, with the forged-internals upgrade planned as a separate mid-term step.
