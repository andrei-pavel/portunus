# curate-pkg

Supported: `apt`, `eopkg`

All you need to carry your packages with you. Add keys, sources, repositories, install and purge all continuously or at your discretion. Allows for easy reinstall of packages between machines.

## Installation

```
git clone https://github.com/andrei-pavel/curate-pkg.git
cd curate-pkg
./install
```

## Configuration
After installing, edit `~/.config/curate-pkg/*.json`.

Samples:
- `apt`: https://gist.github.com/andrei-pavel/76ba13eb7e3d91367612da7bb0d37319
- `eopkg`: https://gist.github.com/andrei-pavel/c983ba2238f1787436b6beb2d6cebfa2

## How to use
Run `curate-pkg` everyday.
When installing a new package, add it to `installables`, `wgetables` or `sources` and `keys` in `~/.config/curate-pkg/*.json`.
When removing a package, add it to `purgeables` in `~/.config/curate-pkg/*.json`.
`commands` is for any custom package management cmomand that you want to run in addition to installing and purging packages.

