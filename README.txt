NekoMesh
========

NekoMesh is alternative firmware for MeshCore/Meshtastic

[!] Warning: firmware status is alpha so except bugs and crashes
For my fork of MeshCore check branch 'legacy'. I will sometimes merge pull requests to it

Community
---------

None yet :)
but if there will be some users i will create discord/matrix/irc or something like this

Supported devices
=================

Legend
------
* N/HW - I don't have hardware (yet?)
* N/S  - No support yet (but i have hardware)
* P/S  - Partitionally supported
* S    - Fully supported

+-----------------------+----------------+--------+
| Name                  | Env name       | Status |
+-----------------------+----------------+--------+
| Heltec mesh node T114 | heltec_t114    | N/S    |
| Heltec V4             | heltec_v4      | N/S    |
| Heltec V3             | heltec_v3      | N/S    |
| Faketec               | faketec        | N/HW   |
+-----------------------+----------------+--------+

Developing / building
=====================

Nix (with flakes)
-----------------

$ nix develop
...
$

# To build
$ pio run -e <env name>

# To upload
$ pio run -t upload -e <env name>

# Format
$ nix fmt

Licensing
=========

This project under MIT License
Original MeshCore under MIT License
Original Meshtastic under GPL v3.0

Files in boards/ mostly taken from Meshtastic/MeshCore
