# Date create: Dec 12, 2012
# Last modified: Apr 12, 2013 16:48
BASH_PROFILE="$HOME/.bash_profile"
[ -f $HOME/.bashrc ] && BASH_PROFILE="$HOME/.bashrc"
if [ "root" == `whoami` ]
then
    BIN_DIR="/usr/local/bin"
    chmod +x wmp3.sh && cp wmp3.sh "${BIN_DIR}/wmp3" || exit 1
    echo "Success installed \"wmp3\" for all user!"
    echo "Run \"wmp3\" to print help (without quote)"
else
    BIN_DIR="$HOME/.local/bin"
    if [ -d ${BIN_DIR} ]; then
        chmod +x wmp3.sh && cp wmp3.sh "${BIN_DIR}/wmp3" || exit 2
    else
        mkdir -p ${BIN_DIR}
        chmod +x wmp3.sh && cp wmp3.sh "${BIN_DIR}/wmp3" || exit 2
    fi
    echo "export PATH=$PATH:${BIN_DIR}" >> ${BASH_PROFILE}
    echo "Success installed \"wmp3\" for only you!"
    echo "Must logout or reboot your system to use them!"
    echo "After, Run \"wmp3\" to print help (without quote)"
    echo "TIP: Run script \"install.sh\" file as root user to \
use \"wmp3\" immediate!"
fi
