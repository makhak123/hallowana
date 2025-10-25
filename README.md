# 🎃 hallowana - Halloween Solana Fork

AFBiPiBFLxn9HibeiP2ft1a6sSVUu6E1161LY59apump


A spooky fork of the Solana blockchain protocol with Halloween theming throughout.

## 🦇 Overview

Spookana is a high-performance blockchain based on Solana's architecture, but with a frightfully fun Halloween twist. All the speed and efficiency of Solana, now with 100% more spookiness.

## 🧛 Network Parameters

- **Slots per Epoch**: 432,000 (approximately 2 days)
- **Target Slot Time**: 400ms
- **Block Time**: ~400ms
- **Transactions per Second**: 65,000+

## 🕸️ Getting Started

### Prerequisites

- Rust 1.70.0 or higher
- Solana CLI tools (we'll rebrand these)
- Linux, macOS, or WSL2 on Windows

### Building from Source

\`\`\`bash
# Clone the repository
git clone https://github.com/yourusername/spookana.git
cd spookana

# Install dependencies
./scripts/install-deps.sh

# Build the project
cargo build --release

# Run tests
cargo test
\`\`\`

### Running a Validator

\`\`\`bash
# Generate validator identity
./target/release/spookana-keygen new -o ~/spookana-validator-keypair.json

# Start validator
./target/release/spookana-validator \
  --identity ~/spookana-validator-keypair.json \
  --ledger ~/spookana-ledger \
  --rpc-port 8899 \
  --entrypoint mainnet-beta.spookana.com:8001 \
  --limit-ledger-size
\`\`\`

## 🎃 Network Clusters

### Mainnet Beta (The Haunted Mansion)
- Entrypoint: `mainnet-beta.spookana.com:8001`
- RPC: `https://api.mainnet-beta.spookana.com`

### Testnet (The Graveyard)
- Entrypoint: `testnet.spookana.com:8001`
- RPC: `https://api.testnet.spookana.com`

### Devnet (The Witch's Cauldron)
- Entrypoint: `devnet.spookana.com:8001`
- RPC: `https://api.devnet.spookana.com`

## 🦴 CLI Usage

\`\`\`bash
# Check balance
spookana balance <WALLET_ADDRESS>

# Create new wallet
spookana-keygen new --outfile ~/my-spooky-wallet.json

# Airdrop (testnet only)
spookana airdrop 10 <WALLET_ADDRESS> --url https://api.testnet.spookana.com
\`\`\`

## 🧙 Development

### Project Structure

\`\`\`
spookana/
├── runtime/          # Spookana runtime
├── sdk/             # BOO SDK
├── validator/       # Validator implementation
├── cli/             # Command-line tools
├── programs/        # On-chain programs
├── web3.js/         # JavaScript SDK
└── genesis/         # Genesis configuration
\`\`\`

### Building Custom Programs

\`\`\`bash
# Create new program
cargo new --lib my-spooky-program
cd my-spooky-program

# Add Spookana dependencies to Cargo.toml
# Build program
cargo build-bpf

# Deploy program
spookana program deploy target/deploy/my_spooky_program.so
\`\`\`

## 🕯️ Differences from Solana

1. **Branding**: All references to "Solana" replaced with "Spookana"
2. **Token**: SOL → BOO
3. **Theming**: Halloween-themed error messages and logs
4. **Genesis**: Custom genesis block with Halloween timestamp
5. **Validators**: Spooky default validator names
