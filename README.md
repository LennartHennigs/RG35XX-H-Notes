# Knulli on Anbernic RG-XX Devices

This is a living document that describes what I learned setting up and running Knulli on the [Anbernic RG35XX-H](https://anbernic.com/products/rg35xx-h) and [Anbernic RG40XX-H](https://anbernic.com/products/rg40xx-h).

This file will most likely contain errors and vague information. \
You might not like how I describe things. I am sorry. \
Also, I can't be held responsible if you break stuff by following this. \
Nor will I share ROMS, BIOS, or any other files with you. Ask Google instead.

If you find this information helpful, please consider giving it a ⭐️ at GitHub. \
And maybe consider [buying me a ☕️](https://ko-fi.com/lennart0815).

Look at the [CHANGELOG](https://github.com/LennartHennigs/RG35XX-H-Notes/blob/main/CHANGELOG.md) for recent changes to this document.

**Note**: This guide is standing on the shoulders of giants. Many of the tips here come from [beanioz on Reddit](https://www.reddit.com/r/RG35XX_Plus/comments/1b2zcyk/batocera_a_few_tips/) and other people on [Reddit](https://www.reddit.com/r/RG35XX_H/).

## Table of Contents

- [Introduction](#introduction)
- [Setting Up The Device](#setting-up-the-device)
- [Controls](#controls)
- [The SD Card](#the-sd-card)
- [BIOS Files](#bios-files)
- [ROM Files](#rom-files)
- [Workflow for Adding Content](#workflow-for-adding-content)
- [Setup and Optimize Emulators](#setup-and-optimize-emulators)
- [Configuring Ports](#configuring-ports)
- [Tools](#tools)
- [Bluetooth](#bluetooth)
- [Some Terms / What is](#some-terms--what-is)

## Introduction

- Knulli is a Linux-based custom firmware (CFW) for retro gaming for multiple devices/platforms.
- It is a fork of the Batocera firmware.
- There is now a port for the Anbernic.
- It provides a better experience than the stock firmware.

## Setting Up The Device

Follow these steps to set up Knulli on your device. I arranged the steps in a helpful order, so it is best to follow them along.
- I recommend using two SD cards – one for Knulli and one for the ROMs and your Knulli settings.
  - This has the advantage of updating Knulli without messing up your settings or games.
  - The left slot will contain the Knulli card, and the right will contain the ROMs.
  - Use at least a 64GB card for Knulli.

### Installing Knulli on the device

- Download Knulli for your device from the [releases page](https://github.com/knulli-cfw/distribution/releases)
- Flash the firmware to a (new!) SD card (e.g., use [BalenaEtcher](https://etcher.balena.io/)).
- Put the SD card in the device (left slot).
- Turn on the device (`Long-press on Power Button`).
- *The device will now update the file structure on the SD card*.

### Preparing the ROM SD card

- You need to format your second SD card with the Linux ex4 file format (to be able to run certain ports).
- Put the SD card in the right slot.
- Select the new card: `System Settings > Storage Device`.

- Consider setting up WiFi (see below).
- Reboot the device (`Menu > Quit > Restart System`).

### Setting up WiFi

- `Main Menu > Network Settings`.
- `Main Menu > System Settings > Frontend Developer Options > Enable web API access`.
- Now, you can find your device in your network.
- IP Address: `Main Menu > Network Settings`.
- You can now also download themes and enable scraping and other tools that need an Internet connection.
- In addition, you can now find your device on your network.
- You can **mount** the device to copy data, **connect via SSH** or the **Emulation Station Web Service**: \
 `http://[ip address]:1234`.
- Username and password are: `root/linux`.

**Note**: The device has problems to connect to 5GHz and guest networks.

### Download Themes

- A recommended theme is `Art-Book-Next-ES`: \
`Main Menu > Updates & Downloads > Themes > Art-Book-Next-ES`
- Enable your theme: \
`Main Menu > User Interface Settings > Theme Set`

### Enable Scraping

- A scraper can download game information to your device.
- You do need an active internet connection for this.
- Register an account at [screenscraper.fr](https://www.screenscraper.fr/).
- Enter your credentials at `Main Menu > Scraper`.

### Enable Retro Achievements

- Get a login at [retroachievements.org](https://retroachievements.org).
- Enter your credentials: `Main Menu > Game Settings > RetroArchievements Settings`.

### Update the ROM List on Each Boot

- `Main Menu > Games Settings > Netplay Settings > Index New Games`

### Overclock

- `Main Menu > System Settings > Overclock`

### Audio Settings

- You can disable the in-menu music in `Main Menu > Sound Settings > Frontend Music`.
- Consider disabling `Enable Navigation Sounds`and `Enable Video Preview Audio`there, too.
- If you get no sound after you connect the console via HDMI, you need to reset the audio output:
  - Go to: `Main Menu > System Settings > Audio Output`.
  - Select `AudioCodec` and confirm. And then go back to `Auto`.
- [Batocera > Controller](https://wiki.batocera.org/supported_controllers)

### Enable / Disable Analog Stick LEDs

- To enable/disable the LED lights: `System Settings > Services > analog_stick_LED`
- Under `Tools` you can configure the LEDs.

## Controls

### General Navigation

| Button | Function |
|-|-|
| `POWER` | Long press to turn on. When turned on, click for standby. |
| `START` | Menu |
| `F + VOLUME` | Change brightness |
| `B` | OK / Select |
| `A` | Cancel / Back |
| `F + POWER` | Quick Shutdown (not saving metadata) |
| `R3 / L3` | Next / Previous Song (Frontend Music) |

- `A`+ `B` button assignment can be switched: \
`Main Menu > System Settings > Frontend Developer Options > Switch Confirm & Cancel Buttons in EmulationStation`. I recommend doing so.
- Shutdown the device: `Main Menu > Quit > Shutdown System > Yes` or press `F + POWER`.

#### Links

- [Batocera > Controls Overview](https://wiki.batocera.org/basic_commands).

### Main Menu

| Button | Function |
|-|-|
| `START` | Quick Access |
| `L1 / L2` | Previous emulator |
| `R1 / R2` | Next emulator |
| `Y` | Quick Search |
| `B` | Side Menu |

### Game List

| Button | Function |
|-|-|
| `SELECT` | View Options |
| `L1 / R1` | Page list up / down |
| `L2 / R2` | Previous / next emulator |
| `X` (long press) | Add / remove to Favorites |
| `A` (long press) | Edit meta data / Edit keyboard config |

### Quick Load / Save

- In most emulators, pressing `F + Y` or `F + X` will save or load a game's state-
- There is a list of slots you can save games, too. You select the slot via `F + UP / DOWN`.
- But you can also load a saved state when you are in the game list.
- In the game list, press `X` to show the saved state list.
- Press `A` to load a state, `Y`to delete one, and `B` to cancel.

### In-game (GB, GBA, GB Color, NES, SNES, Sega, PSX)

- *TBD: PSP*

| Button | Function |
|-|-|
| `F + START` | Exit Game |
| `F + RIGHT` | Fast Forward |
| `F + L1` | Take Screenshot |
| `F + UP / DOWN` | Select Quick Save Slot |
| `F + Y` | Quick Save Game |
| `F + X` | Quick Load Game |
| `F + A` | Reset Game |
| `F + R2 / L2` | Select Shader |
| `F + B` | Emulator Menu|

**Note**: To see the screenshots you took in the menu, run `Main Menu > Games Settings > Update Game List`. Then, you will have a "Screenshots" section in your main menu.

### In-game Nintendo DS

| Button | Function |
|-|-|
| `R2` | Toggle Display View Mode |
| `L2 + R2` | Toggle Single Double View Msode |

### In-game MAME

| Button | Function |
|-|-|
| `LEFT` | Insert coin (not sure if this a pre-set) |
| `A` | OK / Select |
| `B` | Cancel / Back|
| `L3` | Emulator Menu |
| `F + Y` | Quick save game |
| `F + X` | Quick load game |
| `F + A` | Reset game |
| `F + R2` | Take screenshot |
| `F + L2 / F + R2` | Select Shader |

### Other Controls

See the [Ports](#setting-up-and-running-ports) and the [Tools](#tools) section.

### Mapping Keys to Pad Buttons For a Single Game

- You can define keys to be mapped to buttons (for keyboard-controlled systems, e.g., Amstrad).
- To see the current configuration, `SELECT > View Pad to Keyboard Information.`
- To edit it: `A (long press) > Edit PadToKey Profile`.
- This will create a configuration file in your `roms/` folder, either a `.p2k.cfg`or a `.keys` file.
- `.p2k.cfg` files have a [config style format](https://wiki.recalbox.com/en/advanced-usage/pad-to-keyboard).
  
``` cfg
  0:select = j ;; Joystick
```

- `.keys` files are in [JSON files](https://wiki.batocera.org/remapping_controls_per_emulator).

``` json
  {
      "actions_player1": [
          {
              "trigger": "select",
              "type": "key",
              "target": "KEY_J",
              "description": "Joystick"
          }
      ]
  }
```

- The `.keys` file precedes the `.k2p.cfg` one.
- You can also manually create a key config file in the folder. Use the name of the ROM/port and append the suffix.
- You can then add descriptions to the key definitions.  For both examples above, add "Joystick" as a description.
- In the `.k2p.cfg` files the buttons are `EAST`, `WEST`. In the `.keys` they are called `A`, `Y`.
- In the `.key` files, `L1 ' and `R1` are called `page up` and `page down`.

## The SD Card

- The SD card has two partitions: `BATOCERA` and `SHARE`. We will only concern ourselves with the `SHARE` partition.
- On `SHARE` are the folders for adding content to the device.
- The `bios/` folder is the place where to add BIOS files (see below).
- The `roms/` folder contains folders for the different emulators for your games. Most of the folder names are self-explanatory.

## BIOS Files

- Some Emulators need BIOS files to run.
- Check for missing/needed BIOS files via: \
`Main Menu > Game Settings > Missing Bios Check`. \
- Or select `All` to see all possibly needed ROM files.
- Or [see all needed ROMS](https://github.com/batocera-linux/batocera.linux/blob/master/package/batocera/core/batocera-scripts/scripts/batocera-systems) here.
- Find them online...
- Copy them into your SD card's `bios/` folder.
- Turn on the device.
- Check if they are correct: \
`Main Menu > Game Settings > Missing Bios Check`

## ROM Files

- Find them online...
- Copy your files in the different `roms/` folders.
- Put your game's files in the correct emulator folders.
- Check the `_ìnfo.txt` files in each `roms/` subfolder for information on file format and folder structure to set things up.
- I've included a list of specific game port folders below.

## Workflow for Adding Content

- Copy files on the SD card (either from your computer or via WiFi).
- Remove Apple's dotfiles, if needed (see below).
- Eject all mounted partitions.
- Put card in RG35XX-H.
- Power on the device.
- Run the Scraper \
`Main Menu > Scraper > Scrape Now`
- Update the Game List \
`Main Menu > Games Settings > Update Game List`
- Play!!

**Note**: Alternatively, you can connect to your device via your network and mount the `share/` folder if it is connected via WiFi. Copy your filed, update the game list, scrape, and update again.

### Removing Apple's Dot Files

- On a Mac, you can run `dot_clean /Volumes/SHARE`.
- I also suggest to create a [.dot_clean](#dot_clean) script in your `ports` folder.

## Setup and Optimize Emulators

- This section explains the "non-trivial" emulators (e.g. *DOS* or *Daphne* are being set up).
- For a list of in-game controls, look at the [Controls](#controls) section.

### Amstrad

- The emulator used is [Caprice32](https://docs.libretro.com/library/caprice32/).
- Fire and movement will automatically recognized as joystick input.
- Therefore, don't map keyboard navigation to the joysticks or the D-PAD keys.
- Bind the virtual keyboard (`F9`) to `the left analog stick click` for all of Amstrad, in case you need other keys. \
  `Game Setting > Per System Advanced Configuration > Amstrad CPC > Edit PadToKey Profile > Left Stick Press = F9`
- Only assign the keys you must select (e.g., joystick or single-player mode) and start a game. \
  When a game is selected: `A (long press) > Create/Edit PadToKey Profile`
- **FYI**: Amstrad's *return* key does not equal the `Enter` key. I have not found a way to map this to it.

### Nintendo 64

- You need to change the default emulator to make games run smoothly.
- Go to `Game Settings > Per System Advanced Configuration > Nintendo 64`.
  - Set `Emulator: Mupen64Plus:RICE`.
  - Set `Power Mode: High Performance`.
  - Set `Game Aspect Ration: 4:3`.

#### In-game Controls
- I have not yet found a way to access the hotkey menu or to _Quick Load_ or _Quick Save_.

|Button|Function|
|-|-|
| `F + START` | Exit Game |
| `F + RIGHT` | Fast Forward |
| `F + A` | Reset Game |
| `F + L1` | Take Screenshot |

- To switch the `A` and `B` buttons, edit the `system\configs\mupen64\input.xml` file:

``` xml
		<input name="b"        	     value="C Button R" />
		<input name="a"        	     value="A Button" />
```

### DOS

- There are different DOS emulators that you can choose. Per default, `DOSBox Pure` is used.
- Copy a game folder to `roms/dos/`.
- Add `.DOS` to the end of the folder name.
- If there is a `dosbox.conf` file in the game folder, its settings will be applied.
- If there is a `dosbox.bat` file in the game folder, it will be executed.
- If you start the game without a `dosbox.bat` file, you will get the start menu where you can select a file as the default executable. Use the right joystick and the `Y`key to select a file. You can also select a timeout, where the first X frames after starting a game are not shown.
- After selecting an executable, it will be run, and a file called `AUTOBOOT.DBP` will be created.
- A keyboard overlay will be shown if you press `L3`.
On the top left of the overlay keyboard, there is an option to map keys manually. However, it is preferable to use the Batocera key mapping.

| Button | Function |
|-|-|
| `L3` | Show Keyboard (and Keyboard Mapper button) |
| `LEFT JOYSTICK` | Mouse |
| `F + UP /DOWN` | Load / Save |
| `F + RIGHT` | Fast Forward |
| `Y` | OK |

#### Links

- [Batocera > DOSBox Pure](https://wiki.batocera.org/systems:dos)
- [DOSBox Pure](https://github.com/schellingb/dosbox-pure)
- [`dosbox.conf` Settings](https://www.dosbox.com/wiki/Dosbox.conf)

### Daphne

*TBD*

## Setting up and Running Ports

### Port Folders
  
  This is a list of existing port folders/emulators available on the Batocera CFW by default.

  |Port Folder|Game|
  |-|-|
  | [`cannonball`](https://wiki.batocera.org/systems:cannonball)| Out Run - Sega Arcade |
  | [`devilutionx`](https://wiki.batocera.org/systems:devilutionx) | Diablo & Diablo Hellfire |
  | [`eduke32`](https://wiki.batocera.org/systems:eduke32)| Duke Nukem 3D |
  | [`fallout1-ce`](https://github.com/alexbatalov/fallout1-ce) | Fallout 1 |
  | [`fallout2-ce`](https://github.com/alexbatalov/fallout2-ce) | Fallout 2 |
  |[`mrboom`](https://wiki.batocera.org/systems:mrboom)| Bomberman|
  |`ports`| Linux games|
  | [`prboom`](https://wiki.batocera.org/systems:prboom?s[]=doom) | Doom 1 & Doom 2 |
  |[`quake3`](https://ioquake3.org/)|Quake 3|
  | `scummvm` | Scumm Engine for Games like Monkey Island |
  | [`sdlpop`](https://wiki.batocera.org/systems:sdlpop?s[]=sdlpop)| Prince of Persia |
  | [`tyrquake`](https://wiki.batocera.org/systems:tyrquake?s[]=tyrquake) | Quake 1 |
  | [`vitaquake2`](https://github.com/libretro/vitaquake2)| Quake 2 |
  | [`xash3d_fwgs`](https://wiki.batocera.org/systems:xash3d_fwgs) | Half-Life Engine |

- Here is a link to a complete list of [available systems of Batocera Linux](https://wiki.batocera.org/systems), which will be larger than for the RG35XX-H, but still might be helpful.

## Configuring Ports

Always start by reading the `_info.txt` file in the emulator's folder.

### Stardew Valley

#### Prerequisites
- You bought Stardew Valley on Steam.
- you installed the Stardew Valley port via Portmaster on your handheld.

#### Select the right game sources from Steam

- To download the game, you need its app ID (here [413150](https://steamdb.info/app/413150/)) and the depot ID (= OS, here Linux and [413513](https://steamdb.info/depot/413153/)), and then select the correct manifest (= version). On the [manifest page](https://steamdb.info/depot/413153/manifests/), filter by compatibility.
- If you want a specific version, compare the manifest date with the [version history](https://steamdb.info/app/413150/patchnotes/). If not, use the most recent one (the one on the top).

#### Download the game sources

- The easiest way to download the game is to use [DepotDownloader](https://github.com/SteamRE/DepotDownloader/releases/tag/DepotDownloader_3.0.0). 
- Download the latest version for your OS.
- In the [SteamDB manifest list](https://steamdb.info/depot/413153/manifests/), click the copy button next to "your" release. You will get something like this in your clipboard: \
  `-app 413150 -depot 413153 -manifest 8332166493523218127 -beta compatibility` \
  (`8332166493523218127` refers to version 1.6.15.)
- Use these parameters and include the -user parameter: \
  `DepotDownloader -app 413150 -depot 413153 -manifest 8332166493523218127 -beta compatibility -user`
- You will have to enter your Steam password to download the files. DepotDownload will download your files in a folder structure like this: \
  `depots/413153/16826373`

#### Copy files to your handheld / SD card

- Copy the content of the bottom-most directory to your SD card to this folder: \
  `<SD Card>/Ports/stardewvalley/gamedata/`
- Done! Now, Stardew Valley should run fine.

(And yes, it takes about 30 seconds for it to start. Don't worry.)

**Note**: If you want to update your Stardew Valley to a new version, follow all steps and re-install Stardew Valley via Portmaster on your device.
**Note**: You can also copy [savegames](https://stardewvalleywiki.com/Saves) from your computer onto your handheld and vice versa.
**Note**: I recommend scaling the _ÙI_ and the _Zoom level_ a bit – I use 110% (set it in the Stardew Valley Options).

### Diablo 1 & Diablo Hellfire - Devilutionx

- Copy `DIABDAT.MPQ` from the CD or Diablo installation to `roms/devilutionx/` folder.
- To run the Diablo: Hellfire expansion, you will need also to copy `hellfire.mpq`, `hfmonk.mpq`, `hfmusic.mpq`, `hfvoice.mpq`.

| Button | Function |
|-|-|
| `B` | OK / Select, Use Skill |
| `A` | Cancel / Back, Use Weapon |
| `X` | Pick up item |
| `Y` | Use Spell |
| `Left D-Pad` | Movement |
| `Right D-Pad` | Mouse |
| `START` (pressed) | In-Game Menu |
| `START` (pressed) | Spells |
| `START + F` | Show items |
| `L1` | Use Health Potion |
| `R1` | Use Mana Potion |
| `L2` | Character |
| `R2` | Inventory |
| `R2` | Toggle Map |

- You cannot edit the `Advanced System Options` key definitions.
- You can edit the key definitions in the Game: `Settings > Pad mappig`.  There, `A` and `B`, and `X` and `Y` are reversed.
- There is also a Playstation version of Diablo. The controls are nicer, but the graphics are more "blocky." It runs a bit less smoothly.

#### Links

- [Batocera > DevilutionX](https://wiki.batocera.org/systems:devilutionx)

### Duke Nukem 3D - eDuke32

- Create folder called `duke` in `roms/eduke32/` and copy `DUKE3D.GRP` into it.
- Create file `Duke_Nukem_3D.eduke32` in `roms/eduke32/`.
- Add line `FILE = /duke/DUKE3D.GRP` to it.

| Button | Function |
|-|-|
| `B` | OK / Select |
| `A` | Cancel / Back |
| `R2` | Fire |
| `X` | Kick |
| `L1` | Duck |
| `L2` | Jump |
| `R1` | Permanent ducking |
| `Left D-Pad` | Movement |
| `Right D-Pad` | Look |
| `SELECT` | Map |
| `START` | Main Menu |
| `F + X` | Load |
| `F + Y` | Save |
| `F + START` | Exit Emulator |

- You can edit the key definitions in the game: `Options > Control Setup > Controller Setup > Button Assignment`. In there, `A` and `B` and `X and `Y` are reversed.

#### Links

- [Batocera > eduke32](https://wiki.batocera.org/systems:eduke32)

### Fallout 1 - fallout1-ce

- Copy the following files from your Fallout game into the `rom/dallout1-ce` folder:
  - `master.dat`
  - `critter.dat`
  - `data/` folder
- Create an empty file called `Fallout.f1ce`.

- Initially, only the right joystick works in the game.

- Therefore, you need to define your keys: \
  Go to the Fallout entry in the Ports section `A (long press) > Edit PadToKey Profile`
- Suggested key definition:
  
  | Button | Function |
  |-|-|
  | `D-PAD-UP` | Cursor Up |
  | `D-PAD-DOWN` | Cursor Down |
  | `D-PAD-LEFT` | Cursor Left |
  | `D-PAD-RIGHT` | Cursor Right |
  | `START` | `ENTER` |
  | `SELECT` | `ESC` |
  | `EAST`| Mouse Left|
  | `SOUTH`| Mouse Right|
  |  `NORTH` | `S` |
  | `WEST` | `I` |
  | `LEFT SHOULDER` | `TAB` |
  | Left Stick Press | Mouse Left |
  | Right Stick Press | Mouse Left |
  | Emulate Mouse Cursor | Left Analog Stick |

#### Links

- [Fallout Keyboard Shortcuts](https://steamuserimages-a.akamaihd.net/ugc/309990526093281327/20609414CD0D89A8776E89A49A9B9A9A90D71E39/)
- [Fallout CE](https://github.com/alexbatalov/fallout1-ce)

### Fallout 2 - fallout2-ce

*TBD*

### Doom 1 & Doom 2 - PRBOOM

- Place the `.WAD` files of Doom 1 and/or in the `roms/prboom/` folder.
- Supported wads (non-exhaustive list) are from Doom 1, Doom 2, The Ultimate Doom, The Plutonia Experiment, TNT: Evilution.

| Button | Function |
|-|-|
| `A` | OK / Select |
| `B` | Cancel / Back |
| `X` | Fire |
| `Left D-PAD` | Movement |
| `L1 / R1` | Strave |
| `L2 / R2` | Change weapon |
| `R3` | Turn around |
| `START` | Main Menu |
| `SELECT` | Map |
| `F + Y` | Quick save game |
| `F + X` | Quick load game |
| `F + A` | Reset game |
| `F + B` | Emulator menu (in here `B` is `OK`) |
| `F + R2` | Take screenshot |
| `F + L2 / F + R2` | Select Shader |

- You can edit the key in the game: `F + B`, `Controls > Port 1 Controls`

### ScummVM

- [ScummVM](https://www.scummvm.org/) is an emulator for point-and-click adventures.
- Store games in the `roms/scummvm/` folder.
- Each game has a unique ID. You can find all games and their ID in the [compatibility list](https://www.scummvm.org/compatibility), e.g. use `tentacle` for **Day of the Tentacle**.
- Create a folder for each game and copy files into it.
- Inside the folder, create a file called `[id].scummvm` for each game you want to add. To be sure, also write and put the ID into the file.
- **Note:** _Indiana Jones and the Fate of Atlantis_ uses the id `indy4` and not `atlantis`
The [supported games list](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) shows the required files for a game.

#### ScummVM Resolution Settings
  
  - Per default, the games are not scaling to the Anbernic screen. Here are my settings to fix this:
    - Go to `Game Settings > Per System Advanced Settings > ScummVM`
    - `Scale Factor: 3x`
    - `Scaler Mode: ADVMAME`
      `Stretch Mode: Fit Resolution Scale`
  - For more details, see [ScummVM: Understanding the Graphics Settings](https://docs.scummvm.org/en/latest/advanced_topics/understand_graphics.html)

| Button | Function |
|-|-|
| `LEFT D-PAD` | Mouse |
| `START` | Main Menu |
| `SELECT` | Main Menu |
| `A` | OK / Select |
| `X` | Skip |
| `L2` | Settings, e.g. Save |

#### Links

- [Batocera > ScummVM](https://wiki.batocera.org/systems:scummvm)
- [Libretro > ScummVM](https://docs.libretro.com/library/scummvm/)

### Quake 1 - tyrquake

*TBD*

### Half-Life - xash3d_fwgs

- Create a folder `Half-Life`.
- Copy the contents of `Half-Life/valve` in there
- Create a folder called `Half-Life.game`. Keep in empty

| Button | Function |
|-|-|
| `B` | OK / Select |
| `A` | Cancel / Back |

- You can view and change the controls in the game: `Configuration > Controls`.  In there `A` and `B`, and `X`and `Y`are reversed.

#### Links

- [Batocera > xash32_fwgs](https://wiki.batocera.org/systems:xash3d_fwgs)

## Tools

### OD Commander

It is pre-installed on the device and can be found in the *Port* section.

| Button | Function |
|-|-|
| `A` | Cancel / Back |
| `B` | OK / Select |
| `SELECT` | Toggle selection of files |
| `START` | Open the folder in the other tab |
| `LEFT / RIGHT` | Toggle active tab |
| `X` | File actions, e.g. Delete |
| `Y` | General actions, e.g. Quit |
| `L1 / R1` | Page up / down |

#### Links

- [Batocera > OD Commander](https://wiki.batocera.org/od_commander)

### .dot_clean

- Let's add a simple script that deletes all Mac dot_files.
- Create a file called `.dot_clean.sh` in `roms/ports/` with the following content:

``` sh
#!/bin/bash

# remove all ._* files from the system
find /userdata/ -name "._*" -exec rm {} \;

```

- Next, update the Game List: \
`Main Menu > Games Settings > Update Game List`

## Bluetooth

To connect a bluetooth device, follow these steps:

- Go to `Main Menu > Controller & Bluetooth settings > Pain Bluetooth Pads Automatically`.
- Alternatively, run a manual detection and select your device.
- Enable pairing mode on your device.
- You will get a notification when the device is paired to the console.

### Connecting a Bluetooth Controller

- Follow the steps above.
- Turn on Bluetooth mode on your controller (e.g., `Y + START` on an *8bitdo* Controller).
- Enable pairing mode on your controller.
- Run the `Controller Mapping`.
- Adjust the `Player Assignments` to use the controller, e.g.:
  - `P1 > Controller`
  - `P2 > #0 Deeplay-Keys`

### Using Bluetooth Audio

- Connect the audio device as described above.
- Select the Bluetooth audio device as audio output: \
  `Main Menu > System Settings > Hardware > Audio Output > [Device]`

### Connecting other Bluetooth Devices

You can also pair keyboards and mice as described above.

## Some Terms / What is

- **Batocera Linux** is an open-source operating system designed specifically for retro gaming. It transforms any computer or single-board device into a gaming console and includes a variety of pre-configured emulators and tools, making it easy to set up and use.

- **CFW (Custom Firmware)** is modified firmware that enhances a device's capabilities and features beyond those the original manufacturer provides. In the context of retro gaming, CFW allows for custom emulation setups and additional functionalities.

- **EmulationStation** is a graphical front-end for organizing and launching games on various emulators. It provides a user-friendly interface for retro gaming systems and works with Batocera Linux to offer a streamlined gaming experience.

- **Libretro**: A lightweight, modular API that enables the creation of multi-system emulators. It is the backbone for many emulation projects and integrates with EmulationStation, allowing it to run various emulators through a standardized interface.

These components work together to create a cohesive retro gaming system, where Batocera Linux provides the foundation, EmulationStation offers the interface, and Libretro supports the underlying emulation functionality.
