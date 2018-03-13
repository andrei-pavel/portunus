# curate-pkg

that script you craved for to keep a consistent image of installed packages across **ALL** package managers


## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
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
- `pacaur`
- `pacman`
- `pip`
- `snap`
- `yaourt`

[Request yours today!](https://github.com/andrei-pavel/curate-pkg/issues/new)


## Installation

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
- `pacaur`: uses `pacman.yaml`
- `pacman`: [pacman.yaml](share/samples/pacman.yaml)
- `pip`: [pip.yaml](share/samples/pip.yaml)
- `snap`: [snap.yaml](share/samples/snap.yaml)
- `yaourt`: uses `pacman.yaml`


## Usage

```sh
$ curate-pkg --help
```

```sh
Usage: curate-pkg {{options}} {{arguments}}
Options:
  [-d|--debug]                                 Enables debug mode, showing every executed statement.
  [-h|--help]                                  Prints usage (this text).
Arguments:
  [-a|--auto]                                  Cool continuous curation
  [-v|--verbose]                               Verbose output
  [-i|--install $package]                      Installs a single package.
  [-k|--add-key $key]                          Adds a single key.
  [-p|--purge|--remove $package]               Removes a single package.
  [-r|--add-repository $repository]            Adds a single repository.
  [-s|--add-source $source]                    Adds a single source.
  [-u|--upgrade $package]                      Upgrades a single package.
  $package_manager                             Run only for this specific package manager.
```

Start by running `curate-pkg` everyday to keep all your packages up to date. Then experiment with other options. Terminology in the help section is based on `apt` because it is the more complex than most.


## Contributing

For changes to the package manager engine, you only need to know [bash](http://books.goalkicker.com/BashBook) and portability best practices.<br/>
If, however, you wish to add support for a package manager, either create an issue, or follow these steps given for `pkg` as said package manager:<br/>

1. `cp share/empty.sh share/packages-managers/pkg.sh`
2. Implement all functions in `share/packages-managers/pkg.sh`.
3. Add `pkg` to `./curate-pkg` in the main list or optional list accordingly. If it is the default package manager in any distribution it is main, else it is optional.
4. Add `pkg` to the list in `./install` if it has a standalone `.yaml` configuration file (e.g. `pacman` does, `yaourt` doesn't since it uses `pacman`'s).
5. Add your `pkg.yaml` configuration file to `./share/samples`.
6. Add `pkg` to `README.md`.

Thank you for your contribution!
