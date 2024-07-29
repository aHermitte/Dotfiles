# My Dotfiles

## Requirements

All the necessary packages ( and some optionnal ones) are located in .backup
Make sure to have them installed

You can do so by executing the install script:

```
./installpackages.sh
```

## Usage

Clone the repo into your home, then run stow to symlink these files into the right places

```
stow .
```

To sync your own packages, launch the list packages script:

```
./listpackages.sh
```

This will list your installed packages

WARNING: This overrides the default packages lists in .backup

NOTE: This script is automatically executed as a pre-commit hook


