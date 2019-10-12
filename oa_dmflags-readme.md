# OpenArena dmflags

Adds additional dmflags from OpenArena

* 64: Instant weapon change
* 128: Non-accelerated jumping
* 256: Total invisibility
* 512: Light voting
* 1024: No self damage from weapons

## Build as mod

`$ make -j$(nproc) BUILD_SERVER=0 BUILD_CLIENT=0`

### Packaging

The pk3 needs to contain at least cgame and qagame QVMs.

Pack up `vm/cgame.qvm` and `vm/qagame.qvm` from `build/release-linux-x86_64/baseq3/` into a pk3.

## Install

This mod is based on the ioquake3 code.

For it to be used on multiplayer servers, the server needs to disable
pure mode (set sv_pure cvar to 0) or install the oa_dmflags pk3 files.

## Credits

* Quake 3 - id Software
* ioquake3 - ioquake3 contributors
* OpenArena - OpenArena contributors
