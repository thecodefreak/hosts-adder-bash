#!/bin/bash

end='\033[0m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
white='\033[0;37m'

export in_dir=$(dirname $0)
opt=$1
if [[ $UID -ne 0 ]]; then
	echo -e "${red}Cannot run without super user privileges!${end}" && exit
fi

install() {
    local core="$in_dir/hostsctl"
    if [[ -f "$in_dir/hostsctl" ]]; then
        echo -e "${green}Installing...${end}"
        chmod +x $core
        mv $core /usr/bin/
        if [[ $? -eq 0 ]]; then
            echo -e "\n\n${green}Process completed!${end}"
        fi
    else
        echo -e "${red}Failed to install, script not found${end}"
    fi
}

which hostsctl >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
    install
else
    if [[ $opt =~ (--upgrade|-u) ]]; then
        echo -e "${blue}Upgrading hostsctl ...${end}\n"
        rm -f $(which hostsctl)
        install
    else
        echo -e "${yellow}hostsctl command found.. try to remove it or install using the option --upgrade ${end}"
    fi
fi

    


