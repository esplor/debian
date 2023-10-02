#/usr/bin/env bash

dir=$HOME/.local

if [ ! -d $dir ]; then
echo "Directory $dir doesn't exist, creating.."
mkdir -p $dir
fi

wget -qO- https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz | tar xvz -C $dir --strip-components=1
echo '-----\n'$dir'/bin needs to be included in path, export PATH='$dir'/bin:$PATH\n-----'
