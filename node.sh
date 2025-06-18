# node should be installed
if (node --version)
then 
  echo 'node is already installed.'
else
  echo 'installing node.'
  sudo apt install -y nodejs
fi

