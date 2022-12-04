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
### Arch Linux

```sh
sudo pacman -S git dunst xf86-input-wacom xrandr
```

### Gentoo
```sh
sudo emerge -av dev-vsc/git xf86-input-wacom xrandr
```

### Install dmenu

```sh
git clone https://github.com/NF02/dmenu && cd dmenu && make && sudo make install
```
**Warning**: dunst is not a mandatory package, for the simple fact that if you already have a notification manager it will be totally useless.

The dmenu that is used in this script is the one present in <a href="https://github.com/NF02/dmenu">my repository</a>.

For more information, consult the [hacking guidelines](https://suckless.org/hacking/) on the <a href="https://suckless.org">suckless.org</a> official website
# Profile model
It is a new feature and now it allows you to create profiles very quickly, obviously you
have to use the `xsetwacom` syntax but it is certainly more practical than having to
overwhelm the main script. Logically, the mode is apparently similar to the previous one
but much better refined.
```sh
#!/bin/env zsh
PAD=$1
button1="<++>"
button2="<++>"
button3="<++>"
button4="<++>"

xsetwacom set "$PAD" Button 1 key $button1 &&
xsetwacom set "$PAD" Button 2 key $button2 &&
xsetwacom set "$PAD" Button 3 key $button3 &&
xsetwacom set "$PAD" Button 8 key $button4
```

Obviously this is the basic model but you can also insert other instructions that can be
useful to make everything more practical

# Warning: in the case of Emojis or special characters

In case st has a crash or does not display the fonts, install the [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/) present in the **AUR**.
# Do you want to support my project?

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/A0A3CDMP9)
