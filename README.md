# INSTALLATION

* Before using this config file, you must do the following things :

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
```

* Also, to use powerline with vim, you should use a vim version with python
enabled.  To do that on a MAC with macport and python 2.7 :

```
port install vim +python27
```

* Then, you can install the config file :

```
cp vimrc ~/.vimrc
```

* After installing this config file, you must **open vim and type** :

```
 :BundleInstall
 :PluginInstall
```

* Then, exit VIM and install Python jedi library :

```
pip install jedi
```

* Next, you have to install the fonts for Powerline and Shell :

```
cd fonts
./install.sh
```

* Then, you have to set the default font of your Terminal to a Mono version (a good working example : Ubunbu Mono derivative Powerline 16pt.)

* Another thing to do do optimize the code syntaxing, install a dedicated color scheme in VIM`(the one by default doesn't look good with xterm256, so I prefer to change to harlequin)

```
cp -r colors ~/.vim/
```

* Next time you open VIM, all the features should be working

# TIPS and shortcuts

Here are some shortcuts used in Python-mode, NERDTree and Jedi

|Keys       | Description                                                                  |
|-----------|------------------------------------------------------------------------------|
| K         | Show python docs                                                             |
| <Ctrl-c>g | Rope goto definition                                                         |
| <Ctrl-c>d | Rope show documentation                                                      |
| <Ctrl-c>f | Rope find occurrences                                                        |
| <Leader>b | Set, unset breakpoint (g:pymode_breakpoint enabled)                          |
| [[        | Jump on previous class or function (normal, visual, operator modes)          |
| ]]        | Jump on next class or function (normal, visual, operator modes)              |
| [M        | Jump on previous class or method (normal, visual, operator modes)            |
| ]M        | Jump on next class or method (normal, visual, operator modes)                |
| F2        | Toggle NERDTree View                                                         |
| :tabnew   | Create a new tab (if you add a filepath, it will open the file in a new tab) |
| SPACE     | Toggle between vim tabs                                                      |
| gt        | Next Tab                                                                     |
| gT        | Previous Tab                                                                 |
| {i}gt     | go to Tab in position i                                                      |

