import {List} from "immutable";

const Scheme = (obj) => {
  const base = {
    name: "AnyScheme",
    updateMastermindCount: (count) => count,
    updateVillainGroupCount: (count) => count,
    updateHenchmenGroupCount: (count) => count
  };

  return Object.assign({}, base, obj)
};

const BATHE_THE_EARTH_IN_COSMIC_RAYS = "Bathe the Earth in Cosmic Rays";
const BRAINWASH_THE_MILITARY = "Brainwash the Military";
const BUILD_AN_ARMY_OF_ANNIHILATION = "Build an Army of Annihilation";
const BUILD_AN_UNDERGROUND_MEGAVAULT_PRISON = "Build an Underground MegaVault Prison";
const CAGE_VILLAINS_IN_POWER_SUPRESSING_CELLS = "Cage Villains in Power-Supressing Cells";
const CAPTURE_BABY_HOPE = "Capture Baby Hope";
const CHANGE_THE_OUTCOME_OF_WWII = "Change the Outcome of WWII";
const CORRUPT_THE_NEXT_GENERATION_OF_HEROES = "Corrupt the Next Generation of Heroes";
const CROWN_THOR_KING_OF_ASGARD = "Crown Thor King of Asgard";
const CRUSH_HYDRA = "Crush HYDRA";
const CRUSH_THEM_WITH_MY_BARE_HANDS = "Crush Them With My Bare Hands";
const DARK_ALLIANCE = "Dark Alliance";
const DEADLANDS_HORDES_CHARGE_THE_WALL = "Deadlands Hordes Charge the Wall";
const DETONATE_THE_HELICARRIER = "Detonate the Helicarrier";
const ENTHRONE_THE_BARONS_OF_BATTLEWORLD = "Enthrone the Barons of Battleworld";
const FEAR_ITSELF = "Fear Itself";
const FLOOD_THE_PLANET_WITH_MELTED_GLACIERS = "Flood the Planet with Melted Glaciers";
const FORGE_THE_INFINITY_GAUNTLET = "Forge the Infinity Gauntlet";
const FRAGMENTED_REALITIES = "Fragmented Realities";
const GO_BACK_IN_TIME_TO_SLAY_HEROES_ANCESTORS = "Go Back in Time to Slay Heroes' Ancestors";
const GRADUATION_AT_XAVIERS_X_ACADEMY = "Graduation at Xavier's X-Academy";
const INFILTRATE_THE_LAIR_WITH_SPIES = "Infiltrate the Lair With Spies";
const INTERGALACTIC_KREE_NEGA_BOMB = "Intergalactic Kree Nega-Bomb";
const INVADE_THE_DAILY_BUGLE_NEWS_HQ = "Invade the Daily Bugle News HQ";
const INVINCIBLE_FORCE_FIELD = "Invincible Force Field";
const LAST_STAND_AT_AVENGERS_TOWER = "Last Stand at Avengers Tower";
const MASS_PRODUCE_WAR_MACHINE_ARMOR = "Mass Produce War Machine Armor";
const MASSIVE_EARTHQUAKE_GENERATOR = "Massive Earthquake Generator";
const MASTER_OF_TYRANTS = "Master of Tyrants";
const MASTER_THE_MYSTERIES_OF_KUNG_FU = "Master the Mysteries of Kung-Fu";
const MIDTOWN_BANK_ROBBERY = "Midtown Bank Robbery";
const NEGATIVE_ZONE_PRISON_BREAKOUT = "Negative Zone Prison Breakout";
const ORGANIZED_CRIME_WAVE = "Organized Crime Wave";
const PAN_DIMENSIONAL_PLAGUE = "Pan-Dimensional Plague";
const PORTALS_TO_DARK_DIMENSION = "Portals to Dark Dimension";
const PULL_REALITY_INTO_THE_NEGATIVE_ZONE = "Pull Reality Into the Negative Zone";
const REPLACE_EARTHS_LEADERS_WITH_KILLBOTS = "Replace Earth's Leaders with Killbots";
const RESURRECT_HEROES_WITH_NORN_STONES = "Resurrect Heroes With Norn Stones";
const SAVE_HUMANITY = "Save Humanity";
const SECRET_INVASION_OF_THE_SKRULL_SHAPESHIFTERS = "Secret Invasion of the Skrull Shapeshifters";
const SECRET_WARS = "Secret Wars";
const SINISTER_AMBITIONS = "Sinister Ambitions";
const SMASH_TWO_DIMENSIONS_TOGETHER = "Smash Two Dimensions Together";
const SPLICE_HUMANS_WITH_SPIDER_DNA = "Splice Humans with Spider DNA";
const STEAL_THE_WEAPONIZED_PLUTONIUM = "Steal the Weaponized Plutonium";
const SUPER_HERO_CIVIL_WAR = "Super Hero Civil War";
const THE_CLONE_SAGA = "The Clone Saga";
const THE_FOUNTAIN_OF_ETERNAL_LIFE = "The Fountain of Eternal Life";
const THE_GOD_EMPEROR_OF_BATTLEWORLD = "The God-Emperor of Battleworld";
const THE_KREE_SKRULL_WAR = "The Kree-Skrull War";
const THE_LEGACY_VIRUS = "The Legacy Virus";
const THE_MARK_OF_KHONSHU = "The Mark of Khonshu";
const THE_TRAITOR = "The Traitor";
const THE_UNBREAKABLE_ENIGMA_CODE = "The Unbreakable Enigma Code";
const TRANSFORM_CITIZENS_INTO_DEMONS = "Transform Citizens Into Demons";
const UNITE_THE_SHARDS = "Unite the Shards";
const UNLEASH_THE_POWER_OF_THE_COSMIC_CUBE = "Unleash the Power of the Cosmic Cube";
const WEAVE_A_WEB_OF_LIES = "Weave a Web of Lies";
const X_CUTIONERS_SONG = "X-Cutioner's Song";

