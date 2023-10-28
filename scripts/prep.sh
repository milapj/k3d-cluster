#!/bin/bash

if [ -f "/usr/local/bin/k3d" ]; then
    echo "k3d alread installed, skipping.."
else
    echo "Installing k3d"
    curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
fi

if [ -f "/home/biokami/.local/bin/tilt" ]; then
    echo "tilt already installed, skipping.."
else
    echo "Installing Tilt"
    curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
fi

