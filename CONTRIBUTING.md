# Contributing to Spookana 🎃

Thank you for your interest in contributing to Spookana! We welcome contributions from all creatures of the night.

## 🦇 Code of Conduct

- Be respectful and inclusive
- No malicious code or security vulnerabilities
- Keep the Halloween spirit alive!
- Help others learn and grow

## 👻 How to Contribute

### Reporting Bugs

If you find a bug (or a ghost in the machine), please open an issue with:
- Clear description of the problem
- Steps to reproduce
- Expected vs actual behavior
- Your environment (OS, Rust version, etc.)

### Suggesting Features

We love new ideas! Open an issue with:
- Clear description of the feature
- Use cases and benefits
- Any implementation ideas you have

### Pull Requests

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/spooky-feature`)
3. Make your changes
4. Add tests if applicable
5. Run `cargo test` and `cargo clippy`
6. Commit with clear messages
7. Push to your fork
8. Open a Pull Request

## 🕷️ Development Setup

\`\`\`bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/spookana.git
cd spookana

# Install dependencies
./scripts/install-deps.sh

# Build the project
cargo build --release

# Run tests
cargo test

# Run clippy for linting
cargo clippy -- -D warnings

# Format code
cargo fmt
\`\`\`

## 🧛 Coding Standards

- Follow Rust best practices
- Use meaningful variable names (bonus points for Halloween puns!)
- Add comments for complex logic
- Write tests for new features
- Keep functions focused and small
- Use Halloween-themed naming where appropriate

## 🕸️ Testing

- Write unit tests for new functions
- Add integration tests for new features
- Ensure all tests pass before submitting PR
- Test on multiple platforms if possible

## 🧙 Documentation

- Update README.md if adding new features
- Add inline documentation for public APIs
- Include examples in doc comments
- Update CHANGELOG.md

## 🎭 Halloween Theming Guidelines

When adding Halloween theming:
- Keep it fun but professional
- Don't sacrifice code clarity for puns
- Use Halloween terms consistently
- Examples: BOO (token), Haunted (mainnet), Graveyard (testnet)

## 📜 License

By contributing, you agree that your contributions will be licensed under the Apache License 2.0.

## 🔗 Resources

- [Rust Book](https://doc.rust-lang.org/book/)
- [Solana Documentation](https://docs.solana.com/)
- [Spookana Discord](https://discord.gg/spookana)

---

🎃 Thank you for helping make Spookana spooktacular! 👻
