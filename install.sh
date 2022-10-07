#!/bin/bash
#
# Original sh script from Kyocera (MIT license)
# The only modification was made for checking if the system is Linux 
# 
# TODO: add support for *BSD systems
#
#
if  [ `uname` = "Linux" ]
then
    if [ ! -d /usr/share/cups/model ]
    then
        sudo mkdir /usr/share/cups/model
    fi

    if [ ! -d /usr/share/cups/model/Kyocera ]
    then
        sudo mkdir /usr/share/cups/model/Kyocera
    fi

    sudo cp Kyocera_FS-1040GDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1040GDI.ppd
    sudo cp Kyocera_FS-1041GDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1041GDI.ppd
    sudo cp Kyocera_FS-1020MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1020MFPGDI.ppd
    sudo cp Kyocera_FS-1025MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1025MFPGDI.ppd
    sudo cp Kyocera_FS-1120MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1120MFPGDI.ppd
    sudo cp Kyocera_FS-1125MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1125MFPGDI.ppd
    sudo cp Kyocera_FS-1220MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1220MFPGDI.ppd
    sudo cp Kyocera_FS-1320MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1320MFPGDI.ppd
    sudo cp Kyocera_FS-1325MFPGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1325MFPGDI.ppd
    sudo cp Kyocera_FS-1060DNGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1060DNGDI.ppd
    sudo cp Kyocera_FS-1061DNGDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1061DNGDI.ppd
    sudo cp bin/rastertokpsl-re /usr/lib/cups/filter/rastertokpsl
    
    if [ -f /usr/lib/cups/filter/rastertokpsl ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1040GDI.ppd ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1060DNGDI.ppd ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1020MFPGDI.ppd ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1025MFPGDI.ppd ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1120MFPGDI.ppd ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1125MFPGDI.ppd ]
    then
        echo "Installation completed"
    else
        echo "Installation failed"
    fi

else
    echo "Your system is not supported"
fi
exit
