# Date create: Dec 12, 2012
# Last modified: Apr 12, 2013 16:48
BASH_PROFILE="$HOME/.bash_profile"
[ -f $HOME/.bashrc ] && BASH_PROFILE="$HOME/.bashrc"
chmod +x wmp3.sh
if [ "root" == `whoami` ]
then
    BIN_DIR="/usr/local/bin"
    cp wmp3.sh "${BIN_DIR}/wmp3"
    echo "Success installed \"wmp3\" for all user!"
    echo "Run \"wmp3\" to print help (without quote)"
else
    BIN_DIR="$HOME/.local/bin"
    if [ -d ${BIN_DIR} ]; then
        cp wmp3.sh "${BIN_DIR}/wmp3"
    else
        mkdir -p ${BIN_DIR}
        cp wmp3.sh "${BIN_DIR}/wmp3"
    fi
    echo "export PATH=$PATH:${BIN_DIR}" >> ${BASH_PROFILE}
    echo "Success installed \"wmp3\" for only you!"
    echo "Must logout or reboot your system to use them!"
    echo "After, Run \"wmp3\" to print help (without quote)"
    echo "TIP: Run script \"install\" file as root user to \
use \"wmp3\" immediate!"
fi
