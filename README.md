# 🎃 Spookana - Halloween Solana Fork

A spooky fork of the Solana blockchain protocol with Halloween theming throughout.

## 🦇 Overview

Spookana is a high-performance blockchain based on Solana's architecture, but with a frightfully fun Halloween twist. All the speed and efficiency of Solana, now with 100% more spookiness.

## 👻 Key Features

- **BOO Token**: Native cryptocurrency (instead of SOL)
- **Haunted Validators**: Network validators with spooky names
- **Graveyard Consensus**: Proof of History with Halloween flair
- **Phantom Transactions**: Lightning-fast transaction processing
- **Witch's Brew RPC**: JSON-RPC API endpoints

## 🕷️ Token Economics

- **Token Name**: BOO
- **Token Symbol**: BOO
- **Decimals**: 9
- **Initial Supply**: 500,000,000 BOO (Five Hundred Million BOO)
- **Inflation**: Starts at 8% annually, decreasing by 15% per year until reaching 1.5%

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

# Transfer BOO tokens
spookana transfer <RECIPIENT> <AMOUNT> --from <SENDER_KEYPAIR>

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

## 🎭 Contributing

We welcome contributions from all creatures of the night! Please read our [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## 📜 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🦇 Acknowledgments

- Based on [Solana](https://github.com/solana-labs/solana)
- Halloween spirit provided by the community
- Special thanks to all the ghosts, ghouls, and goblins who contributed

## 🔗 Links

- Website: https://spookana.com
- Documentation: https://docs.spookana.com
- Explorer: https://explorer.spookana.com
- Discord: https://discord.gg/spookana

---

**Warning**: This is a fork for fun and educational purposes. Always do your own research before using any blockchain network.

🎃 Happy Haunting! 👻
