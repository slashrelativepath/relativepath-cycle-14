# Ollama should be installed
if (ollama --version)
then
  echo "Ollama already installed"
else
  echo "Installing ollama"
  curl -fsSL https://ollama.com/install.sh | sh
fi

# qwen2.5:0.5b model should be pulled
if (ollama show qwen2.5:0.5b)
then
  echo "qwen2.5:0.5b model already pulled"
else
  echo "pulling qwen2.5:0.5b model"
  ollama pull qwen2.5:0.5b 
fi


