#!/bin/bash
set -ueo pipefail

rm -rf dist
rm flatpak_cargo_generator/script.py
wget -O flatpak_cargo_generator/script.py https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/41c20aa10819cdb2a4f3ca171758a96d1955c018/cargo/flatpak-cargo-generator.py
poetry build
