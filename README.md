# ERL-HUB — Post-Earthquake Multi-Agency Emergency Relief Logistics Hub

**MAIT | CSE | CIC-211 OOPS Using C++ Project**  
Submission deadline stated in assignment: **27 November 2026, 11:59 PM**

ERL-HUB is a console-based C++17 prototype that manages a relief depot, cargo inventory, a mixed emergency fleet, priority dispatch, route checks, exception handling, and binary incident history. It is an academic simulation—not a real emergency dispatch system.

## Features

- Cargo and depot inventory abstraction, restock (`+=`) and deduction (`-=`), manifest identity (`==`), and stream insertion/extraction operators.
- Explicit dynamic `TransportManifest` allocation with deep copy constructor, assignment operator and destructor.
- Relief vehicles represented through abstract `ReliefVehicle` and derived air, ground, amphibious, and hybrid medical types.
- Virtual inheritance to avoid duplicate `ReliefVehicle` base subobjects in the hybrid vehicle.
- Runtime polymorphism via `std::vector<std::unique_ptr<ReliefVehicle>>` and base pointers.
- Composition of `GPSBeacon` and `EmergencyLifeSupportUnit` inside the vehicle base.
- Template `PriorityDispatchQueue<T>`, `std::vector`, `std::map`, `std::unordered_map`-ready design, STL sorting/for_each, and a custom functor/manipulator.
- Custom exceptions and binary incident persistence with rollback on write/flush failure.

## Build and run

Requirements: a C++17 compiler (g++ recommended).

```bash
g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o erl_hub
./erl_hub
```

Or run `./build.sh`.

The program creates/appends `incident_log.bin` in the current working directory. Remove this file before a fresh demo run if you want the record count to start from zero:

```bash
rm -f incident_log.bin
```

## Project files

- `src/main.cpp` — complete program
- `docs/PROJECT_REPORT.md` — report / design explanation
- `docs/SYLLABUS_MAPPING.md` — unit-by-unit requirement coverage checklist
- `docs/VIVA_PREP.md` — viva concepts and sample questions
- `build.sh` — compilation script
