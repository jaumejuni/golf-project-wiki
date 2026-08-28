---
weight: 25
title: "Solving the remaining problems"
---

# Solving the remaining problems

Once the engine was running correctly and the ECU calibration was finished, there were still a few areas that needed some additional attention.

Some were actual faults, such as the ABS and airbag systems. Others were questions about the design itself: whether the cooling system had enough capacity for the K04 setup, and whether the standard BWA engine internals provided a reasonable reliability margin.

After spending so much time on the conversion, it made sense to investigate these points properly rather than simply assume that everything was fine.

## Airbag and ABS

The ABS and airbag are both **original Golf Mk3 systems**, and neither of their wiring circuits was intentionally modified as part of the engine conversion.

However, after the car had been standing for a long period during the conversion, we discovered that neither system was behaving correctly. In particular, it was not possible to communicate with the airbag control unit using the diagnostic equipment.

Because the dashboard had been removed and installed again during the project, the first suspicion was naturally a wiring problem. A connector could have been left disconnected, a ground could have been lost, or part of the original wiring harness could have been damaged.

For this reason, the airbag control unit, **6N0 909 603**, was removed from the car and tested separately on the bench.

It communicated perfectly.

This confirmed that the airbag control unit itself was working correctly and shifted the investigation towards the wiring and diagnostic system in the car.

### A shared K-Line

The important detail turned out to be that the ABS and airbag controllers are not completely independent from a diagnostic point of view.

Both communicate through the **same K-Line**.

This meant that a problem with one of the control units could potentially affect communication with the other.

The ABS unit had already been suspected of being faulty and had previously been removed and sent to a specialist for repair. It was subsequently returned as functioning, but once installed back in the car we still could not confirm that it was actually working.

Further testing eventually confirmed that **the ABS unit was still faulty**.

But we also discovered something much more interesting: when the defective ABS unit was connected to the car, it interfered with the shared K-Line and prevented communication with the airbag control unit.

For some reason, the faulty ABS electronics were disturbing the diagnostic line.

Once the ABS was disconnected, communication with the airbag control unit became possible again.

This finally explained a situation that had initially been quite confusing:

- the airbag control unit communicated correctly on the bench;

- the airbag wiring had not been modified;

- but the airbag could not be accessed when all the systems were connected in the car.

The problem, therefore, **was not actually in the airbag system**.

It was the **faulty ABS unit interfering with the shared diagnostic K-Line**.

### Final diagnosis

The two problems that initially appeared to be independent therefore ended up having the same root cause.

The airbag control unit is functioning correctly and does not need to be replaced.

The ABS unit, on the other hand, has now been confirmed as faulty, despite having previously been returned from repair as supposedly functional.

A replacement ABS unit has therefore been ordered.

Once it is installed, the final steps will be to confirm communication with both control units, check the wheel-speed signals and verify through a road test that the ABS operates correctly.

The whole process has also been a useful reminder of something important when diagnosing older electronic systems: **the fact that a control unit cannot be accessed through diagnostics does not necessarily mean that this is the unit causing the problem**.

When several control units share the same communication line, a fault in one of them can prevent diagnosis of another perfectly functional unit.

## Thermal management

Cooling was one of the areas we deliberately oversized when designing the conversion.

A BWA with a K04 can generate considerably more heat than the original Mk3 engine and, in addition, packaging everything behind the front bumper means that the airflow has to pass through several heat exchangers.

For this reason, the cooling system uses a **Mishimoto aluminium radiator**, together with high-efficiency electric fans and a shroud covering almost the entire surface of the radiator.

The fans are positioned very close to the radiator, leaving only a small gap between it and the aluminium shroud. This allows the fans to draw air through a much larger proportion of the radiator surface instead of only through the circular areas directly in front of each fan.

We followed the same philosophy with the intercooler. Rather than installing the smallest intercooler capable of supporting the expected power, we installed an **oversized front-mounted intercooler** to provide additional thermal capacity.

Initially, however, all of this was still only a design assumption. Installing a large radiator and intercooler does not automatically guarantee good thermal management once everything is installed in the car.

The ECU calibration gave us an opportunity to test it properly.

The car completed **more than twenty dyno runs** while the ECU software was being developed and adjusted. During this process, the engine was repeatedly operated at high loads and high RPM, accumulating considerably more heat than during a single power run.

The cooling system performed extremely well throughout the process. In fact, the person operating the dyno specifically commented on how well the car was managing its temperatures.

This was probably the best validation we could obtain without taking the car onto a circuit.

As a result, we no longer consider thermal management to be an area requiring further modification. The radiator, fan arrangement and oversized intercooler provide sufficient capacity for the current configuration.

Naturally, temperatures will continue to be monitored once the car is being driven regularly, particularly during the summer, but there is currently no reason to increase the cooling capacity any further.

## Engine internals

The other question raised by the K04 conversion was whether it made sense to strengthen the BWA internally.

The obvious modification would be to install forged connecting rods and pistons, and we spent some time investigating what would be required.

One possible configuration would use **Wössner forged EA113 pistons**, with an approximately 9.8:1 compression ratio and 21 mm wrist pins, combined with **FCP Engineering 144 × 21 mm X-beam connecting rods**, wrist-pin oiling and ARP2000 bolts. The final piston diameter will only be selected after measuring the block — there is no reason to unnecessarily increase the bore if the condition of the cylinders allows the standard 82.5 mm size to be retained.

However, the really important question was not *what forged components could we install?*

It was:

> **Do we need them now, or can they wait?**

The engine was machined as part of the conversion and the relevant components had very little use. The calibration has also been extensively tested on the dyno — more than twenty runs, including repeated high-load and high-RPM pulls, with **knock, lambda, load, boost pressure and temperatures** monitored throughout — with no indication of the standard internals being overstressed.

The final ECU calibration produces approximately **440 Nm of maximum torque**.

The rest of the drivetrain has deliberately been specified with considerably greater capacity:

- **Maximum engine torque:** ~440 Nm

- **Stage 2 clutch:** ~705 Nm

- **Custom CV joints:** ~700 Nm

The clutch therefore provides approximately a **60% margin** over the current maximum engine torque, while the custom CV joints provide a broadly similar margin.

That answers the near-term question: the standard internals are coping well with 440 Nm right now. But this is a meaningful step up from the stock BWA, and running that kind of torque on stock pistons and rods indefinitely is not something we are comfortable with long-term.

Our conclusion, therefore, is that **the current internals are fine for now, but forged internals are a mid-term upgrade we consider necessary, not optional** — a planned step for the next time the engine is opened, rather than a reaction to a failure.

## Where we are now

These investigations have been useful precisely because they have not all resulted in another modification.

The airbag problem turned out not to be related to the airbag control unit itself. The controller works correctly, but the defective ABS unit was interfering with the **shared K-Line** and preventing diagnostic access to the airbag.

The ABS was eventually diagnosed correctly and the unit itself was confirmed to be faulty. A replacement has already been ordered and, once installed, communication, wheel-speed signals and operation of the system will need to be verified with a road test.

The cooling system was subjected to repeated high-load dyno testing and demonstrated that the deliberately oversized radiator, fan and intercooler package works as intended.

And after assessing the engine internals according to **the actual load we are asking the engine to produce**, we concluded that the standard components are coping well for now, but that forged pistons and connecting rods are a mid-term upgrade we plan to carry out rather than an optional extra.

At this stage, therefore, the immediate objective is no longer to keep modifying the car.

It is to **install the replacement ABS, complete the final checks and start driving it** — with the forged-internals upgrade planned as a separate mid-term step.