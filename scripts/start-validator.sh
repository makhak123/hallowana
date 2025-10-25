#!/bin/bash
# Start a Spookana Validator
# 🎃 Join the haunted network!

set -e

SPOOKANA_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
LEDGER_DIR="$HOME/.spookana/ledger"
IDENTITY_KEYPAIR="$HOME/.spookana/validator-keypair.json"
VOTE_KEYPAIR="$HOME/.spookana/vote-keypair.json"

echo "🎃 Starting Spookana Validator 🎃"

# Create directories
mkdir -p "$HOME/.spookana"
mkdir -p "$LEDGER_DIR"

# Generate keypairs if they don't exist
if [ ! -f "$IDENTITY_KEYPAIR" ]; then
    echo "🦇 Generating validator identity keypair..."
    "$SPOOKANA_ROOT/target/release/spookana-keygen" new --no-passphrase -o "$IDENTITY_KEYPAIR"
fi

if [ ! -f "$VOTE_KEYPAIR" ]; then
    echo "👻 Generating vote account keypair..."
    "$SPOOKANA_ROOT/target/release/spookana-keygen" new --no-passphrase -o "$VOTE_KEYPAIR"
fi

# Display validator identity
echo "🕷️ Validator Identity:"
"$SPOOKANA_ROOT/target/release/spookana-keygen" pubkey "$IDENTITY_KEYPAIR"

# Start validator
echo "🧛 Starting validator..."
exec "$SPOOKANA_ROOT/target/release/spookana-validator" \
    --identity "$IDENTITY_KEYPAIR" \
    --vote-account "$VOTE_KEYPAIR" \
    --ledger "$LEDGER_DIR" \
    --rpc-port 8899 \
    --rpc-bind-address 0.0.0.0 \
    --dynamic-port-range 8000-8020 \
    --entrypoint devnet.spookana.com:8001 \
    --expected-genesis-hash GhostGenesisHash111111111111111111111111 \
    --wal-recovery-mode skip_any_corrupted_record \
    --limit-ledger-size \
    --log -
