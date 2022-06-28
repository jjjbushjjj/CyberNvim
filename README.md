### A note about migrating to Lua

Eventually I will be moving to a Lua only config for Neovim (hopefully within the coming months), with the exception that all my keybindings will be written in vimscript and then sourced in my init.lua. As such, when that happens, my vimrc will NOT be updated to vim9 script, and will stop recieving updates as new possible improvements/features to my config become available. 

Part of this is my desire to use a language for my (n)Vim tinkering that actually has a usecase beyond Vim and also partly because any performance improvements in vim9 compared to LuaJIT still do not make using vimscript a more enticing proposition than Lua. I am considering becoming more involved in writing plugins and more extensive modifications for my neovim as the need arises (provided I have time), and I most definitely would prefer using Lua for that instead of vim9 script. That being said, the Vim config will remain here, be completely usable, and will still provide an IDE-like experience. 

Contributions are, as always, welcome if anybody plans to port parts of my vim config (or all of it, I certainly wouldn't complain!) to vim9 and wants to share their work. In this case, it would be best to make a separate file so that I can maintain backwards compatibility and provide a version of my config that works for people not planning to use vim9 script.


### My Dotfiles


Turn your vim into an IDE and your terminal into a pure productivity machine with only a few minutes of setup. Wondering about what features my Vim config has? Any feature you find useful in whatever IDE or other program you use, **my config has it and more**. And if it does not (it will), make an issue, and I will add it if I think it would be useful.

Vim/Nvim Welcome Screen``


![image](https://user-images.githubusercontent.com/55164602/172945445-c99092f1-e42f-46af-974b-e9110c8308da.png)

<hr />

vim/nvim with gruvbox

![image](https://user-images.githubusercontent.com/55164602/174918698-5f9a2ac3-ed01-48db-ab80-0cb54dae6b25.png)

<hr />

Zsh shell showcase

![image](https://user-images.githubusercontent.com/55164602/172946091-1782a47a-b086-40f5-9cc0-4db7e409b675.png)

<hr />

### Warning
Simply copying my dotfiles is unlikely to work due to various system specific settings and hard coded filepaths. It is suggested and quite trivial to take the parts of the code (or even entire files) that you do want to use while being sure you change any hard coded filepaths (there are not very many don't worry) Most of them are in updating my PATH variable and in certain aliases, for example, my nvim alias.

This repository is not meant as much for a plug and play experience as much as it is for showcasing various things you can do with tmux, vim, zsh, bash, and fish, in the hopes that you find some of the tricks useful and integrate them into your own configurations.

<hr />

### Installation

I would recommend taking parts of code you like from the stars of the show, my [vim/nvim](https://github.com/pgosar/useful-things/tree/main/dotfiles/config/vim-nvim/) settings, my [tmux](https://github.com/pgosar/useful-things/tree/main/dotfiles/config/tmux.conf) settings, and my [terminal](https://github.com/pgosar/useful-things/tree/main/dotfiles/config/shells) settings, which you are probably here for. Beware that a couple files associated with my terminal tend to feature hard coded filepaths unique to my system, but these are simple to change. Furthermore, I keep all nvim specific configs at the very bottom of my vimrc since I prefer having everything in one file for easy sharing.
If you go the ```git clone``` route, you can also symlink my files to your own configuration files using
``` python
ln ~/dotfiles/dotfiles/config/vim-nvim/vimrc ~/.vimrc
```
for example. This creates what is basically a new file with the exact same content as the one in this repository. If you run into any issues in using my files, feel free to make an issue. I have probably run into the same issue before too.

My terminal configurations are dependent on files located [here](https://github.com/pgosar/useful-things/tree/main/dotfiles/other). You are welcome to copy those files anywhere you want.
<hr />

### Dependencies
My vimrc requires [vim-plug](https://github.com/junegunn/vim-plug)

zsh requires [powerline](powerline/powerline) with the [Meslo nerd font](https://github.com/ryanoasis/nerd-fonts) and [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)

fish requires [tide](https://github.com/ilanCosman/tide)

<hr />

### Contributing
I welcome contributions if you know of any useful features that I may be
missing, as well as help making the files more plug and play friendly by
limiting the number of hard coded filepaths and helping to create a small shell
script to automate creating symlinks during installation. I unfortunately do not
have the time to do so currently.
