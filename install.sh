#!/usr/bin/env bash
set -e

neovim_config_repo="git@github.com:aczietlow/nvimrc.git"
neovim_config_dir="${HOME}/.config/nvim"
vulcan_repo=""
vulcan_dir="${HOME}/.local/share/vulcan"

## Familiar util functions
echo-red ()      { echo -e "${red}$1${NC}"; }
echo-green ()    { echo -e "${green}$1${NC}"; }
echo-green-bg () { echo -e "${green_bg}$1${NC}"; }
echo-yellow ()   { echo -e "${yellow}$1${NC}"; }

echo-warning ()
{
	echo -e "${yellow_bg} WARNING: ${NC} ${yellow}$1${NC}";
	shift
	for arg in "$@"; do
		echo -e "           $arg"
	done
}

echo-error ()
{
	echo -e "${red_bg} ERROR: ${NC} ${red}$1${NC}"
	shift
	for arg in "$@"; do
		echo -e "         $arg"
	done
}

echo-notice ()
{
	echo -e "${lightmagenta_bg} NOTICE: ${NC} ${lightmagenta}$1${NC}"
	shift
	for arg in "$@"; do
		echo -e "         $arg"
	done
}

# print string in $1 for $2 times
echo-repeat ()
{
    seq  -f $1 -s '' $2; echo
}

# prints message to stderr
echo-stderr ()
{
	(>&2 echo "$@")
}

# Get our variables
read -p "Username: " username
#echo "You entered $username"

# Ask for sudo
if [ "$EUID" -ne 0 ]; then
  echo-warning "Sudo access is required during the install"
  sudo -v
  if [ $? -ne 0 ]; then
    echo-error "Fail gaining sudo access. Try again with sudo this time..." 
    exit 1
  fi 
fi

# Start with git

# Neovim
sudo dnf install -y \
  gcc make \
  ripgrep fd-find unzip \
  neovim

## Neovim Dependencies
sudo dnf install -y nodejs

sudo npm install -g prettier 

## Pullin in my mvim config
mkdir -p "$neovim_config_dir"
git clone "$neovim_config_repo" "$neovim_config_dir"

