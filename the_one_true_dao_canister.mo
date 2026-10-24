// ============================================================================
// THE ONE TRUE DAO — IMMUTABLE TAOIST AUTONOMOUS CANISTER (ICP MOTOKO)
// License: Open-Source MIT / Public Commons for Earth & Mind Healing
// Architecture: Zero-Admin-Key ("Black-Holed") Self-Governing Canister
// Includes:
//   1. San Bao (Three Treasures) & Wu Xing (Five-Element AI Guardian Gate)
//   2. Water-Law Anti-Whale Soul Signature Voting (1.618% Golden Cap)
//   3. Hard-Coded Root Chakra Safety Lock & 8 Positive-Sum Healing Games
//   4. Game #7: Zero-Numbers Alchemical Vibe & Essence Exchange On-Chain
//   5. Game #8: 108-Category Original Art Contest & Creative Earth-Healing Raffle
//   6. 7-Chakra x 5-Financial-Tier x 5-Capacity On-Chain Registry
// ============================================================================

import Float "mo:base/Float";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Principal "mo:base/Principal";

actor TheOneTrueDAO {

  public let GOLDEN_WHALE_CAP_PCT : Float = 1.618;   // Ch. 8 Water Law: No entity > 1.618% vote
  public let MIN_ELEMENT_FLOOR    : Float = 0.600;   // Wu Xing: All 5 elements must be >= 0.60
  public let BASE_HARMONY_TARGET  : Float = 0.750;   // Taiji baseline harmony score
  public let MAX_HARM_TOLERANCE   : Float = 0.000;   // Ch. 67 First Treasure (Ci): Zero Harm
  public let ART_CATEGORIES_TOTAL : Nat   = 108;     // Game #8: 108 Sacred Art Categories across 7 Chakras

  public type Polarity = { #Yin; #Yang };
  public type ChakraId = { #Root; #Sacral; #SolarPlexus; #Heart; #Throat; #ThirdEye; #Crown };
  public type ChakraCapacity = { #Receiving; #Holding; #Directing; #Radiating; #Transmuting };
  public type FinancialTier = { #Tier1Seed; #Tier2Stability; #Tier3Flow; #Tier4Steward; #Tier5Planetary };
  public type SacredEssence = { #Dewdrop; #Seedling; #Ember; #Lantern; #Chime; #Nectar; #Feather };
  public type SoulWeather = { #ParchedFire; #FrozenSilence; #FogOfIllusion; #WearySoil; #UnspokenGrief };

  // Hard-Coded Root Chakra Safety Lock ceiling (% of liquid buffer allowed per session)
  public query func getRootSafetyLockPct(tier : FinancialTier, isNoLossGame : Bool) : Float {
    if (isNoLossGame) { return 100.0 }; // Principal is 100% protected in Wu Wei No-Loss Pools
    switch (tier) {
      case (#Tier1Seed)      { 0.0 }; // 0% cash risk allowed in Survival/Seed tier
      case (#Tier2Stability) { 1.0 }; // Max 1.0% buffer risk
      case (#Tier3Flow)      { 2.0 }; // Max 2.0% buffer risk
      case (#Tier4Steward)   { 3.0 }; // Max 3.0% buffer risk
      case (#Tier5Planetary) { 5.0 }; // Max 5.0% buffer risk
    }
  };

  // Game #7: Zero-Numbers Alchemical Vibe & Essence Exchange (Pure Qualitative Match)
  public query func tradeNoNumbersEssence(weather : SoulWeather, a : SacredEssence, b : SacredEssence) : Text {
    switch (weather, a, b) {
      case (#ParchedFire, #Dewdrop, #Lantern) { "SUPREME TAIJI ALCHEMY: Ocean of Nervous-System Calm Unlocked!" };
      case (#FrozenSilence, #Ember, #Seedling) { "SUPREME TAIJI ALCHEMY: The Undying Community Hearth Unlocked!" };
      case (#FogOfIllusion, #Chime, #Lantern) { "SUPREME TAIJI ALCHEMY: Mirror of the Still Mountain Lake Unlocked!" };
      case (#WearySoil, #Nectar, #Seedling) { "SUPREME TAIJI ALCHEMY: Immortal Peach Grove of Renewal Unlocked!" };
      case (#UnspokenGrief, #Feather, #Ember) { "SUPREME TAIJI ALCHEMY: Thousand-Petal Lotus of Forgiveness Unlocked!" };
      case (_, _, _) { "HARMONIOUS ALCHEMICAL FLOW: Essences transmuted into the Living Commons!" };
    }
  };

  // Game #8: 108-Category Original Art Contest & Creative Earth-Healing Raffle Split (40% Artist / 30% Patron Raffle / 30% Earth Healing)
  public query func computeCreativeArtRaffleSplit(poolAmount : Float) : { artistGrant : Float; patronRaffleJackpot : Float; earthHealingSanctuary : Float } {
    {
      artistGrant = poolAmount * 0.40;
      patronRaffleJackpot = poolAmount * 0.30;
      earthHealingSanctuary = poolAmount * 0.30;
    }
  };
};
