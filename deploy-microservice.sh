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

# hello.service should be deployed
if (diff /etc/systemd/system/hello.service /home/ubuntu/hello.service)
then
  echo "hello.service is already deployed."
else
  echo "deploying hello.service..."
  sudo cp /home/ubuntu/hello.service /etc/systemd/system/hello.service
  sudo systemctl daemon-reload
fi

# hello.service should be enabled
if (systemctl is-enabled hello.service)
then
  echo "hello.service is already enabled."
else
  echo "enabling hello.service..."
  sudo systemctl enable hello.service
fi

# hello.service should be running (active)
if (systemctl is-active hello.service)
then
  echo "hello.service is already running (active)."
else
  echo "starting hello.service..."
  sudo systemctl restart hello.service
fi

# api.service should be deployed
if (diff /etc/systemd/system/api.service /home/ubuntu/api.service)
then
  echo "api.service is already deployed."
else
  echo "deploying api.service..."
  sudo cp /home/ubuntu/api.service /etc/systemd/system/api.service
  sudo systemctl daemon-reload
fi

# api.service should be enabled
if (systemctl is-enabled api.service)
then
  echo "api.service is already enabled."
else
  echo "enabling api.service..."
  sudo systemctl enable api.service
fi

# api.service should be running (active)
if (systemctl is-active api.service)
then
  echo "api.service is already running (active)."
else
  echo "starting api.service..."
  sudo systemctl restart api.service
fi

# Nginx should be installed
if (nginx -v)
then
  echo "nginx is installed"
else
  echo "installing nginx"
  sudo apt install -y nginx
fi

# nginx should be running
if (systemctl is-active nginx.service)   
then
  echo "nginx.service is already running (active)."
else
  echo "starting nginx.service..."
  sudo systemctl restart nginx.service
fi
  

# default nginx site should be disabled
if (! stat /etc/nginx/sites-enabled/default)
then
  echo "default nginx site already disabled"
else
  echo "disabling nginx default site..."
  sudo rm /etc/nginx/sites-enabled/default
  sudo systemctl reload nginx
fi

# /var/www/microservices should exist
if (stat /var/www/microservices)
then
  echo "/var/www/microservices already exists"
else
  echo "creating /var/www/microservices..."
  sudo mkdir -p /var/www/microservices
fi

# /var/www/microservices/index.html should exist
if (stat /var/www/microservices/index.html)
then
  echo "/var/www/microservices/index.html already exists"
else
  echo "creating /var/www/microservices/index.html..."
  cat <<-'EOF' | sudo tee /var/www/microservices/index.html
<html>
<title>Microservices app</title>
<body>
<h1>Microservices app</h1>
</body>
</html>
EOF
fi 

# microservices.conf should be enabled
if (diff microservices.conf /etc/nginx/conf.d/microservices.conf)
then
  echo "microservices.conf is already enabled"
else
  echo "enabling microservices.conf..."
  sudo cp microservices.conf /etc/nginx/conf.d/microservices.conf
  sudo systemctl reload nginx
fi

