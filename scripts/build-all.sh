#!/bin/bash
# Build all Spookana components
# 🎃 Compile the Halloween blockchain

set -e

echo "🎃 Building Spookana 🎃"
echo "This may take a while... time to grab some candy! 🍬"

# Build workspace
echo "🦇 Building workspace..."
cargo build --release --workspace

# Build BPF programs
echo "👻 Building on-chain programs..."
for program in programs/*/; do
    if [ -d "$program" ]; then
        echo "🕷️ Building $(basename "$program")..."
        (cd "$program" && cargo build-bpf)
    fi
done

echo ""
echo "✨ Build complete! ✨"
echo ""
echo "🎃 Binaries location: target/release/"
echo "👻 Key executables:"
echo "  - spookana-validator"
echo "  - spookana-keygen"
echo "  - spookana (CLI)"
echo ""
echo "🧙 Ready to haunt the blockchain! 🧙"
