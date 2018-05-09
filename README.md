# curate-pkg

the script that keeps a consistent state of installed packages across **ALL** Linux package managers and distributions

Tests [![Build status](https://circleci.com/gh/andrei-pavel/curate-pkg.svg?style=svg)](https://circleci.com/gh/andrei-pavel/curate-pkg) for ArchLinux & Debian.

Version 1.66


## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
  - [Using the AUR](#using-the-aur)
  - [Manual](#manual)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Usage](#usage)
- [Contributing](#contributing)


## Introduction

What fits you best?
- **frequent distro-hopping?** Install your favourite music player and that awesome tinker tool that you love with one script run.
- **determined distro-hugging?** Update all your packages ~~and get detailed information about what was updated~~ `(TODO)` with one command or background service.

Supported package managers:
- `apt`
- `brew`
- `dnf`
- `eopkg`
- `flatpak`
- `go`
- `nix`
- `npm`
- `pacman` along with all [active AUR helpers](https://wiki.archlinux.org/index.php/AUR_helpers#Active)
- `pip`
- `snap`

[Request yours today!](https://github.com/andrei-pavel/curate-pkg/issues/new)


## Installation

### Using the AUR

```sh
yay --aur -Syyu curate-pkg-git
```

### Manual

```sh
git clone https://github.com/andrei-pavel/curate-pkg.git
cd curate-pkg
./install
```


## Dependencies

- [yq](https://github.com/kislyuk/yq) (`2.3.4` or newer) - used for processing YAML configuration files, installed automagically through `./install` if you don't already have it.
- [bash-spinner](https://github.com/tlatsas/bash-spinner) - shamelessly copied in this repository, installed automagically through `./install`
- [unp](https://github.com/mitsuhiko/unp) - for `wgetables`, could you please install it manually?


## Configuration

Configuration files are one per main package manager.<br/>
After installing, edit `~/.config/curate-pkg/<main_package_manager>.yaml`.

- `installables` are packages to be installed.
- `wgetables` are downloadable URLs to be installed via it's specific package manager or extracted to `/usr/local`.
- `sources`
- `keys`
- `purgeables` are packages to be removed or purged.
- `commands` are custom, tailored to it's package manager.

Samples:
- `apt`: [apt.yaml](share/samples/apt.yaml)
- `brew`: [brew.yaml](share/samples/brew.yaml)
- `dnf`: [dnf.yaml](share/samples/dnf.yaml)
- `eopkg`: [eopkg.yaml](share/samples/eopkg.yaml)
- `flatpak`: [flatpak.yaml](share/samples/flatpak.yaml)
- `go`: [go.yaml](share/samples/go.yaml)
- `nix`: [nix.yaml](share/samples/nix.yaml)
- `npm`: [npm.yaml](share/samples/npm.yaml)
- `pacman`: [pacman.yaml](share/samples/pacman.yaml)
- `pip`: [pip.yaml](share/samples/pip.yaml)
- `snap`: [snap.yaml](share/samples/snap.yaml)


## Usage

```sh
Usage: curate-pkg {{options}} {{arguments}}
Options:
  [-d|--debug]                                 Enables debug mode, showing every executed statement.
  [-h|--help]                                  Prints usage (this text).
Arguments:
  [-a|--auto]                                  Cool continuous curation
  [-i|--install $package]                      Installs a single package.
  [-k|--add-key $key]                          Adds a single key.
  [-p|--purge|--remove $package]               Removes a single package.
  [-r|--add-repository $repository]            Adds a single repository.
  [-s|--add-source $source]                    Adds a single source.
  [-u|--upgrade $package]                      Upgrades a single package.
  [-v|--verbose]                               Verbose output
  [-V|--version]                               Display version and exit.
  $package_manager                             Run only for this specific package manager.
```

Start by running `curate-pkg` everyday to keep all your packages up to date. Then experiment with other options. Terminology in the help section is based on `apt` because it is the more complex than most.


## Contributing

For changes to the package manager engine, you only need to know [bash](http://books.goalkicker.com/BashBook) and try to respect portability best practices. If you add a new argument, add it to the print usage function, the bash completions file and README.md.<br/>
If, however, you wish to add support for a package manager, either create an issue, or follow these steps given for `pkg` as said package manager:<br/>

1. `cp share/empty.sh share/packages-managers/pkg.sh`
2. Implement all functions in `share/packages-managers/pkg.sh`.
3. Add `pkg` to `./curate-pkg` in the main list or optional list accordingly. If it is the default package manager in any distribution it is main, else it is optional.
4. If `pkg` has a standalone `.yaml` configuration file (e.g. `pacman` does, `yay` doesn't since it uses `pacman`'s), add it in `./install` script. Add your `pkg.yaml` configuration file to `./share/samples` as well.
5. Add `pkg` to `README.md`.

In any case, bump the version in the README.md and in the code where `-V|--version` is handled by setting it to `1.$(( $(git rev-list --count master) + 1 ))`

Thank you for your contribution!
