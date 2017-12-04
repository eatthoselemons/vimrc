# My Vimrc
## Summary
This is my vimrc that I am using it has some of my own customizations and some plugins using vundle
I am running [neovim](https://neovim.io) on debian 8 and 9

## Install
To have this work correctly you will need to install the fixed powerline fonts (airline), and run setup for YouCompleteMe

#### Basic setup
Clone this repo
Install Neovim:
Follow the instructions [here](https://github.com/neovim/neovim/wiki/Building-Neovim) to build neovim if it isn't available in your package manager

symlink your vim file to the proper location. For example:
`ln -s /home/user/git/vimrc/vimrc /home/user/.vim/vimrc`
Link the neovim config file. For example:
`ln -s /home/user/git/vimrc/init.vim /home/user/.config/nvim/init.vim`

I also added this in my ~/.bashrc to make getting to nvim easier, since I don't have to remember to open a different text editor from now on (note it would be best to remove vim if you do this)
`alias vim="nvim"`

Once all this is done open nvim (vim for me since I aliased it) and run `:PluginInstall` this might take a while as it goes through installing the plugins

#### More Setup that might be required
I used this git repository to install the fixed powerline fonts: https://github.com/powerline/fonts
Clone the fonts repo into where ever you have your git repos (example: /home/user/git/):
`$ git clone https://github.com/powerline/fonts`
Install the fonts:
`./install.sh`


For YouCompleteMe you will need python support so run the following commands:
`pip install -upgrade neovim
pip2 install -upgrade neovim
pip3 install -upgrade neovim`

Which should give neovim the python support needed for YouCompleteMe

For YouCompleteMe I just installed with javascript and C++
Navagate to `~/.vim/bundle/youcompleteme/` and run `$./install.py --js-completer --clang-completer`

It will compile YouCompleteMe and a few other modules but once it is done you should be all good to go!




# Basic Keybinds

The main keybind that I added is to map `jk` to `Esc` so that my fingers don't have to leave the home row to esc insert mode

I also made capital `h`(`H`) and `l`(`L`) move the beginning and end of the line respectively

Capital `j`(`J`) and `k`(`K`) map to move 10 lines up or down

<space>c starts a comment on python and javascript files
