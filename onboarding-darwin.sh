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

# Git should be installed
if (git --version)
then
  echo "Git already installed"
else
  echo "Installing Git"
  brew install git
fi

# SSH Key Pair should exist
if (stat $HOME/.ssh/id_ed25519)
then
  echo "SSH Key Pair already exists"
else
  echo "Creating SSH Key Pair"
  ssh-keygen -t ed25519 -f "$HOME/.ssh/id_ed25519" -N ''
fi

# multipass should be installed
if (multipass version)
then
  echo "multipass is installed"
else
  echo "installing multipass..."
  brew install multipass
fi

