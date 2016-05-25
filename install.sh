# Set up the symlinks to install the configuration files
#
# There are probably better ways of doing this, but this
# works for the time being.

ln -sfv $(pwd)/.vim $HOME/.vim
ln -sfv $(pwd)/.vimrc $HOME/.vimrc
ln -sfv $(pwd)/.tmux.conf $HOME/.vimrc
ln -sfv $(pwd)/.zshrc $HOME/.zshrc
ln -sfv $(pwd)/.gitignore_global $HOME/.gitignore_global
