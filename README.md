# curate-pkg

One-file installation tool for various package managers: `apt`, `dnf`, `eopkg`, `flatpak`, `go`, `npm`, `pacaur`, `pacman`, `snap`, `yaourt`

All you need to carry your packages with you. Add keys, sources, repositories, install and purge all continuously or at your discretion. Allows for easy reinstall of packages when distro-hoping or just switching between machines.

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
- `apt`: [a relative link](share/samples/apt.yaml)
- `dnf`: [a relative link](share/samples/dnf.yaml)
- `eopkg`: [a relative link](share/samples/eopkg.yaml)
- `flatpak`: [a relative link](share/samples/flatpak.yaml)
- `go`: [a relative link](share/samples/go.yaml)
- `npm`: [a relative link](share/samples/npm.yaml)
- `pacaur`: uses `pacman.yaml`
- `pacman`: [a relative link](share/samples/pacman.yaml)
- `snap`: [a relative link](share/samples/snap.yaml)
- `yaourt`: uses `pacman.yaml`

## Usage

Simply run `curate-pkg` everyday to keep all your packages up to date.

When installing a new package, add it to `installables`, `wgetables` or `sources` and `keys` in `~/.config/curate-pkg/*.yaml`.

When removing a package, add it to `purgeables` in `~/.config/curate-pkg/*.yaml`.

`commands` is for any custom package management command that you want to run in addition to installing and purging packages.

