
  cwd=$(pwd)
  mkdir plugins
  
  cd ~
  cd $cwd

  #exit 2# stop the script early

  echo =========================
  echo     Installing things
  echo =========================
  echo
  echo
  cd ~
  wget https://download.visualstudio.microsoft.com/download/pr/69cb8922-7bb0-4d3a-aa92-8cb885fdd0a6/2fd4da9e026f661caf8db9c1602e7b2f/dotnet-sdk-5.0.100-rc.2.20479.15-linux-x64.tar.gz
  mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-5.0.100-rc.2.20479.15-linux-x64.tar.gz -C $HOME/dotnet
  export DOTNET_ROOT=$HOME/dotnet
  export PATH=$PATH:$HOME/dotnet
  alias dotnet="~/dotnet/dotnet"
  mkdir -p $HOME/impostor_src
  cd ~/impostor_src
  wget https://github.com/Impostor/Impostor/archive/dev.zip
  unzip -o dev.zip
  cd ~/impostor_src/Impostor-dev/src/Impostor.Server
  dotnet publish --runtime linux-x64

  cd $cwd
  cp -n ~/impostor_src/Impostor-dev/src/Impostor.Server/bin/Debug/net5.0/linux-x64/config.json config.json

  echo =========================
  echo           Done!
  echo =========================