const BatheTheEarthInCosmicRays = Scheme({
  name: BATHE_THE_EARTH_IN_COSMIC_RAYS
});

const BrainwashTheMilitary = Scheme({
  name: BRAINWASH_THE_MILITARY
});

const BuildAnArmyOfAnnihilation = Scheme({
  name: BUILD_AN_ARMY_OF_ANNIHILATION
});

const BuildAnUndergroundMegavaultPrison = Scheme({
  name: BUILD_AN_UNDERGROUND_MEGAVAULT_PRISON
});

const CageVillainsInPowerSupressingCells = Scheme({
  name: CAGE_VILLAINS_IN_POWER_SUPRESSING_CELLS
});

const CaptureBabyHope = Scheme({
  name: CAPTURE_BABY_HOPE
});

const ChangeTheOutcomeOfWwii = Scheme({
  name: CHANGE_THE_OUTCOME_OF_WWII
});

const CorruptTheNextGenerationOfHeroes = Scheme({
  name: CORRUPT_THE_NEXT_GENERATION_OF_HEROES
});

const CrownThorKingOfAsgard = Scheme({
  name: CROWN_THOR_KING_OF_ASGARD
});

const CrushHydra = Scheme({
  name: CRUSH_HYDRA
});

const CrushThemWithMyBareHands = Scheme({
  name: CRUSH_THEM_WITH_MY_BARE_HANDS
});

const DarkAlliance = Scheme({
  name: DARK_ALLIANCE
});

const DeadlandsHordesChargeTheWall = Scheme({
  name: DEADLANDS_HORDES_CHARGE_THE_WALL
});

const DetonateTheHelicarrier = Scheme({
  name: DETONATE_THE_HELICARRIER
});

const EnthroneTheBaronsOfBattleworld = Scheme({
  name: ENTHRONE_THE_BARONS_OF_BATTLEWORLD
});

