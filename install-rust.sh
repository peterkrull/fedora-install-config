sudo dnf install -y systemd-devel

# From https://rustup.rs/, modified to pass -y argument
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install tools for embedded development
cargo install flip-link probe-run