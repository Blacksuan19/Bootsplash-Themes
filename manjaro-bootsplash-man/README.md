# Manjaro-bootsplash-manjaro(lol)
Kernel Bootsplash theme for manjaro Linux using manjaro logo

# Installation:

- `git clone https://github.com/Blacksuan19/Bootsplash-Themes.git`
- `cd manjaro-bootsplash-gnome`
- run `bootsplash-manjaro-man.sh` to generate STL model.
- run `makepkg` to create Arch package and install it with `pacman -U $package_name`
- append `bootsplash-manjaro-man` hook in the end of HOOKS string of `/etc/mkinitcpio.conf`
- add `quiet bootsplash.bootfile=bootsplash-themes/manjaro-man/bootsplash` into `GRUB_CMDLINE_LINUX` string in `/etc/default/grub`
- run `sudo mkinitcpio -p linux415` (or linux416)
- run `sudo update-grub`
