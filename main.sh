echo Your repls ip address is:
getent hosts <Your Repl Name>.<Your Repl.it Username>.repl.co | awk '{ print $1 }'

cp config.json ~/impostor_src/Impostor-dev/src/Impostor.Server/bin/Debug/net5.0/linux-x64/config.json

cp -r plugins ~/impostor_src/Impostor-dev/src/Impostor.Server/bin/Debug/net5.0/linux-x64/

cd ~/impostor_src/Impostor-dev/src/Impostor.Server/bin/Debug/net5.0/linux-x64/
./Impostor.Server
