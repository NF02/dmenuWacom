# dmenuWacom

<img src="dmenuWacom.png">

This **script** is used to remap the texts of **Wacom graphics tablets**. It is based on **ZSH** and is not compatible with bash without making changes. There are *ready-made profiles* for some applications.

## Install dependencies

```bash
sudo pacman -S git dunst
```

### Install dmenu

```bash
git clone https://github.com/NF02/dmenu && cd dmenu && make && sudo make install
```

The dmenu that is used in this script is the one present in <a href="https://github.com/NF02/dmenu">my repository</a>.

# Warning: in the case of Emojis or special characters

In case st has a crask or does not display the fonts, install the [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra/) present in the **AUR**.
