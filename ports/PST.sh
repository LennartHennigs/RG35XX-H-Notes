#!/bin/bash
# PORTMASTER: gemrb.zip, GemRB.sh

# --- Set the game ---
# GAME="bg1"
# GAME="bg2"
# GAME="iwd"
# GAME="iwd2"
GAME="pst"
GAMEID=$(echo "$GAME" | tr '[:upper:]' '[:lower:]')

XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
controlfolder="$XDG_DATA_HOME/PortMaster"

source "$controlfolder/control.txt"
if [ -z "${TASKSET+x}" ]; then
  source "$controlfolder/tasksetter"
fi

get_controls

PORTDIR="/$directory/ports"
GAMEDIR="$PORTDIR/gemrb"

CUR_TTY=/dev/tty0
cd "$GAMEDIR"
$ESUDO chmod 666 "$CUR_TTY" /dev/uinput

# --- Check for GemRB.cfg ---
if [ ! -f "$GAMEDIR/games/$GAME/GemRB.cfg" ]; then
  CFG_FILE="$GAMEDIR/configs/GemRB.cfg.$GAMEID"
  [ ! -f "$CFG_FILE" ] && CFG_FILE="$GAMEDIR/configs/GemRB.cfg.default"
  $ESUDO cp -v "$CFG_FILE" "$GAMEDIR/games/$GAME/GemRB.cfg"
fi

#  -- Check for SDL controller config --
[ -f "$GAMEDIR/gemrb-$GAMEID.gptk" ] && GPTOKEYB_CFG="$GAMEDIR/gemrb-$GAMEID.gptk" || GPTOKEYB_CFG="$GAMEDIR/gemrb.gptk"

# --- Environment Variables ---
export TEXTINPUTPRESET="Name"
export TEXTINPUTINTERACTIVE="Y"
export TEXTINPUTNOAUTOCAPITALS="Y"
export SDL_GAMECONTROLLERCONFIG="$sdl_controllerconfig"
export PYTHONHOME="$GAMEDIR"
export LD_LIBRARY_PATH="$GAMEDIR/lib:$LD_LIBRARY_PATH"

# --- Create log file ---
touch log.txt
$ESUDO chmod 666 log.txt
export TERM=linux

# --- Launch GemRB ---
$GPTOKEYB "gemrb" -c "$GPTOKEYB_CFG" textinput &
$TASKSET ./gemrb -c "$GAMEDIR/games/$GAME/GemRB.cfg" "$GAMEDIR/games/$GAME/" 2>&1 | $ESUDO tee -a ./log.txt

# --- Cleanup ---
$ESUDO kill -9 "$(pidof gptokeyb)"
unset LD_LIBRARY_PATH
unset SDL_GAMECONTROLLERCONFIG
$ESUDO systemctl restart oga_events &
