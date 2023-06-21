# Enable and install copr repo
sudo dnf copr enable varlad/helix -y
sudo dnf install helix -y

# Create config folder
mkdir ~/.config/helix/

# Copy pre-configured config
cp helix-config.toml ~/.config/helix/config.toml