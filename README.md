# curate-pkg

Supported: `apt`, `eopkg`, `flatpak`, `npm`, `snap`

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
- `flatpak`: https://gist.github.com/andrei-pavel/97a9b2b69a96d9d4c82fb3ffb82ccd34
- `npm`: https://gist.github.com/andrei-pavel/ac275b77cab59a9ce837194bea26fc2c
- `snap`: https://gist.github.com/andrei-pavel/e0f47f6450bd688d13858de5e0a4560a

## How to use
Run `curate-pkg` everyday.

When installing a new package, add it to `installables`, `wgetables` or `sources` and `keys` in `~/.config/curate-pkg/*.json`.

When removing a package, add it to `purgeables` in `~/.config/curate-pkg/*.json`.

`commands` is for any custom package management cmomand that you want to run in addition to installing and purging packages.

