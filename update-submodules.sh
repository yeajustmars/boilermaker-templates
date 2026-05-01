#!/usr/bin/env bash

BT_LOGO=$(cat <<'BT_TEXT'
 ___      _ _                    _             _____               _      _
| _ ) ___(_) |___ _ _ _ __  __ _| |_____ _ _  |_   _|__ _ __  _ __| |__ _| |_ ___ ___
| _ \/ _ \ | / -_) '_| '  \/ _` | / / -_) '_|   | |/ -_) '  \| '_ \ / _` |  _/ -_|_-<
|___/\___/_|_\___|_| |_|_|_\__,_|_\_\___|_|     |_|\___|_|_|_| .__/_\__,_|\__\___/__/
                                                             |_|
BT_TEXT
)

BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}${BT_LOGO}${NC}"

script_dir=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)
cd $script_dir

git pull origin main
git submodule update --remote --merge
git push origin main
