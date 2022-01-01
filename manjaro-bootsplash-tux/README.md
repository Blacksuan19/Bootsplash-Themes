# Manjaro-bootsplash-tux
Kernel Bootsplash theme for manjaro Linux using Tux logo. Created by Josef Norlin: https://github.com/josefnorlin

# Installation:

- `git clone https://github.com/Blacksuan19/Bootsplash-Themes.git`
- `cd manjaro-bootsplash-gnome`
- run `bootsplash-manjaro-tux.sh` to generate STL model.
- run `makepkg` to create Arch package and install it with `pacman -U $package_name`
- append `bootsplash-manjaro-tux` hook in the end of HOOKS string of `/etc/mkinitcpio.conf`
- add `quiet bootsplash.bootfile=bootsplash-themes/manjaro-tux/bootsplash` into `GRUB_CMDLINE_LINUX_DEFAULT` string in `/etc/default/grub`
- run `sudo mkinitcpio -p linux415` (or linux416)
- run `sudo update-grub`
