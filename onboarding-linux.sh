# nano should be installed
if (which nano)
then
  echo 'nano is already installed' 
else
  echo 'installing nano'
  sudo apt install -y nano
fi

# git should be installed
if (git --version)
then
  echo 'git is already installed'
else
  echo 'installing git'
  sudo apt install -y git
fi

# an ssh key-pair should exist
if (stat $HOME/.ssh/id_ed25519)
then
  echo 'key pair already exists'
else
  echo 'generating key-pair'
  ssh-keygen -t ed25519 -f $HOME/.ssh/id_ed25519 -N ''
fi

