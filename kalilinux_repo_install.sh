 if [[ $EUID -ne 0 ]]; then
    echo -e "\033[31mThis script must be run as root"
    exit 1
 fi
 
 sudo apt update && sudo apt full-upgrade -y
 sudo apt update
 sudo sh -c "echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list"
 sudo apt install gnupg
 wget 'https://archive.kali.org/archive-key.asc'
 sudo apt-key add archive-key.asc
 sudo apt update
 sudo sh -c "echo 'Package: *'>/etc/apt/preferences.d/kali.pref; echo 'Pin: release a=kali-rolling'>>/etc/apt/preferences.d/kali.pref; echo 'Pin-Priority: 50'>>/etc/apt/preferences.d/kali.pref"
 sudo apt update
 echo 'To install a programm "sudo apt install -t kali-rolling NAME-PACKAGE"' > README_ABOUT_KALI_REPOS.txt
 nano README_ABOUT_KALI_REPOS.txt
