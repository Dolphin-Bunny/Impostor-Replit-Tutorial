echo Your repls ip address is:
getent hosts <Your Repl Name>.<Your Repl.it Username>.repl.co | awk '{ print $1 }'

cd ~/impostor_src/Impostor-dev/src/Impostor.Server/bin/Debug/net5.0/linux-x64/
./Impostor.Server
