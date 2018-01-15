# curate-pkg

Are you a distro-hopper? Then take this with you wherever you hop.

Are you a distro-hugger? This one-file installation tool for various package managers is for you.

Supported package managers:
- `apt`
- `dnf`
- `eopkg`
- `flatpak`
- `go`
- `npm`
- `pacaur`
- `pacman`
- `snap`
- `yaourt`

## Installation

```sh
git clone https://github.com/andrei-pavel/curate-pkg.git
cd curate-pkg
./install
```

It depends on `yq` for processing of YAML configuration files, but it is installed automatically through `./install`.

## Configuration

After installing, edit `~/.config/curate-pkg/*.yaml`.

Samples:
- `apt`: [apt.yaml](share/samples/apt.yaml)
- `dnf`: [dnf.yaml](share/samples/dnf.yaml)
- `eopkg`: [eopkg.yaml](share/samples/eopkg.yaml)
- `flatpak`: [flatpak.yaml](share/samples/flatpak.yaml)
- `go`: [go.yaml](share/samples/go.yaml)
- `npm`: [npm.yaml](share/samples/npm.yaml)
- `pacaur`: uses `pacman.yaml`
- `pacman`: [pacman.yaml](share/samples/pacman.yaml)
- `snap`: [snap.yaml](share/samples/snap.yaml)
- `yaourt`: uses `pacman.yaml`

## Usage

`curate-pkg --help`

```sh
Usage: curate-pkg [options]
Options:
  [-d|--debug]                       Enable debug.
  [-h|--help]                        Display this help.
  [-a|--auto]                        Cool continuous curation
  [-v|--verbose]                     Verbose output
  [-i|--install $package]            Installs a single package.
  [-k|--add-key $key]                Adds a single key.
  [-p|--purge|--remove $package]     Removes a single package.
  [-r|--add-repository $repository]  Adds a single repository.
  [-s|--add-source $source]          Adds a single source.
  [-u|--upgrade $package]            Upgrades a single package.
```

Run `curate-pkg` everyday to keep all your packages up to date.

When installing a new package, add it to `installables`, `wgetables` or `sources` and `keys` in `~/.config/curate-pkg/*.yaml`.

When removing a package, add it to `purgeables` in `~/.config/curate-pkg/*.yaml`.

`commands` is for any custom package management command that you want to run in addition to installing and purging packages.

