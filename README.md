# vimconfigs

## Install Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
:PluginInstall
```
## Install YouCompleteMe
```
install golang from https://golang.org/dl/
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
:YcmRestartServer
```

## vim - git gutter
https://github.com/airblade/vim-gitgutter
```
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q
```
