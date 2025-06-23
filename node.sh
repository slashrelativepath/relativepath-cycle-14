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

# app.service should be deployed
if (stat /etc/systemd/system/app.service)
then
  echo "app.service is already deployed."
else
  echo "deploying app service..."
  sudo cp /home/ubuntu/app.service /etc/systemd/system/app.service
fi
