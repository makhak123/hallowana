//! BOO Token - The native cryptocurrency of Spookana
//! 
//! BOO is the lifeblood of the Spookana blockchain, used for:
//! - Transaction fees
//! - Staking for validators
//! - Governance participation
//! - Paying for computational resources

use serde::{Deserialize, Serialize};

/// BOO token configuration
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct BooToken {
    /// Total supply in lamports
    pub total_supply: u64,
    /// Circulating supply in lamports
    pub circulating_supply: u64,
    /// Current inflation rate (basis points)
    pub inflation_rate: u16,
}

impl Default for BooToken {
    fn default() -> Self {
        Self {
            total_supply: 500_000_000 * crate::LAMPORTS_PER_BOO, // 500M BOO
            circulating_supply: 0,
            inflation_rate: 800, // 8.00%
        }
    }
}

impl BooToken {
    /// Create a new BOO token configuration
    pub fn new(total_supply: u64, inflation_rate: u16) -> Self {
        Self {
            total_supply,
            circulating_supply: 0,
            inflation_rate,
        }
    }

    /// Calculate annual inflation amount
    pub fn annual_inflation(&self) -> u64 {
        (self.circulating_supply as u128 * self.inflation_rate as u128 / 10_000) as u64
    }

    /// Get inflation rate as percentage
    pub fn inflation_percentage(&self) -> f64 {
        self.inflation_rate as f64 / 100.0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_boo_token_default() {
        let boo = BooToken::default();
        assert_eq!(boo.inflation_rate, 800);
        assert_eq!(boo.inflation_percentage(), 8.0);
    }
}
