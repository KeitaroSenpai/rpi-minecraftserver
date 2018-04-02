#!/bin/bash
# -----------------------------------------------------------------------------
# docker-minecraft /start script
#
# Authors: Isaac Bythewood
# Updated : Benoit-Pierre STUDER
# Updated: Apr 02, 2018
# -----------------------------------------------------------------------------


if [ ! -f /data/minecraft_server.jar ]
then
    curl "https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar" -o /data/minecraft_server.jar
fi

if [ ! -f /data/eula.txt ]
then
    echo "eula=true" > /data/eula.txt
fi

cd /data/; java -Xmx2G -jar minecraft_server.jar nogui