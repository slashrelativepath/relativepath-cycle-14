# Brew should be installed
if (brew --version)
then 
  echo "Brew is already installed"
else
  echo "Installing Brew"
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
fi

# Nano should be installed
if (which nano)
then 
  echo "Nano is already installed"
else 
  echo "Installing nano"
  brew install nano
fi


