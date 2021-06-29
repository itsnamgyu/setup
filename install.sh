# SUPER SIMPLE SETUP SCRIPT.sh
DIR=$(pwd)
BREW_URL="~https://raw.githubusercontent.com/Homebrew/install/master/install)"
PYTHON_URL="https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb"

if [ -f "/etc/debian_version" ]; then  # Debian Linux
	# Install rust and exa
	curl https://sh.rustup.rs -sSf | sh -s -- -y
	wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
	unzip exa-linux-x86_64-0.8.0.zip
	sudo mv exa-linux-x86_64 /usr/local/bin/exa
	rm exa-linux-x86_64-0.8.0.zip

elif [[ "$OSTYPE" == "darwin"* ]]; then  # macOS
  # Install exa
	brew install exa

else
	# Unsupported platform
	echo "Only supports debian Linux and macOS."
	exit
fi

echo "############################ Additional Items ###############################"
echo "curl -L jupyter-vim.namgyu.io | sh"
echo "https://www.anaconda.com/products/individual#Downloads"
