if [[ $EUID -ne 0 ]]; then
   echo -e "\033[31mThis script must be run as root"
   exit 1
fi

sudo curl https://blackarch.org/strap.sh | sh
sudo pacman -Syyu
