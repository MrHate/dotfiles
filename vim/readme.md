# Install Vim on macOS Catalina 10.05

Due to new restriction of macOS, built-in Vim cannot be replaced or renamed.

To apply the latest Vim on macOS, here are the steps:

1. clone the Vim repo on https://github.com/vim/vim. `git clone https://github.com/vim/vim.git;cd vim`
2. `./configure --enable-pythoninterp`
3. `make;sudo make install`
4. append `alias vim='/usr/local/bin/vim` to your `.bashrc` or `.zshrc`
