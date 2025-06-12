# Ollama should be installed
if (ollama --version)
then
  echo "Ollama already installed"
else
  echo "Installing ollama"
  curl -fsSL https://ollama.com/install.sh | sh
fi

