# nginx should be installed
if (which nginx)
then
  echo "nginx already installed."
else
  echo "installing nginx..."
  sudo apt install -y nginx
fi

# nginx should be running
if (systemctl is-active nginx.service)
then
  echo "nginx is already runnning."
else
  echo "starting nginx..."
  sudo systemctl start nginx.service
fi
