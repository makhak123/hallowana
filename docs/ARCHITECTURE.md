# Spookana Architecture 🎃

## Overview

Spookana is a fork of Solana with Halloween theming. This document explains the core architecture and how it differs from vanilla Solana.

## 🦇 Core Components

### 1. Runtime (The Haunted Engine)

The runtime executes transactions and manages account state. Key features:

- **Parallel Transaction Processing**: Multiple transactions processed simultaneously
- **Sealevel Runtime**: Executes on-chain programs
- **Account Model**: Stores all blockchain state in accounts
- **Rent System**: Accounts pay rent to stay alive (or become ghosts!)

### 2. Consensus (Graveyard Consensus)

Spookana uses Proof of History (PoH) combined with Proof of Stake (PoS):

- **Proof of History**: Cryptographic clock for ordering events
- **Tower BFT**: Optimized PBFT consensus algorithm
- **Leader Schedule**: Validators take turns producing blocks
- **Voting**: Validators vote on block validity

### 3. Validator (The Haunted Nodes)

Validators are the backbone of the network:

- **Block Production**: Leaders create blocks during their slots
- **Transaction Processing**: Execute and validate transactions
- **State Replication**: Maintain copies of the ledger
- **Voting**: Participate in consensus

### 4. Ledger (The Ancient Tome)

The ledger stores all blockchain history:

- **Shreds**: Blocks broken into smaller pieces for transmission
- **Blockstore**: RocksDB-based storage for blocks
- **Snapshots**: Periodic state snapshots for fast sync
- **Archival**: Long-term storage of historical data

## 🕷️ Network Architecture

\`\`\`
┌─────────────────────────────────────────────────────────┐
│                    Spookana Network                      │
├─────────────────────────────────────────────────────────┤
│                                                           │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐│
│  │Validator │  │Validator │  │Validator │  │Validator ││
│  │(Dracula) │  │(Mummy)   │  │(Witch)   │  │(Werewolf)││
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘│
│       │             │             │             │       │
│       └─────────────┴─────────────┴─────────────┘       │
│                         │                                │
│                    ┌────┴────┐                          │
│                    │  Gossip  │                          │
│                    │ Protocol │                          │
│                    └────┬────┘                          │
│                         │                                │
│       ┌─────────────────┼─────────────────┐            │
│       │                 │                 │            │
│  ┌────▼────┐      ┌────▼────┐      ┌────▼────┐       │
│  │   RPC   │      │   RPC   │      │   RPC   │       │
│  │  Node   │      │  Node   │      │  Node   │       │
│  └────┬────┘      └────┬────┘      └────┬────┘       │
│       │                │                │            │
└───────┼────────────────┼────────────────┼────────────┘
        │                │                │
   ┌────▼────┐      ┌───▼────┐      ┌───▼────┐
   │ Client  │      │ Client │      │ Client │
   │  App    │      │  App   │      │  App   │
   └─────────┘      └────────┘      └────────┘
\`\`\`

## 🧛 Transaction Flow

1. **Client** creates and signs transaction
2. **RPC Node** receives transaction
3. **Leader Validator** includes transaction in block
4. **Validators** vote on block validity
5. **Consensus** achieved when supermajority votes
6. **Transaction** finalized and state updated

## 🕸️ BOO Token Economics

### Supply

- **Total Supply**: 500,000,000 BOO
- **Initial Distribution**:
  - 100M BOO: Treasury (Haunted Vault)
  - 200M BOO: Staking Rewards (Witch's Cauldron)
  - 50M BOO: Development (Graveyard)
  - 150M BOO: Community & Ecosystem

### Inflation

- **Initial Rate**: 8% annually
- **Terminal Rate**: 1.5% annually
- **Taper**: 15% reduction per year
- **Purpose**: Validator rewards and network security

## 🎃 Key Differences from Solana

| Feature | Solana | Spookana |
|---------|--------|----------|
| Token | SOL | BOO |
| Mainnet | Mainnet Beta | The Haunted Mansion |
| Testnet | Testnet | The Graveyard |
| Devnet | Devnet | The Witch's Cauldron |
| Genesis | Standard | Halloween 2024 |
| Branding | Professional | Spooky! |

## 🦴 Program Development

Spookana supports the same program development as Solana:

- **Rust Programs**: Compiled to BPF bytecode
- **Anchor Framework**: High-level framework for programs
- **Program Derived Addresses**: Deterministic account addresses
- **Cross-Program Invocation**: Programs can call other programs

## 🧙 Performance Characteristics

- **TPS**: 65,000+ transactions per second
- **Block Time**: ~400ms
- **Finality**: ~13 seconds (32 blocks)
- **Fees**: ~0.000005 BOO per transaction

## 🔗 References

- [Solana Architecture](https://docs.solana.com/cluster/overview)
- [Proof of History](https://docs.solana.com/cluster/synchronization)
- [Tower BFT](https://docs.solana.com/cluster/consensus)

---

🎃 Built with love and Halloween spirit! 👻
