use v6.c;

unit package WebService::EveOnline::Data::Misc;

sub   is-a-system($l) is export { $l.Int ~~ 30000000..32000000 }
sub is-an-abyssal($l) is export { $l.Int ~~ 32000000..33000000 }
sub  is-a-station($l) is export { $l.Int ~~ 60000000..64000000 }

our @valid-location-types is export = <station solar-system other>;

our @valid-structure-states is export = <
  anchor_vulnerable
  anchoring
  armor_reinforce
  armor_vulnerable
  fitting_invulnerable
  hull_reinforce
  hull_vulnerable
  online_deprecated
  onlining_vulnerable
  shield_vulnerable
  unanchored
  unknown
>;

our @valid-location-flags is export = <
  AssetSafety
  AutoFit
  BoosterBay
  Cargo
  CorpseBay
  Deliveries
  DroneBay
  FighterBay
  FighterTube0
  FighterTube1
  FighterTube2
  FighterTube3
  FighterTube4
  FleetHangarHangar
  Hangar
  HangarAll
  HiSlot0
  HiSlot1
  HiSlot2
  HiSlot3
  HiSlot4
  HiSlot5
  HiSlot6
  HiSlot7
  HiddenModifiers
  Implant
  LoSlot0
  LoSlot1
  LoSlot2
  LoSlot3
  LoSlot4
  LoSlot5
  LoSlot6
  LoSlot7
  Locked
  MedSlot0
  MedSlot1
  MedSlot2
  MedSlot3
  MedSlot4
  MedSlot5
  MedSlot6
  MedSlot7
  QuafeBay
  RigSlot0
  RigSlot1
  RigSlot2
  RigSlot3
  RigSlot4
  RigSlot5
  RigSlot6
  RigSlot7
  ShipHangar
  Skill
  SpecializedAmmoHold
  SpecializedCommandCenterHold
  SpecializedFuelBay
  SpecializedGasHold
  SpecializedIndustrialShipHold
  SpecializedLargeShipHold
  SpecializedMaterialBay
  SpecializedMediumShipHold
  SpecializedMineralHold
  SpecializedOreHold
  SpecializedPlanetaryCommoditiesHol
  SpecializedSalvageHold
  SpecializedShipHold
  SpecializedSmallShipHold
  SubSystemBay
  SubSystemSlot0
  SubSystemSlot1
  SubSystemSlot2
  SubSystemSlot3
  SubSystemSlot4
  SubSystemSlot5
  SubSystemSlot6
  SubSystemSlot7
  Unlocked
  Wardrobe
>;

our @valid-station-services is export = <
  assasination-missions
  black-market
  bounty-missions
  cloning
  courier-missions
  dna-therapy
  docking
  factory
  fitting
  gambling
  insurance
  interbus
  jump-clone-facility
  labratory
  loyalty-point-store
  market
  navy-offices
  news
  office-rental
  paintshop
  refinery
  repair-facilities
  reprocessing-plant
  security-offices
  stock-exchange
  storage
  surgery
>;

our @valid-service-states is export = <online offline cleanup>;
