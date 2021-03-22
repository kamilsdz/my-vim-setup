Script that will setup my favourite vim config:
`./setup`


[DEPRECATED] (Now the FZF does magic):
## Compiling VIM with specific Ruby version
In MacOS Catalina VIM is compiled with Ruby 2.6.3. You can compile and install VIM again with Ruby 1.9.3 that works with Command-T:

### 1. Compile and install [Ruby 1.9.3](https://www.ruby-lang.org/en/news/2014/11/13/ruby-1-9-3-p551-is-released/)

```
cd directory_with_ruby-1.9.3-p551/
./configure
make
sudo make install
```
It will install ruby binary to `/usr/local`.

### 2. Compile and install [Vi 8.1](https://www.vim.org/download.php) with Ruby 1.9.3
```
cd directory_with_vim-8.1.2400/
./configure --prefix=/usr/local \
    --enable-gui=no \
    --without-x \
    --disable-nls \
    --enable-multibyte \
    --with-tlib=ncurses \
    --enable-pythoninterp \
    --enable-rubyinterp \
    --with-ruby-command=/usr/local/bin/ruby \
    --with-features=huge
make
sudo make install
```
After installing Vim you can verify if it was installed successfully by running `vim --version` - date of compilation should be updated.

### 3. Re-compile Command-T plugin:
If you use a package manager such as RVM, it still defines the global ruby version. What I've done was installation Ruby via RVM and recompilation of Command-T.
```
cd ~/.vim/bundle/command-t
rvm install ruby-1.9.3
rvm use 1.9.3
rake clean
rake make
```