const FearItself = Scheme({
  name: FEAR_ITSELF
});

const FloodThePlanetWithMeltedGlaciers = Scheme({
  name: FLOOD_THE_PLANET_WITH_MELTED_GLACIERS
});

const ForgeTheInfinityGauntlet = Scheme({
  name: FORGE_THE_INFINITY_GAUNTLET
});

const FragmentedRealities = Scheme({
  name: FRAGMENTED_REALITIES
});

const GoBackInTimeToSlayHeroesAncestors = Scheme({
  name: GO_BACK_IN_TIME_TO_SLAY_HEROES_ANCESTORS
});

const GraduationAtXaviersXAcademy = Scheme({
  name: GRADUATION_AT_XAVIERS_X_ACADEMY
});

const InfiltrateTheLairWithSpies = Scheme({
  name: INFILTRATE_THE_LAIR_WITH_SPIES
});

const IntergalacticKreeNegaBomb = Scheme({
  name: INTERGALACTIC_KREE_NEGA_BOMB
});

const InvadeTheDailyBugleNewsHq = Scheme({
  name: INVADE_THE_DAILY_BUGLE_NEWS_HQ
});

const InvincibleForceField = Scheme({
  name: INVINCIBLE_FORCE_FIELD
});

const LastStandAtAvengersTower = Scheme({
  name: LAST_STAND_AT_AVENGERS_TOWER
});

const MassProduceWarMachineArmor = Scheme({
  name: MASS_PRODUCE_WAR_MACHINE_ARMOR
});

const MassiveEarthquakeGenerator = Scheme({
  name: MASSIVE_EARTHQUAKE_GENERATOR
});

const MasterOfTyrants = Scheme({
  name: MASTER_OF_TYRANTS
});

const MasterTheMysteriesOfKungFu = Scheme({
  name: MASTER_THE_MYSTERIES_OF_KUNG_FU
});

const MidtownBankRobbery = Scheme({
  name: MIDTOWN_BANK_ROBBERY
});

const NegativeZonePrisonBreakout = Scheme({
  name: NEGATIVE_ZONE_PRISON_BREAKOUT,
  updateHenchmenGroupCount: (count) => count + 1
});

const OrganizedCrimeWave = Scheme({
  name: ORGANIZED_CRIME_WAVE
});

const PanDimensionalPlague = Scheme({
  name: PAN_DIMENSIONAL_PLAGUE
});

const PortalsToDarkDimension = Scheme({
  name: PORTALS_TO_DARK_DIMENSION
});

const PullRealityIntoTheNegativeZone = Scheme({
  name: PULL_REALITY_INTO_THE_NEGATIVE_ZONE
});

const ReplaceEarthsLeadersWithKillbots = Scheme({
  name: REPLACE_EARTHS_LEADERS_WITH_KILLBOTS
});

const ResurrectHeroesWithNornStones = Scheme({
  name: RESURRECT_HEROES_WITH_NORN_STONES
});

const SaveHumanity = Scheme({
  name: SAVE_HUMANITY
});

const SecretInvasionOfTheSkrullShapeshifters = Scheme({
  name: SECRET_INVASION_OF_THE_SKRULL_SHAPESHIFTERS
});

const SecretWars = Scheme({
  name: SECRET_WARS
});

const SinisterAmbitions = Scheme({
  name: SINISTER_AMBITIONS
});

const SmashTwoDimensionsTogether = Scheme({
  name: SMASH_TWO_DIMENSIONS_TOGETHER
});

const SpliceHumansWithSpiderDna = Scheme({
  name: SPLICE_HUMANS_WITH_SPIDER_DNA
});

const StealTheWeaponizedPlutonium = Scheme({
  name: STEAL_THE_WEAPONIZED_PLUTONIUM
});

const SuperHeroCivilWar = Scheme({
  name: SUPER_HERO_CIVIL_WAR
});

