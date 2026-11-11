git config --global user.email "itsnamgyu@gmail.com"
git config --global user.name "Namgyu Ho"
git config --global core.editor vim

curl -fsSL https://claude.ai/install.sh | bash

# tmux
if [ -f ~/.tmux.conf ] && ! cmp -s tmux.conf ~/.tmux.conf; then
    cp ~/.tmux.conf ~/.tmux.conf.bak.$(date +%Y%m%d-%H%M%S)
fi
cp tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf 2>/dev/null || true
