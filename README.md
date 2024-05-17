# Batocera on the RG35HH-H

This is a living document describing what I learned setting up the [Anbernic RG35XX-H](https://anbernic.com/products/rg35xx-h). This file will most likely contain errors and vague information. You might not like how I describe things. I am sorry. I can't be held responsible if you break things by following this. Nor will I share with you roms, bioses, or any other files.

 - **Last updated**: 05-17-24
 - **Using Version**: [Batocera rg35xx-cfw V40](https://github.com/rg35xx-cfw/rg35xx-cfw.github.io/releases/tag/rg35xx_plus_h_batocera_20240306)

## Intro

- Batocera is a Linux-based custom firmware (CFW) for retro gaming for multiple devices/platforms.
- There is now a port for the Anbernic RG35XX-H.
- It provides a better experience than the stock firmware.
- This document tries to describe how to set it up and use it.
- This is standing on the Shoulder of Giants. Many of the tips here come from [beanioz on Reddit](https://www.reddit.com/r/RG35XX_Plus/comments/1b2zcyk/batocera_a_few_tips/).

## Setting up the device

Follow these steps as I tried to put them in a useful order.

### Installing Batocera on the RG35XX-H

- Download Batocera for RG35XX-H called [rg35xx-cfw](https://github.com/rg35xx-cfw/rg35xx-cfw.github.io/releases)
- Flash the firmware to a (new!) SD card (e.g., use [BalenaEtcher](https://etcher.balena.io/))
- Put the SD card in the device (left slot)
- Turn on the device (```Longpress on Power Button```)
- *Device will now update the file structure on the SD card*
- Consider setting up WiFi (see below)
- Shut down the device (```Menu > Quit > Shutdown```)
- Mount the card via your computer

### Setting up WiFi

- `Main Menu > Network Settings`
- `Main Menu > System Settings > Frontend Developer Options > enable web API access`
- Now you can find your device in your network
- IP Address: `Main Menu > Network Settings`

- You can now also download themes and enable scraping and other tools that need an Internet connection

- Emulation Station Web Service: ```http://ipaddress:1234```  \
``root /  linux``
- ssh, web, samba

**Note**: *TBD* problems with some networks

### Download Themes

- `Main Menu > Updates & Downloads > Themes > Art-Book-Next-ES`
- `Main Menu > User Interface Settings > Theme Set`

### Enable Scraping

- A scraper can download game information to your device
- Register an account at [screenscraper.fr](https://www.screenscraper.fr/)
- Enter your credentials at `Main Menu > Scraper`

### Enable Retro Achievements

- *TBD*

### Update the ROM List on Each Boot

- ```Main Menu > Games Settings > Netplay Settings > Index new Games```

### Overclock

- ```Main Menu > System Settings > Overclock```
- *TBD* suggestion?

## Controls

### General Navigation

| Button | Function |
|-|-|
| `POWER` | Long press to turn on. When turned on, click for stand-by. |
| `START` | Menu |
| `F + VOLUME` | Change brightness |
| `B` | OK / Select |
| `A` | Cancel / Back |
| `F + START` | (in games) Exit Emulator and get back to the main menu |

- **Note**: Shutdown the device: ```Main Menu > Quit > Shutdown System > Yes```
- **Note**: `A`+ `B` button assignment can be switched: \
```Main Menu > System Settings > Frontend Developer Options > Switch Confirm & Cancel Buttons in EmulationStation```
- **Note**: Link to the [Batocera contols overview](https://wiki.batocera.org/basic_commands)

### Main Menu

| Button | Function |
|-|-|
*TBD*

### In Game - MAME

| Button | Function |
|-|-|
| `LEFT` | Insert coin (not sure if this a pre-set) |
| `A` | OK / Select |
| `B` | Cancel / Back|
| `L3` | Emulator Menu |
| `F + Y` | Quick save game |
| `F + X` | Quick soad game |
| `F + A` | Reset game |
| `F + R2` | Take screenshot |
| `F + L2 / F + R2` | Select Shader |

### OD Commander

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

## The SD Card

- The SD card has two partitions: ```BATOCERA``` and ```SHARE```. We will only concern ourselves with the ```SHARE``` partition
- On `SHARE` are the folders for adding content onto the device
- The ```bios``` folder is the place where to add BIOS files (see below)

- The ```roms``` folder contains folders for the different emulators for your games. Most of the folder names are self-explanatory. See below a list of specific game port folders.

## Bios Files

- Some Emulators need BIOS files to run
- Check for missing/needed BIOS files via: \
```Main Menu > Game Settings > Missing Bios Check```
- Find them online (*TBD*)
- Copy them in the ```bios```folder
- Turn on the device
- Check if they are correct: \
```Main Menu > Game Settings > Missing Bios Check```

## ROMs

- Check the `_ìnfo.txt` files in each `roms` subfolder

*TBD*

## Workflow for adding content on SD card

- Copy files on the card
- Remove Apple's dot files, if needed
- Eject all partitions
- Put card in RG35XX-H 
- Power on the device
- Run the Scraper \
```Main Menu > Scraper > Scrape Now```
- Update the Game List \
```Main Menu > Games Settings > Update Game List```
- Play

### Removing Apple's Dot Files

- On a Mac, you can run `dot_clean /Volumes/SHARE`
- ... or `sudo find /Volumes/SHARE -name "._*" -exec -r -rf {}  \;`

## Setting up and Running Ports

### Port Folders
  
  This is a list of existing port folders/emulators available on the Batocera CFW by default.

  |Port Folder|Game|
  |-|-|
  | [```cannonball```](https://wiki.batocera.org/systems:cannonball)| Out Run - Sega Arcade |
  | [```devilutionx```](https://wiki.batocera.org/systems:devilutionx) | Diablo & Diablo Hellfire |
  | [```eduke32```](https://wiki.batocera.org/systems:eduke32)| Duke Nukem 3D |
  | [```fallout1-ce```](https://github.com/alexbatalov/fallout1-ce) | Fallout 1 |
  | [```fallout2-ce```](https://github.com/alexbatalov/fallout2-ce) | Fallout 2 |
  |[```mrboom```](https://wiki.batocera.org/systems:mrboom)| Bomberman|
  |`ports`| Linux games|
  | [```prboom```](https://wiki.batocera.org/systems:prboom?s[]=doom) | Doom 1 & Doom 2 |
  |[```quake3```](https://ioquake3.org/)|Quake 3|
  | ```scummvm``` | Scumm Engine for Games like Monkey Island |
  | [```sdlpop```](https://wiki.batocera.org/systems:sdlpop?s[]=sdlpop)| Prince of Persia |
  | [```tyrquake```](https://wiki.batocera.org/systems:tyrquake?s[]=tyrquake) | Quake 1 |
  | [```vitaquake2```](https://github.com/libretro/vitaquake2)| Quake 2 |
  | ```xash3d_fwgs``` | Half-Life and Counterstrike? |

Here is a link to a complete list of [available systems of Batocera Linux](https://wiki.batocera.org/systems), which will be larger than for the RG35XX-H but might be helpful.

## Configuring Ports

- Always start by reading the `_info.txt` file in the emulators folder.

- *TBD*: Half-Life, Quake 1, Duke Nukem, Fallout, Dooms

### PRBOOM – Doom 1 & Doom 2

- You need to place the `.WAD` files of Doom 1 and/or in the `roms/prboom` folder.
- Supported wads (non exhaustive list) are from Doom 1, Doom 2, The Ultimate Doom, The Plutonia Experiment, TNT: Evilution

### Doom Controls

| Button | Function |
|-|-|
| `LEFT D-PAD` | Movement |
| `L1 / R1` | Strave |
| `L2 / R2` | Change weapon |
| `A` | OK / SELECT|
| `X` | Fire |
| `START` | Main Menu |
| `SELECT` | Map |
| `F + Y` | Quick save game |
| `F + X` | Quick load game |
| `F + X` | Reset game |
| `F + B` | Emulator menu |
| `F + R2` | Take screenshot |
| `F + L2 / F + R2` | Select Shader |



### ScummVM

- [ScummVM](https://www.scummvm.org/) is an emulator for adventures such as Monkey Island.
- Store games in the `roms/scummvm/` folder.
- Each game has a unique ID. You can find all games and their ID in the [compability list](https://www.scummvm.org/compatibility), e.g. use `atlantis` for **Indiana Jones and the Fate of Atlantis**.
- Create a folder for each game and copy files into it
- Inside the folder create a file `[id].scummvm` for each game you want to add. To be sure also write put id into the file.
- To see what the required files for a game are take a look at the [supported games list](https://wiki.scummvm.org/index.php?title=Category:Supported_Games).

#### ScummVM Controls

| Button | Function |
|-|-|
| `LEFT D-PAD` | Mouse |
| `START` | Main Menu |
| `SELECT` | Main Menu |
| `A` | OK |
| `X` | Skip |
| `L2` | Settings, e.g. Save |


#### Other Links

- [Batocera > ScummVM](https://wiki.batocera.org/systems:scummvm)
- [Libretro > ScummVM](https://docs.libretro.com/library/scummvm/)

## Some Terms / What is...

*TBD*

- Batocera Linux
- CFW
- Batocera for RG35XX-H
- EmulationStation
- Libreto

## Additional Information

- *TBD*
