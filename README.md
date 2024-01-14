This is my Neovim/NvChad config for:
1. C++
2. Python

#### Setup for linux/WSL-ubuntu

1. Open terminal
2. Run following commands:
   - Install curl, unzip, xclip, pip: `sudo apt-get install curl unzip xclip python3-pip`
   - Install pynvim: `python3 -m pip install pynvim`
   - Download latest neovim: `curl -L -o ~/Downloads/nvim-linux64.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz`
   - Install neovim: `tar -xzvf ~/Downloads/nvim-linux64.tar.gz`
   - Add neovim to PATH variable: `echo 'export PATH=$PATH:/home/'"$HOME"'/nvim-linux64/bin' >> ~/.bashrc`
   - Make changed PATH variable available to current terminal session: `source ./~.bashrc`
   - Download ripgrep: `curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb`
   - Install ripgrep: `sudo dpkg -i ripgrep_13.0.0_amd64.deb`
4. Install "Jetbrains Mono Nerd Font" in Windows:
   - Go to: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
   - Extract the zipfile
   - Right click on "Jetbrains Mono Nerd Font" and click on "Install for all users" or "Install"
6. Install latest NvChad:
   - `git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim`
   - When nvchad opens and asks for custom template, choose "N"
   - Let it complete itself. Then press `Space + t + h` and choose theme: "catpuccin" and press Enter.
   - Enter `:q" to exit nvim
7. Customize nvchad for C++ and Python:
   - Delete the custom config file of nvchad: `rm -rf ~/.config/nvim/lua/custom`
   - Download *my* C++ and Python configs: `cd && mkdir custom-c-python-config && git clone https://github.com/mg104/neovim_config.git ~/custom-c-python-config --depth 1"
   - Copy *only* the custom config file from downloaded config, into nvchad: `cp -r ~/custom-c-python-config/lua/custom ~/.config/nvim/lua`
   - Launch nvchad: `nvim`
   - Install C++ and Python plugins listed in my config file: `:MasonInstallAll`

You're all set!