const TheCloneSaga = Scheme({
  name: THE_CLONE_SAGA
});

const TheFountainOfEternalLife = Scheme({
  name: THE_FOUNTAIN_OF_ETERNAL_LIFE
});

const TheGodEmperorOfBattleworld = Scheme({
  name: THE_GOD_EMPEROR_OF_BATTLEWORLD
});

const TheKreeSkrullWar = Scheme({
  name: THE_KREE_SKRULL_WAR
});

const TheLegacyVirus = Scheme({
  name: THE_LEGACY_VIRUS
});

const TheMarkOfKhonshu = Scheme({
  name: THE_MARK_OF_KHONSHU
});

const TheTraitor = Scheme({
  name: THE_TRAITOR
});

const TheUnbreakableEnigmaCode = Scheme({
  name: THE_UNBREAKABLE_ENIGMA_CODE
});

const TransformCitizensIntoDemons = Scheme({
  name: TRANSFORM_CITIZENS_INTO_DEMONS
});

const UniteTheShards = Scheme({
  name: UNITE_THE_SHARDS
});

const UnleashThePowerOfTheCosmicCube = Scheme({
  name: UNLEASH_THE_POWER_OF_THE_COSMIC_CUBE
});

const WeaveAWebOfLies = Scheme({
  name: WEAVE_A_WEB_OF_LIES
});

const XCutionersSong = Scheme({
  name: X_CUTIONERS_SONG
});

export const schemes = List.of(...[
  BatheTheEarthInCosmicRays,
  BrainwashTheMilitary,
  BuildAnArmyOfAnnihilation,
  BuildAnUndergroundMegavaultPrison,
  CageVillainsInPowerSupressingCells,
  CaptureBabyHope,
  ChangeTheOutcomeOfWwii,
  CorruptTheNextGenerationOfHeroes,
  CrownThorKingOfAsgard,
  CrushHydra,
  CrushThemWithMyBareHands,
  DarkAlliance,
  DeadlandsHordesChargeTheWall,
  DetonateTheHelicarrier,
  EnthroneTheBaronsOfBattleworld,
  FearItself,
  FloodThePlanetWithMeltedGlaciers,
  ForgeTheInfinityGauntlet,
  FragmentedRealities,
  GoBackInTimeToSlayHeroesAncestors,
  GraduationAtXaviersXAcademy,
  InfiltrateTheLairWithSpies,
  IntergalacticKreeNegaBomb,
  InvadeTheDailyBugleNewsHq,
  InvincibleForceField,
  LastStandAtAvengersTower,
  MassProduceWarMachineArmor,
  MassiveEarthquakeGenerator,
  MasterOfTyrants,
  MasterTheMysteriesOfKungFu,
  MidtownBankRobbery,
  NegativeZonePrisonBreakout,
  OrganizedCrimeWave,
  PanDimensionalPlague,
  PortalsToDarkDimension,
  PullRealityIntoTheNegativeZone,
  ReplaceEarthsLeadersWithKillbots,
  ResurrectHeroesWithNornStones,
  SaveHumanity,
  SecretInvasionOfTheSkrullShapeshifters,
  SecretWars,
  SinisterAmbitions,
  SmashTwoDimensionsTogether,
  SpliceHumansWithSpiderDna,
  StealTheWeaponizedPlutonium,
  SuperHeroCivilWar,
  TheCloneSaga,
  TheFountainOfEternalLife,
  TheGodEmperorOfBattleworld,
  TheKreeSkrullWar,
  TheLegacyVirus,
  TheMarkOfKhonshu,
  TheTraitor,
  TheUnbreakableEnigmaCode,
  TransformCitizensIntoDemons,
  UniteTheShards,
  UnleashThePowerOfTheCosmicCube,
  WeaveAWebOfLies,
  XCutionersSong
]);
export const schemeNames = schemes.map(s => s.name);

export const schemeByName = (name) => schemes.find(s => s.name === name);
