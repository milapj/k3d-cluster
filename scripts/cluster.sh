#!/bin/bash

CURR_DIR="$(cd $(dirname "${BASH_SOURCE[0]}") > /dev/null 2>&1 && pwd)";
[ -d "$CURR_DIR" ] || { echo "FATAL: no current dir (maybe running in zsh?)";  exit 1; }

# shellcheck source=./common.sh
source "$CURR_DIR/common.sh";

section_exec "Creating a cluster" "k3d cluster create backstage -p "8082:7007@agent:0" --agents 2"
