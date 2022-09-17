
Instalação vim custom
---

# Dependências

```
sudo apt update && sudo apt upgrade -y && sudo apt install gcc make perl p7zip-full zip unzip curl wget git python3-pip gnupg vim -y
```

# Config inicial

## raiz de diretórios

```
mkdir -p ~/.vim/pack/git-plugins/start/
```

## modelo de .vimrc

```
curl -sL https://raw.githubusercontent.com/marlensouza/vimrc/master/vimrc > ~/.vimrc
```

# Node.js LTS (v16.x):

# Using Ubuntu

> GIT: [nodesource/distributions](https://github.com/nodesource/distributions)

```
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
```

# Instala fonte

```
mkdir -p ~/.fonts
```

Dentro de .fonts, baixar:

``` 
wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf?raw=true -O ~/.fonts/DroidSansMonoNerdFontCompleteMono.otf
```

> Se mesmo depois do Downloads e execução do ```fc-cache``` a fonte ainda não for detectada, mude a saída do download para
> ```/usr/share/fonts/truetype/droid```.
> wget ... -O /usr/share/fonts/truetype/droid/DroidSansMonoNerdFontCompleteMono.otf

Em seguida rodar o comado: 

```
fc-cache
```

> Caso não haja o comando fc-cache, instale o fontconfig.
> 
> ```
> sudo apt install fontconfig
> ```


Verificar se a fonte consta na lista.

```
fc-list | egrep "DroidSansMono Nerd Font Mono"
```

# Adicionar fonte ao vimrc

Buscar no .vimrc a linha com a seguinte configuração

```
set guifont=Anonymice\ Nerd\ Font\ Mono:h12
```

Trocar por.

```
set guifont=DroidSansMono\ Nerd\ Font\ Mono:h12
```

# Download de plugins do vim

```
cd ~/.vim/pack/git-plugins/start/
```

```
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
https://github.com/sheerun/vim-polyglot" > file.txt
```

```
while read TEXT ; do git clone "$TEXT" ; done < file.txt
```

# Git clone - coc.nvim

```
mkdir -p ~/.vim/pack/coc/start
cd ~/.vim/pack/coc/start
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
```

# Config coc.vimrc

```
curl -sL https://raw.githubusercontent.com/marlensouza/vimrc/master/coc.nvimrc > ~/.vim/coc.nvimrc
```

# Config coc-settings.json

```
curl -sL https://raw.githubusercontent.com/marlensouza/vimrc/master/coc-settings.json > ~/.vim/coc-settings.json
```

# Install jedi-language-server

```
pip3 install jedi-language-server flake8 pylint
```

# Instalando modulos do coc.nvim

## instalação

Entre no modo de comando  do vim e insira a seguinte linha com os módulos.

Modo de comando do vim:  ```esc + :```


> **Obs**: Os modulos abaixo atendem a minha necessidade. Aconselho que procure ver o que de fato lhe serve.

```
CocInstall @yaegassy/coc-ansible coc-browser coc-cmake coc-go coc-highlight coc-jedi coc-json coc-python coc-java coc-groovy coc-docker coc-sh coc-yaml
```

## Modulos

[coc-ansible](https://www.npmjs.com/package/@yaegassy/coc-ansible) : @yaegassy/coc-ansible

[coc-browser](https://www.npmjs.com/package/coc-browser) : coc-browser

[coc-cmake](https://www.npmjs.com/package/coc-cmake) : coc-cmake

[coc-go](https://www.npmjs.com/package/coc-go) : coc-go

[coc-highlight](https://www.npmjs.com/package/coc-highlight) : coc-highlight

[coc-jedi](https://www.npmjs.com/package/coc-jedi) : coc-jedi

[coc-json](https://www.npmjs.com/package/coc-json) : coc-json

[coc-python](https://www.npmjs.com/package/coc-python) : coc-python

[coc-java](https://www.npmjs.com/package/coc-java) : coc-java

[coc-groovy](https://www.npmjs.com/package/coc-groovy) : coc-groovy

[coc-docker](https://www.npmjs.com/package/coc-docker) : coc-docker

[coc-sh](https://www.npmjs.com/package/coc-sh) : coc-sh

[coc-yaml](https://www.npmjs.com/package/coc-yaml) : coc-yaml

## Repositório npm

Os módulos podem ser encontrados no repositório oficial em [npm](https://www.npmjs.com/search?q=keywords%3A).
