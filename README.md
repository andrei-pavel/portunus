# curate-pkg

Aggregates **ALL** package managers under one tool. If your package manager is not in here, I'll add it and it'll be in testing state in 24 hours.

**How it works**: You keep `.yaml` config files for any of your package managers. They instruct the tool what packages to install/remove.
Some packages can only be installed through additional sources. They are also specified in the config file and are added on relevant actions.
Run `--help` to see all actions.
Empty config files are installed automatically if not already there. You keep them synced through Dropbox/git/rclone/USB or your favourite method.

Tests [![Build status](https://circleci.com/gh/andrei-pavel/curate-pkg.svg?style=svg)](https://circleci.com/gh/andrei-pavel/curate-pkg) for ArchLinux & Debian.
This is currently a home-grown project. Will invest in continus integration and more features when it gains interest.

Version 1.87


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
- **frequent distro-hopping?** Install all your favourite packages after a hop with one run of `curate-pkg`.
- **determined distro-hugging?** Update all your packages and get detailed information about what was updated each time with one run of `curate-pkg`.
In the latter case, it's very useful to set it up as a systemd service `curate-pkg-daily.service`:
```
[Unit]
Description=curate-pkg-daily

[Service]
Type=simple
ExecStart=/usr/local/bin/curate-pkg

[Install]
WantedBy=multi-user.target
`````

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

Installed automagically:
- [yq](https://github.com/kislyuk/yq) (`2.3.4` or newer) - used for processing YAML configuration files
- [bash-spinner](https://github.com/tlatsas/bash-spinner) - shamelessly copied and improved in this repository
- [unp](https://github.com/mitsuhiko/unp) - for `wgetables` (see `.yaml` files)


## Configuration

Configuration files are one per main package manager.<br/>
After first installation, edit `~/.config/curate-pkg/<main_package_manager>.yaml` to your own needs.

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

Start by running `curate-pkg` everyday to keep all your packages up to date.
Then experiment with other options.
Terminology in the help section is based on `apt` because it is more complex than most.


## Contributing

For changes to the package manager engine, you only need to know [bash](http://books.goalkicker.com/BashBook) and try to respect portability best practices.
If you add a new argument, add it to the print usage function, the bash completions file and README.md.<br/>
If, however, you wish to add support for a package manager, either create an issue, or follow these steps given for `pkg` as said package manager:<br/>

1. `cp share/empty.sh share/packages-managers/pkg.sh`
2. Implement all functions in `share/packages-managers/pkg.sh`.
3. Add `pkg` to `./curate-pkg` in the main list or optional list accordingly. If it is the default package manager in any distribution it is main, else it is optional.
4. If `pkg` has a standalone `.yaml` configuration file (e.g. `pacman` does, `yay` doesn't since it uses `pacman`'s), add it in `./install` script. Add your `pkg.yaml` configuration file to `./share/samples` as well.
5. Add `pkg` to `README.md`.

In any case, bump the version in the README.md and in the code where `-V|--version` is handled by setting it to `1.$(( $(git rev-list --count master) + 1 ))`

Thank you for your contribution!


## Support the maintainer

<noscript><a href="https://liberapay.com/andrei/donate"><img alt="Donate using Liberapay" src="https://liberapay.com/assets/widgets/donate.svg"></a></noscript>
