#!/bin/bash

# Switch current ssh config. 
#When using 1password, you cant ssh with passowrd only with ssh key
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'
filepath=~/.ssh/config_1password
 
if [ $# -eq 1 ]; then
    if [ -e $filepath ]; then
        echo -e "${YELLOW}SSH CONFIG${NC}: Current ssh profile->${GREEN}default${NC}"
    else
        echo -e "${YELLOW}SSH CONFIG${NC}: Current ssh profile->${GREEN}1password${NC}"
    fi
elif [ $# -eq 0 ]; then
    if [ -e $filepath ]; then
        mv ~/.ssh/config_1password ~/.ssh/config
        echo -e "${YELLOW}SSH CONFIG${NC}: Changed profile to->${GREEN}1password${NC}"
    else
        mv ~/.ssh/config ~/.ssh/config_1password
        echo -e "${YELLOW}SSH CONFIG${NC}: Changed profile to->${GREEN}default${NC}"

    fi
fi
        

