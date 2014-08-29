#### Install Applications: ####
1. [f.lux](https://justgetflux.com/)
2. [trailer](http://dev.housetrip.com/trailer/)
3. [iTerm2](http://iterm2.com/)
4. [MacVim](https://github.com/b4winckler/macvim/releases)
5. [FileZilla](https://filezilla-project.org/)
6. [X11](http://xquartz.macosforge.org/trac)
7. [Wireshark](https://www.wireshark.org/download.html)(_depends on X11_)
8. [Gimp](http://www.gimp.org/)
9. [Inkscape](http://www.inkscape.org/en/)(_depends on X11_)
10. [Sourcetree](http://www.sourcetreeapp.com/)
11. [Homebrew](http://brew.sh/)
  
  ```
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  ```
  
12. [pip](http://pip.readthedocs.org/en/latest/installing.html)
  
  ```
  brew install wget
  wget https://bootstrap.pypa.io/get-pip.py
  sudo python get-pip.py
  ```
  
13. [virtualenv](http://virtualenv.readthedocs.org/en/latest/virtualenv.html#installation)

  ```
  sudo pip install virtualenv
  ```
  
14. [virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/)

  ```
  sudo pip install virtualenvwrapper
  echo "export WORKON_HOME=$HOME/.virtualenvs" >> $HOME/.bashrc
  echo "export PROJECT_HOME=$HOME/sites" >> $HOME/.bashrc
  echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
  ```
  
15. [pyenv](https://github.com/yyuu/pyenv)

  ```
  brew update
  brew install pyenv
  echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bash_profile
  ```
  
16. [node](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager)

  ```
  brew instal node
  ```
  
#### Syntax Checking Tools: ####
1. [flake8](https://flake8.readthedocs.org/)

  ```
  sudo pip install flake8
  ```
  
2. [jshint](http://www.jshint.com/install/)

  ```
  npm install -g jshint
  ```
  
#### Environment and Tools Customization: ####
1. Copy the following files from the repo into your home directory
 * .bashrc
 * .vimrc
 * .gitconfig
2. Add colorschemes to iTerm2
 * Download colorschemes [here](http://iterm2colorschemes.com/)
 * Extract from downloaded archive
 * Open iTerm
 * Select `iTerm --> Preferences...`
 * Open `Profiles` tab
 * Open `Colors` tab
 * Click `Load Presets... --> Import`
 * Choose colorschemes directory extracted above
 * Currently using `Solarized Dark` and/or `Solarized Dracula`
3. [pathogen](https://github.com/tpope/vim-pathogen)

  ```
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  ```
  
4. Install [solarized colorscheme](http://ethanschoonover.com/solarized/vim-colors-solarized) for MacVim

  ```
  cd ~/.vim/bundle
  git clone git://github.com/altercation/vim-colors-solarized.git
  echo "\" Solarized Colorscheme Settings" >> ~/.vimrc
  echo "syntax enable" >> ~/.vimrc
  echo "set background=dark" >> ~/.vimrc
  echo "colorscheme solarized" >> ~/.vimrc
  ```
  
5. Install [ctrlp](http://kien.github.io/ctrlp.vim/#installation)

  ```
  cd ~/.vim
  git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
  echo "\" Necessary to use ctrlp" >> ~/.vimrc
  echo "set runtimepath^=~/.vim/bundle/ctrlp.vim" >> ~/.vimrc
  ```
  
6. Install [NERDTree](https://github.com/scrooloose/nerdtree)

  ```
  cd ~/.vim/bundle
  git clone https://github.com/scrooloose/nerdtree.git
  echo "\" Map ctrl-n to toggle NERDTree" >> ~/.vimrc
  echo "map <C-n> :NERDTreeToggle<CR>" >> ~/.vimrc
  echo "\" Open NERTree automatically when vim starts if no files are open" >> ~/.vimrc
  echo "autocmd StdinReadPre * let s:std_in=1" >> ~/.vimrc
  echo "autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif" >> ~/.vimrc
  echo "\" Close vim if NERDTree is only window left open" >> ~/.vimrc
  echo "autocmd bufenter * if (winnr("$") == 1 && exists('b:NERDTreeType') && b:NERDTreeType == 'primary') | q | endif" >> ~/.vimrc
  ```
  
7. Install [Syntastic](https://github.com/scrooloose/syntastic)

  ```
  cd ~/.vim/bundle && \
  git clone https://github.com/scrooloose/syntastic.git
  ```
