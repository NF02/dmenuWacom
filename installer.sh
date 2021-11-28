# author: NFVblog aka Nicola Ferru

setup_color() {
  # Only use colors if connected to a terminal
  if is_tty; then
    RAINBOW="
      $(printf '\033[38;5;196m')
      $(printf '\033[38;5;202m')
      $(printf '\033[38;5;226m')
      $(printf '\033[38;5;082m')
      $(printf '\033[38;5;021m')
      $(printf '\033[38;5;093m')
      $(printf '\033[38;5;163m')
    "
    RED=$(printf '\033[31m')
    GREEN=$(printf '\033[32m')
    YELLOW=$(printf '\033[33m')
    BLUE=$(printf '\033[34m')
    BOLD=$(printf '\033[1m')
    RESET=$(printf '\033[m')
  else
    RAINBOW=""
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    RESET=""
  fi
}

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

if ! command_exists zsh; then
    echo "${YELLOW}Zsh is not installed.${RESET} Please install zsh first."
    exit 1
fi

if [[ $1 == --version ]] || [[ $1 == -v ]] || [[ $1 == -VERSION ]]; then
	cat << 'EOF'
DMWacom 0.2 beta Intaller
EOF
	exit 0
fi

if [[ $1 == --help ]] || [[ $1 == -h ]] || [[ $1 == -HELP ]] || [[ $1 == "" ]]; then
	cat << 'EOF'
 ____  __  ____        __
|  _ \|  \/  \ \      / /_ _  ___ ___  _ __ ___
| | | | |\/| |\ \ /\ / / _` |/ __/ _ \| '_ ` _ \
| |_| | |  | | \ V  V / (_| | (_| (_) | | | | | |
|____/|_|  |_|  \_/\_/ \__,_|\___\___/|_| |_| |_|

 _           _        _ _
(_)_ __  ___| |_ __ _| | | ___ _ __
| | '_ \/ __| __/ _` | | |/ _ \ '__|
| | | | \__ \ || (_| | | |  __/ |
|_|_| |_|___/\__\__,_|_|_|\___|_|


--------------------------------------------------------------------------------
                                    Option
--------------------------------------------------------------------------------
--help (-h): print the helper with all the info on the installer
--user (-usr): performs a user-side installation, so only the user who installed
               the app will be able to use it. (no-root)
--global (-gbl): allows you to install the application globally and this allows
               all users to be able to use the same package without having to
               do an installation per user (root)
--remove:      allows you to remove the package on the system side. (root)
--remove_user: allows you to remove the package on the user side. (no-root)
EOF
	exit 0
fi

if [[ $1 == --user ]] || [[ $1 == -usr ]]; then
	mkdir -p ~/.local/bin/dmwacom && cp . ~/.local/bin/dmwacom && notify-send\
	"Installation successful!"
	exit 0
fi
if [[ $1 == --global ]] || [[ $1 == -gbl ]]; then
	sudo cp dmenuWacom /usr/local/bin/ && sudo cp dmenuWacom.1\
		/usr/local/man/man1 && notify-send "Installation successful!"
	exit 0
fi
