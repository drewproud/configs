# configs
Configuration files

## Installation

1. Install MacVim

2. Install vim theme  
```bash
mkdir ~/.vim/colors && cp monokai.vim ~/.vim/colors/
```

3. Install Vundle  
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

4. Launch and install plugins  
```bash
mvim
```  
```
:PluginInstall
```

5. Install global packages  
```bash
npm i -g eslint_d
npm i -g eslint-cli
```

6 Build YouCompleteMe binaries
```bash
brew install cmake
cd ~/.vim/bundle/YouCompleteMe && ./install.py --tern-completer
```

7. Install Tern dependencies
```bash
cp ~/dev/configs/.tern-config ~/
cd ~/.vim/bundle/tern_for_vim && npm i
```

## Troubleshooting

#### `mvim` not finding vim when trying to launch from terminal

run `sudo ln -s /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim`
