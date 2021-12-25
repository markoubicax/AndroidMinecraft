#!/bin/bash
apt-get update
apt install software-properties-common -y
add-apt-repository ppa:openjdk-r/ppa -y
apt-get install openjdk-17-jre zip unzip -y
mkdir mc
cd mc
wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar
echo "eula=true" > eula.txt
cd ..
wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
unzip ngrok.zip
printf "cd mc\njava -Xmx1G -jar minecraft_server.jar nogui" > m
printf "cd ngrok\n./ngrok tcp 25565" > n
chmod +x m
chmod +x n
