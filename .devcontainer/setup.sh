#!/bin/bash
set -e # Exit immediately if a command fails

# newer version of rust for cargo-bininstall
rustup default stable

# Install cargo-binstall
# curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
cargo install cargo-binstall

# Install probe-rs tools
cargo binstall --no-confirm probe-rs-tools

echo "probe-rs added to the container"
