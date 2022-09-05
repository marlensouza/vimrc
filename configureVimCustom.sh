#!/bin/bash
#
# Autor......: Marlen Souza
# nome.......: configureVimCustom.sh
# versão.....:
# descrição..: Automatiza a configuração do vim
#              para que o mesmo tenha um comprtamento 
#              similar a um ambiente de desenvolvimento.

sudo apt update && \
sudo apt upgrade -y && \
sudo apt install gcc make perl p7zip-full zip unzip curl wget git python3-pip gnupg vim fontconfig -y && \
mkdir -p ~/.vim/pack/git-plugins/start/ && \
curl -sL https://raw.githubusercontent.com/marlensouza/vimrc/master/vimrc > ~/.vimrc && \
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo bash - && \
sudo apt install -y nodejs && \
mkdir -p ~/.fonts && \
cd ~/.fonts && \
wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf?raw=true -O ~/.fonts/DroidSansMonoNerdFontCompleteMono.otf && \
fc-cache && \
sed -i "s/Anonymice/DroidSansMono/g" ~/.vimrc && \
cd ~/.vim/pack/git-plugins/start/ && \
echo \
"https://github.com/mhinz/vim-startify
https://github.com/rafi/awesome-vim-colorschemes
https://github.com/tomasiser/vim-code-dark
https://github.com/Yggdroot/indentLine
https://github.com/preservim/nerdtree
https://github.com/ryanoasis/vim-devicons
https://github.com/vim-airline/vim-airline
https://github.com/vim-airline/vim-airline-themes
https://github.com/ctrlpvim/ctrlp.vim
https://github.com/preservim/nerdcommenter
https://github.com/mattn/emmet-vim
https://github.com/dense-analysis/ale
https://github.com/sheerun/vim-polyglot" > file.txt && \
while read TEXT ; do git clone "$TEXT" ; done < file.txt && \
mkdir -p ~/.vim/pack/coc/start && \
cd ~/.vim/pack/coc/start && \
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1 && \
curl -sL https://raw.githubusercontent.com/marlensouza/vimrc/master/coc.nvimrc > ~/.vim/coc.nvimrc && \
curl -sL https://raw.githubusercontent.com/marlensouza/vimrc/master/coc-settings.json > ~/.vim/coc-settings.json && \
pip3 install jedi-language-server flake8 pylint