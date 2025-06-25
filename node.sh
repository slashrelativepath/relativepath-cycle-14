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
if (diff /etc/systemd/system/app.service /home/ubuntu/app.service)
then
  echo "app.service is already deployed."
else
  echo "deploying app service..."
  sudo cp /home/ubuntu/app.service /etc/systemd/system/app.service
  sudo systemctl daemon-reload
fi

# app.service should be enabled
if (systemctl is-enabled app.service)
then
  echo "app.service is already enabled."
else
  echo "enabling app.service..."
  sudo systemctl enable app.service
fi

# app.service should be running (active)
if (systemctl is-active app.service)
then
  echo "app.service is already running (active)."
else
  echo "starting app.service..."
  sudo systemctl restart app.service
fi
