if [ -f "/etc/debian_version" ]; then
	# Install rust and exa
	curl https://sh.rustup.rs -sSf | sh -s -- -y
	wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
	unzip exa-linux-x86_64-0.8.0.zip
	sudo mv exa-linux-x86_64 /usr/local/bin/exa
	rm exa-linux-x86_64-0.8.0.zip
elif [[ "$OSTYPE" == "darwin"* ]]; then
	# Install exa
	brew install exa
else
	# Unsupported platform
	echo "Only supports debian Linux and macOS."
	exit
fi

git config --global user.email "itsnamgyu@gmail.com"
git config --global user.name "Namgyu Ho"

echo "############################ Additional Items ###############################"
echo "curl -L jupyter-vim.namgyu.io | sh"
echo "https://www.anaconda.com/products/individual#Downloads"

