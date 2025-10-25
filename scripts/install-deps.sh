#!/bin/bash
# Spookana Dependency Installation Script
# 🎃 Preparing your system for spooky blockchain development

set -e

echo "🎃 Welcome to Spookana Setup! 🎃"
echo "Installing dependencies for the Halloween blockchain..."

# Check OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
else
    echo "❌ Unsupported OS. Please use Linux or macOS."
    exit 1
fi

echo "👻 Detected OS: $OS"

# Install Rust
if ! command -v rustc &> /dev/null; then
    echo "🦇 Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
else
    echo "✅ Rust already installed"
fi

# Update Rust
echo "🕷️ Updating Rust..."
rustup update stable
rustup default stable

# Install required Rust components
echo "🧛 Installing Rust components..."
rustup component add rustfmt clippy

# Install system dependencies
if [[ "$OS" == "linux" ]]; then
    echo "🕸️ Installing Linux dependencies..."
    sudo apt-get update
    sudo apt-get install -y \
        libssl-dev \
        libudev-dev \
        pkg-config \
        zlib1g-dev \
        llvm \
        clang \
        cmake \
        make \
        libprotobuf-dev \
        protobuf-compiler
elif [[ "$OS" == "macos" ]]; then
    echo "🕸️ Installing macOS dependencies..."
    if ! command -v brew &> /dev/null; then
        echo "❌ Homebrew not found. Please install Homebrew first."
        exit 1
    fi
    brew install openssl pkg-config cmake protobuf
fi

# Install BPF toolchain for program development
echo "🧙 Installing BPF toolchain..."
cargo install --git https://github.com/solana-labs/bpf-tools --tag v1.36 --force bpf-tools

echo ""
echo "✨ Installation complete! ✨"
echo ""
echo "🎃 Next steps:"
echo "1. Build Spookana: cargo build --release"
echo "2. Run tests: cargo test"
echo "3. Start a validator: ./scripts/start-validator.sh"
echo ""
echo "👻 Happy haunting! 👻"
