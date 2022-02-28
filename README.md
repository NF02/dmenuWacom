# dmenuWacom

<img src="dmenuWacom.png">

This **script** is used to remap the texts of **Wacom graphics tablets**. It is based on **ZSH** and is not compatible with bash without making changes. There are *ready-made profiles* for some applications.

## Profiles compatible devices
- Wacom Intuos series
```
 -----------------  
 | 1 | 2 | 3 | 8 |
 -----------------
```

Community help will be needed to improve the program.

## Install dependencies

```sh
sudo pacman -S git dunst xf86-input-wacom
```

### Install dmenu

```sh
git clone https://github.com/NF02/dmenu && cd dmenu && make && sudo make install
```
**Warning**: dunst is not a mandatory package, for the simple fact that if you already have a notification manager it will be totally useless.

The dmenu that is used in this script is the one present in <a href="https://github.com/NF02/dmenu">my repository</a>.

For more information, consult the [hacking guidelines](https://suckless.org/hacking/) on the <a href="https://suckless.org">suckless.org</a> official website

# Warning: in the case of Emojis or special characters

In case st has a crask or does not display the fonts, install the [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/) present in the **AUR**.
