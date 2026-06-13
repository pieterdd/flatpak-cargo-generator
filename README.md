# Flatpak Cargo Generator

This is an unofficial Pypi distribution of the [flatpak-cargo-generator](https://github.com/flatpak/flatpak-builder-tools/blob/master/cargo/flatpak-cargo-generator.py) script, ensuring library dependencies are installed and making the script is available as `flatpak-cargo-generator` on your `$PATH`.


## Purpose
Flatpak builds should be reproducible. Therefore they don't get direct network access. To install `cargo` dependencies in Flatpak's build environment, you need to supply a list of your external dependencies to `flatpak-builder` along with their expected checksums. `flatpak-builder` will make sure the dependencies are available offline before you start your `cargo` build.


## Usage
Installation via `pipx` is recommended:

```
pipx install flatpak-cargo-generator
```

When installed, run `flatpak-cargo-generator /your/rust/project/Cargo.lock -o /your/flatpak/directory/generated-sources.json` to generate a list of cargo sources. In your manifest, you can reference this file under the `sources` section of your Rust module and then perform an offline cargo build in your module's `build-commands` section.

See [here](https://github.com/flatpak/flatpak-builder-tools/blob/master/cargo/README.md) for the full official instructions. You can see how it's used in practice [here](https://github.com/flathub/io.github.pieterdd.RcloneShuttle/blob/5c49939009034cabcd733c227daf5d0b6aa31417/io.github.pieterdd.RcloneShuttle.yaml).


## Prefer installing from an official source?
Download the script from https://github.com/flatpak/flatpak-builder-tools/blob/master/cargo/flatpak-cargo-generator.py and install relevant dependencies.


## Are you part of the Flatpak team?
I'd be happy to transfer ownership of the Pypi package to you if you're willing to maintain it. You can get in touch via the Issues section.


## How this repo is built

```
./build.sh
poetry build
```


## AI disclosure
No AI tools are involved in maintaining this distribution. As for the script itself, you'll need to ask the Flathub team.
