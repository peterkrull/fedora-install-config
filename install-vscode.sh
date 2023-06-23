# Import repository for VS code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update

# Install package
sudo dnf install -y code

# Install extensions
code --install-extension GitHub.vscode-pull-request-github
code --install-extension Gruntfuggly.todo-tree
code --install-extension julialang.language-julia
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension ms-vscode.cpptools
code --install-extension platformio.platformio-ide
code --install-extension rust-lang.rust-analyzer
code --install-extension serayuzgur.crates
code --install-extension tamasfe.even-better-toml
code --install-extension yzhang.markdown-all-in-one

# Create config folder
mkdir ~/.config/Code/User/

# Copy initial configuration and keybindings
cp vscode-settings.json ~/.config/Code/User/settings.json
cp vscode-keybindings.json ~/.config/Code/User/keybindings.json