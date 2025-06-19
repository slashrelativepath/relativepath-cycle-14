# node should be installed
if (node --version)
then 
  echo 'node is already installed.'
else
  echo 'installing node.'
  sudo apt install -y nodejs
fi

# npm should be installed
if (npm --version)
then
  echo "npm is already installed"
else
  echo "installing npm..."
  sudo apt install -y npm
fi

# express.js module should be installed
if (npm list -g express)
then
  echo "express is already installed globally."
else
  echo "installing express..."
  sudo npm install -g express
  sudo npm install -g express-generator
fi
