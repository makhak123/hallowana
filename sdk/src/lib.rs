//! Spookana SDK - The Halloween Blockchain Development Kit
//! 
//! This SDK provides all the tools needed to interact with the Spookana blockchain,
//! including transaction building, account management, and program development.

pub mod account;
pub mod boo_token;
pub mod clock;
pub mod commitment_config;
pub mod hash;
pub mod instruction;
pub mod message;
pub mod pubkey;
pub mod signature;
pub mod signer;
pub mod system_instruction;
pub mod system_program;
pub mod transaction;

// Re-exports for convenience
pub use account::Account;
pub use boo_token::*;
pub use hash::Hash;
pub use instruction::Instruction;
pub use pubkey::Pubkey;
pub use signature::Signature;
pub use signer::Signer;
pub use transaction::Transaction;

/// The native token of Spookana blockchain
pub const BOO: &str = "BOO";

/// Number of decimals for BOO token
pub const BOO_DECIMALS: u8 = 9;

/// One BOO in lamports (smallest unit)
pub const LAMPORTS_PER_BOO: u64 = 1_000_000_000;

/// Convert BOO to lamports
pub fn boo_to_lamports(boo: f64) -> u64 {
    (boo * LAMPORTS_PER_BOO as f64) as u64
}

/// Convert lamports to BOO
pub fn lamports_to_boo(lamports: u64) -> f64 {
    lamports as f64 / LAMPORTS_PER_BOO as f64
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_boo_conversion() {
        assert_eq!(boo_to_lamports(1.0), LAMPORTS_PER_BOO);
        assert_eq!(boo_to_lamports(0.5), LAMPORTS_PER_BOO / 2);
        assert_eq!(lamports_to_boo(LAMPORTS_PER_BOO), 1.0);
    }
}
