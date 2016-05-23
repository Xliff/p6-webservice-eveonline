#!/usr/bin/perl6
unit module WebService::EveOnline::Static::Items1;

use v6.c;
our %itemLookup1 = (
	2	=> {
		typeID   => 2,
		groupID  => 2,
		typeName => "Corporation"
	},

	3	=> {
		typeID   => 3,
		groupID  => 3,
		typeName => "Region"
	},

	4	=> {
		typeID   => 4,
		groupID  => 4,
		typeName => "Constellation"
	},

	5	=> {
		typeID   => 5,
		groupID  => 5,
		typeName => "Solar System"
	},

	6	=> {
		typeID   => 6,
		groupID  => 6,
		typeName => "Sun G5 (Yellow)"
	},

	7	=> {
		typeID   => 7,
		groupID  => 6,
		typeName => "Sun K7 (Orange)"
	},

	8	=> {
		typeID   => 8,
		groupID  => 6,
		typeName => "Sun K5 (Red Giant)"
	},

	9	=> {
		typeID   => 9,
		groupID  => 6,
		typeName => "Sun B0 (Blue)"
	},

	10	=> {
		typeID   => 10,
		groupID  => 6,
		typeName => "Sun F0 (White)"
	},

	11	=> {
		typeID   => 11,
		groupID  => 7,
		typeName => "Planet (Temperate)"
	},

	12	=> {
		typeID   => 12,
		groupID  => 7,
		typeName => "Planet (Ice)"
	},

	13	=> {
		typeID   => 13,
		groupID  => 7,
		typeName => "Planet (Gas)"
	},

	14	=> {
		typeID   => 14,
		groupID  => 8,
		typeName => "Moon"
	},

	15	=> {
		typeID   => 15,
		groupID  => 9,
		typeName => "Asteroid Belt"
	},

	16	=> {
		typeID   => 16,
		groupID  => 10,
		typeName => "Stargate (Caldari System)"
	},

	17	=> {
		typeID   => 17,
		groupID  => 10,
		typeName => "Stargate (Amarr Constellation)"
	},

	18	=> {
		typeID   => 18,
		groupID  => 458,
		typeName => "Plagioclase"
	},

	19	=> {
		typeID   => 19,
		groupID  => 461,
		typeName => "Spodumain"
	},

	20	=> {
		typeID   => 20,
		groupID  => 457,
		typeName => "Kernite"
	},

	21	=> {
		typeID   => 21,
		groupID  => 454,
		typeName => "Hedbergite"
	},

	22	=> {
		typeID   => 22,
		groupID  => 450,
		typeName => "Arkonor"
	},

	23	=> {
		typeID   => 23,
		groupID  => 12,
		typeName => "Cargo Container"
	},

	24	=> {
		typeID   => 24,
		groupID  => 13,
		typeName => "Ring"
	},

	25	=> {
		typeID   => 25,
		groupID  => 14,
		typeName => "Corpse"
	},

	26	=> {
		typeID   => 26,
		groupID  => 16,
		typeName => "Office Folder"
	},

	27	=> {
		typeID   => 27,
		groupID  => 16,
		typeName => "Office"
	},

	28	=> {
		typeID   => 28,
		groupID  => 16,
		typeName => "Factory Folder"
	},

	29	=> {
		typeID   => 29,
		groupID  => 17,
		typeName => "Credits"
	},

	30	=> {
		typeID   => 30,
		groupID  => 19,
		typeName => "Faction"
	},

	34	=> {
		typeID   => 34,
		groupID  => 18,
		typeName => "Tritanium"
	},

	35	=> {
		typeID   => 35,
		groupID  => 18,
		typeName => "Pyerite"
	},

	36	=> {
		typeID   => 36,
		groupID  => 18,
		typeName => "Mexallon"
	},

	37	=> {
		typeID   => 37,
		groupID  => 18,
		typeName => "Isogen"
	},

	38	=> {
		typeID   => 38,
		groupID  => 18,
		typeName => "Nocxium"
	},

	39	=> {
		typeID   => 39,
		groupID  => 18,
		typeName => "Zydrine"
	},

	40	=> {
		typeID   => 40,
		groupID  => 18,
		typeName => "Megacyte"
	},

	41	=> {
		typeID   => 41,
		groupID  => 280,
		typeName => "Garbage"
	},

	42	=> {
		typeID   => 42,
		groupID  => 280,
		typeName => "Spiced Wine"
	},

	43	=> {
		typeID   => 43,
		groupID  => 280,
		typeName => "Antibiotics"
	},

	44	=> {
		typeID   => 44,
		groupID  => 1034,
		typeName => "Enriched Uranium"
	},

	45	=> {
		typeID   => 45,
		groupID  => 281,
		typeName => "Frozen Plant Seeds"
	},

	49	=> {
		typeID   => 49,
		groupID  => 24,
		typeName => "Player Kill"
	},

	50	=> {
		typeID   => 50,
		groupID  => 24,
		typeName => "Company Shares"
	},

	51	=> {
		typeID   => 51,
		groupID  => 24,
		typeName => "Bookmark"
	},

	52	=> {
		typeID   => 52,
		groupID  => 94,
		typeName => "Trading"
	},

	53	=> {
		typeID   => 53,
		groupID  => 95,
		typeName => "Trade Session"
	},

	54	=> {
		typeID   => 54,
		groupID  => 15,
		typeName => "Caldari Logistics Station"
	},

	56	=> {
		typeID   => 56,
		groupID  => 15,
		typeName => "Gallente Military Station"
	},

	57	=> {
		typeID   => 57,
		groupID  => 15,
		typeName => "Gallente Station Hub "
	},

	58	=> {
		typeID   => 58,
		groupID  => 15,
		typeName => "C-O-1"
	},

	59	=> {
		typeID   => 59,
		groupID  => 15,
		typeName => "C-O-2"
	},

	60	=> {
		typeID   => 60,
		groupID  => 1319,
		typeName => "Asset Safety Wrap"
	},

	164	=> {
		typeID   => 164,
		groupID  => 23,
		typeName => "Clone Grade Alpha"
	},

	165	=> {
		typeID   => 165,
		groupID  => 23,
		typeName => "Clone Grade Beta"
	},

	166	=> {
		typeID   => 166,
		groupID  => 23,
		typeName => "Clone Grade Gamma"
	},

	178	=> {
		typeID   => 178,
		groupID  => 83,
		typeName => "Carbonized Lead S"
	},

	179	=> {
		typeID   => 179,
		groupID  => 83,
		typeName => "Nuclear S"
	},

	180	=> {
		typeID   => 180,
		groupID  => 83,
		typeName => "Proton S"
	},

	181	=> {
		typeID   => 181,
		groupID  => 83,
		typeName => "Depleted Uranium S"
	},

	182	=> {
		typeID   => 182,
		groupID  => 83,
		typeName => "Titanium Sabot S"
	},

	183	=> {
		typeID   => 183,
		groupID  => 83,
		typeName => "Fusion S"
	},

	184	=> {
		typeID   => 184,
		groupID  => 83,
		typeName => "Phased Plasma S"
	},

	185	=> {
		typeID   => 185,
		groupID  => 83,
		typeName => "EMP S"
	},

	186	=> {
		typeID   => 186,
		groupID  => 83,
		typeName => "Carbonized Lead M"
	},

	187	=> {
		typeID   => 187,
		groupID  => 83,
		typeName => "Nuclear M"
	},

	188	=> {
		typeID   => 188,
		groupID  => 83,
		typeName => "Proton M"
	},

	189	=> {
		typeID   => 189,
		groupID  => 83,
		typeName => "Depleted Uranium M"
	},

	190	=> {
		typeID   => 190,
		groupID  => 83,
		typeName => "Titanium Sabot M"
	},

	191	=> {
		typeID   => 191,
		groupID  => 83,
		typeName => "Fusion M"
	},

	192	=> {
		typeID   => 192,
		groupID  => 83,
		typeName => "Phased Plasma M"
	},

	193	=> {
		typeID   => 193,
		groupID  => 83,
		typeName => "EMP M"
	},

	194	=> {
		typeID   => 194,
		groupID  => 83,
		typeName => "Carbonized Lead L"
	},

	195	=> {
		typeID   => 195,
		groupID  => 83,
		typeName => "Nuclear L"
	},

	196	=> {
		typeID   => 196,
		groupID  => 83,
		typeName => "Proton L"
	},

	197	=> {
		typeID   => 197,
		groupID  => 83,
		typeName => "Depleted Uranium L"
	},

	198	=> {
		typeID   => 198,
		groupID  => 83,
		typeName => "Titanium Sabot L"
	},

	199	=> {
		typeID   => 199,
		groupID  => 83,
		typeName => "Fusion L"
	},

	200	=> {
		typeID   => 200,
		groupID  => 83,
		typeName => "Phased Plasma L"
	},

	201	=> {
		typeID   => 201,
		groupID  => 83,
		typeName => "EMP L"
	},

	202	=> {
		typeID   => 202,
		groupID  => 386,
		typeName => "Mjolnir Cruise Missile"
	},

	203	=> {
		typeID   => 203,
		groupID  => 386,
		typeName => "Scourge Cruise Missile"
	},

	204	=> {
		typeID   => 204,
		groupID  => 386,
		typeName => "Inferno Cruise Missile"
	},

	205	=> {
		typeID   => 205,
		groupID  => 386,
		typeName => "Nova Cruise Missile"
	},

	206	=> {
		typeID   => 206,
		groupID  => 385,
		typeName => "Nova Heavy Missile"
	},

	207	=> {
		typeID   => 207,
		groupID  => 385,
		typeName => "Mjolnir Heavy Missile"
	},

	208	=> {
		typeID   => 208,
		groupID  => 385,
		typeName => "Inferno Heavy Missile"
	},

	209	=> {
		typeID   => 209,
		groupID  => 385,
		typeName => "Scourge Heavy Missile"
	},

	210	=> {
		typeID   => 210,
		groupID  => 384,
		typeName => "Scourge Light Missile"
	},

	211	=> {
		typeID   => 211,
		groupID  => 384,
		typeName => "Inferno Light Missile"
	},

	212	=> {
		typeID   => 212,
		groupID  => 384,
		typeName => "Mjolnir Light Missile"
	},

	213	=> {
		typeID   => 213,
		groupID  => 384,
		typeName => "Nova Light Missile"
	},

	215	=> {
		typeID   => 215,
		groupID  => 85,
		typeName => "Iron Charge S"
	},

	216	=> {
		typeID   => 216,
		groupID  => 85,
		typeName => "Tungsten Charge S"
	},

	217	=> {
		typeID   => 217,
		groupID  => 85,
		typeName => "Iridium Charge S"
	},

	218	=> {
		typeID   => 218,
		groupID  => 85,
		typeName => "Lead Charge S"
	},

	219	=> {
		typeID   => 219,
		groupID  => 85,
		typeName => "Thorium Charge S"
	},

	220	=> {
		typeID   => 220,
		groupID  => 85,
		typeName => "Uranium Charge S"
	},

	221	=> {
		typeID   => 221,
		groupID  => 85,
		typeName => "Plutonium Charge S"
	},

	222	=> {
		typeID   => 222,
		groupID  => 85,
		typeName => "Antimatter Charge S"
	},

	223	=> {
		typeID   => 223,
		groupID  => 85,
		typeName => "Iron Charge M"
	},

	224	=> {
		typeID   => 224,
		groupID  => 85,
		typeName => "Tungsten Charge M"
	},

	225	=> {
		typeID   => 225,
		groupID  => 85,
		typeName => "Iridium Charge M"
	},

	226	=> {
		typeID   => 226,
		groupID  => 85,
		typeName => "Lead Charge M"
	},

	227	=> {
		typeID   => 227,
		groupID  => 85,
		typeName => "Thorium Charge M"
	},

	228	=> {
		typeID   => 228,
		groupID  => 85,
		typeName => "Uranium Charge M"
	},

	229	=> {
		typeID   => 229,
		groupID  => 85,
		typeName => "Plutonium Charge M"
	},

	230	=> {
		typeID   => 230,
		groupID  => 85,
		typeName => "Antimatter Charge M"
	},

	231	=> {
		typeID   => 231,
		groupID  => 85,
		typeName => "Iron Charge L"
	},

	232	=> {
		typeID   => 232,
		groupID  => 85,
		typeName => "Tungsten Charge L"
	},

	233	=> {
		typeID   => 233,
		groupID  => 85,
		typeName => "Iridium Charge L"
	},

	234	=> {
		typeID   => 234,
		groupID  => 85,
		typeName => "Lead Charge L"
	},

	235	=> {
		typeID   => 235,
		groupID  => 85,
		typeName => "Thorium Charge L"
	},

	236	=> {
		typeID   => 236,
		groupID  => 85,
		typeName => "Uranium Charge L"
	},

	237	=> {
		typeID   => 237,
		groupID  => 85,
		typeName => "Plutonium Charge L"
	},

	238	=> {
		typeID   => 238,
		groupID  => 85,
		typeName => "Antimatter Charge L"
	},

	239	=> {
		typeID   => 239,
		groupID  => 86,
		typeName => "Radio S"
	},

	240	=> {
		typeID   => 240,
		groupID  => 86,
		typeName => "Microwave S"
	},

	241	=> {
		typeID   => 241,
		groupID  => 86,
		typeName => "Infrared S"
	},

	242	=> {
		typeID   => 242,
		groupID  => 86,
		typeName => "Standard S"
	},

	243	=> {
		typeID   => 243,
		groupID  => 86,
		typeName => "Ultraviolet S"
	},

	244	=> {
		typeID   => 244,
		groupID  => 86,
		typeName => "Xray S"
	},

	245	=> {
		typeID   => 245,
		groupID  => 86,
		typeName => "Gamma S"
	},

	246	=> {
		typeID   => 246,
		groupID  => 86,
		typeName => "Multifrequency S"
	},

	247	=> {
		typeID   => 247,
		groupID  => 86,
		typeName => "Radio M"
	},

	248	=> {
		typeID   => 248,
		groupID  => 86,
		typeName => "Microwave M"
	},

	249	=> {
		typeID   => 249,
		groupID  => 86,
		typeName => "Infrared M"
	},

	250	=> {
		typeID   => 250,
		groupID  => 86,
		typeName => "Standard M"
	},

	251	=> {
		typeID   => 251,
		groupID  => 86,
		typeName => "Ultraviolet M"
	},

	252	=> {
		typeID   => 252,
		groupID  => 86,
		typeName => "Xray M"
	},

	253	=> {
		typeID   => 253,
		groupID  => 86,
		typeName => "Gamma M"
	},

	254	=> {
		typeID   => 254,
		groupID  => 86,
		typeName => "Multifrequency M"
	},

	255	=> {
		typeID   => 255,
		groupID  => 86,
		typeName => "Radio L"
	},

	256	=> {
		typeID   => 256,
		groupID  => 86,
		typeName => "Microwave L"
	},

	257	=> {
		typeID   => 257,
		groupID  => 86,
		typeName => "Infrared L"
	},

	258	=> {
		typeID   => 258,
		groupID  => 86,
		typeName => "Standard L"
	},

	259	=> {
		typeID   => 259,
		groupID  => 86,
		typeName => "Ultraviolet L"
	},

	260	=> {
		typeID   => 260,
		groupID  => 86,
		typeName => "Xray L"
	},

	261	=> {
		typeID   => 261,
		groupID  => 86,
		typeName => "Gamma L"
	},

	262	=> {
		typeID   => 262,
		groupID  => 86,
		typeName => "Multifrequency L"
	},

	263	=> {
		typeID   => 263,
		groupID  => 87,
		typeName => "Cap Booster 25"
	},

	264	=> {
		typeID   => 264,
		groupID  => 87,
		typeName => "Cap Booster 50"
	},

	265	=> {
		typeID   => 265,
		groupID  => 1158,
		typeName => "Heavy Defender Missile I"
	},

	266	=> {
		typeID   => 266,
		groupID  => 387,
		typeName => "Scourge Rocket"
	},

	267	=> {
		typeID   => 267,
		groupID  => 89,
		typeName => "Scourge Torpedo"
	},

	269	=> {
		typeID   => 269,
		groupID  => 394,
		typeName => "Mjolnir Auto-Targeting Light Missile I"
	},

	270	=> {
		typeID   => 270,
		groupID  => 92,
		typeName => "Python Mine"
	},

	377	=> {
		typeID   => 377,
		groupID  => 38,
		typeName => "Small Shield Extender I"
	},

	380	=> {
		typeID   => 380,
		groupID  => 38,
		typeName => "Small Shield Extender II"
	},

	393	=> {
		typeID   => 393,
		groupID  => 39,
		typeName => "Shield Recharger I"
	},

	394	=> {
		typeID   => 394,
		groupID  => 39,
		typeName => "Shield Recharger II"
	},

	399	=> {
		typeID   => 399,
		groupID  => 40,
		typeName => "Small Shield Booster I"
	},

	400	=> {
		typeID   => 400,
		groupID  => 40,
		typeName => "Small Shield Booster II"
	},

	405	=> {
		typeID   => 405,
		groupID  => 41,
		typeName => "'Micro' Remote Shield Booster"
	},

	406	=> {
		typeID   => 406,
		groupID  => 41,
		typeName => "Micro Remote Shield Booster II"
	},

	421	=> {
		typeID   => 421,
		groupID  => 43,
		typeName => "'Basic' Capacitor Recharger"
	},

	434	=> {
		typeID   => 434,
		groupID  => 46,
		typeName => "5MN Microwarpdrive I"
	},

	438	=> {
		typeID   => 438,
		groupID  => 46,
		typeName => "1MN Afterburner II"
	},

	439	=> {
		typeID   => 439,
		groupID  => 46,
		typeName => "1MN Afterburner I"
	},

	440	=> {
		typeID   => 440,
		groupID  => 46,
		typeName => "5MN Microwarpdrive II"
	},

	442	=> {
		typeID   => 442,
		groupID  => 47,
		typeName => "Cargo Scanner I"
	},

	443	=> {
		typeID   => 443,
		groupID  => 48,
		typeName => "Ship Scanner I"
	},

	444	=> {
		typeID   => 444,
		groupID  => 49,
		typeName => "Survey Scanner I"
	},

	447	=> {
		typeID   => 447,
		groupID  => 52,
		typeName => "Warp Scrambler I"
	},

	448	=> {
		typeID   => 448,
		groupID  => 52,
		typeName => "Warp Scrambler II"
	},

	450	=> {
		typeID   => 450,
		groupID  => 53,
		typeName => "Gatling Pulse Laser I"
	},

	451	=> {
		typeID   => 451,
		groupID  => 53,
		typeName => "Dual Light Pulse Laser I"
	},

	452	=> {
		typeID   => 452,
		groupID  => 53,
		typeName => "Dual Light Beam Laser I"
	},

	453	=> {
		typeID   => 453,
		groupID  => 53,
		typeName => "Small Focused Pulse Laser I"
	},

	454	=> {
		typeID   => 454,
		groupID  => 53,
		typeName => "Small Focused Beam Laser I"
	},

	455	=> {
		typeID   => 455,
		groupID  => 53,
		typeName => "Quad Light Beam Laser I"
	},

	456	=> {
		typeID   => 456,
		groupID  => 53,
		typeName => "Focused Medium Pulse Laser I"
	},

	457	=> {
		typeID   => 457,
		groupID  => 53,
		typeName => "Focused Medium Beam Laser I"
	},

	458	=> {
		typeID   => 458,
		groupID  => 53,
		typeName => "Heavy Pulse Laser I"
	},

	459	=> {
		typeID   => 459,
		groupID  => 53,
		typeName => "Heavy Beam Laser I"
	},

	460	=> {
		typeID   => 460,
		groupID  => 53,
		typeName => "Dual Heavy Pulse Laser I"
	},

	461	=> {
		typeID   => 461,
		groupID  => 53,
		typeName => "Dual Heavy Beam Laser I"
	},

	462	=> {
		typeID   => 462,
		groupID  => 53,
		typeName => "Mega Pulse Laser I"
	},

	463	=> {
		typeID   => 463,
		groupID  => 53,
		typeName => "Mega Beam Laser I"
	},

	464	=> {
		typeID   => 464,
		groupID  => 53,
		typeName => "Tachyon Beam Laser I"
	},

	482	=> {
		typeID   => 482,
		groupID  => 54,
		typeName => "Miner II"
	},

	483	=> {
		typeID   => 483,
		groupID  => 54,
		typeName => "Miner I"
	},

	484	=> {
		typeID   => 484,
		groupID  => 55,
		typeName => "125mm Gatling AutoCannon I"
	},

	485	=> {
		typeID   => 485,
		groupID  => 55,
		typeName => "150mm Light AutoCannon I"
	},

	486	=> {
		typeID   => 486,
		groupID  => 55,
		typeName => "200mm AutoCannon I"
	},

	487	=> {
		typeID   => 487,
		groupID  => 55,
		typeName => "250mm Light Artillery Cannon I"
	},

	488	=> {
		typeID   => 488,
		groupID  => 55,
		typeName => "280mm Howitzer Artillery I"
	},

	489	=> {
		typeID   => 489,
		groupID  => 55,
		typeName => "Dual 180mm AutoCannon I"
	},

	490	=> {
		typeID   => 490,
		groupID  => 55,
		typeName => "220mm Vulcan AutoCannon I"
	},

	491	=> {
		typeID   => 491,
		groupID  => 55,
		typeName => "425mm AutoCannon I"
	},

	492	=> {
		typeID   => 492,
		groupID  => 55,
		typeName => "650mm Artillery Cannon I"
	},

	493	=> {
		typeID   => 493,
		groupID  => 55,
		typeName => "720mm Howitzer Artillery I"
	},

	494	=> {
		typeID   => 494,
		groupID  => 55,
		typeName => "Dual 425mm AutoCannon I"
	},

	495	=> {
		typeID   => 495,
		groupID  => 55,
		typeName => "Dual 650mm Repeating Cannon I"
	},

	496	=> {
		typeID   => 496,
		groupID  => 55,
		typeName => "800mm Repeating Cannon I"
	},

	497	=> {
		typeID   => 497,
		groupID  => 55,
		typeName => "1200mm Artillery Cannon I"
	},

	498	=> {
		typeID   => 498,
		groupID  => 55,
		typeName => "1400mm Howitzer Artillery I"
	},

	499	=> {
		typeID   => 499,
		groupID  => 509,
		typeName => "Light Missile Launcher I"
	},

	501	=> {
		typeID   => 501,
		groupID  => 510,
		typeName => "Heavy Missile Launcher I"
	},

	503	=> {
		typeID   => 503,
		groupID  => 508,
		typeName => "Torpedo Launcher I"
	},

	506	=> {
		typeID   => 506,
		groupID  => 767,
		typeName => "'Basic' Capacitor Power Relay"
	},

	508	=> {
		typeID   => 508,
		groupID  => 770,
		typeName => "'Basic' Shield Flux Coil"
	},

	509	=> {
		typeID   => 509,
		groupID  => 768,
		typeName => "'Basic' Capacitor Flux Coil"
	},

	518	=> {
		typeID   => 518,
		groupID  => 59,
		typeName => "'Basic' Gyrostabilizer"
	},

	519	=> {
		typeID   => 519,
		groupID  => 59,
		typeName => "Gyrostabilizer II"
	},

	520	=> {
		typeID   => 520,
		groupID  => 59,
		typeName => "Gyrostabilizer I"
	},

	521	=> {
		typeID   => 521,
		groupID  => 60,
		typeName => "'Basic' Damage Control"
	},

	522	=> {
		typeID   => 522,
		groupID  => 61,
		typeName => "'Micro' Cap Battery"
	},

	523	=> {
		typeID   => 523,
		groupID  => 62,
		typeName => "Small Armor Repairer I"
	},

	524	=> {
		typeID   => 524,
		groupID  => 63,
		typeName => "Small Hull Repairer I"
	},

	526	=> {
		typeID   => 526,
		groupID  => 65,
		typeName => "Stasis Webifier I"
	},

	527	=> {
		typeID   => 527,
		groupID  => 65,
		typeName => "Stasis Webifier II"
	},

	529	=> {
		typeID   => 529,
		groupID  => 67,
		typeName => "Small Remote Capacitor Transmitter I"
	},

	530	=> {
		typeID   => 530,
		groupID  => 68,
		typeName => "Small Energy Nosferatu I"
	},

	533	=> {
		typeID   => 533,
		groupID  => 71,
		typeName => "Small Energy Neutralizer I"
	},

	561	=> {
		typeID   => 561,
		groupID  => 74,
		typeName => "75mm Gatling Rail I"
	},

	562	=> {
		typeID   => 562,
		groupID  => 74,
		typeName => "Light Electron Blaster I"
	},

	563	=> {
		typeID   => 563,
		groupID  => 74,
		typeName => "Light Ion Blaster I"
	},

	564	=> {
		typeID   => 564,
		groupID  => 74,
		typeName => "Light Neutron Blaster I"
	},

	565	=> {
		typeID   => 565,
		groupID  => 74,
		typeName => "150mm Railgun I"
	},

	566	=> {
		typeID   => 566,
		groupID  => 74,
		typeName => "Heavy Electron Blaster I"
	},

	567	=> {
		typeID   => 567,
		groupID  => 74,
		typeName => "Dual 150mm Railgun I"
	},

	568	=> {
		typeID   => 568,
		groupID  => 74,
		typeName => "Heavy Neutron Blaster I"
	},

	569	=> {
		typeID   => 569,
		groupID  => 74,
		typeName => "Heavy Ion Blaster I"
	},

	570	=> {
		typeID   => 570,
		groupID  => 74,
		typeName => "250mm Railgun I"
	},

	571	=> {
		typeID   => 571,
		groupID  => 74,
		typeName => "Electron Blaster Cannon I"
	},

	572	=> {
		typeID   => 572,
		groupID  => 74,
		typeName => "Dual 250mm Railgun I"
	},

	573	=> {
		typeID   => 573,
		groupID  => 74,
		typeName => "Neutron Blaster Cannon I"
	},

	574	=> {
		typeID   => 574,
		groupID  => 74,
		typeName => "425mm Railgun I"
	},

	575	=> {
		typeID   => 575,
		groupID  => 74,
		typeName => "Ion Blaster Cannon I"
	},

	577	=> {
		typeID   => 577,
		groupID  => 76,
		typeName => "Medium Capacitor Booster I"
	},

	578	=> {
		typeID   => 578,
		groupID  => 77,
		typeName => "Adaptive Invulnerability Field I"
	},

	580	=> {
		typeID   => 580,
		groupID  => 80,
		typeName => "Burst Jammer I"
	},

	581	=> {
		typeID   => 581,
		groupID  => 82,
		typeName => "Passive Targeter I"
	},

	582	=> {
		typeID   => 582,
		groupID  => 25,
		typeName => "Bantam"
	},

	583	=> {
		typeID   => 583,
		groupID  => 25,
		typeName => "Condor"
	},

	584	=> {
		typeID   => 584,
		groupID  => 25,
		typeName => "Griffin"
	},

	585	=> {
		typeID   => 585,
		groupID  => 25,
		typeName => "Slasher"
	},

	586	=> {
		typeID   => 586,
		groupID  => 25,
		typeName => "Probe"
	},

	587	=> {
		typeID   => 587,
		groupID  => 25,
		typeName => "Rifter"
	},

	588	=> {
		typeID   => 588,
		groupID  => 237,
		typeName => "Reaper"
	},

	589	=> {
		typeID   => 589,
		groupID  => 25,
		typeName => "Executioner"
	},

	590	=> {
		typeID   => 590,
		groupID  => 25,
		typeName => "Inquisitor"
	},

	591	=> {
		typeID   => 591,
		groupID  => 25,
		typeName => "Tormentor"
	},

	592	=> {
		typeID   => 592,
		groupID  => 25,
		typeName => "Navitas"
	},

	593	=> {
		typeID   => 593,
		groupID  => 25,
		typeName => "Tristan"
	},

	594	=> {
		typeID   => 594,
		groupID  => 25,
		typeName => "Incursus"
	},

	595	=> {
		typeID   => 595,
		groupID  => 25,
		typeName => "Gallente Police Ship"
	},

	596	=> {
		typeID   => 596,
		groupID  => 237,
		typeName => "Impairor"
	},

	597	=> {
		typeID   => 597,
		groupID  => 25,
		typeName => "Punisher"
	},

	598	=> {
		typeID   => 598,
		groupID  => 25,
		typeName => "Breacher"
	},

	599	=> {
		typeID   => 599,
		groupID  => 25,
		typeName => "Burst"
	},

	600	=> {
		typeID   => 600,
		groupID  => 25,
		typeName => "Minmatar Peacekeeper Ship"
	},

	601	=> {
		typeID   => 601,
		groupID  => 237,
		typeName => "Ibis"
	},

	602	=> {
		typeID   => 602,
		groupID  => 25,
		typeName => "Kestrel"
	},

	603	=> {
		typeID   => 603,
		groupID  => 25,
		typeName => "Merlin"
	},

	605	=> {
		typeID   => 605,
		groupID  => 25,
		typeName => "Heron"
	},

	606	=> {
		typeID   => 606,
		groupID  => 237,
		typeName => "Velator"
	},

	607	=> {
		typeID   => 607,
		groupID  => 25,
		typeName => "Imicus"
	},

	608	=> {
		typeID   => 608,
		groupID  => 25,
		typeName => "Atron"
	},

	609	=> {
		typeID   => 609,
		groupID  => 25,
		typeName => "Maulus"
	},

	613	=> {
		typeID   => 613,
		groupID  => 25,
		typeName => "Devourer"
	},

	614	=> {
		typeID   => 614,
		groupID  => 25,
		typeName => "Fury"
	},

	615	=> {
		typeID   => 615,
		groupID  => 237,
		typeName => "Immolator"
	},

	616	=> {
		typeID   => 616,
		groupID  => 25,
		typeName => "Medusa"
	},

	617	=> {
		typeID   => 617,
		groupID  => 237,
		typeName => "Echo"
	},

	618	=> {
		typeID   => 618,
		groupID  => 25,
		typeName => "Lynx"
	},

	619	=> {
		typeID   => 619,
		groupID  => 25,
		typeName => "Swordspine"
	},

	620	=> {
		typeID   => 620,
		groupID  => 26,
		typeName => "Osprey"
	},

	621	=> {
		typeID   => 621,
		groupID  => 26,
		typeName => "Caracal"
	},

	622	=> {
		typeID   => 622,
		groupID  => 26,
		typeName => "Stabber"
	},

	623	=> {
		typeID   => 623,
		groupID  => 26,
		typeName => "Moa"
	},

	624	=> {
		typeID   => 624,
		groupID  => 26,
		typeName => "Maller"
	},

	625	=> {
		typeID   => 625,
		groupID  => 26,
		typeName => "Augoror"
	},

	626	=> {
		typeID   => 626,
		groupID  => 26,
		typeName => "Vexor"
	},

	627	=> {
		typeID   => 627,
		groupID  => 26,
		typeName => "Thorax"
	},

	628	=> {
		typeID   => 628,
		groupID  => 26,
		typeName => "Arbitrator"
	},

	629	=> {
		typeID   => 629,
		groupID  => 26,
		typeName => "Rupture"
	},

	630	=> {
		typeID   => 630,
		groupID  => 26,
		typeName => "Bellicose"
	},

	631	=> {
		typeID   => 631,
		groupID  => 26,
		typeName => "Scythe"
	},

	632	=> {
		typeID   => 632,
		groupID  => 26,
		typeName => "Blackbird"
	},

	633	=> {
		typeID   => 633,
		groupID  => 26,
		typeName => "Celestis"
	},

	634	=> {
		typeID   => 634,
		groupID  => 26,
		typeName => "Exequror"
	},

	635	=> {
		typeID   => 635,
		groupID  => 26,
		typeName => "Opux Luxury Yacht"
	},

	638	=> {
		typeID   => 638,
		groupID  => 27,
		typeName => "Raven"
	},

	639	=> {
		typeID   => 639,
		groupID  => 27,
		typeName => "Tempest"
	},

	640	=> {
		typeID   => 640,
		groupID  => 27,
		typeName => "Scorpion"
	},

	641	=> {
		typeID   => 641,
		groupID  => 27,
		typeName => "Megathron"
	},

	642	=> {
		typeID   => 642,
		groupID  => 27,
		typeName => "Apocalypse"
	},

	643	=> {
		typeID   => 643,
		groupID  => 27,
		typeName => "Armageddon"
	},

	644	=> {
		typeID   => 644,
		groupID  => 27,
		typeName => "Typhoon"
	},

	645	=> {
		typeID   => 645,
		groupID  => 27,
		typeName => "Dominix"
	},

	648	=> {
		typeID   => 648,
		groupID  => 28,
		typeName => "Badger"
	},

	649	=> {
		typeID   => 649,
		groupID  => 28,
		typeName => "Tayra"
	},

	650	=> {
		typeID   => 650,
		groupID  => 28,
		typeName => "Nereus"
	},

	651	=> {
		typeID   => 651,
		groupID  => 28,
		typeName => "Hoarder"
	},

	652	=> {
		typeID   => 652,
		groupID  => 28,
		typeName => "Mammoth"
	},

	653	=> {
		typeID   => 653,
		groupID  => 28,
		typeName => "Wreathe"
	},

	654	=> {
		typeID   => 654,
		groupID  => 28,
		typeName => "Kryos"
	},

	655	=> {
		typeID   => 655,
		groupID  => 28,
		typeName => "Epithal"
	},

	656	=> {
		typeID   => 656,
		groupID  => 28,
		typeName => "Miasmos"
	},

	657	=> {
		typeID   => 657,
		groupID  => 28,
		typeName => "Iteron Mark V"
	},

	670	=> {
		typeID   => 670,
		groupID  => 29,
		typeName => "Capsule"
	},

	671	=> {
		typeID   => 671,
		groupID  => 30,
		typeName => "Erebus"
	},

	672	=> {
		typeID   => 672,
		groupID  => 31,
		typeName => "Caldari Shuttle"
	},

	681	=> {
		typeID   => 681,
		groupID  => 104,
		typeName => "Clone Grade Beta Blueprint"
	},

	682	=> {
		typeID   => 682,
		groupID  => 104,
		typeName => "Clone Grade Gamma Blueprint"
	},

	683	=> {
		typeID   => 683,
		groupID  => 105,
		typeName => "Bantam Blueprint"
	},

	684	=> {
		typeID   => 684,
		groupID  => 105,
		typeName => "Condor Blueprint"
	},

	685	=> {
		typeID   => 685,
		groupID  => 105,
		typeName => "Griffin Blueprint"
	},

	686	=> {
		typeID   => 686,
		groupID  => 106,
		typeName => "Osprey Blueprint"
	},

	687	=> {
		typeID   => 687,
		groupID  => 106,
		typeName => "Caracal Blueprint"
	},

	688	=> {
		typeID   => 688,
		groupID  => 107,
		typeName => "Raven Blueprint"
	},

	689	=> {
		typeID   => 689,
		groupID  => 105,
		typeName => "Slasher Blueprint"
	},

	690	=> {
		typeID   => 690,
		groupID  => 105,
		typeName => "Probe Blueprint"
	},

	691	=> {
		typeID   => 691,
		groupID  => 105,
		typeName => "Rifter Blueprint"
	},

	692	=> {
		typeID   => 692,
		groupID  => 106,
		typeName => "Stabber Blueprint"
	},

	693	=> {
		typeID   => 693,
		groupID  => 107,
		typeName => "Tempest Blueprint"
	},

	784	=> {
		typeID   => 784,
		groupID  => 134,
		typeName => "Miner II Blueprint"
	},

	785	=> {
		typeID   => 785,
		groupID  => 134,
		typeName => "Miner I Blueprint"
	},

	786	=> {
		typeID   => 786,
		groupID  => 136,
		typeName => "Light Missile Launcher I Blueprint"
	},

	788	=> {
		typeID   => 788,
		groupID  => 136,
		typeName => "Heavy Missile Launcher I Blueprint"
	},

	790	=> {
		typeID   => 790,
		groupID  => 136,
		typeName => "Torpedo Launcher I Blueprint"
	},

	803	=> {
		typeID   => 803,
		groupID  => 166,
		typeName => "Mjolnir Cruise Missile Blueprint"
	},

	804	=> {
		typeID   => 804,
		groupID  => 166,
		typeName => "Scourge Cruise Missile Blueprint"
	},

	805	=> {
		typeID   => 805,
		groupID  => 166,
		typeName => "Inferno Cruise Missile Blueprint"
	},

	806	=> {
		typeID   => 806,
		groupID  => 166,
		typeName => "Nova Cruise Missile Blueprint"
	},

	807	=> {
		typeID   => 807,
		groupID  => 166,
		typeName => "Nova Heavy Missile Blueprint"
	},

	808	=> {
		typeID   => 808,
		groupID  => 166,
		typeName => "Mjolnir Heavy Missile Blueprint"
	},

	809	=> {
		typeID   => 809,
		groupID  => 166,
		typeName => "Inferno Heavy Missile Blueprint"
	},

	810	=> {
		typeID   => 810,
		groupID  => 166,
		typeName => "Scourge Heavy Missile Blueprint"
	},

	811	=> {
		typeID   => 811,
		groupID  => 166,
		typeName => "Scourge Light Missile Blueprint"
	},

	812	=> {
		typeID   => 812,
		groupID  => 166,
		typeName => "Inferno Light Missile Blueprint"
	},

	813	=> {
		typeID   => 813,
		groupID  => 166,
		typeName => "Mjolnir Light Missile Blueprint"
	},

	814	=> {
		typeID   => 814,
		groupID  => 166,
		typeName => "Nova Light Missile Blueprint"
	},

	819	=> {
		typeID   => 819,
		groupID  => 135,
		typeName => "125mm Gatling AutoCannon I Blueprint"
	},

	820	=> {
		typeID   => 820,
		groupID  => 135,
		typeName => "150mm Light AutoCannon I Blueprint"
	},

	821	=> {
		typeID   => 821,
		groupID  => 135,
		typeName => "200mm AutoCannon I Blueprint"
	},

	822	=> {
		typeID   => 822,
		groupID  => 135,
		typeName => "250mm Light Artillery Cannon I Blueprint"
	},

	823	=> {
		typeID   => 823,
		groupID  => 135,
		typeName => "280mm Howitzer Artillery I Blueprint"
	},

	824	=> {
		typeID   => 824,
		groupID  => 135,
		typeName => "Dual 180mm AutoCannon I Blueprint"
	},

	825	=> {
		typeID   => 825,
		groupID  => 135,
		typeName => "220mm Vulcan AutoCannon I Blueprint"
	},

	826	=> {
		typeID   => 826,
		groupID  => 135,
		typeName => "425mm AutoCannon I Blueprint"
	},

	827	=> {
		typeID   => 827,
		groupID  => 135,
		typeName => "650mm Artillery Cannon I Blueprint"
	},

	828	=> {
		typeID   => 828,
		groupID  => 135,
		typeName => "720mm Howitzer Artillery I Blueprint"
	},

	829	=> {
		typeID   => 829,
		groupID  => 135,
		typeName => "Dual 425mm AutoCannon I Blueprint"
	},

	830	=> {
		typeID   => 830,
		groupID  => 135,
		typeName => "Dual 650mm Repeating Cannon I Blueprint"
	},

	831	=> {
		typeID   => 831,
		groupID  => 135,
		typeName => "800mm Repeating Cannon I Blueprint"
	},

	832	=> {
		typeID   => 832,
		groupID  => 135,
		typeName => "1200mm Artillery Cannon I Blueprint"
	},

	833	=> {
		typeID   => 833,
		groupID  => 135,
		typeName => "1400mm Howitzer Artillery I Blueprint"
	},

	834	=> {
		typeID   => 834,
		groupID  => 133,
		typeName => "Gatling Pulse Laser I Blueprint"
	},

	835	=> {
		typeID   => 835,
		groupID  => 133,
		typeName => "Dual Light Pulse Laser I Blueprint"
	},

	836	=> {
		typeID   => 836,
		groupID  => 133,
		typeName => "Dual Light Beam Laser I Blueprint"
	},

	837	=> {
		typeID   => 837,
		groupID  => 133,
		typeName => "Small Focused Pulse Laser I Blueprint"
	},

	838	=> {
		typeID   => 838,
		groupID  => 133,
		typeName => "Small Focused Beam Laser I Blueprint"
	},

	839	=> {
		typeID   => 839,
		groupID  => 133,
		typeName => "Quad Light Beam Laser I Blueprint"
	},

	840	=> {
		typeID   => 840,
		groupID  => 133,
		typeName => "Focused Medium Pulse Laser I Blueprint"
	},

	841	=> {
		typeID   => 841,
		groupID  => 133,
		typeName => "Focused Medium Beam Laser I Blueprint"
	},

	842	=> {
		typeID   => 842,
		groupID  => 133,
		typeName => "Heavy Pulse Laser I Blueprint"
	},

	843	=> {
		typeID   => 843,
		groupID  => 133,
		typeName => "Heavy Beam Laser I Blueprint"
	},

	844	=> {
		typeID   => 844,
		groupID  => 133,
		typeName => "Dual Heavy Pulse Laser I Blueprint"
	},

	845	=> {
		typeID   => 845,
		groupID  => 133,
		typeName => "Dual Heavy Beam Laser I Blueprint"
	},

	846	=> {
		typeID   => 846,
		groupID  => 133,
		typeName => "Mega Pulse Laser I Blueprint"
	},

	847	=> {
		typeID   => 847,
		groupID  => 133,
		typeName => "Mega Beam Laser I Blueprint"
	},

	848	=> {
		typeID   => 848,
		groupID  => 133,
		typeName => "Tachyon Beam Laser I Blueprint"
	},

	879	=> {
		typeID   => 879,
		groupID  => 165,
		typeName => "Carbonized Lead S Blueprint"
	},

	880	=> {
		typeID   => 880,
		groupID  => 165,
		typeName => "Nuclear S Blueprint"
	},

	881	=> {
		typeID   => 881,
		groupID  => 165,
		typeName => "Proton S Blueprint"
	},

	882	=> {
		typeID   => 882,
		groupID  => 165,
		typeName => "Depleted Uranium S Blueprint"
	},

	883	=> {
		typeID   => 883,
		groupID  => 165,
		typeName => "Titanium Sabot S Blueprint"
	},

	884	=> {
		typeID   => 884,
		groupID  => 165,
		typeName => "Fusion S Blueprint"
	},

	885	=> {
		typeID   => 885,
		groupID  => 165,
		typeName => "Phased Plasma S Blueprint"
	},

	886	=> {
		typeID   => 886,
		groupID  => 165,
		typeName => "EMP S Blueprint"
	},

	887	=> {
		typeID   => 887,
		groupID  => 165,
		typeName => "Carbonized Lead M Blueprint"
	},

	888	=> {
		typeID   => 888,
		groupID  => 165,
		typeName => "Nuclear M Blueprint"
	},

	889	=> {
		typeID   => 889,
		groupID  => 165,
		typeName => "Proton M Blueprint"
	},

	890	=> {
		typeID   => 890,
		groupID  => 165,
		typeName => "Depleted Uranium M Blueprint"
	},

	891	=> {
		typeID   => 891,
		groupID  => 165,
		typeName => "Titanium Sabot M Blueprint"
	},

	892	=> {
		typeID   => 892,
		groupID  => 165,
		typeName => "Fusion M Blueprint"
	},

	893	=> {
		typeID   => 893,
		groupID  => 165,
		typeName => "Phased Plasma M Blueprint"
	},

	894	=> {
		typeID   => 894,
		groupID  => 165,
		typeName => "EMP M Blueprint"
	},

	895	=> {
		typeID   => 895,
		groupID  => 165,
		typeName => "Carbonized Lead L Blueprint"
	},

	896	=> {
		typeID   => 896,
		groupID  => 165,
		typeName => "Nuclear L Blueprint"
	},

	897	=> {
		typeID   => 897,
		groupID  => 165,
		typeName => "Proton L Blueprint"
	},

	898	=> {
		typeID   => 898,
		groupID  => 165,
		typeName => "Depleted Uranium L Blueprint"
	},

	899	=> {
		typeID   => 899,
		groupID  => 165,
		typeName => "Titanium Sabot L Blueprint"
	},

	900	=> {
		typeID   => 900,
		groupID  => 165,
		typeName => "Fusion L Blueprint"
	},

	901	=> {
		typeID   => 901,
		groupID  => 165,
		typeName => "Phased Plasma L Blueprint"
	},

	902	=> {
		typeID   => 902,
		groupID  => 165,
		typeName => "EMP L Blueprint"
	},

	935	=> {
		typeID   => 935,
		groupID  => 105,
		typeName => "Reaper Blueprint"
	},

	936	=> {
		typeID   => 936,
		groupID  => 105,
		typeName => "Executioner Blueprint"
	},

	937	=> {
		typeID   => 937,
		groupID  => 105,
		typeName => "Inquisitor Blueprint"
	},

	938	=> {
		typeID   => 938,
		groupID  => 105,
		typeName => "Tormentor Blueprint"
	},

	939	=> {
		typeID   => 939,
		groupID  => 105,
		typeName => "Navitas Blueprint"
	},

	940	=> {
		typeID   => 940,
		groupID  => 105,
		typeName => "Tristan Blueprint"
	},

	941	=> {
		typeID   => 941,
		groupID  => 105,
		typeName => "Incursus Blueprint"
	},

	943	=> {
		typeID   => 943,
		groupID  => 105,
		typeName => "Impairor Blueprint"
	},

	944	=> {
		typeID   => 944,
		groupID  => 105,
		typeName => "Punisher Blueprint"
	},

	945	=> {
		typeID   => 945,
		groupID  => 105,
		typeName => "Breacher Blueprint"
	},

	946	=> {
		typeID   => 946,
		groupID  => 105,
		typeName => "Burst Blueprint"
	},

	947	=> {
		typeID   => 947,
		groupID  => 105,
		typeName => "Minmatar Peacekeeper Ship Blueprint"
	},

	948	=> {
		typeID   => 948,
		groupID  => 105,
		typeName => "Ibis Blueprint"
	},

	949	=> {
		typeID   => 949,
		groupID  => 105,
		typeName => "Kestrel Blueprint"
	},

	950	=> {
		typeID   => 950,
		groupID  => 105,
		typeName => "Merlin Blueprint"
	},

	952	=> {
		typeID   => 952,
		groupID  => 105,
		typeName => "Heron Blueprint"
	},

	953	=> {
		typeID   => 953,
		groupID  => 105,
		typeName => "Velator Blueprint"
	},

	954	=> {
		typeID   => 954,
		groupID  => 105,
		typeName => "Imicus Blueprint"
	},

	955	=> {
		typeID   => 955,
		groupID  => 105,
		typeName => "Atron Blueprint"
	},

	956	=> {
		typeID   => 956,
		groupID  => 105,
		typeName => "Maulus Blueprint"
	},

	960	=> {
		typeID   => 960,
		groupID  => 105,
		typeName => "Devourer Blueprint"
	},

	961	=> {
		typeID   => 961,
		groupID  => 105,
		typeName => "Fury Blueprint"
	},

	962	=> {
		typeID   => 962,
		groupID  => 105,
		typeName => "Immolator Blueprint"
	},

	963	=> {
		typeID   => 963,
		groupID  => 105,
		typeName => "Medusa Blueprint"
	},

	964	=> {
		typeID   => 964,
		groupID  => 105,
		typeName => "Echo Blueprint"
	},

	965	=> {
		typeID   => 965,
		groupID  => 105,
		typeName => "Lynx Blueprint"
	},

	966	=> {
		typeID   => 966,
		groupID  => 105,
		typeName => "Swordspine Blueprint"
	},

	967	=> {
		typeID   => 967,
		groupID  => 111,
		typeName => "Caldari Shuttle Blueprint"
	},

	968	=> {
		typeID   => 968,
		groupID  => 106,
		typeName => "Moa Blueprint"
	},

	969	=> {
		typeID   => 969,
		groupID  => 106,
		typeName => "Maller Blueprint"
	},

	970	=> {
		typeID   => 970,
		groupID  => 106,
		typeName => "Augoror Blueprint"
	},

	971	=> {
		typeID   => 971,
		groupID  => 106,
		typeName => "Vexor Blueprint"
	},

	972	=> {
		typeID   => 972,
		groupID  => 106,
		typeName => "Thorax Blueprint"
	},

	973	=> {
		typeID   => 973,
		groupID  => 106,
		typeName => "Arbitrator Blueprint"
	},

	974	=> {
		typeID   => 974,
		groupID  => 106,
		typeName => "Rupture Blueprint"
	},

	975	=> {
		typeID   => 975,
		groupID  => 106,
		typeName => "Bellicose Blueprint"
	},

	976	=> {
		typeID   => 976,
		groupID  => 106,
		typeName => "Scythe Blueprint"
	},

	977	=> {
		typeID   => 977,
		groupID  => 106,
		typeName => "Blackbird Blueprint"
	},

	978	=> {
		typeID   => 978,
		groupID  => 106,
		typeName => "Celestis Blueprint"
	},

	979	=> {
		typeID   => 979,
		groupID  => 106,
		typeName => "Exequror Blueprint"
	},

	983	=> {
		typeID   => 983,
		groupID  => 108,
		typeName => "Badger Blueprint"
	},

	984	=> {
		typeID   => 984,
		groupID  => 108,
		typeName => "Tayra Blueprint"
	},

	985	=> {
		typeID   => 985,
		groupID  => 108,
		typeName => "Nereus Blueprint"
	},

	986	=> {
		typeID   => 986,
		groupID  => 108,
		typeName => "Hoarder Blueprint"
	},

	987	=> {
		typeID   => 987,
		groupID  => 108,
		typeName => "Mammoth Blueprint"
	},

	988	=> {
		typeID   => 988,
		groupID  => 108,
		typeName => "Wreathe Blueprint"
	},

	989	=> {
		typeID   => 989,
		groupID  => 108,
		typeName => "Kryos Blueprint"
	},

	990	=> {
		typeID   => 990,
		groupID  => 108,
		typeName => "Epithal Blueprint"
	},

	991	=> {
		typeID   => 991,
		groupID  => 108,
		typeName => "Miasmos Blueprint"
	},

	992	=> {
		typeID   => 992,
		groupID  => 108,
		typeName => "Iteron Mark V Blueprint"
	},

	994	=> {
		typeID   => 994,
		groupID  => 107,
		typeName => "Scorpion Blueprint"
	},

	995	=> {
		typeID   => 995,
		groupID  => 107,
		typeName => "Megathron Blueprint"
	},

	996	=> {
		typeID   => 996,
		groupID  => 107,
		typeName => "Apocalypse Blueprint"
	},

	997	=> {
		typeID   => 997,
		groupID  => 107,
		typeName => "Armageddon Blueprint"
	},

	998	=> {
		typeID   => 998,
		groupID  => 107,
		typeName => "Typhoon Blueprint"
	},

	999	=> {
		typeID   => 999,
		groupID  => 107,
		typeName => "Dominix Blueprint"
	},

	1002	=> {
		typeID   => 1002,
		groupID  => 110,
		typeName => "Erebus Blueprint"
	},

	1010	=> {
		typeID   => 1010,
		groupID  => 118,
		typeName => "Small Shield Extender I Blueprint"
	},

	1013	=> {
		typeID   => 1013,
		groupID  => 118,
		typeName => "Small Shield Extender II Blueprint"
	},

	1026	=> {
		typeID   => 1026,
		groupID  => 119,
		typeName => "Shield Recharger I Blueprint"
	},

	1027	=> {
		typeID   => 1027,
		groupID  => 119,
		typeName => "Shield Recharger II Blueprint"
	},

	1032	=> {
		typeID   => 1032,
		groupID  => 120,
		typeName => "Small Shield Booster I Blueprint"
	},

	1033	=> {
		typeID   => 1033,
		groupID  => 120,
		typeName => "Small Shield Booster II Blueprint"
	},

	1067	=> {
		typeID   => 1067,
		groupID  => 126,
		typeName => "5MN Microwarpdrive I Blueprint"
	},

	1071	=> {
		typeID   => 1071,
		groupID  => 126,
		typeName => "1MN Afterburner II Blueprint"
	},

	1072	=> {
		typeID   => 1072,
		groupID  => 126,
		typeName => "1MN Afterburner I Blueprint"
	},

	1073	=> {
		typeID   => 1073,
		groupID  => 126,
		typeName => "5MN Microwarpdrive II Blueprint"
	},

	1074	=> {
		typeID   => 1074,
		groupID  => 127,
		typeName => "Cargo Scanner I Blueprint"
	},

	1075	=> {
		typeID   => 1075,
		groupID  => 128,
		typeName => "Ship Scanner I Blueprint"
	},

	1076	=> {
		typeID   => 1076,
		groupID  => 129,
		typeName => "Survey Scanner I Blueprint"
	},

	1079	=> {
		typeID   => 1079,
		groupID  => 132,
		typeName => "Warp Scrambler I Blueprint"
	},

	1080	=> {
		typeID   => 1080,
		groupID  => 132,
		typeName => "Warp Scrambler II Blueprint"
	},

	1095	=> {
		typeID   => 1095,
		groupID  => 139,
		typeName => "Gyrostabilizer II Blueprint"
	},

	1096	=> {
		typeID   => 1096,
		groupID  => 139,
		typeName => "Gyrostabilizer I Blueprint"
	},

	1099	=> {
		typeID   => 1099,
		groupID  => 142,
		typeName => "Small Armor Repairer I Blueprint"
	},

	1100	=> {
		typeID   => 1100,
		groupID  => 143,
		typeName => "Small Hull Repairer I Blueprint"
	},

	1102	=> {
		typeID   => 1102,
		groupID  => 145,
		typeName => "Stasis Webifier I Blueprint"
	},

	1103	=> {
		typeID   => 1103,
		groupID  => 145,
		typeName => "Stasis Webifier II Blueprint"
	},

	1105	=> {
		typeID   => 1105,
		groupID  => 147,
		typeName => "Small Remote Capacitor Transmitter I Blueprint"
	},

	1106	=> {
		typeID   => 1106,
		groupID  => 148,
		typeName => "Small Energy Nosferatu I Blueprint"
	},

	1109	=> {
		typeID   => 1109,
		groupID  => 151,
		typeName => "Small Energy Neutralizer I Blueprint"
	},

	1112	=> {
		typeID   => 1112,
		groupID  => 154,
		typeName => "75mm Gatling Rail I Blueprint"
	},

	1113	=> {
		typeID   => 1113,
		groupID  => 154,
		typeName => "Light Electron Blaster I Blueprint"
	},

	1114	=> {
		typeID   => 1114,
		groupID  => 154,
		typeName => "Light Ion Blaster I Blueprint"
	},

	1115	=> {
		typeID   => 1115,
		groupID  => 154,
		typeName => "Light Neutron Blaster I Blueprint"
	},

	1116	=> {
		typeID   => 1116,
		groupID  => 154,
		typeName => "150mm Railgun I Blueprint"
	},

	1117	=> {
		typeID   => 1117,
		groupID  => 154,
		typeName => "Heavy Electron Blaster I Blueprint"
	},

	1118	=> {
		typeID   => 1118,
		groupID  => 154,
		typeName => "Dual 150mm Railgun I Blueprint"
	},

	1119	=> {
		typeID   => 1119,
		groupID  => 154,
		typeName => "Heavy Neutron Blaster I Blueprint"
	},

	1120	=> {
		typeID   => 1120,
		groupID  => 154,
		typeName => "Heavy Ion Blaster I Blueprint"
	},

	1121	=> {
		typeID   => 1121,
		groupID  => 154,
		typeName => "250mm Railgun I Blueprint"
	},

	1122	=> {
		typeID   => 1122,
		groupID  => 154,
		typeName => "Electron Blaster Cannon I Blueprint"
	},

	1123	=> {
		typeID   => 1123,
		groupID  => 154,
		typeName => "Dual 250mm Railgun I Blueprint"
	},

	1124	=> {
		typeID   => 1124,
		groupID  => 154,
		typeName => "Neutron Blaster Cannon I Blueprint"
	},

	1125	=> {
		typeID   => 1125,
		groupID  => 154,
		typeName => "425mm Railgun I Blueprint"
	},

	1126	=> {
		typeID   => 1126,
		groupID  => 154,
		typeName => "Ion Blaster Cannon I Blueprint"
	},

	1128	=> {
		typeID   => 1128,
		groupID  => 156,
		typeName => "Medium Capacitor Booster I Blueprint"
	},

	1129	=> {
		typeID   => 1129,
		groupID  => 157,
		typeName => "Adaptive Invulnerability Field I Blueprint"
	},

	1130	=> {
		typeID   => 1130,
		groupID  => 167,
		typeName => "Iron Charge S Blueprint"
	},

	1131	=> {
		typeID   => 1131,
		groupID  => 167,
		typeName => "Tungsten Charge S Blueprint"
	},

	1132	=> {
		typeID   => 1132,
		groupID  => 167,
		typeName => "Iridium Charge S Blueprint"
	},

	1133	=> {
		typeID   => 1133,
		groupID  => 167,
		typeName => "Lead Charge S Blueprint"
	},

	1134	=> {
		typeID   => 1134,
		groupID  => 167,
		typeName => "Thorium Charge S Blueprint"
	},

	1135	=> {
		typeID   => 1135,
		groupID  => 167,
		typeName => "Uranium Charge S Blueprint"
	},

	1136	=> {
		typeID   => 1136,
		groupID  => 167,
		typeName => "Plutonium Charge S Blueprint"
	},

	1137	=> {
		typeID   => 1137,
		groupID  => 167,
		typeName => "Antimatter Charge S Blueprint"
	},

	1138	=> {
		typeID   => 1138,
		groupID  => 167,
		typeName => "Iron Charge M Blueprint"
	},

	1139	=> {
		typeID   => 1139,
		groupID  => 167,
		typeName => "Tungsten Charge M Blueprint"
	},

	1140	=> {
		typeID   => 1140,
		groupID  => 167,
		typeName => "Iridium Charge M Blueprint"
	},

	1141	=> {
		typeID   => 1141,
		groupID  => 167,
		typeName => "Lead Charge M Blueprint"
	},

	1142	=> {
		typeID   => 1142,
		groupID  => 167,
		typeName => "Thorium Charge M Blueprint"
	},

	1143	=> {
		typeID   => 1143,
		groupID  => 167,
		typeName => "Uranium Charge M Blueprint"
	},

	1144	=> {
		typeID   => 1144,
		groupID  => 167,
		typeName => "Plutonium Charge M Blueprint"
	},

	1145	=> {
		typeID   => 1145,
		groupID  => 167,
		typeName => "Antimatter Charge M Blueprint"
	},

	1146	=> {
		typeID   => 1146,
		groupID  => 167,
		typeName => "Iron Charge L Blueprint"
	},

	1147	=> {
		typeID   => 1147,
		groupID  => 167,
		typeName => "Tungsten Charge L Blueprint"
	},

	1148	=> {
		typeID   => 1148,
		groupID  => 167,
		typeName => "Iridium Charge L Blueprint"
	},

	1149	=> {
		typeID   => 1149,
		groupID  => 167,
		typeName => "Lead Charge L Blueprint"
	},

	1150	=> {
		typeID   => 1150,
		groupID  => 167,
		typeName => "Thorium Charge L Blueprint"
	},

	1151	=> {
		typeID   => 1151,
		groupID  => 167,
		typeName => "Uranium Charge L Blueprint"
	},

	1152	=> {
		typeID   => 1152,
		groupID  => 167,
		typeName => "Plutonium Charge L Blueprint"
	},

	1153	=> {
		typeID   => 1153,
		groupID  => 167,
		typeName => "Antimatter Charge L Blueprint"
	},

	1154	=> {
		typeID   => 1154,
		groupID  => 168,
		typeName => "Radio S Blueprint"
	},

	1155	=> {
		typeID   => 1155,
		groupID  => 168,
		typeName => "Microwave S Blueprint"
	},

	1156	=> {
		typeID   => 1156,
		groupID  => 168,
		typeName => "Infrared S Blueprint"
	},

	1157	=> {
		typeID   => 1157,
		groupID  => 168,
		typeName => "Standard S Blueprint"
	},

	1158	=> {
		typeID   => 1158,
		groupID  => 168,
		typeName => "Ultraviolet S Blueprint"
	},

	1159	=> {
		typeID   => 1159,
		groupID  => 168,
		typeName => "Xray S Blueprint"
	},

	1160	=> {
		typeID   => 1160,
		groupID  => 168,
		typeName => "Gamma S Blueprint"
	},

	1161	=> {
		typeID   => 1161,
		groupID  => 168,
		typeName => "Multifrequency S Blueprint"
	},

	1162	=> {
		typeID   => 1162,
		groupID  => 168,
		typeName => "Radio M Blueprint"
	},

	1163	=> {
		typeID   => 1163,
		groupID  => 168,
		typeName => "Microwave M Blueprint"
	},

	1164	=> {
		typeID   => 1164,
		groupID  => 168,
		typeName => "Infrared M Blueprint"
	},

	1165	=> {
		typeID   => 1165,
		groupID  => 168,
		typeName => "Standard M Blueprint"
	},

	1166	=> {
		typeID   => 1166,
		groupID  => 168,
		typeName => "Ultraviolet M Blueprint"
	},

	1167	=> {
		typeID   => 1167,
		groupID  => 168,
		typeName => "Xray M Blueprint"
	},

	1168	=> {
		typeID   => 1168,
		groupID  => 168,
		typeName => "Gamma M Blueprint"
	},

	1169	=> {
		typeID   => 1169,
		groupID  => 168,
		typeName => "Multifrequency M Blueprint"
	},

	1170	=> {
		typeID   => 1170,
		groupID  => 168,
		typeName => "Radio L Blueprint"
	},

	1171	=> {
		typeID   => 1171,
		groupID  => 168,
		typeName => "Microwave L Blueprint"
	},

	1172	=> {
		typeID   => 1172,
		groupID  => 168,
		typeName => "Infrared L Blueprint"
	},

	1173	=> {
		typeID   => 1173,
		groupID  => 168,
		typeName => "Standard L Blueprint"
	},

	1174	=> {
		typeID   => 1174,
		groupID  => 168,
		typeName => "Ultraviolet L Blueprint"
	},

	1175	=> {
		typeID   => 1175,
		groupID  => 168,
		typeName => "Xray L Blueprint"
	},

	1176	=> {
		typeID   => 1176,
		groupID  => 168,
		typeName => "Gamma L Blueprint"
	},

	1177	=> {
		typeID   => 1177,
		groupID  => 168,
		typeName => "Multifrequency L Blueprint"
	},

	1178	=> {
		typeID   => 1178,
		groupID  => 169,
		typeName => "Cap Booster 25 Blueprint"
	},

	1179	=> {
		typeID   => 1179,
		groupID  => 169,
		typeName => "Cap Booster 50 Blueprint"
	},

	1182	=> {
		typeID   => 1182,
		groupID  => 96,
		typeName => "Auto Targeting System I"
	},

	1183	=> {
		typeID   => 1183,
		groupID  => 62,
		typeName => "Small Armor Repairer II"
	},

	1184	=> {
		typeID   => 1184,
		groupID  => 142,
		typeName => "Small Armor Repairer II Blueprint"
	},

	1185	=> {
		typeID   => 1185,
		groupID  => 61,
		typeName => "Small Cap Battery I"
	},

	1186	=> {
		typeID   => 1186,
		groupID  => 141,
		typeName => "Small Cap Battery I Blueprint"
	},

	1190	=> {
		typeID   => 1190,
		groupID  => 67,
		typeName => "Small Remote Capacitor Transmitter II"
	},

	1191	=> {
		typeID   => 1191,
		groupID  => 147,
		typeName => "Small Remote Capacitor Transmitter II Blueprint"
	},

	1192	=> {
		typeID   => 1192,
		groupID  => 764,
		typeName => "'Basic' Overdrive Injector System"
	},

	1193	=> {
		typeID   => 1193,
		groupID  => 98,
		typeName => "Basic EM Plating"
	},

	1194	=> {
		typeID   => 1194,
		groupID  => 99,
		typeName => "Amarr Sentry Gun"
	},

	1195	=> {
		typeID   => 1195,
		groupID  => 43,
		typeName => "Cap Recharger I"
	},

	1196	=> {
		typeID   => 1196,
		groupID  => 123,
		typeName => "Cap Recharger I Blueprint"
	},

	1197	=> {
		typeID   => 1197,
		groupID  => 98,
		typeName => "EM Plating I"
	},

	1198	=> {
		typeID   => 1198,
		groupID  => 98,
		typeName => "EM Plating II"
	},

	1201	=> {
		typeID   => 1201,
		groupID  => 100,
		typeName => "Wasp I"
	},

	1202	=> {
		typeID   => 1202,
		groupID  => 101,
		typeName => "Civilian Mining Drone"
	},

	1204	=> {
		typeID   => 1204,
		groupID  => 163,
		typeName => "EM Plating I Blueprint"
	},

	1205	=> {
		typeID   => 1205,
		groupID  => 163,
		typeName => "EM Plating II Blueprint"
	},

	1208	=> {
		typeID   => 1208,
		groupID  => 162,
		typeName => "Auto Targeting System I Blueprint"
	},

	1210	=> {
		typeID   => 1210,
		groupID  => 160,
		typeName => "Burst Jammer I Blueprint"
	},

	1212	=> {
		typeID   => 1212,
		groupID  => 161,
		typeName => "Passive Targeter I Blueprint"
	},

	1214	=> {
		typeID   => 1214,
		groupID  => 176,
		typeName => "Wasp I Blueprint"
	},

	1215	=> {
		typeID   => 1215,
		groupID  => 170,
		typeName => "Heavy Defender Missile I Blueprint"
	},

	1216	=> {
		typeID   => 1216,
		groupID  => 166,
		typeName => "Mjolnir Auto-Targeting Light Missile I Blueprint"
	},

	1217	=> {
		typeID   => 1217,
		groupID  => 174,
		typeName => "Python Mine Blueprint"
	},

	1218	=> {
		typeID   => 1218,
		groupID  => 177,
		typeName => "Civilian Mining Drone Blueprint"
	},

	1220	=> {
		typeID   => 1220,
		groupID  => 166,
		typeName => "Scourge Rocket Blueprint"
	},

	1221	=> {
		typeID   => 1221,
		groupID  => 166,
		typeName => "Scourge Torpedo Blueprint"
	},

	1223	=> {
		typeID   => 1223,
		groupID  => 451,
		typeName => "Bistot"
	},

	1224	=> {
		typeID   => 1224,
		groupID  => 459,
		typeName => "Pyroxeres"
	},

	1225	=> {
		typeID   => 1225,
		groupID  => 452,
		typeName => "Crokite"
	},

	1226	=> {
		typeID   => 1226,
		groupID  => 456,
		typeName => "Jaspet"
	},

	1227	=> {
		typeID   => 1227,
		groupID  => 469,
		typeName => "Omber"
	},

	1228	=> {
		typeID   => 1228,
		groupID  => 460,
		typeName => "Scordite"
	},

	1229	=> {
		typeID   => 1229,
		groupID  => 467,
		typeName => "Gneiss"
	},

	1230	=> {
		typeID   => 1230,
		groupID  => 462,
		typeName => "Veldspar"
	},

	1231	=> {
		typeID   => 1231,
		groupID  => 455,
		typeName => "Hemorphite"
	},

	1232	=> {
		typeID   => 1232,
		groupID  => 453,
		typeName => "Dark Ochre"
	},

	1233	=> {
		typeID   => 1233,
		groupID  => 237,
		typeName => "Polaris Enigma Frigate"
	},

	1236	=> {
		typeID   => 1236,
		groupID  => 764,
		typeName => "Overdrive Injector System II"
	},

	1237	=> {
		typeID   => 1237,
		groupID  => 158,
		typeName => "Overdrive Injector System II Blueprint"
	},

	1240	=> {
		typeID   => 1240,
		groupID  => 78,
		typeName => "'Basic' Reinforced Bulkheads"
	},

	1242	=> {
		typeID   => 1242,
		groupID  => 763,
		typeName => "'Basic' Nanofiber Internal Structure"
	},

	1244	=> {
		typeID   => 1244,
		groupID  => 764,
		typeName => "Overdrive Injector System I"
	},

	1245	=> {
		typeID   => 1245,
		groupID  => 158,
		typeName => "Overdrive Injector System I Blueprint"
	},

	1246	=> {
		typeID   => 1246,
		groupID  => 768,
		typeName => "Capacitor Flux Coil I"
	},

	1247	=> {
		typeID   => 1247,
		groupID  => 137,
		typeName => "Capacitor Flux Coil I Blueprint"
	},

	1248	=> {
		typeID   => 1248,
		groupID  => 768,
		typeName => "Capacitor Flux Coil II"
	},

	1249	=> {
		typeID   => 1249,
		groupID  => 137,
		typeName => "Capacitor Flux Coil II Blueprint"
	},

	1254	=> {
		typeID   => 1254,
		groupID  => 770,
		typeName => "Shield Flux Coil I"
	},

	1255	=> {
		typeID   => 1255,
		groupID  => 137,
		typeName => "Shield Flux Coil I Blueprint"
	},

	1256	=> {
		typeID   => 1256,
		groupID  => 770,
		typeName => "Shield Flux Coil II"
	},

	1257	=> {
		typeID   => 1257,
		groupID  => 137,
		typeName => "Shield Flux Coil II Blueprint"
	},

	1262	=> {
		typeID   => 1262,
		groupID  => 98,
		typeName => "Basic Explosive Plating"
	},

	1264	=> {
		typeID   => 1264,
		groupID  => 98,
		typeName => "Explosive Plating I"
	},

	1265	=> {
		typeID   => 1265,
		groupID  => 163,
		typeName => "Explosive Plating I Blueprint"
	},

	1266	=> {
		typeID   => 1266,
		groupID  => 98,
		typeName => "Explosive Plating II"
	},

	1267	=> {
		typeID   => 1267,
		groupID  => 163,
		typeName => "Explosive Plating II Blueprint"
	},

	1272	=> {
		typeID   => 1272,
		groupID  => 98,
		typeName => "Basic Layered Plating"
	},

	1274	=> {
		typeID   => 1274,
		groupID  => 98,
		typeName => "Layered Plating I"
	},

	1275	=> {
		typeID   => 1275,
		groupID  => 163,
		typeName => "Layered Plating I Blueprint"
	},

	1276	=> {
		typeID   => 1276,
		groupID  => 98,
		typeName => "Layered Plating II"
	},

	1277	=> {
		typeID   => 1277,
		groupID  => 163,
		typeName => "Layered Plating II Blueprint"
	},

	1282	=> {
		typeID   => 1282,
		groupID  => 98,
		typeName => "Basic Kinetic Plating"
	},

	1284	=> {
		typeID   => 1284,
		groupID  => 98,
		typeName => "Kinetic Plating I"
	},

	1285	=> {
		typeID   => 1285,
		groupID  => 163,
		typeName => "Kinetic Plating I Blueprint"
	},

	1286	=> {
		typeID   => 1286,
		groupID  => 98,
		typeName => "Kinetic Plating II"
	},

	1287	=> {
		typeID   => 1287,
		groupID  => 163,
		typeName => "Kinetic Plating II Blueprint"
	},

	1292	=> {
		typeID   => 1292,
		groupID  => 98,
		typeName => "Basic Thermal Plating"
	},

	1294	=> {
		typeID   => 1294,
		groupID  => 98,
		typeName => "Thermal Plating I"
	},

	1295	=> {
		typeID   => 1295,
		groupID  => 163,
		typeName => "Thermal Plating I Blueprint"
	},

	1296	=> {
		typeID   => 1296,
		groupID  => 98,
		typeName => "Thermal Plating II"
	},

	1297	=> {
		typeID   => 1297,
		groupID  => 163,
		typeName => "Thermal Plating II Blueprint"
	},

	1302	=> {
		typeID   => 1302,
		groupID  => 98,
		typeName => "Basic Adaptive Nano Plating"
	},

	1304	=> {
		typeID   => 1304,
		groupID  => 98,
		typeName => "Adaptive Nano Plating I"
	},

	1305	=> {
		typeID   => 1305,
		groupID  => 163,
		typeName => "Adaptive Nano Plating I Blueprint"
	},

	1306	=> {
		typeID   => 1306,
		groupID  => 98,
		typeName => "Adaptive Nano Plating II"
	},

	1307	=> {
		typeID   => 1307,
		groupID  => 163,
		typeName => "Adaptive Nano Plating II Blueprint"
	},

	1315	=> {
		typeID   => 1315,
		groupID  => 765,
		typeName => "'Basic' Expanded Cargohold"
	},

	1317	=> {
		typeID   => 1317,
		groupID  => 765,
		typeName => "Expanded Cargohold I"
	},

	1318	=> {
		typeID   => 1318,
		groupID  => 158,
		typeName => "Expanded Cargohold I Blueprint"
	},

	1319	=> {
		typeID   => 1319,
		groupID  => 765,
		typeName => "Expanded Cargohold II"
	},

	1320	=> {
		typeID   => 1320,
		groupID  => 158,
		typeName => "Expanded Cargohold II Blueprint"
	},

	1333	=> {
		typeID   => 1333,
		groupID  => 78,
		typeName => "Reinforced Bulkheads I"
	},

	1334	=> {
		typeID   => 1334,
		groupID  => 158,
		typeName => "Reinforced Bulkheads I Blueprint"
	},

	1335	=> {
		typeID   => 1335,
		groupID  => 78,
		typeName => "Reinforced Bulkheads II"
	},

	1336	=> {
		typeID   => 1336,
		groupID  => 158,
		typeName => "Reinforced Bulkheads II Blueprint"
	},

	1351	=> {
		typeID   => 1351,
		groupID  => 769,
		typeName => "Basic Reactor Control Unit"
	},

	1353	=> {
		typeID   => 1353,
		groupID  => 769,
		typeName => "Reactor Control Unit I"
	},

	1354	=> {
		typeID   => 1354,
		groupID  => 137,
		typeName => "Reactor Control Unit I Blueprint"
	},

	1355	=> {
		typeID   => 1355,
		groupID  => 769,
		typeName => "Reactor Control Unit II"
	},

	1356	=> {
		typeID   => 1356,
		groupID  => 137,
		typeName => "Reactor Control Unit II Blueprint"
	},

	1373	=> {
		typeID   => 1373,
		groupID  => 1,
		typeName => "CharacterAmarr"
	},

	1374	=> {
		typeID   => 1374,
		groupID  => 1,
		typeName => "CharacterNiKunni"
	},

	1375	=> {
		typeID   => 1375,
		groupID  => 1,
		typeName => "CharacterCivire"
	},

	1376	=> {
		typeID   => 1376,
		groupID  => 1,
		typeName => "CharacterDeteis"
	},

	1377	=> {
		typeID   => 1377,
		groupID  => 1,
		typeName => "CharacterGallente"
	},

	1378	=> {
		typeID   => 1378,
		groupID  => 1,
		typeName => "CharacterIntaki"
	},

	1379	=> {
		typeID   => 1379,
		groupID  => 1,
		typeName => "CharacterSebiestor"
	},

	1380	=> {
		typeID   => 1380,
		groupID  => 1,
		typeName => "CharacterBrutor"
	},

	1381	=> {
		typeID   => 1381,
		groupID  => 1,
		typeName => "CharacterStatic"
	},

	1382	=> {
		typeID   => 1382,
		groupID  => 1,
		typeName => "CharacterModifier"
	},

	1383	=> {
		typeID   => 1383,
		groupID  => 1,
		typeName => "CharacterAchura"
	},

	1384	=> {
		typeID   => 1384,
		groupID  => 1,
		typeName => "CharacterJinMei"
	},

	1385	=> {
		typeID   => 1385,
		groupID  => 1,
		typeName => "CharacterKhanid"
	},

	1386	=> {
		typeID   => 1386,
		groupID  => 1,
		typeName => "CharacterVherokior"
	},

	1401	=> {
		typeID   => 1401,
		groupID  => 762,
		typeName => "'Basic' Inertial Stabilizers"
	},

	1403	=> {
		typeID   => 1403,
		groupID  => 762,
		typeName => "Inertial Stabilizers I"
	},

	1404	=> {
		typeID   => 1404,
		groupID  => 158,
		typeName => "Inertial Stabilizers I Blueprint"
	},

	1405	=> {
		typeID   => 1405,
		groupID  => 762,
		typeName => "Inertial Stabilizers II"
	},

	1406	=> {
		typeID   => 1406,
		groupID  => 158,
		typeName => "Inertial Stabilizers II Blueprint"
	},

	1419	=> {
		typeID   => 1419,
		groupID  => 57,
		typeName => "'Basic' Shield Power Relay"
	},

	1422	=> {
		typeID   => 1422,
		groupID  => 57,
		typeName => "Shield Power Relay II"
	},

	1423	=> {
		typeID   => 1423,
		groupID  => 137,
		typeName => "Shield Power Relay II Blueprint"
	},

	1436	=> {
		typeID   => 1436,
		groupID  => 96,
		typeName => "Auto Targeting System II"
	},

	1437	=> {
		typeID   => 1437,
		groupID  => 162,
		typeName => "Auto Targeting System II Blueprint"
	},

	1445	=> {
		typeID   => 1445,
		groupID  => 767,
		typeName => "Capacitor Power Relay I"
	},

	1446	=> {
		typeID   => 1446,
		groupID  => 137,
		typeName => "Capacitor Power Relay I Blueprint"
	},

	1447	=> {
		typeID   => 1447,
		groupID  => 767,
		typeName => "Capacitor Power Relay II"
	},

	1448	=> {
		typeID   => 1448,
		groupID  => 137,
		typeName => "Capacitor Power Relay II Blueprint"
	},

	1529	=> {
		typeID   => 1529,
		groupID  => 15,
		typeName => "Caldari Administrative Station"
	},

	1530	=> {
		typeID   => 1530,
		groupID  => 15,
		typeName => "Caldari Research Station"
	},

	1531	=> {
		typeID   => 1531,
		groupID  => 15,
		typeName => "Caldari Trading Station"
	},

	1537	=> {
		typeID   => 1537,
		groupID  => 766,
		typeName => "'Basic' Power Diagnostic System"
	},

	1539	=> {
		typeID   => 1539,
		groupID  => 766,
		typeName => "Power Diagnostic System I"
	},

	1540	=> {
		typeID   => 1540,
		groupID  => 137,
		typeName => "Power Diagnostic System I Blueprint"
	},

	1541	=> {
		typeID   => 1541,
		groupID  => 766,
		typeName => "Power Diagnostic System II"
	},

	1542	=> {
		typeID   => 1542,
		groupID  => 137,
		typeName => "Power Diagnostic System II Blueprint"
	},

	1547	=> {
		typeID   => 1547,
		groupID  => 72,
		typeName => "Small Proton Smartbomb I"
	},

	1548	=> {
		typeID   => 1548,
		groupID  => 152,
		typeName => "Small Proton Smartbomb I Blueprint"
	},

	1549	=> {
		typeID   => 1549,
		groupID  => 72,
		typeName => "Small Proton Smartbomb II"
	},

	1550	=> {
		typeID   => 1550,
		groupID  => 152,
		typeName => "Small Proton Smartbomb II Blueprint"
	},

	1551	=> {
		typeID   => 1551,
		groupID  => 72,
		typeName => "Small Graviton Smartbomb I"
	},

	1552	=> {
		typeID   => 1552,
		groupID  => 152,
		typeName => "Small Graviton Smartbomb I Blueprint"
	},

	1553	=> {
		typeID   => 1553,
		groupID  => 72,
		typeName => "Small Graviton Smartbomb II"
	},

	1554	=> {
		typeID   => 1554,
		groupID  => 152,
		typeName => "Small Graviton Smartbomb II Blueprint"
	},

	1557	=> {
		typeID   => 1557,
		groupID  => 72,
		typeName => "Small Plasma Smartbomb I"
	},

	1558	=> {
		typeID   => 1558,
		groupID  => 152,
		typeName => "Small Plasma Smartbomb I Blueprint"
	},

	1559	=> {
		typeID   => 1559,
		groupID  => 72,
		typeName => "Small Plasma Smartbomb II"
	},

	1560	=> {
		typeID   => 1560,
		groupID  => 152,
		typeName => "Small Plasma Smartbomb II Blueprint"
	},

	1563	=> {
		typeID   => 1563,
		groupID  => 72,
		typeName => "Small EMP Smartbomb I"
	},

	1564	=> {
		typeID   => 1564,
		groupID  => 152,
		typeName => "Small EMP Smartbomb I Blueprint"
	},

	1565	=> {
		typeID   => 1565,
		groupID  => 72,
		typeName => "Small EMP Smartbomb II"
	},

	1566	=> {
		typeID   => 1566,
		groupID  => 152,
		typeName => "Small EMP Smartbomb II Blueprint"
	},

	1601	=> {
		typeID   => 1601,
		groupID  => 190,
		typeName => "Amarr Bonus"
	},

	1602	=> {
		typeID   => 1602,
		groupID  => 190,
		typeName => "Ni-Kunni Bonus"
	},

	1603	=> {
		typeID   => 1603,
		groupID  => 190,
		typeName => "Civire Bonus"
	},

	1604	=> {
		typeID   => 1604,
		groupID  => 190,
		typeName => "Deteis Bonus"
	},

	1605	=> {
		typeID   => 1605,
		groupID  => 190,
		typeName => "Gallente Bonus"
	},

	1606	=> {
		typeID   => 1606,
		groupID  => 190,
		typeName => "Intaki Bonus"
	},

	1607	=> {
		typeID   => 1607,
		groupID  => 190,
		typeName => "Sebiestor Bonus"
	},

	1608	=> {
		typeID   => 1608,
		groupID  => 190,
		typeName => "Brutor Bonus"
	},

	1611	=> {
		typeID   => 1611,
		groupID  => 191,
		typeName => "Computer Empathy Bonus"
	},

	1612	=> {
		typeID   => 1612,
		groupID  => 191,
		typeName => "Ordered Mind Bonus"
	},

	1613	=> {
		typeID   => 1613,
		groupID  => 191,
		typeName => "Standard DNA Pattern Bonus"
	},

	1614	=> {
		typeID   => 1614,
		groupID  => 191,
		typeName => "Killer Instinct Bonus"
	},

	1615	=> {
		typeID   => 1615,
		groupID  => 191,
		typeName => "Deft Hands Bonus"
	},

	1616	=> {
		typeID   => 1616,
		groupID  => 191,
		typeName => "Structural Understanding Bonus"
	},

	1617	=> {
		typeID   => 1617,
		groupID  => 191,
		typeName => "Creative Bonus"
	},

	1618	=> {
		typeID   => 1618,
		groupID  => 191,
		typeName => "Glib Tongue Bonus"
	},

	1619	=> {
		typeID   => 1619,
		groupID  => 191,
		typeName => "August Demeanor Bonus"
	},

	1620	=> {
		typeID   => 1620,
		groupID  => 191,
		typeName => "Superior Motion Sense Bonus"
	},

	1621	=> {
		typeID   => 1621,
		groupID  => 191,
		typeName => "High-G Tolerance Bonus"
	},

	1622	=> {
		typeID   => 1622,
		groupID  => 191,
		typeName => "Vector Reckoning Bonus"
	},

	1623	=> {
		typeID   => 1623,
		groupID  => 191,
		typeName => "Stratum Form Feel Bonus"
	},

	1624	=> {
		typeID   => 1624,
		groupID  => 191,
		typeName => "Doctrine Ingrained Bonus"
	},

	1625	=> {
		typeID   => 1625,
		groupID  => 191,
		typeName => "Three Dimensional Thinking Bonus"
	},

	1626	=> {
		typeID   => 1626,
		groupID  => 191,
		typeName => "Swift Neural Grafting Bonus"
	},

	1627	=> {
		typeID   => 1627,
		groupID  => 191,
		typeName => "Booster Immunity Bonus"
	},

	1628	=> {
		typeID   => 1628,
		groupID  => 193,
		typeName => "Algiophobia Bonus"
	},

	1629	=> {
		typeID   => 1629,
		groupID  => 193,
		typeName => "Barophobia Bonus"
	},

	1630	=> {
		typeID   => 1630,
		groupID  => 193,
		typeName => "Cenophobia Bonus"
	},

	1631	=> {
		typeID   => 1631,
		groupID  => 193,
		typeName => "Claustrophobia Bonus"
	},

	1632	=> {
		typeID   => 1632,
		groupID  => 193,
		typeName => "Monophobia Bonus"
	},

	1633	=> {
		typeID   => 1633,
		groupID  => 193,
		typeName => "Mysophobia Bonus"
	},

	1634	=> {
		typeID   => 1634,
		groupID  => 193,
		typeName => "Taphephobia Bonus"
	},

	1635	=> {
		typeID   => 1635,
		groupID  => 193,
		typeName => "Xenophobia Bonus"
	},

	1636	=> {
		typeID   => 1636,
		groupID  => 192,
		typeName => "Mechanical Inaptitude Bonus"
	},

	1639	=> {
		typeID   => 1639,
		groupID  => 192,
		typeName => "Weak Double-helix Bond Bonus"
	},

	1640	=> {
		typeID   => 1640,
		groupID  => 192,
		typeName => "Short Attention Span Bonus"
	},

	1641	=> {
		typeID   => 1641,
		groupID  => 192,
		typeName => "Wasteful Bonus"
	},

	1642	=> {
		typeID   => 1642,
		groupID  => 192,
		typeName => "Trigger-happy Bonus"
	},

	1643	=> {
		typeID   => 1643,
		groupID  => 192,
		typeName => "Epileptic Bonus"
	},

	1644	=> {
		typeID   => 1644,
		groupID  => 192,
		typeName => "Strong Immunity System Bonus"
	},

	1650	=> {
		typeID   => 1650,
		groupID  => 195,
		typeName => "Amarr Military Academy Pilot Bonus"
	},

	1651	=> {
		typeID   => 1651,
		groupID  => 195,
		typeName => "Amarr Military Academy Gunner Bonus"
	},

	1652	=> {
		typeID   => 1652,
		groupID  => 195,
		typeName => "Amarr Technical School Engineering Bonus"
	},

	1653	=> {
		typeID   => 1653,
		groupID  => 195,
		typeName => "Amarr Technical School Electronics Bonus"
	},

	1654	=> {
		typeID   => 1654,
		groupID  => 195,
		typeName => "Amarr Business School Commerce Bonus"
	},

	1655	=> {
		typeID   => 1655,
		groupID  => 195,
		typeName => "Amarr Business School Industry Bonus"
	},

	1657	=> {
		typeID   => 1657,
		groupID  => 196,
		typeName => "Caldari Military Academy Pilot Bonus"
	},

	1658	=> {
		typeID   => 1658,
		groupID  => 196,
		typeName => "Caldari Military Academy Gunner Bonus"
	},

	1659	=> {
		typeID   => 1659,
		groupID  => 196,
		typeName => "Caldari Technical School Engineering Bonus"
	},

	1660	=> {
		typeID   => 1660,
		groupID  => 196,
		typeName => "Caldari Technical School Electronics Bonus"
	},

	1661	=> {
		typeID   => 1661,
		groupID  => 196,
		typeName => "Caldari Business School Commerce Bonus"
	},

	1662	=> {
		typeID   => 1662,
		groupID  => 196,
		typeName => "Caldari Business School Industry Bonus"
	},

	1663	=> {
		typeID   => 1663,
		groupID  => 197,
		typeName => "Gallente Military Academy Pilot Bonus"
	},

	1664	=> {
		typeID   => 1664,
		groupID  => 197,
		typeName => "Gallente Military Academy Gunner Bonus"
	},

	1665	=> {
		typeID   => 1665,
		groupID  => 197,
		typeName => "Gallente Technical School Engineering Bonus"
	},

	1666	=> {
		typeID   => 1666,
		groupID  => 197,
		typeName => "Gallente Technical School Electronics Bonus"
	},

	1667	=> {
		typeID   => 1667,
		groupID  => 197,
		typeName => "Gallente Business School Commerce Bonus"
	},

	1668	=> {
		typeID   => 1668,
		groupID  => 197,
		typeName => "Gallente Business School Industry Bonus"
	},

	1669	=> {
		typeID   => 1669,
		groupID  => 198,
		typeName => "Minmatar Military Academy Pilot Bonus"
	},

	1670	=> {
		typeID   => 1670,
		groupID  => 198,
		typeName => "Minmatar Military Academy Gunner Bonus"
	},

	1671	=> {
		typeID   => 1671,
		groupID  => 198,
		typeName => "Minmatar Technical School Engineering Bonus"
	},

	1672	=> {
		typeID   => 1672,
		groupID  => 198,
		typeName => "Minmatar Technical School Electronic Bonus"
	},

	1673	=> {
		typeID   => 1673,
		groupID  => 198,
		typeName => "Minmatar Business School Commerce Bonus"
	},

	1674	=> {
		typeID   => 1674,
		groupID  => 198,
		typeName => "Minmatar Business School Industry Bonus"
	},

	1675	=> {
		typeID   => 1675,
		groupID  => 199,
		typeName => "Bounty Hunter Bonus"
	},

	1676	=> {
		typeID   => 1676,
		groupID  => 199,
		typeName => "Scientist Bonus"
	},

	1677	=> {
		typeID   => 1677,
		groupID  => 199,
		typeName => "Industrialist Bonus"
	},

	1678	=> {
		typeID   => 1678,
		groupID  => 199,
		typeName => "Corporate Magnate Bonus"
	},

	1679	=> {
		typeID   => 1679,
		groupID  => 199,
		typeName => "Covert-op Bonus"
	},

	1680	=> {
		typeID   => 1680,
		groupID  => 199,
		typeName => "Navy Captain Bonus"
	},

	1798	=> {
		typeID   => 1798,
		groupID  => 295,
		typeName => "Basic EM Ward Amplifier"
	},

	1800	=> {
		typeID   => 1800,
		groupID  => 295,
		typeName => "Basic Thermal Dissipation Amplifier"
	},

	1802	=> {
		typeID   => 1802,
		groupID  => 295,
		typeName => "Basic Kinetic Deflection Amplifier"
	},

	1804	=> {
		typeID   => 1804,
		groupID  => 295,
		typeName => "Basic Explosive Deflection Amplifier"
	},

	1808	=> {
		typeID   => 1808,
		groupID  => 295,
		typeName => "EM Ward Amplifier I"
	},

	1809	=> {
		typeID   => 1809,
		groupID  => 296,
		typeName => "EM Ward Amplifier I Blueprint"
	},

	1810	=> {
		typeID   => 1810,
		groupID  => 394,
		typeName => "Scourge Auto-Targeting Light Missile I"
	},

	1811	=> {
		typeID   => 1811,
		groupID  => 166,
		typeName => "Scourge Auto-Targeting Light Missile I Blueprint"
	},

	1814	=> {
		typeID   => 1814,
		groupID  => 394,
		typeName => "Nova Auto-Targeting Light Missile I"
	},

	1815	=> {
		typeID   => 1815,
		groupID  => 166,
		typeName => "Nova Auto-Targeting Light Missile I Blueprint"
	},

	1816	=> {
		typeID   => 1816,
		groupID  => 394,
		typeName => "Inferno Auto-Targeting Light Missile I"
	},

	1817	=> {
		typeID   => 1817,
		groupID  => 166,
		typeName => "Inferno Auto-Targeting Light Missile I Blueprint"
	},

	1818	=> {
		typeID   => 1818,
		groupID  => 395,
		typeName => "Scourge Auto-Targeting Heavy Missile I"
	},

	1819	=> {
		typeID   => 1819,
		groupID  => 166,
		typeName => "Scourge Auto-Targeting Heavy Missile I Blueprint"
	},

	1820	=> {
		typeID   => 1820,
		groupID  => 395,
		typeName => "Mjolnir Auto-Targeting Heavy Missile I"
	},

	1821	=> {
		typeID   => 1821,
		groupID  => 166,
		typeName => "Mjolnir Auto-Targeting Heavy Missile I Blueprint"
	},

	1822	=> {
		typeID   => 1822,
		groupID  => 395,
		typeName => "Nova Auto-Targeting Heavy Missile I"
	},

	1823	=> {
		typeID   => 1823,
		groupID  => 166,
		typeName => "Nova Auto-Targeting Heavy Missile I Blueprint"
	},

	1824	=> {
		typeID   => 1824,
		groupID  => 395,
		typeName => "Inferno Auto-Targeting Heavy Missile I"
	},

	1825	=> {
		typeID   => 1825,
		groupID  => 166,
		typeName => "Inferno Auto-Targeting Heavy Missile I Blueprint"
	},

	1826	=> {
		typeID   => 1826,
		groupID  => 396,
		typeName => "Scourge Auto-Targeting Cruise Missile I"
	},

	1827	=> {
		typeID   => 1827,
		groupID  => 166,
		typeName => "Scourge Auto-Targeting Cruise Missile I Blueprint"
	},

	1828	=> {
		typeID   => 1828,
		groupID  => 396,
		typeName => "Mjolnir Auto-Targeting Cruise Missile I"
	},

	1829	=> {
		typeID   => 1829,
		groupID  => 166,
		typeName => "Mjolnir Auto-Targeting Cruise Missile I Blueprint"
	},

	1830	=> {
		typeID   => 1830,
		groupID  => 396,
		typeName => "Nova Auto-Targeting Cruise Missile I"
	},

	1831	=> {
		typeID   => 1831,
		groupID  => 166,
		typeName => "Nova Auto-Targeting Cruise Missile I Blueprint"
	},

	1832	=> {
		typeID   => 1832,
		groupID  => 396,
		typeName => "Inferno Auto-Targeting Cruise Missile I"
	},

	1833	=> {
		typeID   => 1833,
		groupID  => 166,
		typeName => "Inferno Auto-Targeting Cruise Missile I Blueprint"
	},

	1855	=> {
		typeID   => 1855,
		groupID  => 48,
		typeName => "Ship Scanner II"
	},

	1856	=> {
		typeID   => 1856,
		groupID  => 128,
		typeName => "Ship Scanner II Blueprint"
	},

	1875	=> {
		typeID   => 1875,
		groupID  => 511,
		typeName => "Rapid Light Missile Launcher I"
	},

	1876	=> {
		typeID   => 1876,
		groupID  => 136,
		typeName => "Rapid Light Missile Launcher I Blueprint"
	},

	1877	=> {
		typeID   => 1877,
		groupID  => 511,
		typeName => "Rapid Light Missile Launcher II"
	},

	1878	=> {
		typeID   => 1878,
		groupID  => 136,
		typeName => "Rapid Light Missile Launcher II Blueprint"
	},

	1893	=> {
		typeID   => 1893,
		groupID  => 205,
		typeName => "'Basic' Heat Sink"
	},

	1896	=> {
		typeID   => 1896,
		groupID  => 25,
		typeName => "Concord Police Frigate"
	},

	1898	=> {
		typeID   => 1898,
		groupID  => 25,
		typeName => "Concord SWAT Frigate"
	},

	1900	=> {
		typeID   => 1900,
		groupID  => 25,
		typeName => "Concord Army Frigate"
	},

	1902	=> {
		typeID   => 1902,
		groupID  => 25,
		typeName => "Concord Special Ops Frigate"
	},

	1904	=> {
		typeID   => 1904,
		groupID  => 26,
		typeName => "Concord Police Cruiser"
	},

	1912	=> {
		typeID   => 1912,
		groupID  => 27,
		typeName => "Concord Police Battleship"
	},

	1914	=> {
		typeID   => 1914,
		groupID  => 27,
		typeName => "Concord Special Ops Battleship"
	},

	1916	=> {
		typeID   => 1916,
		groupID  => 27,
		typeName => "Concord SWAT Battleship"
	},

	1918	=> {
		typeID   => 1918,
		groupID  => 27,
		typeName => "Concord Army Battleship"
	},

	1926	=> {
		typeID   => 1926,
		groupID  => 15,
		typeName => "Amarr Station Hub"
	},

	1927	=> {
		typeID   => 1927,
		groupID  => 15,
		typeName => "Amarr Station Military"
	},

	1928	=> {
		typeID   => 1928,
		groupID  => 15,
		typeName => "Amarr Industrial Station"
	},

	1929	=> {
		typeID   => 1929,
		groupID  => 15,
		typeName => "Amarr Standard Station"
	},

	1930	=> {
		typeID   => 1930,
		groupID  => 15,
		typeName => "Amarr Mining Station"
	},

	1931	=> {
		typeID   => 1931,
		groupID  => 15,
		typeName => "Amarr Research Station"
	},

	1932	=> {
		typeID   => 1932,
		groupID  => 15,
		typeName => "Amarr Trade Post"
	},

	1944	=> {
		typeID   => 1944,
		groupID  => 28,
		typeName => "Bestower"
	},

	1945	=> {
		typeID   => 1945,
		groupID  => 108,
		typeName => "Bestower Blueprint"
	},

	1946	=> {
		typeID   => 1946,
		groupID  => 203,
		typeName => "Basic RADAR Backup Array"
	},

	1947	=> {
		typeID   => 1947,
		groupID  => 202,
		typeName => "ECCM - Radar I"
	},

	1948	=> {
		typeID   => 1948,
		groupID  => 201,
		typeName => "Magnetometric ECM I"
	},

	1949	=> {
		typeID   => 1949,
		groupID  => 210,
		typeName => "'Basic' Signal Amplifier"
	},

	1951	=> {
		typeID   => 1951,
		groupID  => 211,
		typeName => "'Basic' Tracking Enhancer"
	},

	1952	=> {
		typeID   => 1952,
		groupID  => 212,
		typeName => "Sensor Booster II"
	},

	1955	=> {
		typeID   => 1955,
		groupID  => 201,
		typeName => "Gravimetric ECM I"
	},

	1956	=> {
		typeID   => 1956,
		groupID  => 201,
		typeName => "Radar ECM I"
	},

	1957	=> {
		typeID   => 1957,
		groupID  => 201,
		typeName => "Multispectral ECM I"
	},

	1958	=> {
		typeID   => 1958,
		groupID  => 201,
		typeName => "Ladar ECM I"
	},

	1959	=> {
		typeID   => 1959,
		groupID  => 289,
		typeName => "ECCM Projector I"
	},

	1960	=> {
		typeID   => 1960,
		groupID  => 289,
		typeName => "ECCM Projector II"
	},

	1963	=> {
		typeID   => 1963,
		groupID  => 290,
		typeName => "Remote Sensor Booster I"
	},

	1964	=> {
		typeID   => 1964,
		groupID  => 290,
		typeName => "Remote Sensor Booster II"
	},

	1968	=> {
		typeID   => 1968,
		groupID  => 208,
		typeName => "Remote Sensor Dampener I"
	},

	1969	=> {
		typeID   => 1969,
		groupID  => 208,
		typeName => "Remote Sensor Dampener II"
	},

	1973	=> {
		typeID   => 1973,
		groupID  => 212,
		typeName => "Sensor Booster I"
	},

	1977	=> {
		typeID   => 1977,
		groupID  => 213,
		typeName => "Tracking Computer I"
	},

	1978	=> {
		typeID   => 1978,
		groupID  => 213,
		typeName => "Tracking Computer II"
	},

	1982	=> {
		typeID   => 1982,
		groupID  => 203,
		typeName => "Basic Ladar Backup Array"
	},

	1983	=> {
		typeID   => 1983,
		groupID  => 203,
		typeName => "Basic Gravimetric Backup Array"
	},

	1984	=> {
		typeID   => 1984,
		groupID  => 203,
		typeName => "Basic Magnetometric Backup Array"
	},

	1985	=> {
		typeID   => 1985,
		groupID  => 203,
		typeName => "Basic Multi Sensor Backup Array"
	},

	1986	=> {
		typeID   => 1986,
		groupID  => 210,
		typeName => "Signal Amplifier I"
	},

	1987	=> {
		typeID   => 1987,
		groupID  => 210,
		typeName => "Signal Amplifier II"
	},

	1998	=> {
		typeID   => 1998,
		groupID  => 211,
		typeName => "Tracking Enhancer I"
	},

	1999	=> {
		typeID   => 1999,
		groupID  => 211,
		typeName => "Tracking Enhancer II"
	},

	2001	=> {
		typeID   => 2001,
		groupID  => 1016,
		typeName => "Cynosural Suppression"
	},

	2002	=> {
		typeID   => 2002,
		groupID  => 202,
		typeName => "ECCM - Ladar I"
	},

	2003	=> {
		typeID   => 2003,
		groupID  => 202,
		typeName => "ECCM - Magnetometric I"
	},

	2004	=> {
		typeID   => 2004,
		groupID  => 202,
		typeName => "ECCM - Gravimetric I"
	},

	2005	=> {
		typeID   => 2005,
		groupID  => 202,
		typeName => "ECCM - Omni I"
	},

	2006	=> {
		typeID   => 2006,
		groupID  => 26,
		typeName => "Omen"
	},

	2007	=> {
		typeID   => 2007,
		groupID  => 106,
		typeName => "Omen Blueprint"
	},

	2008	=> {
		typeID   => 2008,
		groupID  => 1016,
		typeName => "Cynosural Navigation"
	},

	2009	=> {
		typeID   => 2009,
		groupID  => 1016,
		typeName => "Supercapital Construction Facilities"
	},

	2010	=> {
		typeID   => 2010,
		groupID  => 286,
		typeName => "Rebel Leader"
	},

	2011	=> {
		typeID   => 2011,
		groupID  => 306,
		typeName => "Prison Facility"
	},

	2012	=> {
		typeID   => 2012,
		groupID  => 597,
		typeName => "Terrorist Leader"
	},

	2013	=> {
		typeID   => 2013,
		groupID  => 283,
		typeName => "Hostages"
	},

	2014	=> {
		typeID   => 2014,
		groupID  => 7,
		typeName => "Planet (Oceanic)"
	},

	2015	=> {
		typeID   => 2015,
		groupID  => 7,
		typeName => "Planet (Lava)"
	},

	2016	=> {
		typeID   => 2016,
		groupID  => 7,
		typeName => "Planet (Barren)"
	},

	2017	=> {
		typeID   => 2017,
		groupID  => 7,
		typeName => "Planet (Storm)"
	},

	2018	=> {
		typeID   => 2018,
		groupID  => 61,
		typeName => "Medium Cap Battery I"
	},

	2019	=> {
		typeID   => 2019,
		groupID  => 141,
		typeName => "Medium Cap Battery I Blueprint"
	},

	2020	=> {
		typeID   => 2020,
		groupID  => 61,
		typeName => "Large Cap Battery I"
	},

	2021	=> {
		typeID   => 2021,
		groupID  => 141,
		typeName => "Large Cap Battery I Blueprint"
	},

	2022	=> {
		typeID   => 2022,
		groupID  => 61,
		typeName => "X-Large Capacitor Battery I"
	},

	2023	=> {
		typeID   => 2023,
		groupID  => 141,
		typeName => "X-Large Capacitor Battery I Blueprint"
	},

	2024	=> {
		typeID   => 2024,
		groupID  => 76,
		typeName => "Medium Capacitor Booster II"
	},

	2025	=> {
		typeID   => 2025,
		groupID  => 156,
		typeName => "Medium Capacitor Booster II Blueprint"
	},

	2026	=> {
		typeID   => 2026,
		groupID  => 1021,
		typeName => "Pirate Detection Array 1"
	},

	2027	=> {
		typeID   => 2027,
		groupID  => 1021,
		typeName => "Pirate Detection Array 2"
	},

	2028	=> {
		typeID   => 2028,
		groupID  => 1021,
		typeName => "Pirate Detection Array 3"
	},

	2029	=> {
		typeID   => 2029,
		groupID  => 1021,
		typeName => "Pirate Detection Array 4"
	},

	2030	=> {
		typeID   => 2030,
		groupID  => 1021,
		typeName => "Pirate Detection Array 5"
	},

	2031	=> {
		typeID   => 2031,
		groupID  => 1021,
		typeName => "Entrapment Array 1"
	},

	2032	=> {
		typeID   => 2032,
		groupID  => 43,
		typeName => "Cap Recharger II"
	},

	2033	=> {
		typeID   => 2033,
		groupID  => 123,
		typeName => "Cap Recharger II Blueprint"
	},

	2034	=> {
		typeID   => 2034,
		groupID  => 1021,
		typeName => "Entrapment Array 2"
	},

	2035	=> {
		typeID   => 2035,
		groupID  => 1021,
		typeName => "Entrapment Array 3"
	},

	2036	=> {
		typeID   => 2036,
		groupID  => 1021,
		typeName => "Entrapment Array 4"
	},

	2037	=> {
		typeID   => 2037,
		groupID  => 1021,
		typeName => "Entrapment Array 5"
	},

	2038	=> {
		typeID   => 2038,
		groupID  => 47,
		typeName => "Cargo Scanner II"
	},

	2039	=> {
		typeID   => 2039,
		groupID  => 127,
		typeName => "Cargo Scanner II Blueprint"
	},

	2040	=> {
		typeID   => 2040,
		groupID  => 1020,
		typeName => "Ore Prospecting Array 1"
	},

	2041	=> {
		typeID   => 2041,
		groupID  => 1020,
		typeName => "Ore Prospecting Array 2"
	},

	2042	=> {
		typeID   => 2042,
		groupID  => 1020,
		typeName => "Ore Prospecting Array 3"
	},

	2043	=> {
		typeID   => 2043,
		groupID  => 1020,
		typeName => "Ore Prospecting Array 4"
	},

	2044	=> {
		typeID   => 2044,
		groupID  => 1020,
		typeName => "Ore Prospecting Array 5"
	},

	2045	=> {
		typeID   => 2045,
		groupID  => 693,
		typeName => "SARO Frigate"
	},

	2046	=> {
		typeID   => 2046,
		groupID  => 60,
		typeName => "Damage Control I"
	},

	2047	=> {
		typeID   => 2047,
		groupID  => 140,
		typeName => "Damage Control I Blueprint"
	},

	2048	=> {
		typeID   => 2048,
		groupID  => 60,
		typeName => "Damage Control II"
	},

	2049	=> {
		typeID   => 2049,
		groupID  => 140,
		typeName => "Damage Control II Blueprint"
	},

	2050	=> {
		typeID   => 2050,
		groupID  => 77,
		typeName => "Gistum C-Type Adaptive Invulnerability Field"
	},

	2052	=> {
		typeID   => 2052,
		groupID  => 286,
		typeName => "Mercenary Trainee"
	},

	2053	=> {
		typeID   => 2053,
		groupID  => 1020,
		typeName => "Survey Networks 1"
	},

	2054	=> {
		typeID   => 2054,
		groupID  => 1020,
		typeName => "Survey Networks 2"
	},

	2055	=> {
		typeID   => 2055,
		groupID  => 1020,
		typeName => "Survey Networks 3"
	},

	2056	=> {
		typeID   => 2056,
		groupID  => 1020,
		typeName => "Survey Networks 4"
	},

	2057	=> {
		typeID   => 2057,
		groupID  => 1020,
		typeName => "Survey Networks 5"
	},

	2058	=> {
		typeID   => 2058,
		groupID  => 1021,
		typeName => "Quantum Flux Generator 1"
	},

	2059	=> {
		typeID   => 2059,
		groupID  => 1021,
		typeName => "Quantum Flux Generator 2"
	},

	2060	=> {
		typeID   => 2060,
		groupID  => 1021,
		typeName => "Quantum Flux Generator 3"
	},

	2061	=> {
		typeID   => 2061,
		groupID  => 1021,
		typeName => "Quantum Flux Generator 4"
	},

	2062	=> {
		typeID   => 2062,
		groupID  => 1021,
		typeName => "Quantum Flux Generator 5"
	},

	2063	=> {
		typeID   => 2063,
		groupID  => 7,
		typeName => "Planet (Plasma)"
	},

	2064	=> {
		typeID   => 2064,
		groupID  => 995,
		typeName => "EVE Gate"
	},

	2065	=> {
		typeID   => 2065,
		groupID  => 517,
		typeName => "Patrikia Noirild's Reaper"
	},

	2066	=> {
		typeID   => 2066,
		groupID  => 517,
		typeName => "Karsten Lundham's Typhoon"
	},

	2071	=> {
		typeID   => 2071,
		groupID  => 15,
		typeName => "Station (InterBus)"
	},

	2072	=> {
		typeID   => 2072,
		groupID  => 602,
		typeName => "Anire Scarlet"
	},

	2073	=> {
		typeID   => 2073,
		groupID  => 1035,
		typeName => "Microorganisms"
	},

	2074	=> {
		typeID   => 2074,
		groupID  => 314,
		typeName => "Zazzmatazz"
	},

	2075	=> {
		typeID   => 2075,
		groupID  => 314,
		typeName => "Consolidated Holdings Commander Access Key"
	},

	2076	=> {
		typeID   => 2076,
		groupID  => 474,
		typeName => "Gate Key"
	},

	2077	=> {
		typeID   => 2077,
		groupID  => 952,
		typeName => "Amarr Frigate Container"
	},

	2078	=> {
		typeID   => 2078,
		groupID  => 1022,
		typeName => "Zephyr"
	},

	2082	=> {
		typeID   => 2082,
		groupID  => 300,
		typeName => "Genolution Core Augmentation CA-1"
	},

	2083	=> {
		typeID   => 2083,
		groupID  => 481,
		typeName => "Prototype Iris Probe Launcher"
	},

	2093	=> {
		typeID   => 2093,
		groupID  => 283,
		typeName => "Kidnapped Citizens"
	},

	2096	=> {
		typeID   => 2096,
		groupID  => 226,
		typeName => "Caldari Supercarrier Wreckage"
	},

	2097	=> {
		typeID   => 2097,
		groupID  => 226,
		typeName => "Amarr Supercarrier Wreckage"
	},

	2098	=> {
		typeID   => 2098,
		groupID  => 632,
		typeName => "Phenod's Broke-Ass Destroyer"
	},

	2100	=> {
		typeID   => 2100,
		groupID  => 314,
		typeName => "Phenod's DNA"
	},

	2101	=> {
		typeID   => 2101,
		groupID  => 226,
		typeName => "Gallente Supercarrier Wreckage"
	},

	2102	=> {
		typeID   => 2102,
		groupID  => 226,
		typeName => "Minmatar Supercarrier Wreckage"
	},

	2103	=> {
		typeID   => 2103,
		groupID  => 209,
		typeName => "Remote Tracking Computer I"
	},

	2104	=> {
		typeID   => 2104,
		groupID  => 209,
		typeName => "Remote Tracking Computer II"
	},

	2105	=> {
		typeID   => 2105,
		groupID  => 226,
		typeName => "Amarr Carrier Wreckage"
	},

	2106	=> {
		typeID   => 2106,
		groupID  => 226,
		typeName => "Caldari Carrier Wreckage"
	},

	2107	=> {
		typeID   => 2107,
		groupID  => 226,
		typeName => "Gallente Carrier Wreckage"
	},

	2108	=> {
		typeID   => 2108,
		groupID  => 291,
		typeName => "Tracking Disruptor I"
	},

	2109	=> {
		typeID   => 2109,
		groupID  => 291,
		typeName => "Tracking Disruptor II"
	},

	2110	=> {
		typeID   => 2110,
		groupID  => 226,
		typeName => "Minmatar Carrier Wreckage"
	},

	2111	=> {
		typeID   => 2111,
		groupID  => 226,
		typeName => "Amarr Freighter Wreckage"
	},

	2112	=> {
		typeID   => 2112,
		groupID  => 226,
		typeName => "Caldari Freighter Wreckage"
	},

	2113	=> {
		typeID   => 2113,
		groupID  => 226,
		typeName => "Gallente Freighter Wreckage"
	},

	2114	=> {
		typeID   => 2114,
		groupID  => 226,
		typeName => "Minmatar Freighter Wreckage"
	},

	2115	=> {
		typeID   => 2115,
		groupID  => 226,
		typeName => "Amarr Dreadnought Wreckage"
	},

	2116	=> {
		typeID   => 2116,
		groupID  => 226,
		typeName => "Caldari Dreadnought Wreckage"
	},

	2117	=> {
		typeID   => 2117,
		groupID  => 80,
		typeName => "Burst Jammer II"
	},

	2118	=> {
		typeID   => 2118,
		groupID  => 160,
		typeName => "Burst Jammer II Blueprint"
	},

	2119	=> {
		typeID   => 2119,
		groupID  => 226,
		typeName => "Gallente Dreadnought Wreckage"
	},

	2120	=> {
		typeID   => 2120,
		groupID  => 226,
		typeName => "Minmatar Dreadnought Wreckage"
	},

	2121	=> {
		typeID   => 2121,
		groupID  => 226,
		typeName => "Amarr Titan Wreckage"
	},

	2122	=> {
		typeID   => 2122,
		groupID  => 226,
		typeName => "Caldari Titan Wreckage"
	},

	2123	=> {
		typeID   => 2123,
		groupID  => 226,
		typeName => "Gallente Titan Wreckage"
	},

	2124	=> {
		typeID   => 2124,
		groupID  => 226,
		typeName => "Minmatar Titan Wreckage"
	},

	2126	=> {
		typeID   => 2126,
		groupID  => 633,
		typeName => "Anakism"
	},

	2127	=> {
		typeID   => 2127,
		groupID  => 306,
		typeName => "Amarr Diplomat Quarters"
	},

	2128	=> {
		typeID   => 2128,
		groupID  => 632,
		typeName => "Locced's Destroyer"
	},

	2129	=> {
		typeID   => 2129,
		groupID  => 1027,
		typeName => "Limited Barren Command Center"
	},

	2130	=> {
		typeID   => 2130,
		groupID  => 1027,
		typeName => "Standard Barren Command Center"
	},

	2131	=> {
		typeID   => 2131,
		groupID  => 1027,
		typeName => "Improved Barren Command Center"
	},

	2132	=> {
		typeID   => 2132,
		groupID  => 1027,
		typeName => "Advanced Barren Command Center"
	},

	2133	=> {
		typeID   => 2133,
		groupID  => 1027,
		typeName => "Elite Barren Command Center"
	},

	2134	=> {
		typeID   => 2134,
		groupID  => 1027,
		typeName => "Limited Gas Command Center"
	},

	2135	=> {
		typeID   => 2135,
		groupID  => 1027,
		typeName => "Standard Gas Command Center"
	},

	2136	=> {
		typeID   => 2136,
		groupID  => 1027,
		typeName => "Improved Gas Command Center"
	},

	2137	=> {
		typeID   => 2137,
		groupID  => 1027,
		typeName => "Advanced Gas Command Center"
	},

	2138	=> {
		typeID   => 2138,
		groupID  => 1027,
		typeName => "Elite Gas Command Center"
	},

	2139	=> {
		typeID   => 2139,
		groupID  => 1027,
		typeName => "Limited Ice Command Center"
	},

	2140	=> {
		typeID   => 2140,
		groupID  => 1027,
		typeName => "Standard Ice Command Center"
	},

	2141	=> {
		typeID   => 2141,
		groupID  => 1027,
		typeName => "Improved Ice Command Center"
	},

	2142	=> {
		typeID   => 2142,
		groupID  => 1027,
		typeName => "Advanced Ice Command Center"
	},

	2143	=> {
		typeID   => 2143,
		groupID  => 1027,
		typeName => "Elite Ice Command Center"
	},

	2144	=> {
		typeID   => 2144,
		groupID  => 1027,
		typeName => "Limited Lava Command Center"
	},

	2145	=> {
		typeID   => 2145,
		groupID  => 1027,
		typeName => "Standard Lava Command Center"
	},

	2146	=> {
		typeID   => 2146,
		groupID  => 1027,
		typeName => "Improved Lava Command Center"
	},

	2147	=> {
		typeID   => 2147,
		groupID  => 1027,
		typeName => "Advanced Lava Command Center"
	},

	2148	=> {
		typeID   => 2148,
		groupID  => 1027,
		typeName => "Elite Lava Command Center"
	},

	2149	=> {
		typeID   => 2149,
		groupID  => 1027,
		typeName => "Limited Oceanic Command Center"
	},

	2150	=> {
		typeID   => 2150,
		groupID  => 1027,
		typeName => "Standard Oceanic Command Center"
	},

	2151	=> {
		typeID   => 2151,
		groupID  => 1027,
		typeName => "Improved Oceanic Command Center"
	},

	2152	=> {
		typeID   => 2152,
		groupID  => 1027,
		typeName => "Advanced Oceanic Command Center"
	},

	2153	=> {
		typeID   => 2153,
		groupID  => 1027,
		typeName => "Elite Oceanic Command Center"
	},

	2154	=> {
		typeID   => 2154,
		groupID  => 1027,
		typeName => "Limited Plasma Command Center"
	},

	2155	=> {
		typeID   => 2155,
		groupID  => 1027,
		typeName => "Standard Plasma Command Center"
	},

	2156	=> {
		typeID   => 2156,
		groupID  => 1027,
		typeName => "Improved Plasma Command Center"
	},

	2157	=> {
		typeID   => 2157,
		groupID  => 1027,
		typeName => "Advanced Plasma Command Center"
	},

	2158	=> {
		typeID   => 2158,
		groupID  => 1027,
		typeName => "Elite Plasma Command Center"
	},

	2159	=> {
		typeID   => 2159,
		groupID  => 1027,
		typeName => "Limited Storm Command Center"
	},

	2160	=> {
		typeID   => 2160,
		groupID  => 1027,
		typeName => "Standard Storm Command Center"
	},

	2161	=> {
		typeID   => 2161,
		groupID  => 25,
		typeName => "Crucifier"
	},

	2162	=> {
		typeID   => 2162,
		groupID  => 105,
		typeName => "Crucifier Blueprint"
	},

	2163	=> {
		typeID   => 2163,
		groupID  => 952,
		typeName => "CONCORD Collection Vessel"
	},

	2165	=> {
		typeID   => 2165,
		groupID  => 386,
		typeName => "Haunter Cruise Missile"
	},

	2173	=> {
		typeID   => 2173,
		groupID  => 100,
		typeName => "Infiltrator I"
	},

	2174	=> {
		typeID   => 2174,
		groupID  => 176,
		typeName => "Infiltrator I Blueprint"
	},

	2175	=> {
		typeID   => 2175,
		groupID  => 100,
		typeName => "Infiltrator II"
	},

	2176	=> {
		typeID   => 2176,
		groupID  => 176,
		typeName => "Infiltrator II Blueprint"
	},

	2178	=> {
		typeID   => 2178,
		groupID  => 1019,
		typeName => "Guristas Nova XL Cruise Missile"
	},

	2179	=> {
		typeID   => 2179,
		groupID  => 166,
		typeName => "Sansha Wrath Cruise Missile Blueprint"
	},

	2180	=> {
		typeID   => 2180,
		groupID  => 1019,
		typeName => "Guristas Scourge XL Cruise Missile"
	},

	2181	=> {
		typeID   => 2181,
		groupID  => 306,
		typeName => "Minmatar Diplomat Quarters"
	},

	2182	=> {
		typeID   => 2182,
		groupID  => 1019,
		typeName => "Guristas Inferno XL Cruise Missile"
	},

	2183	=> {
		typeID   => 2183,
		groupID  => 100,
		typeName => "Hammerhead I"
	},

	2184	=> {
		typeID   => 2184,
		groupID  => 176,
		typeName => "Hammerhead I Blueprint"
	},

	2185	=> {
		typeID   => 2185,
		groupID  => 100,
		typeName => "Hammerhead II"
	},

	2186	=> {
		typeID   => 2186,
		groupID  => 176,
		typeName => "Hammerhead II Blueprint"
	},

	2187	=> {
		typeID   => 2187,
		groupID  => 952,
		typeName => "Orca Container"
	},

	2188	=> {
		typeID   => 2188,
		groupID  => 1019,
		typeName => "Guristas Mjolnir XL Cruise Missile"
	},

	2189	=> {
		typeID   => 2189,
		groupID  => 952,
		typeName => "Drone Infested Dominix"
	},

	2190	=> {
		typeID   => 2190,
		groupID  => 1053,
		typeName => "Renyn Meten"
	},

	2191	=> {
		typeID   => 2191,
		groupID  => 1054,
		typeName => "Antem Neo"
	},

	2192	=> {
		typeID   => 2192,
		groupID  => 1052,
		typeName => "The Kundalini Manifest"
	},

	2193	=> {
		typeID   => 2193,
		groupID  => 100,
		typeName => "Praetor I"
	},

	2194	=> {
		typeID   => 2194,
		groupID  => 176,
		typeName => "Praetor I Blueprint"
	},

	2195	=> {
		typeID   => 2195,
		groupID  => 100,
		typeName => "Praetor II"
	},

	2196	=> {
		typeID   => 2196,
		groupID  => 176,
		typeName => "Praetor II Blueprint"
	},

	2197	=> {
		typeID   => 2197,
		groupID  => 314,
		typeName => "Environmentally-friendly Mining Equipment"
	},

	2198	=> {
		typeID   => 2198,
		groupID  => 314,
		typeName => "Crate of Environmentally-friendly Mining Equipment"
	},

	2199	=> {
		typeID   => 2199,
		groupID  => 314,
		typeName => "Prototype Body Armor Fabric "
	},

	2200	=> {
		typeID   => 2200,
		groupID  => 314,
		typeName => "Crate of Prototype Body Armor Fabric "
	},

	2201	=> {
		typeID   => 2201,
		groupID  => 314,
		typeName => "Riot Interdiction Team"
	},

	2202	=> {
		typeID   => 2202,
		groupID  => 314,
		typeName => "Riot Interdiction Teams"
	},

	2203	=> {
		typeID   => 2203,
		groupID  => 100,
		typeName => "Acolyte I"
	},

	2204	=> {
		typeID   => 2204,
		groupID  => 176,
		typeName => "Acolyte I Blueprint"
	},

	2205	=> {
		typeID   => 2205,
		groupID  => 100,
		typeName => "Acolyte II"
	},

	2206	=> {
		typeID   => 2206,
		groupID  => 176,
		typeName => "Acolyte II Blueprint"
	},

	2207	=> {
		typeID   => 2207,
		groupID  => 1054,
		typeName => "Vylade Dien"
	},

	2208	=> {
		typeID   => 2208,
		groupID  => 1054,
		typeName => "Uitra Telen"
	},

	2209	=> {
		typeID   => 2209,
		groupID  => 1054,
		typeName => "Arnon Epithalamus"
	},

	2210	=> {
		typeID   => 2210,
		groupID  => 89,
		typeName => "Banshee Torpedo"
	},

	2211	=> {
		typeID   => 2211,
		groupID  => 166,
		typeName => "Sansha Juggernaut Torpedo Blueprint"
	},

	2212	=> {
		typeID   => 2212,
		groupID  => 385,
		typeName => "Ghost Heavy Missile"
	},

	2213	=> {
		typeID   => 2213,
		groupID  => 166,
		typeName => "Ghost Heavy Missile Blueprint"
	},

	2214	=> {
		typeID   => 2214,
		groupID  => 952,
		typeName => "Guard Post"
	},

	2215	=> {
		typeID   => 2215,
		groupID  => 314,
		typeName => "Amarr TIL-1A Nexus Chips "
	},

	2216	=> {
		typeID   => 2216,
		groupID  => 314,
		typeName => "Crate of Amarr TIL-1A Nexus Chips"
	},

	2217	=> {
		typeID   => 2217,
		groupID  => 283,
		typeName => "Preacher"
	},

	2218	=> {
		typeID   => 2218,
		groupID  => 306,
		typeName => "Locced's Bribe"
	},

	2219	=> {
		typeID   => 2219,
		groupID  => 314,
		typeName => "Large Group of Civilian Workers and Dependents"
	},

	2220	=> {
		typeID   => 2220,
		groupID  => 314,
		typeName => "Civilian Workers and Dependents"
	},

	2221	=> {
		typeID   => 2221,
		groupID  => 314,
		typeName => "Manportable Electromagnetic Pulse Weapons "
	},

	2222	=> {
		typeID   => 2222,
		groupID  => 673,
		typeName => "Scions of the Superior Gene"
	},

	2223	=> {
		typeID   => 2223,
		groupID  => 306,
		typeName => "Preacher's Quarters"
	},

	2224	=> {
		typeID   => 2224,
		groupID  => 1006,
		typeName => "Tolmak's Zealots"
	},

	2226	=> {
		typeID   => 2226,
		groupID  => 283,
		typeName => "Sisters of Eve Negotiator"
	},

	2232	=> {
		typeID   => 2232,
		groupID  => 306,
		typeName => "Life pod"
	},

	2233	=> {
		typeID   => 2233,
		groupID  => 1025,
		typeName => "Customs Office"
	},

	2234	=> {
		typeID   => 2234,
		groupID  => 226,
		typeName => "Sansha's Battletower"
	},

	2239	=> {
		typeID   => 2239,
		groupID  => 283,
		typeName => "Oura Madusaari"
	},

	2240	=> {
		typeID   => 2240,
		groupID  => 283,
		typeName => "Harroken Ikero"
	},

	2244	=> {
		typeID   => 2244,
		groupID  => 283,
		typeName => "Fajah Ateshi"
	},

	2250	=> {
		typeID   => 2250,
		groupID  => 314,
		typeName => "Neurowave Pattern Scanner"
	},

	2252	=> {
		typeID   => 2252,
		groupID  => 226,
		typeName => "Roden Station"
	},

	2254	=> {
		typeID   => 2254,
		groupID  => 1027,
		typeName => "Temperate Command Center"
	},

	2256	=> {
		typeID   => 2256,
		groupID  => 1030,
		typeName => "Temperate Launchpad"
	},

	2257	=> {
		typeID   => 2257,
		groupID  => 1029,
		typeName => "Ice Storage Facility"
	},

	2258	=> {
		typeID   => 2258,
		groupID  => 202,
		typeName => "ECCM - Omni II"
	},

	2259	=> {
		typeID   => 2259,
		groupID  => 202,
		typeName => "ECCM - Gravimetric II"
	},

	2260	=> {
		typeID   => 2260,
		groupID  => 202,
		typeName => "ECCM - Ladar II"
	},

	2261	=> {
		typeID   => 2261,
		groupID  => 202,
		typeName => "ECCM - Magnetometric II"
	},

	2262	=> {
		typeID   => 2262,
		groupID  => 202,
		typeName => "ECCM - Radar II"
	},

	2263	=> {
		typeID   => 2263,
		groupID  => 12,
		typeName => "Planetary Launch Container"
	},

	2267	=> {
		typeID   => 2267,
		groupID  => 1032,
		typeName => "Base Metals"
	},

	2268	=> {
		typeID   => 2268,
		groupID  => 1033,
		typeName => "Aqueous Liquids"
	},

	2270	=> {
		typeID   => 2270,
		groupID  => 1032,
		typeName => "Noble Metals"
	},

	2272	=> {
		typeID   => 2272,
		groupID  => 1032,
		typeName => "Heavy Metals"
	},

	2280	=> {
		typeID   => 2280,
		groupID  => 1036,
		typeName => "Link"
	},

	2281	=> {
		typeID   => 2281,
		groupID  => 77,
		typeName => "Adaptive Invulnerability Field II"
	},

	2282	=> {
		typeID   => 2282,
		groupID  => 157,
		typeName => "Adaptive Invulnerability Field II Blueprint"
	},

	2284	=> {
		typeID   => 2284,
		groupID  => 226,
		typeName => "Megathron (Roden)"
	},

	2285	=> {
		typeID   => 2285,
		groupID  => 226,
		typeName => "Dominix (Roden)"
	},

	2286	=> {
		typeID   => 2286,
		groupID  => 1035,
		typeName => "Planktic Colonies"
	},

	2287	=> {
		typeID   => 2287,
		groupID  => 1035,
		typeName => "Complex Organisms"
	},

	2288	=> {
		typeID   => 2288,
		groupID  => 1035,
		typeName => "Carbon Compounds"
	},

	2289	=> {
		typeID   => 2289,
		groupID  => 77,
		typeName => "Explosive Deflection Field I"
	},

	2290	=> {
		typeID   => 2290,
		groupID  => 157,
		typeName => "Explosive Deflection Field I Blueprint"
	},

	2291	=> {
		typeID   => 2291,
		groupID  => 77,
		typeName => "Kinetic Deflection Field I"
	},

	2292	=> {
		typeID   => 2292,
		groupID  => 157,
		typeName => "Kinetic Deflection Field I Blueprint"
	},

	2293	=> {
		typeID   => 2293,
		groupID  => 77,
		typeName => "EM Ward Field I"
	},

	2294	=> {
		typeID   => 2294,
		groupID  => 157,
		typeName => "EM Ward Field I Blueprint"
	},

	2295	=> {
		typeID   => 2295,
		groupID  => 77,
		typeName => "Thermal Dissipation Field I"
	},

	2296	=> {
		typeID   => 2296,
		groupID  => 157,
		typeName => "Thermal Dissipation Field I Blueprint"
	},

	2297	=> {
		typeID   => 2297,
		groupID  => 77,
		typeName => "Explosive Deflection Field II"
	},

	2298	=> {
		typeID   => 2298,
		groupID  => 157,
		typeName => "Explosive Deflection Field II Blueprint"
	},

	2299	=> {
		typeID   => 2299,
		groupID  => 77,
		typeName => "Kinetic Deflection Field II"
	},

	2300	=> {
		typeID   => 2300,
		groupID  => 157,
		typeName => "Kinetic Deflection Field II Blueprint"
	},

	2301	=> {
		typeID   => 2301,
		groupID  => 77,
		typeName => "EM Ward Field II"
	},

	2302	=> {
		typeID   => 2302,
		groupID  => 157,
		typeName => "EM Ward Field II Blueprint"
	},

	2303	=> {
		typeID   => 2303,
		groupID  => 77,
		typeName => "Thermal Dissipation Field II"
	},

	2304	=> {
		typeID   => 2304,
		groupID  => 157,
		typeName => "Thermal Dissipation Field II Blueprint"
	},

	2305	=> {
		typeID   => 2305,
		groupID  => 1035,
		typeName => "Autotrophs"
	},

	2306	=> {
		typeID   => 2306,
		groupID  => 1032,
		typeName => "Non-CS Crystals"
	},

	2307	=> {
		typeID   => 2307,
		groupID  => 1032,
		typeName => "Felsic Magma"
	},

	2308	=> {
		typeID   => 2308,
		groupID  => 1033,
		typeName => "Suspended Plasma"
	},

	2309	=> {
		typeID   => 2309,
		groupID  => 1033,
		typeName => "Ionic Solutions"
	},

	2310	=> {
		typeID   => 2310,
		groupID  => 1033,
		typeName => "Noble Gas"
	},

	2311	=> {
		typeID   => 2311,
		groupID  => 1033,
		typeName => "Reactive Gas"
	},

	2312	=> {
		typeID   => 2312,
		groupID  => 1034,
		typeName => "Supertensile Plastics"
	},

	2317	=> {
		typeID   => 2317,
		groupID  => 1034,
		typeName => "Oxides"
	},

	2319	=> {
		typeID   => 2319,
		groupID  => 1034,
		typeName => "Test Cultures"
	},

	2321	=> {
		typeID   => 2321,
		groupID  => 1034,
		typeName => "Polyaramids"
	},

	2327	=> {
		typeID   => 2327,
		groupID  => 1034,
		typeName => "Microfiber Shielding"
	},

	2328	=> {
		typeID   => 2328,
		groupID  => 1034,
		typeName => "Water-Cooled CPU"
	},

	2329	=> {
		typeID   => 2329,
		groupID  => 1034,
		typeName => "Biocells"
	},

	2331	=> {
		typeID   => 2331,
		groupID  => 57,
		typeName => "Shield Power Relay I"
	},

	2332	=> {
		typeID   => 2332,
		groupID  => 137,
		typeName => "Shield Power Relay I Blueprint"
	},

	2333	=> {
		typeID   => 2333,
		groupID  => 49,
		typeName => "Survey Scanner II"
	},

	2334	=> {
		typeID   => 2334,
		groupID  => 129,
		typeName => "Survey Scanner II Blueprint"
	},

	2335	=> {
		typeID   => 2335,
		groupID  => 226,
		typeName => "Mysterious Probe"
	},

	2341	=> {
		typeID   => 2341,
		groupID  => 82,
		typeName => "Passive Targeter II"
	},

	2342	=> {
		typeID   => 2342,
		groupID  => 161,
		typeName => "Passive Targeter II Blueprint"
	},

	2344	=> {
		typeID   => 2344,
		groupID  => 1040,
		typeName => "Condensates"
	},

	2345	=> {
		typeID   => 2345,
		groupID  => 1040,
		typeName => "Camera Drones"
	},

	2346	=> {
		typeID   => 2346,
		groupID  => 1040,
		typeName => "Synthetic Synapses"
	},

	2348	=> {
		typeID   => 2348,
		groupID  => 1040,
		typeName => "Gel-Matrix Biopaste"
	},

	2349	=> {
		typeID   => 2349,
		groupID  => 1040,
		typeName => "Supercomputers"
	},

	2351	=> {
		typeID   => 2351,
		groupID  => 1040,
		typeName => "Smartfab Units"
	},

	2352	=> {
		typeID   => 2352,
		groupID  => 1040,
		typeName => "Nuclear Reactors"
	},

	2354	=> {
		typeID   => 2354,
		groupID  => 1040,
		typeName => "Neocoms"
	},

	2355	=> {
		typeID   => 2355,
		groupID  => 63,
		typeName => "Small Hull Repairer II"
	},

	2356	=> {
		typeID   => 2356,
		groupID  => 143,
		typeName => "Small Hull Repairer II Blueprint"
	},

	2358	=> {
		typeID   => 2358,
		groupID  => 1040,
		typeName => "Biotech Research Reports"
	},

	2360	=> {
		typeID   => 2360,
		groupID  => 1040,
		typeName => "Industrial Explosives"
	},

	2361	=> {
		typeID   => 2361,
		groupID  => 1040,
		typeName => "Hermetic Membranes"
	},

	2363	=> {
		typeID   => 2363,
		groupID  => 205,
		typeName => "Heat Sink I"
	},

	2364	=> {
		typeID   => 2364,
		groupID  => 205,
		typeName => "Heat Sink II"
	},

	2366	=> {
		typeID   => 2366,
		groupID  => 1040,
		typeName => "Hazmat Detection Systems"
	},

	2367	=> {
		typeID   => 2367,
		groupID  => 1040,
		typeName => "Cryoprotectant Solution"
	},

	2368	=> {
		typeID   => 2368,
		groupID  => 314,
		typeName => "Broken Organic Mortar Applicators"
	},

	2369	=> {
		typeID   => 2369,
		groupID  => 314,
		typeName => "Broken Sterile Conduits"
	},

	2370	=> {
		typeID   => 2370,
		groupID  => 572,
		typeName => "Serpentis Initiate"
	},

	2371	=> {
		typeID   => 2371,
		groupID  => 314,
		typeName => "Broken Nano-Factory"
	},

	2372	=> {
		typeID   => 2372,
		groupID  => 550,
		typeName => "Angel Rogue"
	},

	2373	=> {
		typeID   => 2373,
		groupID  => 314,
		typeName => "Broken Self-Harmonizing Power Core"
	},

	2374	=> {
		typeID   => 2374,
		groupID  => 314,
		typeName => "Broken Recursive Computing Module"
	},

	2375	=> {
		typeID   => 2375,
		groupID  => 314,
		typeName => "Broken Broadcast Node"
	},

	2376	=> {
		typeID   => 2376,
		groupID  => 314,
		typeName => "Broken Integrity Response Drones"
	},

	2377	=> {
		typeID   => 2377,
		groupID  => 314,
		typeName => "Broken Wetware Mainframe"
	},

	2378	=> {
		typeID   => 2378,
		groupID  => 675,
		typeName => "Mysterious Shuttle"
	},

	2379	=> {
		typeID   => 2379,
		groupID  => 572,
		typeName => "Serpentis Spy"
	},

	2381	=> {
		typeID   => 2381,
		groupID  => 571,
		typeName => "Serpentis Chief Spy"
	},

	2382	=> {
		typeID   => 2382,
		groupID  => 562,
		typeName => "Guristas Arrogator"
	},

	2383	=> {
		typeID   => 2383,
		groupID  => 562,
		typeName => "Guristas Invader"
	},

	2384	=> {
		typeID   => 2384,
		groupID  => 562,
		typeName => "Guristas Imputor"
	},

	2385	=> {
		typeID   => 2385,
		groupID  => 562,
		typeName => "Guristas Despoiler"
	},

	2386	=> {
		typeID   => 2386,
		groupID  => 562,
		typeName => "Guristas Plunderer"
	},

	2387	=> {
		typeID   => 2387,
		groupID  => 561,
		typeName => "Guristas Silencer"
	},

	2389	=> {
		typeID   => 2389,
		groupID  => 1042,
		typeName => "Plasmoids"
	},

	2390	=> {
		typeID   => 2390,
		groupID  => 1042,
		typeName => "Electrolytes"
	},

	2392	=> {
		typeID   => 2392,
		groupID  => 1042,
		typeName => "Oxidizing Compound"
	},

	2393	=> {
		typeID   => 2393,
		groupID  => 1042,
		typeName => "Bacteria"
	},

	2395	=> {
		typeID   => 2395,
		groupID  => 1042,
		typeName => "Proteins"
	},

	2396	=> {
		typeID   => 2396,
		groupID  => 1042,
		typeName => "Biofuels"
	},

	2397	=> {
		typeID   => 2397,
		groupID  => 1042,
		typeName => "Industrial Fibers"
	},

	2398	=> {
		typeID   => 2398,
		groupID  => 1042,
		typeName => "Reactive Metals"
	},

	2399	=> {
		typeID   => 2399,
		groupID  => 1042,
		typeName => "Precious Metals"
	},

	2400	=> {
		typeID   => 2400,
		groupID  => 1042,
		typeName => "Toxic Metals"
	},

	2401	=> {
		typeID   => 2401,
		groupID  => 1042,
		typeName => "Chiral Structures"
	},

	2403	=> {
		typeID   => 2403,
		groupID  => 1241,
		typeName => "Advanced Planetology"
	},

	2404	=> {
		typeID   => 2404,
		groupID  => 509,
		typeName => "Light Missile Launcher II"
	},

	2405	=> {
		typeID   => 2405,
		groupID  => 136,
		typeName => "Light Missile Launcher II Blueprint"
	},

	2406	=> {
		typeID   => 2406,
		groupID  => 1241,
		typeName => "Planetology"
	},

	2407	=> {
		typeID   => 2407,
		groupID  => 226,
		typeName => "The Terminus Stream"
	},

	2409	=> {
		typeID   => 2409,
		groupID  => 1026,
		typeName => "Barren Aqueous Liquid Extractor"
	},

	2410	=> {
		typeID   => 2410,
		groupID  => 510,
		typeName => "Heavy Missile Launcher II"
	},

	2411	=> {
		typeID   => 2411,
		groupID  => 136,
		typeName => "Heavy Missile Launcher II Blueprint"
	},

	2412	=> {
		typeID   => 2412,
		groupID  => 1026,
		typeName => "Temperate Aqueous Liquid Extractor"
	},

	2413	=> {
		typeID   => 2413,
		groupID  => 1026,
		typeName => "Storm Aqueous Liquid Extractor"
	},

	2414	=> {
		typeID   => 2414,
		groupID  => 1026,
		typeName => "Oceanic Aqueous Liquid Extractor"
	},

	2415	=> {
		typeID   => 2415,
		groupID  => 1026,
		typeName => "Ice Aqueous Liquid Extractor"
	},

	2416	=> {
		typeID   => 2416,
		groupID  => 1026,
		typeName => "Gas Aqueous Liquid Extractor"
	},

	2417	=> {
		typeID   => 2417,
		groupID  => 1026,
		typeName => "Plasma Suspended Plasma Extractor"
	},

	2418	=> {
		typeID   => 2418,
		groupID  => 1026,
		typeName => "Lava Suspended Plasma Extractor"
	},

	2419	=> {
		typeID   => 2419,
		groupID  => 1026,
		typeName => "Storm Suspended Plasma Extractor"
	},

	2420	=> {
		typeID   => 2420,
		groupID  => 508,
		typeName => "Torpedo Launcher II"
	},

	2421	=> {
		typeID   => 2421,
		groupID  => 136,
		typeName => "Torpedo Launcher II Blueprint"
	},

	2422	=> {
		typeID   => 2422,
		groupID  => 1026,
		typeName => "Storm Ionic Solutions Extractor"
	},

	2423	=> {
		typeID   => 2423,
		groupID  => 1026,
		typeName => "Ice Noble Gas Extractor"
	},

	2424	=> {
		typeID   => 2424,
		groupID  => 1026,
		typeName => "Gas Ionic Solutions Extractor"
	},

	2425	=> {
		typeID   => 2425,
		groupID  => 1026,
		typeName => "Storm Noble Gas Extractor"
	},

	2426	=> {
		typeID   => 2426,
		groupID  => 1026,
		typeName => "Gas Noble Gas Extractor"
	},

	2427	=> {
		typeID   => 2427,
		groupID  => 1026,
		typeName => "Gas Reactive Gas Extractor"
	},

	2428	=> {
		typeID   => 2428,
		groupID  => 1026,
		typeName => "Lava Base Metals Extractor"
	},

	2429	=> {
		typeID   => 2429,
		groupID  => 1026,
		typeName => "Plasma Base Metals Extractor"
	},

	2430	=> {
		typeID   => 2430,
		groupID  => 1026,
		typeName => "Barren Base Metals Extractor"
	},

	2431	=> {
		typeID   => 2431,
		groupID  => 1026,
		typeName => "Storm Base Metals Extractor"
	},

	2432	=> {
		typeID   => 2432,
		groupID  => 1026,
		typeName => "Ice Microorganisms Extractor"
	},

	2433	=> {
		typeID   => 2433,
		groupID  => 1026,
		typeName => "Gas Base Metals Extractor"
	},

	2434	=> {
		typeID   => 2434,
		groupID  => 1026,
		typeName => "Plasma Noble Metals Extractor"
	},

	2435	=> {
		typeID   => 2435,
		groupID  => 1026,
		typeName => "Barren Noble Metals Extractor"
	},

	2436	=> {
		typeID   => 2436,
		groupID  => 100,
		typeName => "Wasp II"
	},

	2437	=> {
		typeID   => 2437,
		groupID  => 176,
		typeName => "Wasp II Blueprint"
	},

	2438	=> {
		typeID   => 2438,
		groupID  => 1026,
		typeName => "Ice Planktic Colonies Extractor"
	},

	2439	=> {
		typeID   => 2439,
		groupID  => 1026,
		typeName => "Lava Heavy Metals Extractor"
	},

	2440	=> {
		typeID   => 2440,
		groupID  => 1026,
		typeName => "Plasma Heavy Metals Extractor"
	},

	2441	=> {
		typeID   => 2441,
		groupID  => 1026,
		typeName => "Ice Heavy Metals Extractor"
	},

	2442	=> {
		typeID   => 2442,
		groupID  => 1026,
		typeName => "Lava Non-CS Crystals Extractor"
	},

	2443	=> {
		typeID   => 2443,
		groupID  => 1026,
		typeName => "Plasma Non-CS Crystals Extractor"
	},

	2444	=> {
		typeID   => 2444,
		groupID  => 100,
		typeName => "Ogre I"
	},

	2445	=> {
		typeID   => 2445,
		groupID  => 176,
		typeName => "Ogre I Blueprint"
	},

	2446	=> {
		typeID   => 2446,
		groupID  => 100,
		typeName => "Ogre II"
	},

	2447	=> {
		typeID   => 2447,
		groupID  => 176,
		typeName => "Ogre II Blueprint"
	},

	2448	=> {
		typeID   => 2448,
		groupID  => 1026,
		typeName => "Lava Felsic Magma Extractor"
	},

	2449	=> {
		typeID   => 2449,
		groupID  => 1026,
		typeName => "Barren Microorganisms Extractor"
	},

	2450	=> {
		typeID   => 2450,
		groupID  => 1026,
		typeName => "Temperate Microorganisms Extractor"
	},

	2451	=> {
		typeID   => 2451,
		groupID  => 1026,
		typeName => "Oceanic Microorganisms Extractor"
	},

	2452	=> {
		typeID   => 2452,
		groupID  => 1026,
		typeName => "Oceanic Planktic Colonies Extractor"
	},

	2453	=> {
		typeID   => 2453,
		groupID  => 1026,
		typeName => "Temperate Complex Organisms Extractor"
	},

	2454	=> {
		typeID   => 2454,
		groupID  => 100,
		typeName => "Hobgoblin I"
	},

	2455	=> {
		typeID   => 2455,
		groupID  => 176,
		typeName => "Hobgoblin I Blueprint"
	},

	2456	=> {
		typeID   => 2456,
		groupID  => 100,
		typeName => "Hobgoblin II"
	},

	2457	=> {
		typeID   => 2457,
		groupID  => 176,
		typeName => "Hobgoblin II Blueprint"
	},

	2458	=> {
		typeID   => 2458,
		groupID  => 1026,
		typeName => "Oceanic Complex Organisms Extractor"
	},

	2459	=> {
		typeID   => 2459,
		groupID  => 1026,
		typeName => "Barren Carbon Compounds Extractor"
	},

	2460	=> {
		typeID   => 2460,
		groupID  => 1026,
		typeName => "Temperate Carbon Compounds Extractor"
	},

	2461	=> {
		typeID   => 2461,
		groupID  => 1026,
		typeName => "Oceanic Carbon Compounds Extractor"
	},

	2462	=> {
		typeID   => 2462,
		groupID  => 1026,
		typeName => "Temperate Autotrophs Extractor"
	},

	2463	=> {
		typeID   => 2463,
		groupID  => 1034,
		typeName => "Nanites"
	},

	2464	=> {
		typeID   => 2464,
		groupID  => 100,
		typeName => "Hornet I"
	},

	2465	=> {
		typeID   => 2465,
		groupID  => 176,
		typeName => "Hornet I Blueprint"
	},

	2466	=> {
		typeID   => 2466,
		groupID  => 100,
		typeName => "Hornet II"
	},

	2467	=> {
		typeID   => 2467,
		groupID  => 176,
		typeName => "Hornet II Blueprint"
	},

	2468	=> {
		typeID   => 2468,
		groupID  => 226,
		typeName => "Fortified Drone Structure II"
	},

	2469	=> {
		typeID   => 2469,
		groupID  => 1028,
		typeName => "Lava Basic Industry Facility"
	},

	2470	=> {
		typeID   => 2470,
		groupID  => 1028,
		typeName => "Lava Advanced Industry Facility"
	},

	2471	=> {
		typeID   => 2471,
		groupID  => 1028,
		typeName => "Plasma Basic Industry Facility"
	},

	2472	=> {
		typeID   => 2472,
		groupID  => 1028,
		typeName => "Plasma Advanced Industry Facility"
	},

	2473	=> {
		typeID   => 2473,
		groupID  => 1028,
		typeName => "Barren Basic Industry Facility"
	},

	2474	=> {
		typeID   => 2474,
		groupID  => 1028,
		typeName => "Barren Advanced Industry Facility"
	},

	2475	=> {
		typeID   => 2475,
		groupID  => 1028,
		typeName => "Barren High-Tech Production Plant"
	},

	2476	=> {
		typeID   => 2476,
		groupID  => 100,
		typeName => "Berserker I"
	},

	2477	=> {
		typeID   => 2477,
		groupID  => 176,
		typeName => "Berserker I Blueprint"
	},

	2478	=> {
		typeID   => 2478,
		groupID  => 100,
		typeName => "Berserker II"
	},

	2479	=> {
		typeID   => 2479,
		groupID  => 176,
		typeName => "Berserker II Blueprint"
	},

	2480	=> {
		typeID   => 2480,
		groupID  => 1028,
		typeName => "Temperate Advanced Industry Facility"
	},

	2481	=> {
		typeID   => 2481,
		groupID  => 1028,
		typeName => "Temperate Basic Industry Facility"
	},

	2482	=> {
		typeID   => 2482,
		groupID  => 1028,
		typeName => "Temperate High-Tech Production Plant"
	},

	2483	=> {
		typeID   => 2483,
		groupID  => 1028,
		typeName => "Storm Basic Industry Facility"
	},

	2484	=> {
		typeID   => 2484,
		groupID  => 1028,
		typeName => "Storm Advanced Industry Facility"
	},

	2485	=> {
		typeID   => 2485,
		groupID  => 1028,
		typeName => "Oceanic Advanced Industry Facility"
	},

	2486	=> {
		typeID   => 2486,
		groupID  => 100,
		typeName => "Warrior I"
	},

	2487	=> {
		typeID   => 2487,
		groupID  => 176,
		typeName => "Warrior I Blueprint"
	},

	2488	=> {
		typeID   => 2488,
		groupID  => 100,
		typeName => "Warrior II"
	},

	2489	=> {
		typeID   => 2489,
		groupID  => 176,
		typeName => "Warrior II Blueprint"
	},

	2490	=> {
		typeID   => 2490,
		groupID  => 1028,
		typeName => "Oceanic Basic Industry Facility"
	},

	2491	=> {
		typeID   => 2491,
		groupID  => 1028,
		typeName => "Ice Advanced Industry Facility"
	},

	2492	=> {
		typeID   => 2492,
		groupID  => 1028,
		typeName => "Gas Basic Industry Facility"
	},

	2493	=> {
		typeID   => 2493,
		groupID  => 1028,
		typeName => "Ice Basic Industry Facility"
	},

	2494	=> {
		typeID   => 2494,
		groupID  => 1028,
		typeName => "Gas Advanced Industry Facility"
	},

	2495	=> {
		typeID   => 2495,
		groupID  => 1241,
		typeName => "Interplanetary Consolidation"
	},

	2496	=> {
		typeID   => 2496,
		groupID  => 15,
		typeName => "Minmatar Hub"
	},

	2497	=> {
		typeID   => 2497,
		groupID  => 15,
		typeName => "Minmatar Industrial Station"
	},

	2498	=> {
		typeID   => 2498,
		groupID  => 15,
		typeName => "Minmatar Military Station"
	},

	2499	=> {
		typeID   => 2499,
		groupID  => 15,
		typeName => "Minmatar Mining Station"
	},

	2500	=> {
		typeID   => 2500,
		groupID  => 15,
		typeName => "Minmatar Research Station"
	},

	2501	=> {
		typeID   => 2501,
		groupID  => 15,
		typeName => "Minmatar Station"
	},

	2502	=> {
		typeID   => 2502,
		groupID  => 15,
		typeName => "Minmatar Trade Post"
	},

	2505	=> {
		typeID   => 2505,
		groupID  => 1241,
		typeName => "Command Center Upgrades"
	},

	2506	=> {
		typeID   => 2506,
		groupID  => 89,
		typeName => "Mjolnir Torpedo"
	},

	2507	=> {
		typeID   => 2507,
		groupID  => 166,
		typeName => "Mjolnir Torpedo Blueprint"
	},

	2508	=> {
		typeID   => 2508,
		groupID  => 89,
		typeName => "Nova Torpedo"
	},

	2509	=> {
		typeID   => 2509,
		groupID  => 166,
		typeName => "Nova Torpedo Blueprint"
	},

	2510	=> {
		typeID   => 2510,
		groupID  => 89,
		typeName => "Inferno Torpedo"
	},

	2511	=> {
		typeID   => 2511,
		groupID  => 166,
		typeName => "Inferno Torpedo Blueprint"
	},

	2512	=> {
		typeID   => 2512,
		groupID  => 387,
		typeName => "Mjolnir Rocket"
	},

	2513	=> {
		typeID   => 2513,
		groupID  => 166,
		typeName => "Mjolnir Rocket Blueprint"
	},

	2514	=> {
		typeID   => 2514,
		groupID  => 387,
		typeName => "Inferno Rocket"
	},

	2515	=> {
		typeID   => 2515,
		groupID  => 166,
		typeName => "Inferno Rocket Blueprint"
	},

	2516	=> {
		typeID   => 2516,
		groupID  => 387,
		typeName => "Nova Rocket"
	},

	2517	=> {
		typeID   => 2517,
		groupID  => 166,
		typeName => "Nova Rocket Blueprint"
	},

	2524	=> {
		typeID   => 2524,
		groupID  => 1027,
		typeName => "Barren Command Center"
	},

	2525	=> {
		typeID   => 2525,
		groupID  => 1027,
		typeName => "Oceanic Command Center"
	},

	2528	=> {
		typeID   => 2528,
		groupID  => 353,
		typeName => "SpaceAnchor"
	},

	2529	=> {
		typeID   => 2529,
		groupID  => 295,
		typeName => "Explosive Deflection Amplifier I"
	},

	2530	=> {
		typeID   => 2530,
		groupID  => 296,
		typeName => "Explosive Deflection Amplifier I Blueprint"
	},

	2531	=> {
		typeID   => 2531,
		groupID  => 295,
		typeName => "Explosive Deflection Amplifier II"
	},

	2532	=> {
		typeID   => 2532,
		groupID  => 296,
		typeName => "Explosive Deflection Amplifier II Blueprint"
	},

	2533	=> {
		typeID   => 2533,
		groupID  => 1027,
		typeName => "Ice Command Center"
	},

	2534	=> {
		typeID   => 2534,
		groupID  => 1027,
		typeName => "Gas Command Center"
	},

	2535	=> {
		typeID   => 2535,
		groupID  => 1029,
		typeName => "Oceanic Storage Facility"
	},

	2536	=> {
		typeID   => 2536,
		groupID  => 1029,
		typeName => "Gas Storage Facility"
	},

	2537	=> {
		typeID   => 2537,
		groupID  => 295,
		typeName => "Thermal Dissipation Amplifier I"
	},

	2538	=> {
		typeID   => 2538,
		groupID  => 296,
		typeName => "Thermal Dissipation Amplifier I Blueprint"
	},

	2539	=> {
		typeID   => 2539,
		groupID  => 295,
		typeName => "Thermal Dissipation Amplifier II"
	},

	2540	=> {
		typeID   => 2540,
		groupID  => 296,
		typeName => "Thermal Dissipation Amplifier II Blueprint"
	},

	2541	=> {
		typeID   => 2541,
		groupID  => 1029,
		typeName => "Barren Storage Facility"
	},

	2542	=> {
		typeID   => 2542,
		groupID  => 1030,
		typeName => "Oceanic Launchpad"
	},

	2543	=> {
		typeID   => 2543,
		groupID  => 1030,
		typeName => "Gas Launchpad"
	},

	2544	=> {
		typeID   => 2544,
		groupID  => 1030,
		typeName => "Barren Launchpad"
	},

	2545	=> {
		typeID   => 2545,
		groupID  => 295,
		typeName => "Kinetic Deflection Amplifier I"
	},

	2546	=> {
		typeID   => 2546,
		groupID  => 296,
		typeName => "Kinetic Deflection Amplifier I Blueprint"
	},

	2547	=> {
		typeID   => 2547,
		groupID  => 295,
		typeName => "Kinetic Deflection Amplifier II"
	},

	2548	=> {
		typeID   => 2548,
		groupID  => 296,
		typeName => "Kinetic Deflection Amplifier II Blueprint"
	},

	2549	=> {
		typeID   => 2549,
		groupID  => 1027,
		typeName => "Lava Command Center"
	},

	2550	=> {
		typeID   => 2550,
		groupID  => 1027,
		typeName => "Storm Command Center"
	},

	2551	=> {
		typeID   => 2551,
		groupID  => 1027,
		typeName => "Plasma Command Center"
	},

	2552	=> {
		typeID   => 2552,
		groupID  => 1030,
		typeName => "Ice Launchpad"
	},

	2553	=> {
		typeID   => 2553,
		groupID  => 295,
		typeName => "EM Ward Amplifier II"
	},

	2554	=> {
		typeID   => 2554,
		groupID  => 296,
		typeName => "EM Ward Amplifier II Blueprint"
	},

	2555	=> {
		typeID   => 2555,
		groupID  => 1030,
		typeName => "Lava Launchpad"
	},

	2556	=> {
		typeID   => 2556,
		groupID  => 1030,
		typeName => "Plasma Launchpad"
	},

	2557	=> {
		typeID   => 2557,
		groupID  => 1030,
		typeName => "Storm Launchpad"
	},

	2558	=> {
		typeID   => 2558,
		groupID  => 1029,
		typeName => "Lava Storage Facility"
	},

	2559	=> {
		typeID   => 2559,
		groupID  => 201,
		typeName => "Ladar ECM II"
	},

	2560	=> {
		typeID   => 2560,
		groupID  => 1029,
		typeName => "Plasma Storage Facility"
	},

	2561	=> {
		typeID   => 2561,
		groupID  => 1029,
		typeName => "Storm Storage Facility"
	},

	2562	=> {
		typeID   => 2562,
		groupID  => 1029,
		typeName => "Temperate Storage Facility"
	},

	2563	=> {
		typeID   => 2563,
		groupID  => 201,
		typeName => "Magnetometric ECM II"
	},

	2567	=> {
		typeID   => 2567,
		groupID  => 201,
		typeName => "Multispectral ECM II"
	},

	2571	=> {
		typeID   => 2571,
		groupID  => 201,
		typeName => "Gravimetric ECM II"
	},

	2573	=> {
		typeID   => 2573,
		groupID  => 226,
		typeName => "The Solitaire"
	},

	2574	=> {
		typeID   => 2574,
		groupID  => 1027,
		typeName => "Improved Storm Command Center"
	},

	2575	=> {
		typeID   => 2575,
		groupID  => 201,
		typeName => "Radar ECM II"
	},

	2576	=> {
		typeID   => 2576,
		groupID  => 1027,
		typeName => "Advanced Storm Command Center"
	},

	2577	=> {
		typeID   => 2577,
		groupID  => 1027,
		typeName => "Elite Storm Command Center"
	},

	2578	=> {
		typeID   => 2578,
		groupID  => 1027,
		typeName => "Limited Temperate Command Center"
	},

	2579	=> {
		typeID   => 2579,
		groupID  => 203,
		typeName => "Gravimetric Backup Array I"
	},

	2580	=> {
		typeID   => 2580,
		groupID  => 203,
		typeName => "Gravimetric Backup Array II"
	},

	2581	=> {
		typeID   => 2581,
		groupID  => 1027,
		typeName => "Standard Temperate Command Center"
	},

	2582	=> {
		typeID   => 2582,
		groupID  => 1027,
		typeName => "Improved Temperate Command Center"
	},

	2583	=> {
		typeID   => 2583,
		groupID  => 203,
		typeName => "Ladar Backup Array I"
	},

	2584	=> {
		typeID   => 2584,
		groupID  => 203,
		typeName => "Ladar Backup Array II"
	},

	2585	=> {
		typeID   => 2585,
		groupID  => 1027,
		typeName => "Advanced Temperate Command Center"
	},

	2586	=> {
		typeID   => 2586,
		groupID  => 1027,
		typeName => "Elite Temperate Command Center"
	},

	2587	=> {
		typeID   => 2587,
		groupID  => 203,
		typeName => "Magnetometric Backup Array I"
	},

	2588	=> {
		typeID   => 2588,
		groupID  => 203,
		typeName => "Magnetometric Backup Array II"
	},

	2589	=> {
		typeID   => 2589,
		groupID  => 300,
		typeName => "Genolution Core Augmentation CA-2"
	},

	2591	=> {
		typeID   => 2591,
		groupID  => 203,
		typeName => "Multi Sensor Backup Array I"
	},

	2592	=> {
		typeID   => 2592,
		groupID  => 203,
		typeName => "Multi Sensor Backup Array II"
	},

	2594	=> {
		typeID   => 2594,
		groupID  => 667,
		typeName => "ISHAEKA Monalaz Commander"
	},

	2595	=> {
		typeID   => 2595,
		groupID  => 314,
		typeName => "Encoded Data Chip"
	},

	2596	=> {
		typeID   => 2596,
		groupID  => 314,
		typeName => "Crates of Clothing"
	},

	2597	=> {
		typeID   => 2597,
		groupID  => 314,
		typeName => "Crates of Command Reports"
	},

	2598	=> {
		typeID   => 2598,
		groupID  => 314,
		typeName => "Crates of Coolant"
	},

	2599	=> {
		typeID   => 2599,
		groupID  => 314,
		typeName => "Crates of Corporate Documents"
	},

	2601	=> {
		typeID   => 2601,
		groupID  => 314,
		typeName => "Crates of Data Sheets"
	},

	2602	=> {
		typeID   => 2602,
		groupID  => 314,
		typeName => "Crates of Drill Parts"
	},

	2603	=> {
		typeID   => 2603,
		groupID  => 763,
		typeName => "Nanofiber Internal Structure I"
	},

	2604	=> {
		typeID   => 2604,
		groupID  => 158,
		typeName => "Nanofiber Internal Structure I Blueprint"
	},

	2605	=> {
		typeID   => 2605,
		groupID  => 763,
		typeName => "Nanofiber Internal Structure II"
	},

	2606	=> {
		typeID   => 2606,
		groupID  => 158,
		typeName => "Nanofiber Internal Structure II Blueprint"
	},

	2608	=> {
		typeID   => 2608,
		groupID  => 314,
		typeName => "Crates of Fertilizer"
	},

	2610	=> {
		typeID   => 2610,
		groupID  => 314,
		typeName => "Crates of Frozen Food"
	},

	2612	=> {
		typeID   => 2612,
		groupID  => 226,
		typeName => "Hollow Asteroid"
	},

	2613	=> {
		typeID   => 2613,
		groupID  => 653,
		typeName => "Mjolnir Fury Light Missile"
	},

	2614	=> {
		typeID   => 2614,
		groupID  => 166,
		typeName => "Mjolnir Fury Light Missile Blueprint"
	},

	2615	=> {
		typeID   => 2615,
		groupID  => 314,
		typeName => "Crates of Garbage"
	},

	2616	=> {
		typeID   => 2616,
		groupID  => 314,
		typeName => "Large Crates of Coolant"
	},

	2617	=> {
		typeID   => 2617,
		groupID  => 314,
		typeName => "Crates of Guidance Systems"
	},

	2618	=> {
		typeID   => 2618,
		groupID  => 314,
		typeName => "Crates of Harroule Dryweed"
	},

	2619	=> {
		typeID   => 2619,
		groupID  => 314,
		typeName => "Crates of High-Tech Small Arms"
	},

	2620	=> {
		typeID   => 2620,
		groupID  => 314,
		typeName => "Crates of Liparer Cheese"
	},

	2621	=> {
		typeID   => 2621,
		groupID  => 656,
		typeName => "Inferno Fury Cruise Missile"
	},

	2622	=> {
		typeID   => 2622,
		groupID  => 166,
		typeName => "Inferno Fury Cruise Missile Blueprint"
	},

	2623	=> {
		typeID   => 2623,
		groupID  => 314,
		typeName => "Crates of Listening Post Recordings"
	},

	2624	=> {
		typeID   => 2624,
		groupID  => 314,
		typeName => "Crates of Mechanical Parts"
	},

	2626	=> {
		typeID   => 2626,
		groupID  => 314,
		typeName => "Crates of Missile Guidance Systems"
	},

	2627	=> {
		typeID   => 2627,
		groupID  => 314,
		typeName => "Crates of Mono-Cell Batteries"
	},

	2628	=> {
		typeID   => 2628,
		groupID  => 314,
		typeName => "Crates of Odd Data Crystals"
	},

	2629	=> {
		typeID   => 2629,
		groupID  => 655,
		typeName => "Scourge Fury Heavy Missile"
	},

	2630	=> {
		typeID   => 2630,
		groupID  => 166,
		typeName => "Scourge Fury Heavy Missile Blueprint"
	},

	2631	=> {
		typeID   => 2631,
		groupID  => 314,
		typeName => "Crates of OP Insecticide"
	},

	2632	=> {
		typeID   => 2632,
		groupID  => 314,
		typeName => "Crates of Oxygen"
	},

	2633	=> {
		typeID   => 2633,
		groupID  => 314,
		typeName => "Crates of Planetary Vehicles"
	},

	2635	=> {
		typeID   => 2635,
		groupID  => 314,
		typeName => "Crates of Protein Delicacies"
	},

	2636	=> {
		typeID   => 2636,
		groupID  => 314,
		typeName => "Crates of Raggy Dolls"
	},

	2637	=> {
		typeID   => 2637,
		groupID  => 656,
		typeName => "Inferno Precision Cruise Missile"
	},

	2638	=> {
		typeID   => 2638,
		groupID  => 166,
		typeName => "Inferno Precision Cruise Missile Blueprint"
	},

	2639	=> {
		typeID   => 2639,
		groupID  => 314,
		typeName => "Crates of Repair Parts"
	},

	2640	=> {
		typeID   => 2640,
		groupID  => 314,
		typeName => "Crates of Replacement Parts"
	},

	2641	=> {
		typeID   => 2641,
		groupID  => 314,
		typeName => "Crates of Reports"
	},

	2642	=> {
		typeID   => 2642,
		groupID  => 314,
		typeName => "Crates of Robotics"
	},

	2644	=> {
		typeID   => 2644,
		groupID  => 314,
		typeName => "Crates of Small Arms"
	},

	2645	=> {
		typeID   => 2645,
		groupID  => 314,
		typeName => "Crates of Soil"
	},

	2646	=> {
		typeID   => 2646,
		groupID  => 314,
		typeName => "Crates of Spiced Wine"
	},

	2647	=> {
		typeID   => 2647,
		groupID  => 653,
		typeName => "Inferno Precision Light Missile"
	},

	2648	=> {
		typeID   => 2648,
		groupID  => 166,
		typeName => "Inferno Precision Light Missile Blueprint"
	},

	2652	=> {
		typeID   => 2652,
		groupID  => 314,
		typeName => "Crates of Synthetic Oil"
	},

	2653	=> {
		typeID   => 2653,
		groupID  => 314,
		typeName => "Crates of Vaccine Injectors"
	},

	2654	=> {
		typeID   => 2654,
		groupID  => 314,
		typeName => "Crates of Viral Agent"
	},

	2655	=> {
		typeID   => 2655,
		groupID  => 655,
		typeName => "Nova Precision Heavy Missile"
	},

	2656	=> {
		typeID   => 2656,
		groupID  => 166,
		typeName => "Nova Precision Heavy Missile Blueprint"
	},

	2657	=> {
		typeID   => 2657,
		groupID  => 314,
		typeName => "Crates of Vitoc"
	},

	2659	=> {
		typeID   => 2659,
		groupID  => 314,
		typeName => "Crates of Water"
	},

	2660	=> {
		typeID   => 2660,
		groupID  => 314,
		typeName => "Crates of Zemnar"
	},

	2662	=> {
		typeID   => 2662,
		groupID  => 283,
		typeName => "Group of Army Recruits"
	},

	2663	=> {
		typeID   => 2663,
		groupID  => 283,
		typeName => "Group of Cattle"
	},

	2665	=> {
		typeID   => 2665,
		groupID  => 283,
		typeName => "Group of Elite Slaves"
	},

	2666	=> {
		typeID   => 2666,
		groupID  => 283,
		typeName => "Group of Exotic Dancers"
	},

	2668	=> {
		typeID   => 2668,
		groupID  => 283,
		typeName => "Group of Genetically Enhanced Livestock"
	},

	2669	=> {
		typeID   => 2669,
		groupID  => 283,
		typeName => "Group of Kameiras"
	},

	2670	=> {
		typeID   => 2670,
		groupID  => 283,
		typeName => "Group of Marines"
	},

	2671	=> {
		typeID   => 2671,
		groupID  => 283,
		typeName => "Group of Militants"
	},

	2672	=> {
		typeID   => 2672,
		groupID  => 283,
		typeName => "Group of Miners"
	},

	2673	=> {
		typeID   => 2673,
		groupID  => 314,
		typeName => "Large Crates of Data Sheets"
	},

	2674	=> {
		typeID   => 2674,
		groupID  => 283,
		typeName => "Group of Refugees"
	},

	2675	=> {
		typeID   => 2675,
		groupID  => 283,
		typeName => "Group of Science Graduates"
	},

	2676	=> {
		typeID   => 2676,
		groupID  => 283,
		typeName => "Group of Security Personnel"
	},

	2677	=> {
		typeID   => 2677,
		groupID  => 283,
		typeName => "Group of Slaves"
	},

	2678	=> {
		typeID   => 2678,
		groupID  => 283,
		typeName => "Group of Tourists"
	},

	2679	=> {
		typeID   => 2679,
		groupID  => 654,
		typeName => "Scourge Rage Heavy Assault Missile"
	},

	2680	=> {
		typeID   => 2680,
		groupID  => 166,
		typeName => "Scourge Rage Heavy Assault Missile Blueprint"
	},

	2681	=> {
		typeID   => 2681,
		groupID  => 283,
		typeName => "Group of VIPs"
	},

	2682	=> {
		typeID   => 2682,
		groupID  => 314,
		typeName => "Large Crates of Galeptos Medicine"
	},

	2683	=> {
		typeID   => 2683,
		groupID  => 314,
		typeName => "Large Crates of Guidance Systems"
	},

	2684	=> {
		typeID   => 2684,
		groupID  => 314,
		typeName => "Large Crates of Harroule Dryweed"
	},

	2685	=> {
		typeID   => 2685,
		groupID  => 314,
		typeName => "Large Crates of Holoreels"
	},

	2686	=> {
		typeID   => 2686,
		groupID  => 314,
		typeName => "Large Crates of Liparer Cheese"
	},

	2687	=> {
		typeID   => 2687,
		groupID  => 314,
		typeName => "Large Crates of Mechanical Parts"
	},

	2688	=> {
		typeID   => 2688,
		groupID  => 314,
		typeName => "Large Crates of Mono-Cell Batteries"
	},

	2689	=> {
		typeID   => 2689,
		groupID  => 314,
		typeName => "Large Crates of Oxygen"
	},

	2690	=> {
		typeID   => 2690,
		groupID  => 314,
		typeName => "Large Crates of Planetary Vehicles"
	},

	2691	=> {
		typeID   => 2691,
		groupID  => 314,
		typeName => "Large Crates of Polytextiles"
	},

	2692	=> {
		typeID   => 2692,
		groupID  => 314,
		typeName => "Large Crates of Protein Delicacies"
	},

	2693	=> {
		typeID   => 2693,
		groupID  => 314,
		typeName => "Large Crates of Reports"
	},

	2694	=> {
		typeID   => 2694,
		groupID  => 314,
		typeName => "Large Crates of Small Arms"
	},

	2695	=> {
		typeID   => 2695,
		groupID  => 314,
		typeName => "Large Crates of Soil"
	},

	2696	=> {
		typeID   => 2696,
		groupID  => 314,
		typeName => "Large Crates of Spirits"
	},

	2697	=> {
		typeID   => 2697,
		groupID  => 314,
		typeName => "Large Crates of Synthetic Oil"
	},

	2698	=> {
		typeID   => 2698,
		groupID  => 314,
		typeName => "Large Crates of Vitoc"
	},

	2699	=> {
		typeID   => 2699,
		groupID  => 283,
		typeName => "Large Group of Civilians"
	},

	2700	=> {
		typeID   => 2700,
		groupID  => 283,
		typeName => "Large Group of Exotic Dancers"
	},

	2701	=> {
		typeID   => 2701,
		groupID  => 283,
		typeName => "Large Group of Genetically Enhanced Livestock"
	},

	2702	=> {
		typeID   => 2702,
		groupID  => 283,
		typeName => "Large Group of Homeless"
	},

	2703	=> {
		typeID   => 2703,
		groupID  => 283,
		typeName => "Large Group of Kameiras"
	},

	2704	=> {
		typeID   => 2704,
		groupID  => 283,
		typeName => "Large Group of Marines"
	},

	2705	=> {
		typeID   => 2705,
		groupID  => 283,
		typeName => "Large Group of Militants"
	},

	2706	=> {
		typeID   => 2706,
		groupID  => 283,
		typeName => "Large Group of Science Graduates"
	},

	2707	=> {
		typeID   => 2707,
		groupID  => 283,
		typeName => "Large Group of Slaves"
	},

	2708	=> {
		typeID   => 2708,
		groupID  => 283,
		typeName => "Large Group of Tourists"
	},

	2709	=> {
		typeID   => 2709,
		groupID  => 283,
		typeName => "Large Group of VIPs"
	},

	2710	=> {
		typeID   => 2710,
		groupID  => 314,
		typeName => "Large Crates of Construction Blocks"
	},

	2711	=> {
		typeID   => 2711,
		groupID  => 313,
		typeName => "Large Crates of Crystal Eggs"
	},

	2712	=> {
		typeID   => 2712,
		groupID  => 314,
		typeName => "Large Crates of Drill Parts"
	},

	2713	=> {
		typeID   => 2713,
		groupID  => 314,
		typeName => "Large Crates of Electronic Parts"
	},

	2714	=> {
		typeID   => 2714,
		groupID  => 314,
		typeName => "Large Crates of Fertilizer"
	},

	2715	=> {
		typeID   => 2715,
		groupID  => 314,
		typeName => "Large Crates of Frozen Food"
	},

	2716	=> {
		typeID   => 2716,
		groupID  => 314,
		typeName => "Large Crates of Frozen Plant Seeds"
	},

	2717	=> {
		typeID   => 2717,
		groupID  => 314,
		typeName => "Large Crates of Garbage"
	},

	2718	=> {
		typeID   => 2718,
		groupID  => 314,
		typeName => "Large Crates of Long-limb Roes"
	},

	2719	=> {
		typeID   => 2719,
		groupID  => 314,
		typeName => "Large Crates of Raggy Dolls"
	},

	2720	=> {
		typeID   => 2720,
		groupID  => 314,
		typeName => "Large Crates of Rocket Fuel"
	},

	2721	=> {
		typeID   => 2721,
		groupID  => 314,
		typeName => "Large Crates of Tobacco"
	},

	2722	=> {
		typeID   => 2722,
		groupID  => 314,
		typeName => "Large Crates of Transmitters"
	},

	2723	=> {
		typeID   => 2723,
		groupID  => 314,
		typeName => "Large Crates of Viral Agent"
	},

	2724	=> {
		typeID   => 2724,
		groupID  => 314,
		typeName => "Large Crates of Water"
	},

	2725	=> {
		typeID   => 2725,
		groupID  => 283,
		typeName => "Large Group of Cattle"
	},

	2726	=> {
		typeID   => 2726,
		groupID  => 283,
		typeName => "Large Group of Janitors"
	},

	2727	=> {
		typeID   => 2727,
		groupID  => 283,
		typeName => "Large Group of Miners"
	},

	2728	=> {
		typeID   => 2728,
		groupID  => 283,
		typeName => "Large Group of Refugees"
	},

	2729	=> {
		typeID   => 2729,
		groupID  => 314,
		typeName => "Crates of Consumer Electronics"
	},

	2730	=> {
		typeID   => 2730,
		groupID  => 314,
		typeName => "Crates of Enriched Uranium"
	},

	2731	=> {
		typeID   => 2731,
		groupID  => 314,
		typeName => "Crates of Silicon"
	},

	2732	=> {
		typeID   => 2732,
		groupID  => 314,
		typeName => "Crates of Silicate Glass"
	},

	2733	=> {
		typeID   => 2733,
		groupID  => 937,
		typeName => "Schematic"
	},

	2734	=> {
		typeID   => 2734,
		groupID  => 226,
		typeName => "Gallente Vexor Cruiser"
	},

	2735	=> {
		typeID   => 2735,
		groupID  => 1045,
		typeName => "Infrastructure Hub Blueprint"
	},

	2736	=> {
		typeID   => 2736,
		groupID  => 857,
		typeName => "Warp Disruption Battery Blueprint"
	},

	2737	=> {
		typeID   => 2737,
		groupID  => 1045,
		typeName => "Territorial Claim Unit Blueprint"
	},

	2738	=> {
		typeID   => 2738,
		groupID  => 1045,
		typeName => "Sovereignty Blockade Unit Blueprint"
	},

	2739	=> {
		typeID   => 2739,
		groupID  => 912,
		typeName => "Nanite Repair Paste Blueprint"
	},

	2740	=> {
		typeID   => 2740,
		groupID  => 857,
		typeName => "Warp Scrambling Battery Blueprint"
	},

	2741	=> {
		typeID   => 2741,
		groupID  => 858,
		typeName => "Stasis Webification Battery Blueprint"
	},

	2742	=> {
		typeID   => 2742,
		groupID  => 1048,
		typeName => "Biochemical Silo Blueprint"
	},

	2743	=> {
		typeID   => 2743,
		groupID  => 1048,
		typeName => "Catalyst Silo Blueprint"
	},

	2744	=> {
		typeID   => 2744,
		groupID  => 1048,
		typeName => "Coupling Array Blueprint"
	},

	2745	=> {
		typeID   => 2745,
		groupID  => 1048,
		typeName => "General Storage Blueprint"
	},

	2746	=> {
		typeID   => 2746,
		groupID  => 1048,
		typeName => "Hazardous Chemical Silo Blueprint"
	},

	2747	=> {
		typeID   => 2747,
		groupID  => 1048,
		typeName => "Hybrid Polymer Silo Blueprint"
	},

	2748	=> {
		typeID   => 2748,
		groupID  => 1048,
		typeName => "Silo Blueprint"
	},

	2749	=> {
		typeID   => 2749,
		groupID  => 1048,
		typeName => "Advanced Large Ship Assembly Array Blueprint"
	},

	2750	=> {
		typeID   => 2750,
		groupID  => 1048,
		typeName => "X-Large Ship Maintenance Array Blueprint"
	},

	2751	=> {
		typeID   => 2751,
		groupID  => 1048,
		typeName => "Advanced Medium Ship Assembly Array Blueprint"
	},

	2752	=> {
		typeID   => 2752,
		groupID  => 1048,
		typeName => "Ship Maintenance Array Blueprint"
	},

	2753	=> {
		typeID   => 2753,
		groupID  => 1048,
		typeName => "Advanced Small Ship Assembly Array Blueprint"
	},

	2754	=> {
		typeID   => 2754,
		groupID  => 1048,
		typeName => "Ammunition Assembly Array Blueprint"
	},

	2755	=> {
		typeID   => 2755,
		groupID  => 1048,
		typeName => "Ballistic Deflection Array Blueprint"
	},

	2756	=> {
		typeID   => 2756,
		groupID  => 1048,
		typeName => "Supercapital Ship Assembly Array Blueprint"
	},

	2757	=> {
		typeID   => 2757,
		groupID  => 1048,
		typeName => "Explosion Dampening Array Blueprint"
	},

	2758	=> {
		typeID   => 2758,
		groupID  => 1048,
		typeName => "Component Assembly Array Blueprint"
	},

	2759	=> {
		typeID   => 2759,
		groupID  => 1048,
		typeName => "Heat Dissipation Array Blueprint"
	},

	2760	=> {
		typeID   => 2760,
		groupID  => 1048,
		typeName => "Drone Assembly Array Blueprint"
	},

	2761	=> {
		typeID   => 2761,
		groupID  => 1048,
		typeName => "Photon Scattering Array Blueprint"
	},

	2762	=> {
		typeID   => 2762,
		groupID  => 1048,
		typeName => "Drug Lab Blueprint"
	},

	2763	=> {
		typeID   => 2763,
		groupID  => 1048,
		typeName => "Sensor Dampening Battery Blueprint"
	},

	2764	=> {
		typeID   => 2764,
		groupID  => 1048,
		typeName => "Equipment Assembly Array Blueprint"
	},

	2765	=> {
		typeID   => 2765,
		groupID  => 1048,
		typeName => "Intensive Reprocessing Array Blueprint"
	},

	2766	=> {
		typeID   => 2766,
		groupID  => 1048,
		typeName => "Large Ship Assembly Array Blueprint"
	},

	2767	=> {
		typeID   => 2767,
		groupID  => 1048,
		typeName => "Compression Array Blueprint"
	},

	2768	=> {
		typeID   => 2768,
		groupID  => 1048,
		typeName => "Medium Ship Assembly Array Blueprint"
	},

	2769	=> {
		typeID   => 2769,
		groupID  => 1048,
		typeName => "Reprocessing Array Blueprint"
	},

	2770	=> {
		typeID   => 2770,
		groupID  => 1048,
		typeName => "Rapid Equipment Assembly Array Blueprint"
	},

	2771	=> {
		typeID   => 2771,
		groupID  => 1048,
		typeName => "Small Ship Assembly Array Blueprint"
	},

	2772	=> {
		typeID   => 2772,
		groupID  => 1048,
		typeName => "Subsystem Assembly Array Blueprint"
	},

	2773	=> {
		typeID   => 2773,
		groupID  => 1048,
		typeName => "Capital Ship Assembly Array Blueprint"
	},

	2774	=> {
		typeID   => 2774,
		groupID  => 841,
		typeName => "Amarr Control Tower Blueprint"
	},

	2775	=> {
		typeID   => 2775,
		groupID  => 841,
		typeName => "Amarr Control Tower Medium Blueprint"
	},

	2776	=> {
		typeID   => 2776,
		groupID  => 841,
		typeName => "Amarr Control Tower Small Blueprint"
	},

	2777	=> {
		typeID   => 2777,
		groupID  => 841,
		typeName => "Caldari Control Tower Blueprint"
	},

	2778	=> {
		typeID   => 2778,
		groupID  => 841,
		typeName => "Caldari Control Tower Medium Blueprint"
	},

	2779	=> {
		typeID   => 2779,
		groupID  => 841,
		typeName => "Caldari Control Tower Small Blueprint"
	},

	2780	=> {
		typeID   => 2780,
		groupID  => 841,
		typeName => "Gallente Control Tower Blueprint"
	},

	2781	=> {
		typeID   => 2781,
		groupID  => 841,
		typeName => "Gallente Control Tower Medium Blueprint"
	},

	2782	=> {
		typeID   => 2782,
		groupID  => 841,
		typeName => "Gallente Control Tower Small Blueprint"
	},

	2783	=> {
		typeID   => 2783,
		groupID  => 841,
		typeName => "Minmatar Control Tower Blueprint"
	},

	2784	=> {
		typeID   => 2784,
		groupID  => 841,
		typeName => "Minmatar Control Tower Medium Blueprint"
	},

	2785	=> {
		typeID   => 2785,
		groupID  => 841,
		typeName => "Minmatar Control Tower Small Blueprint"
	},

	2786	=> {
		typeID   => 2786,
		groupID  => 1048,
		typeName => "Moon Harvesting Array Blueprint"
	},

	2787	=> {
		typeID   => 2787,
		groupID  => 1048,
		typeName => "Corporate Hangar Array Blueprint"
	},

	2788	=> {
		typeID   => 2788,
		groupID  => 1048,
		typeName => "Cynosural Generator Array Blueprint"
	},

	2789	=> {
		typeID   => 2789,
		groupID  => 1048,
		typeName => "Cynosural System Jammer Blueprint"
	},

	2790	=> {
		typeID   => 2790,
		groupID  => 1048,
		typeName => "Biochemical Reactor Array Blueprint"
	},

	2791	=> {
		typeID   => 2791,
		groupID  => 1048,
		typeName => "Complex Reactor Array Blueprint"
	},

	2792	=> {
		typeID   => 2792,
		groupID  => 856,
		typeName => "Ion Field Projection Battery Blueprint"
	},

	2793	=> {
		typeID   => 2793,
		groupID  => 1048,
		typeName => "Medium Biochemical Reactor Array Blueprint"
	},

	2794	=> {
		typeID   => 2794,
		groupID  => 856,
		typeName => "Phase Inversion Battery Blueprint"
	},

	2795	=> {
		typeID   => 2795,
		groupID  => 1048,
		typeName => "Polymer Reactor Array Blueprint"
	},

	2796	=> {
		typeID   => 2796,
		groupID  => 856,
		typeName => "Spatial Destabilization Battery Blueprint"
	},

	2797	=> {
		typeID   => 2797,
		groupID  => 1048,
		typeName => "Simple Reactor Array Blueprint"
	},

	2798	=> {
		typeID   => 2798,
		groupID  => 856,
		typeName => "White Noise Generation Battery Blueprint"
	},

	2799	=> {
		typeID   => 2799,
		groupID  => 860,
		typeName => "Energy Neutralizing Battery Blueprint"
	},

	2800	=> {
		typeID   => 2800,
		groupID  => 1048,
		typeName => "Jump Bridge Blueprint"
	},

	2801	=> {
		typeID   => 2801,
		groupID  => 657,
		typeName => "Nova Javelin Torpedo"
	},

	2802	=> {
		typeID   => 2802,
		groupID  => 166,
		typeName => "Nova Javelin Torpedo Blueprint"
	},

	2803	=> {
		typeID   => 2803,
		groupID  => 855,
		typeName => "Large Blaster Battery Blueprint"
	},

	2804	=> {
		typeID   => 2804,
		groupID  => 855,
		typeName => "Large Railgun Battery Blueprint"
	},

	2805	=> {
		typeID   => 2805,
		groupID  => 854,
		typeName => "Large Artillery Battery Blueprint"
	},

	2806	=> {
		typeID   => 2806,
		groupID  => 855,
		typeName => "Medium Blaster Battery Blueprint"
	},

	2807	=> {
		typeID   => 2807,
		groupID  => 854,
		typeName => "Large AutoCannon Battery Blueprint"
	},

	2808	=> {
		typeID   => 2808,
		groupID  => 855,
		typeName => "Medium Railgun Battery Blueprint"
	},

	2810	=> {
		typeID   => 2810,
		groupID  => 854,
		typeName => "Medium Artillery Battery Blueprint"
	},

	2811	=> {
		typeID   => 2811,
		groupID  => 657,
		typeName => "Inferno Rage Torpedo"
	},

	2812	=> {
		typeID   => 2812,
		groupID  => 166,
		typeName => "Inferno Rage Torpedo Blueprint"
	},

	2813	=> {
		typeID   => 2813,
		groupID  => 855,
		typeName => "Small Blaster Battery Blueprint"
	},

	2814	=> {
		typeID   => 2814,
		groupID  => 854,
		typeName => "Medium AutoCannon Battery Blueprint"
	},

	2815	=> {
		typeID   => 2815,
		groupID  => 855,
		typeName => "Small Railgun Battery Blueprint"
	},

	2816	=> {
		typeID   => 2816,
		groupID  => 854,
		typeName => "Small Artillery Battery Blueprint"
	},

	2817	=> {
		typeID   => 2817,
		groupID  => 648,
		typeName => "Mjolnir Rage Rocket"
	},

	2818	=> {
		typeID   => 2818,
		groupID  => 166,
		typeName => "Mjolnir Rage Rocket Blueprint"
	},

	2819	=> {
		typeID   => 2819,
		groupID  => 854,
		typeName => "Small AutoCannon Battery Blueprint"
	},

	2820	=> {
		typeID   => 2820,
		groupID  => 891,
		typeName => "Experimental Laboratory Blueprint"
	},

	2821	=> {
		typeID   => 2821,
		groupID  => 891,
		typeName => "Research Laboratory Blueprint"
	},

	2822	=> {
		typeID   => 2822,
		groupID  => 871,
		typeName => "XL Torpedo Battery Blueprint"
	},

	2823	=> {
		typeID   => 2823,
		groupID  => 871,
		typeName => "Cruise Missile Battery Blueprint"
	},

	2824	=> {
		typeID   => 2824,
		groupID  => 871,
		typeName => "Torpedo Battery Blueprint"
	},

	2825	=> {
		typeID   => 2825,
		groupID  => 853,
		typeName => "Small Pulse Laser Battery Blueprint"
	},

	2826	=> {
		typeID   => 2826,
		groupID  => 853,
		typeName => "Small Beam Laser Battery Blueprint"
	},

	2827	=> {
		typeID   => 2827,
		groupID  => 853,
		typeName => "Medium Pulse Laser Battery Blueprint"
	},

	2828	=> {
		typeID   => 2828,
		groupID  => 853,
		typeName => "Medium Beam Laser Battery Blueprint"
	},

	2829	=> {
		typeID   => 2829,
		groupID  => 853,
		typeName => "Large Pulse Laser Battery Blueprint"
	},

	2830	=> {
		typeID   => 2830,
		groupID  => 853,
		typeName => "Large Beam Laser Battery Blueprint"
	},

	2831	=> {
		typeID   => 2831,
		groupID  => 226,
		typeName => "Serpentis Fortress"
	},

	2832	=> {
		typeID   => 2832,
		groupID  => 226,
		typeName => "Blood Raider Fortress"
	},

	2833	=> {
		typeID   => 2833,
		groupID  => 943,
		typeName => "1000 Aurum Token"
	},

	2834	=> {
		typeID   => 2834,
		groupID  => 324,
		typeName => "Utu"
	},

	2835	=> {
		typeID   => 2835,
		groupID  => 105,
		typeName => "Utu Blueprint"
	},

	2836	=> {
		typeID   => 2836,
		groupID  => 358,
		typeName => "Adrestia"
	},

	2837	=> {
		typeID   => 2837,
		groupID  => 106,
		typeName => "Adrestia Blueprint"
	},

	2838	=> {
		typeID   => 2838,
		groupID  => 303,
		typeName => "Standard Cerebral Accelerator"
	},

	2839	=> {
		typeID   => 2839,
		groupID  => 718,
		typeName => "Cerebral Accelerator Blueprint"
	},

	2840	=> {
		typeID   => 2840,
		groupID  => 517,
		typeName => "Hasaziras Assa's Scorpion"
	},

	2841	=> {
		typeID   => 2841,
		groupID  => 306,
		typeName => "Angel Officer's Quarters"
	},

	2842	=> {
		typeID   => 2842,
		groupID  => 226,
		typeName => "Serpentis Station"
	},

	2845	=> {
		typeID   => 2845,
		groupID  => 1056,
		typeName => "Outuni Mesen"
	},

	2846	=> {
		typeID   => 2846,
		groupID  => 820,
		typeName => "Domination Excavator"
	},

	2847	=> {
		typeID   => 2847,
		groupID  => 820,
		typeName => "True Sansha Foreman"
	},

	2848	=> {
		typeID   => 2848,
		groupID  => 1063,
		typeName => "Barren Extractor Control Unit"
	},

	2850	=> {
		typeID   => 2850,
		groupID  => 306,
		typeName => "Suspicious Ship Wreck"
	},

	2851	=> {
		typeID   => 2851,
		groupID  => 314,
		typeName => "Incriminating Evidence"
	},

	2852	=> {
		typeID   => 2852,
		groupID  => 226,
		typeName => "Sansha Cynosural Field"
	},

	2853	=> {
		typeID   => 2853,
		groupID  => 314,
		typeName => "Salvaged Electronics"
	},

	2854	=> {
		typeID   => 2854,
		groupID  => 306,
		typeName => "Cloaked Cache"
	},

	2855	=> {
		typeID   => 2855,
		groupID  => 1056,
		typeName => "Intaki Colliculus"
	},

	2856	=> {
		typeID   => 2856,
		groupID  => 226,
		typeName => "Forlorn Hope"
	},

	2858	=> {
		typeID   => 2858,
		groupID  => 226,
		typeName => "Osnirdottir Memorial"
	},

	2859	=> {
		typeID   => 2859,
		groupID  => 1054,
		typeName => "Romi Thalamus"
	},

	2860	=> {
		typeID   => 2860,
		groupID  => 306,
		typeName => "The Seven Holding Cells"
	},

	2861	=> {
		typeID   => 2861,
		groupID  => 314,
		typeName => "Crate of Manportable Electromagnetic Pulse Weapons"
	},

	2862	=> {
		typeID   => 2862,
		groupID  => 314,
		typeName => "Special Forces Weapons and Equipment "
	},

	2863	=> {
		typeID   => 2863,
		groupID  => 28,
		typeName => "Primae"
	},

	2864	=> {
		typeID   => 2864,
		groupID  => 108,
		typeName => "Primae Blueprint"
	},

	2865	=> {
		typeID   => 2865,
		groupID  => 55,
		typeName => "1200mm Artillery Cannon II"
	},

	2866	=> {
		typeID   => 2866,
		groupID  => 135,
		typeName => "1200mm Artillery Cannon II Blueprint"
	},

	2867	=> {
		typeID   => 2867,
		groupID  => 1041,
		typeName => "Broadcast Node"
	},

	2868	=> {
		typeID   => 2868,
		groupID  => 1041,
		typeName => "Integrity Response Drones"
	},

	2869	=> {
		typeID   => 2869,
		groupID  => 1041,
		typeName => "Nano-Factory"
	},

	2870	=> {
		typeID   => 2870,
		groupID  => 1041,
		typeName => "Organic Mortar Applicators"
	},

	2871	=> {
		typeID   => 2871,
		groupID  => 1041,
		typeName => "Recursive Computing Module"
	},

	2872	=> {
		typeID   => 2872,
		groupID  => 1041,
		typeName => "Self-Harmonizing Power Core"
	},

	2873	=> {
		typeID   => 2873,
		groupID  => 55,
		typeName => "125mm Gatling AutoCannon II"
	},

	2874	=> {
		typeID   => 2874,
		groupID  => 135,
		typeName => "125mm Gatling AutoCannon II Blueprint"
	},

	2875	=> {
		typeID   => 2875,
		groupID  => 1041,
		typeName => "Sterile Conduits"
	},

	2876	=> {
		typeID   => 2876,
		groupID  => 1041,
		typeName => "Wetware Mainframe"
	},

	2877	=> {
		typeID   => 2877,
		groupID  => 875,
		typeName => "Federation Freighter Vessel"
	},

	2878	=> {
		typeID   => 2878,
		groupID  => 927,
		typeName => "Federation Industrial Vessel"
	},

	2879	=> {
		typeID   => 2879,
		groupID  => 875,
		typeName => "Imperial Freighter Vessel"
	},

	2880	=> {
		typeID   => 2880,
		groupID  => 314,
		typeName => "Unknown Dead"
	},

	2881	=> {
		typeID   => 2881,
		groupID  => 55,
		typeName => "150mm Light AutoCannon II"
	},

	2882	=> {
		typeID   => 2882,
		groupID  => 875,
		typeName => "State Freighter Vessel"
	},

	2883	=> {
		typeID   => 2883,
		groupID  => 927,
		typeName => "State Industrial Vessel"
	},

	2884	=> {
		typeID   => 2884,
		groupID  => 927,
		typeName => "Republic Industrial Vessel"
	},

	2885	=> {
		typeID   => 2885,
		groupID  => 927,
		typeName => "Imperial Industrial Vessel"
	},

	2886	=> {
		typeID   => 2886,
		groupID  => 306,
		typeName => "Tomb of the Unknown Soldiers"
	},

	2887	=> {
		typeID   => 2887,
		groupID  => 526,
		typeName => "Gallente Admiral's Corpse"
	},

	2888	=> {
		typeID   => 2888,
		groupID  => 314,
		typeName => "Acceleration Gate Authentication Matrix"
	},

	2889	=> {
		typeID   => 2889,
		groupID  => 55,
		typeName => "200mm AutoCannon II"
	},

	2890	=> {
		typeID   => 2890,
		groupID  => 135,
		typeName => "200mm AutoCannon II Blueprint"
	},

	2891	=> {
		typeID   => 2891,
		groupID  => 306,
		typeName => "Amarr Battleship Wreckage"
	},

	2892	=> {
		typeID   => 2892,
		groupID  => 306,
		typeName => "Amarrian Battleship Wreckage"
	},

	2893	=> {
		typeID   => 2893,
		groupID  => 314,
		typeName => "Damning Evidence"
	},

	2894	=> {
		typeID   => 2894,
		groupID  => 227,
		typeName => "Invisible Cloud"
	},

	2895	=> {
		typeID   => 2895,
		groupID  => 306,
		typeName => "Asteroid Pirate Station"
	},

	2896	=> {
		typeID   => 2896,
		groupID  => 319,
		typeName => "Patient Zero"
	},

	2897	=> {
		typeID   => 2897,
		groupID  => 55,
		typeName => "220mm Vulcan AutoCannon II"
	},

	2898	=> {
		typeID   => 2898,
		groupID  => 135,
		typeName => "220mm Vulcan AutoCannon II Blueprint"
	},

	2899	=> {
		typeID   => 2899,
		groupID  => 314,
		typeName => "Custom Circuitry"
	},

	2900	=> {
		typeID   => 2900,
		groupID  => 314,
		typeName => "Recovered Data Core"
	},

	2901	=> {
		typeID   => 2901,
		groupID  => 306,
		typeName => "Science Vessel Wreck"
	},

	2902	=> {
		typeID   => 2902,
		groupID  => 319,
		typeName => "Deactivated Acceleration Gate"
	},

	2903	=> {
		typeID   => 2903,
		groupID  => 952,
		typeName => "Manager's Station"
	},

	2904	=> {
		typeID   => 2904,
		groupID  => 314,
		typeName => "Quantum Entanglement"
	},

	2905	=> {
		typeID   => 2905,
		groupID  => 55,
		typeName => "250mm Light Artillery Cannon II"
	},

	2906	=> {
		typeID   => 2906,
		groupID  => 135,
		typeName => "250mm Light Artillery Cannon II Blueprint"
	},

	2907	=> {
		typeID   => 2907,
		groupID  => 1053,
		typeName => "Schmaeel Medulla"
	},

	2909	=> {
		typeID   => 2909,
		groupID  => 1053,
		typeName => "Niarja Myelen"
	},

	2910	=> {
		typeID   => 2910,
		groupID  => 226,
		typeName => "Gallente Passenger Liner Wreckage"
	},

	2911	=> {
		typeID   => 2911,
		groupID  => 306,
		typeName => "Gallente Passenger Liner Damaged"
	},

	2912	=> {
		typeID   => 2912,
		groupID  => 526,
		typeName => "Minmatar Pilot's Corpse"
	},

	2913	=> {
		typeID   => 2913,
		groupID  => 55,
		typeName => "425mm AutoCannon II"
	},

	2914	=> {
		typeID   => 2914,
		groupID  => 135,
		typeName => "425mm AutoCannon II Blueprint"
	},

	2915	=> {
		typeID   => 2915,
		groupID  => 319,
		typeName => "Auxiliary Academic Campus"
	},

	2916	=> {
		typeID   => 2916,
		groupID  => 706,
		typeName => "Rogue Minmatar"
	},

	2917	=> {
		typeID   => 2917,
		groupID  => 314,
		typeName => "Survivors"
	},

	2918	=> {
		typeID   => 2918,
		groupID  => 306,
		typeName => "Cell Block D"
	},

	2919	=> {
		typeID   => 2919,
		groupID  => 283,
		typeName => "Caldari Operative"
	},

	2921	=> {
		typeID   => 2921,
		groupID  => 55,
		typeName => "650mm Artillery Cannon II"
	},

	2922	=> {
		typeID   => 2922,
		groupID  => 135,
		typeName => "650mm Artillery Cannon II Blueprint"
	},

	2926	=> {
		typeID   => 2926,
		groupID  => 226,
		typeName => "Serpentis Slave Transport"
	},

	2927	=> {
		typeID   => 2927,
		groupID  => 226,
		typeName => "Fortified Deadspace Particle Accelerator"
	},

	2928	=> {
		typeID   => 2928,
		groupID  => 226,
		typeName => "Fortified Asteroid Colony"
	},

	2929	=> {
		typeID   => 2929,
		groupID  => 55,
		typeName => "800mm Repeating Cannon II"
	},

	2930	=> {
		typeID   => 2930,
		groupID  => 314,
		typeName => "Crate of Special Forces Weapons and Equipment"
	},

	2931	=> {
		typeID   => 2931,
		groupID  => 1054,
		typeName => "Mara Paleo"
	},

	2932	=> {
		typeID   => 2932,
		groupID  => 1056,
		typeName => "Ostingele Tectum"
	},

	2933	=> {
		typeID   => 2933,
		groupID  => 1056,
		typeName => "Deltole Tegmentum"
	},

	2934	=> {
		typeID   => 2934,
		groupID  => 314,
		typeName => "Counterfeit Voluval Tattoo Chemicals"
	},

	2935	=> {
		typeID   => 2935,
		groupID  => 1056,
		typeName => "Yulai Crus Cerebi"
	},

	2936	=> {
		typeID   => 2936,
		groupID  => 1054,
		typeName => "Auga Hypophysis"
	},

	2937	=> {
		typeID   => 2937,
		groupID  => 55,
		typeName => "Dual 180mm AutoCannon II"
	},

	2938	=> {
		typeID   => 2938,
		groupID  => 135,
		typeName => "Dual 180mm AutoCannon II Blueprint"
	},

	2939	=> {
		typeID   => 2939,
		groupID  => 1053,
		typeName => "Tama Cerebellum"
	},

	2942	=> {
		typeID   => 2942,
		groupID  => 283,
		typeName => "Captured CEO"
	},

	2943	=> {
		typeID   => 2943,
		groupID  => 314,
		typeName => "Hybrid Slaver Hounds"
	},

	2944	=> {
		typeID   => 2944,
		groupID  => 314,
		typeName => "Kennel of Hybrid Slaver Hounds"
	},

	2945	=> {
		typeID   => 2945,
		groupID  => 55,
		typeName => "Dual 425mm AutoCannon II"
	},

	2946	=> {
		typeID   => 2946,
		groupID  => 135,
		typeName => "Dual 425mm AutoCannon II Blueprint"
	},

	2947	=> {
		typeID   => 2947,
		groupID  => 1010,
		typeName => "Compact Shade Torpedo"
	},

	2948	=> {
		typeID   => 2948,
		groupID  => 1653,
		typeName => "Shadow"
	},

	2949	=> {
		typeID   => 2949,
		groupID  => 1145,
		typeName => "Shadow Blueprint"
	},

	2950	=> {
		typeID   => 2950,
		groupID  => 1054,
		typeName => "Lirsautton Parichaya"
	},

	2951	=> {
		typeID   => 2951,
		groupID  => 314,
		typeName => "Large Crate of Improved Inertial Compensation Systems"
	},

	2952	=> {
		typeID   => 2952,
		groupID  => 314,
		typeName => "Crate of Unidentified Fibrous Compound"
	},

	2953	=> {
		typeID   => 2953,
		groupID  => 55,
		typeName => "Dual 650mm Repeating Cannon II"
	},

	2954	=> {
		typeID   => 2954,
		groupID  => 135,
		typeName => "Dual 650mm Repeating Cannon II Blueprint"
	},

	2955	=> {
		typeID   => 2955,
		groupID  => 314,
		typeName => "Large Crate of Unidentified Fibrous Compound"
	},

	2956	=> {
		typeID   => 2956,
		groupID  => 314,
		typeName => "Large Crate of Refurbished Mining Drones"
	},

	2957	=> {
		typeID   => 2957,
		groupID  => 314,
		typeName => "Crate of Refurbished Mining Drones"
	},

	2958	=> {
		typeID   => 2958,
		groupID  => 283,
		typeName => "Civilian SIGINT Contractors"
	},

	2959	=> {
		typeID   => 2959,
		groupID  => 283,
		typeName => "Group of Civilian SIGINT Contractors"
	},

	2960	=> {
		typeID   => 2960,
		groupID  => 314,
		typeName => "Spools of Quantrium Wiring"
	},

	2961	=> {
		typeID   => 2961,
		groupID  => 55,
		typeName => "1400mm Howitzer Artillery II"
	},

	2962	=> {
		typeID   => 2962,
		groupID  => 135,
		typeName => "1400mm Howitzer Artillery II Blueprint"
	},

	2963	=> {
		typeID   => 2963,
		groupID  => 314,
		typeName => "Quantrium Wiring"
	},

	2964	=> {
		typeID   => 2964,
		groupID  => 314,
		typeName => "Aerogel Counteragent"
	},

	2965	=> {
		typeID   => 2965,
		groupID  => 314,
		typeName => "Crate of Aerogel Counteragent"
	},

	2966	=> {
		typeID   => 2966,
		groupID  => 1053,
		typeName => "Eystur Rhomben"
	},

	2967	=> {
		typeID   => 2967,
		groupID  => 314,
		typeName => "Crate of Target Painter Deflection Plating"
	},

	2968	=> {
		typeID   => 2968,
		groupID  => 314,
		typeName => "Large Crate of Target Painter Deflection Plating"
	},

	2969	=> {
		typeID   => 2969,
		groupID  => 55,
		typeName => "720mm Howitzer Artillery II"
	},

	2970	=> {
		typeID   => 2970,
		groupID  => 135,
		typeName => "720mm Howitzer Artillery II Blueprint"
	},

	2971	=> {
		typeID   => 2971,
		groupID  => 314,
		typeName => "Group of Haakar's Striking Hawks"
	},

	2972	=> {
		typeID   => 2972,
		groupID  => 314,
		typeName => "Ditanium Metal Plates"
	},

	2973	=> {
		typeID   => 2973,
		groupID  => 314,
		typeName => "Pallet of Ditanium Metal Plates"
	},

	2974	=> {
		typeID   => 2974,
		groupID  => 314,
		typeName => "Large Group of The Hooded Men"
	},

	2975	=> {
		typeID   => 2975,
		groupID  => 283,
		typeName => "Arctic Warfare Marines"
	},

	2976	=> {
		typeID   => 2976,
		groupID  => 283,
		typeName => "Arctic Warfare Marine Squads"
	},

	2977	=> {
		typeID   => 2977,
		groupID  => 55,
		typeName => "280mm Howitzer Artillery II"
	},

	2978	=> {
		typeID   => 2978,
		groupID  => 135,
		typeName => "280mm Howitzer Artillery II Blueprint"
	},

	2979	=> {
		typeID   => 2979,
		groupID  => 314,
		typeName => "Crate of Industrial-Grade Tritanium-Alloy Scraps"
	},

	2980	=> {
		typeID   => 2980,
		groupID  => 314,
		typeName => "Large Crate of Industrial-Grade Tritanium-Alloy Scraps"
	},

	2981	=> {
		typeID   => 2981,
		groupID  => 314,
		typeName => "Crate of Architectural-Quality Plagioclase Paneling"
	},

	2982	=> {
		typeID   => 2982,
		groupID  => 314,
		typeName => "Large Crate of Architectural-Quality Plagioclase Paneling"
	},

	2983	=> {
		typeID   => 2983,
		groupID  => 283,
		typeName => "Corporate Assassin"
	},

	2984	=> {
		typeID   => 2984,
		groupID  => 283,
		typeName => "Deep Cover Corporate Assassin"
	},

	2985	=> {
		typeID   => 2985,
		groupID  => 53,
		typeName => "Dual Heavy Beam Laser II"
	},

	2986	=> {
		typeID   => 2986,
		groupID  => 133,
		typeName => "Dual Heavy Beam Laser II Blueprint"
	},

	2987	=> {
		typeID   => 2987,
		groupID  => 314,
		typeName => "Crate of Harvester Components"
	},

	2988	=> {
		typeID   => 2988,
		groupID  => 314,
		typeName => "Large Crate of Harvester Components"
	},

	2989	=> {
		typeID   => 2989,
		groupID  => 314,
		typeName => "Decoy Prototype Cloaking Devices"
	},

	2990	=> {
		typeID   => 2990,
		groupID  => 314,
		typeName => "Crate of Decoy Prototype Cloaking Devices"
	},

	2991	=> {
		typeID   => 2991,
		groupID  => 314,
		typeName => "Crate of Amarr Scripture Educational Study Packages (Matari translation)"
	},

	2992	=> {
		typeID   => 2992,
		groupID  => 314,
		typeName => "Large Crate of Amarr Scripture Educational Study Packages (Matari translation)"
	},

	2993	=> {
		typeID   => 2993,
		groupID  => 53,
		typeName => "Dual Light Beam Laser II"
	},

	2994	=> {
		typeID   => 2994,
		groupID  => 133,
		typeName => "Dual Light Beam Laser II Blueprint"
	},

	2995	=> {
		typeID   => 2995,
		groupID  => 314,
		typeName => "Blue Paradise"
	},

	2996	=> {
		typeID   => 2996,
		groupID  => 314,
		typeName => "Crate of Blue Paradise"
	},

	2997	=> {
		typeID   => 2997,
		groupID  => 314,
		typeName => "Crate of Refined C-86 Epoxy Resin"
	},

	2998	=> {
		typeID   => 2998,
		groupID  => 28,
		typeName => "Noctis"
	},

	2999	=> {
		typeID   => 2999,
		groupID  => 283,
		typeName => "Amarr Marine Counter-Boarding Team"
	},

	3000	=> {
		typeID   => 3000,
		groupID  => 314,
		typeName => "Group of Angel Cartel VIPs"
	},

	3001	=> {
		typeID   => 3001,
		groupID  => 53,
		typeName => "Dual Light Pulse Laser II"
	},

	3002	=> {
		typeID   => 3002,
		groupID  => 133,
		typeName => "Dual Light Pulse Laser II Blueprint"
	},

	3003	=> {
		typeID   => 3003,
		groupID  => 314,
		typeName => "Large Group of Angel Cartel VIPs"
	},

	3004	=> {
		typeID   => 3004,
		groupID  => 283,
		typeName => "Amarr Marine Counter-Boarding Company"
	},

	3005	=> {
		typeID   => 3005,
		groupID  => 314,
		typeName => "Crate of Feille d'Marnne Champagne"
	},

	3006	=> {
		typeID   => 3006,
		groupID  => 283,
		typeName => "Conditioned House Slaves"
	},

	3007	=> {
		typeID   => 3007,
		groupID  => 314,
		typeName => "Large Crate of Feille d'Marnne Champagne"
	},

	3008	=> {
		typeID   => 3008,
		groupID  => 283,
		typeName => "Herd of Conditioned House Slaves"
	},

	3009	=> {
		typeID   => 3009,
		groupID  => 53,
		typeName => "Focused Medium Beam Laser II"
	},

	3010	=> {
		typeID   => 3010,
		groupID  => 133,
		typeName => "Focused Medium Beam Laser II Blueprint"
	},

	3011	=> {
		typeID   => 3011,
		groupID  => 314,
		typeName => "Crate of Bootleg Holoreels"
	},

	3012	=> {
		typeID   => 3012,
		groupID  => 314,
		typeName => "Large Crate of Suspicious Holoreels"
	},

	3013	=> {
		typeID   => 3013,
		groupID  => 314,
		typeName => "Amarr Religious Holoreels"
	},

	3014	=> {
		typeID   => 3014,
		groupID  => 314,
		typeName => "Crate of Amarr Religious Holoreels"
	},

	3015	=> {
		typeID   => 3015,
		groupID  => 314,
		typeName => "Crate of Cryo-Stored Luminaire Skippers"
	},

	3016	=> {
		typeID   => 3016,
		groupID  => 314,
		typeName => "Large Crate of Cryo-Stored Luminaire Skippers"
	},

	3017	=> {
		typeID   => 3017,
		groupID  => 53,
		typeName => "Gatling Pulse Laser II"
	},

	3018	=> {
		typeID   => 3018,
		groupID  => 133,
		typeName => "Gatling Pulse Laser II Blueprint"
	},

	3019	=> {
		typeID   => 3019,
		groupID  => 314,
		typeName => "Crate of Unidentified Ancient Technology"
	},

	3020	=> {
		typeID   => 3020,
		groupID  => 314,
		typeName => "Large Crate of Talocan Station Life-Support Cores"
	},

	3021	=> {
		typeID   => 3021,
		groupID  => 314,
		typeName => "Crate of Portable Emergency Heating Units"
	},

	3022	=> {
		typeID   => 3022,
		groupID  => 314,
		typeName => "Large Crate of Portable Emergency Heating Units"
	},

	3023	=> {
		typeID   => 3023,
		groupID  => 314,
		typeName => "Crate of Archaeological Lot GV87-426-D Artifacts"
	},

	3024	=> {
		typeID   => 3024,
		groupID  => 314,
		typeName => "Large Crate of Archaeological Lot GV87-426-E Artifacts"
	},

	3025	=> {
		typeID   => 3025,
		groupID  => 53,
		typeName => "Heavy Beam Laser II"
	},

	3026	=> {
		typeID   => 3026,
		groupID  => 133,
		typeName => "Heavy Beam Laser II Blueprint"
	},

	3027	=> {
		typeID   => 3027,
		groupID  => 314,
		typeName => "Crate of Contained Cerrocentite"
	},

	3028	=> {
		typeID   => 3028,
		groupID  => 314,
		typeName => "Large Crate of Contained Mesarchonite"
	},

	3029	=> {
		typeID   => 3029,
		groupID  => 314,
		typeName => "Group of Coriault Couture Collective Display Employees"
	},

	3030	=> {
		typeID   => 3030,
		groupID  => 314,
		typeName => "Large Group of Mannar Textile Institute International Representatives"
	},

	3031	=> {
		typeID   => 3031,
		groupID  => 314,
		typeName => "Crate of Exclusive Simo Reshar Fitness Holoreels"
	},

	3032	=> {
		typeID   => 3032,
		groupID  => 283,
		typeName => "Amarr Forensic Investigative Team"
	},

	3033	=> {
		typeID   => 3033,
		groupID  => 53,
		typeName => "Small Focused Beam Laser II"
	},

	3034	=> {
		typeID   => 3034,
		groupID  => 133,
		typeName => "Small Focused Beam Laser II Blueprint"
	},

	3035	=> {
		typeID   => 3035,
		groupID  => 314,
		typeName => "Large Crate of Exclusive Simo Reshar Fitness Holoreels"
	},

	3036	=> {
		typeID   => 3036,
		groupID  => 283,
		typeName => "Amarr Forensic Investigative Deployment"
	},

	3037	=> {
		typeID   => 3037,
		groupID  => 314,
		typeName => "Crate of Experimental ECM Hybrid Rounds"
	},

	3038	=> {
		typeID   => 3038,
		groupID  => 314,
		typeName => "Large Crate of Experimental ECM Hybrid Rounds"
	},

	3039	=> {
		typeID   => 3039,
		groupID  => 108,
		typeName => "Noctis Blueprint"
	},

	3041	=> {
		typeID   => 3041,
		groupID  => 53,
		typeName => "Small Focused Pulse Laser II"
	},

	3042	=> {
		typeID   => 3042,
		groupID  => 133,
		typeName => "Small Focused Pulse Laser II Blueprint"
	},

	3049	=> {
		typeID   => 3049,
		groupID  => 53,
		typeName => "Mega Beam Laser II"
	},

	3050	=> {
		typeID   => 3050,
		groupID  => 133,
		typeName => "Mega Beam Laser II Blueprint"
	},

	3054	=> {
		typeID   => 3054,
		groupID  => 952,
		typeName => "Sansha Territorial Reclamation Outpost"
	},

	3056	=> {
		typeID   => 3056,
		groupID  => 226,
		typeName => "Fortified Sansha Deadspace Outpost I"
	},

	3057	=> {
		typeID   => 3057,
		groupID  => 53,
		typeName => "Mega Pulse Laser II"
	},

	3058	=> {
		typeID   => 3058,
		groupID  => 133,
		typeName => "Mega Pulse Laser II Blueprint"
	},

	3059	=> {
		typeID   => 3059,
		groupID  => 226,
		typeName => "Sansha Starbase Control Tower"
	},

	3060	=> {
		typeID   => 3060,
		groupID  => 1063,
		typeName => "Gas Extractor Control Unit"
	},

	3061	=> {
		typeID   => 3061,
		groupID  => 1063,
		typeName => "Ice Extractor Control Unit"
	},

	3062	=> {
		typeID   => 3062,
		groupID  => 1063,
		typeName => "Lava Extractor Control Unit"
	},

	3063	=> {
		typeID   => 3063,
		groupID  => 1063,
		typeName => "Oceanic Extractor Control Unit"
	},

	3064	=> {
		typeID   => 3064,
		groupID  => 1063,
		typeName => "Plasma Extractor Control Unit"
	},

	3065	=> {
		typeID   => 3065,
		groupID  => 53,
		typeName => "Tachyon Beam Laser II"
	},

	3066	=> {
		typeID   => 3066,
		groupID  => 133,
		typeName => "Tachyon Beam Laser II Blueprint"
	},

	3067	=> {
		typeID   => 3067,
		groupID  => 1063,
		typeName => "Storm Extractor Control Unit"
	},

	3068	=> {
		typeID   => 3068,
		groupID  => 1063,
		typeName => "Temperate Extractor Control Unit"
	},

	3069	=> {
		typeID   => 3069,
		groupID  => 920,
		typeName => "Incursion ship attributes effects Vanguard"
	},

	3070	=> {
		typeID   => 3070,
		groupID  => 875,
		typeName => "Orca Civilian"
	},

	3071	=> {
		typeID   => 3071,
		groupID  => 1052,
		typeName => "Uroborus"
	},

	3072	=> {
		typeID   => 3072,
		groupID  => 920,
		typeName => "Incursion Effect Assault"
	},

	3073	=> {
		typeID   => 3073,
		groupID  => 227,
		typeName => "Rusty Cloud"
	},

	3074	=> {
		typeID   => 3074,
		groupID  => 74,
		typeName => "150mm Railgun II"
	},

	3075	=> {
		typeID   => 3075,
		groupID  => 154,
		typeName => "150mm Railgun II Blueprint"
	},

	3076	=> {
		typeID   => 3076,
		groupID  => 920,
		typeName => "Incursion Effect HQ"
	},

	3077	=> {
		typeID   => 3077,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Upgrades SU-602"
	},

	3078	=> {
		typeID   => 3078,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Upgrades SU-604"
	},

	3079	=> {
		typeID   => 3079,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Upgrades SU-606"
	},

	3080	=> {
		typeID   => 3080,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Management SM-702"
	},

	3081	=> {
		typeID   => 3081,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Management SM-704"
	},

	3082	=> {
		typeID   => 3082,
		groupID  => 74,
		typeName => "250mm Railgun II"
	},

	3083	=> {
		typeID   => 3083,
		groupID  => 154,
		typeName => "250mm Railgun II Blueprint"
	},

	3084	=> {
		typeID   => 3084,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Management SM-706"
	},

	3085	=> {
		typeID   => 3085,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Emission Systems SE-802"
	},

	3086	=> {
		typeID   => 3086,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Emission Systems SE-804"
	},

	3087	=> {
		typeID   => 3087,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Emission Systems SE-806"
	},

	3088	=> {
		typeID   => 3088,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Operation SP-902"
	},

	3089	=> {
		typeID   => 3089,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Operation SP-904"
	},

	3090	=> {
		typeID   => 3090,
		groupID  => 74,
		typeName => "425mm Railgun II"
	},

	3091	=> {
		typeID   => 3091,
		groupID  => 154,
		typeName => "425mm Railgun II Blueprint"
	},

	3092	=> {
		typeID   => 3092,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Operation SP-906"
	},

	3093	=> {
		typeID   => 3093,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Evasive Maneuvering EM-702"
	},

	3094	=> {
		typeID   => 3094,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Evasive Maneuvering EM-704"
	},

	3095	=> {
		typeID   => 3095,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Evasive Maneuvering EM-706"
	},

	3096	=> {
		typeID   => 3096,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Navigation NN-602"
	},

	3097	=> {
		typeID   => 3097,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Navigation NN-604"
	},

	3098	=> {
		typeID   => 3098,
		groupID  => 74,
		typeName => "75mm Gatling Rail II"
	},

	3099	=> {
		typeID   => 3099,
		groupID  => 154,
		typeName => "75mm Gatling Rail II Blueprint"
	},

	3100	=> {
		typeID   => 3100,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Navigation NN-606"
	},

	3101	=> {
		typeID   => 3101,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Fuel Conservation FC-802"
	},

	3102	=> {
		typeID   => 3102,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Fuel Conservation FC-804"
	},

	3103	=> {
		typeID   => 3103,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Fuel Conservation FC-806"
	},

	3104	=> {
		typeID   => 3104,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Afterburner AB-604"
	},

	3105	=> {
		typeID   => 3105,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Afterburner AB-608"
	},

	3106	=> {
		typeID   => 3106,
		groupID  => 74,
		typeName => "Dual 150mm Railgun II"
	},

	3107	=> {
		typeID   => 3107,
		groupID  => 154,
		typeName => "Dual 150mm Railgun II Blueprint"
	},

	3108	=> {
		typeID   => 3108,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Afterburner AB-612"
	},

	3109	=> {
		typeID   => 3109,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Operation WD-604"
	},

	3110	=> {
		typeID   => 3110,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Operation WD-608"
	},

	3111	=> {
		typeID   => 3111,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Operation WD-612"
	},

	3112	=> {
		typeID   => 3112,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' High Speed Maneuvering HS-902"
	},

	3113	=> {
		typeID   => 3113,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' High Speed Maneuvering HS-904"
	},

	3114	=> {
		typeID   => 3114,
		groupID  => 74,
		typeName => "Dual 250mm Railgun II"
	},

	3115	=> {
		typeID   => 3115,
		groupID  => 154,
		typeName => "Dual 250mm Railgun II Blueprint"
	},

	3116	=> {
		typeID   => 3116,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' High Speed Maneuvering HS-906"
	},

	3117	=> {
		typeID   => 3117,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Speed WS-608"
	},

	3118	=> {
		typeID   => 3118,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Speed WS-613"
	},

	3119	=> {
		typeID   => 3119,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Speed WS-618"
	},

	3120	=> {
		typeID   => 3120,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Acceleration Control AC-602"
	},

	3121	=> {
		typeID   => 3121,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Acceleration Control AC-604"
	},

	3122	=> {
		typeID   => 3122,
		groupID  => 74,
		typeName => "Electron Blaster Cannon II"
	},

	3123	=> {
		typeID   => 3123,
		groupID  => 154,
		typeName => "Electron Blaster Cannon II Blueprint"
	},

	3124	=> {
		typeID   => 3124,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Acceleration Control AC-606"
	},

	3125	=> {
		typeID   => 3125,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Guided Missile Precision GP-802"
	},

	3126	=> {
		typeID   => 3126,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Guided Missile Precision GP-804"
	},

	3127	=> {
		typeID   => 3127,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Guided Missile Precision GP-806"
	},

	3128	=> {
		typeID   => 3128,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Bombardment MB-702"
	},

	3129	=> {
		typeID   => 3129,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Bombardment MB-704"
	},

	3130	=> {
		typeID   => 3130,
		groupID  => 74,
		typeName => "Heavy Electron Blaster II"
	},

	3131	=> {
		typeID   => 3131,
		groupID  => 154,
		typeName => "Heavy Electron Blaster II Blueprint"
	},

	3132	=> {
		typeID   => 3132,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Bombardment MB-706"
	},

	3133	=> {
		typeID   => 3133,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Projection MP-702"
	},

	3134	=> {
		typeID   => 3134,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Projection MP-704"
	},

	3135	=> {
		typeID   => 3135,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Projection MP-706"
	},

	3136	=> {
		typeID   => 3136,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Rapid Launch RL-1002"
	},

	3137	=> {
		typeID   => 3137,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Rapid Launch RL-1004"
	},

	3138	=> {
		typeID   => 3138,
		groupID  => 74,
		typeName => "Heavy Ion Blaster II"
	},

	3139	=> {
		typeID   => 3139,
		groupID  => 154,
		typeName => "Heavy Ion Blaster II Blueprint"
	},

	3140	=> {
		typeID   => 3140,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Rapid Launch RL-1006"
	},

	3141	=> {
		typeID   => 3141,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Target Navigation Prediction TN-902"
	},

	3142	=> {
		typeID   => 3142,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Target Navigation Prediction TN-904"
	},

	3143	=> {
		typeID   => 3143,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Target Navigation Prediction TN-906"
	},

	3144	=> {
		typeID   => 3144,
		groupID  => 746,
		typeName => "Zainou 'Gnome' Launcher CPU Efficiency LE-602"
	},

	3145	=> {
		typeID   => 3145,
		groupID  => 746,
		typeName => "Zainou 'Gnome' Launcher CPU Efficiency LE-604"
	},

	3146	=> {
		typeID   => 3146,
		groupID  => 74,
		typeName => "Heavy Neutron Blaster II"
	},

	3147	=> {
		typeID   => 3147,
		groupID  => 154,
		typeName => "Heavy Neutron Blaster II Blueprint"
	},

	3148	=> {
		typeID   => 3148,
		groupID  => 746,
		typeName => "Zainou 'Gnome' Launcher CPU Efficiency LE-606"
	},

	3149	=> {
		typeID   => 3149,
		groupID  => 746,
		typeName => "Hardwiring - Zainou 'Sharpshooter' ZMX11"
	},

	3150	=> {
		typeID   => 3150,
		groupID  => 746,
		typeName => "Hardwiring - Zainou 'Sharpshooter' ZMX110"
	},

	3151	=> {
		typeID   => 3151,
		groupID  => 746,
		typeName => "Hardwiring - Zainou 'Sharpshooter' ZMX1100"
	},

	3152	=> {
		typeID   => 3152,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Defender Missiles DM-802"
	},

	3153	=> {
		typeID   => 3153,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Defender Missiles DM-804"
	},

	3154	=> {
		typeID   => 3154,
		groupID  => 74,
		typeName => "Ion Blaster Cannon II"
	},

	3155	=> {
		typeID   => 3155,
		groupID  => 154,
		typeName => "Ion Blaster Cannon II Blueprint"
	},

	3156	=> {
		typeID   => 3156,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Defender Missiles DM-806"
	},

	3157	=> {
		typeID   => 3157,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Assault Missiles AM-702"
	},

	3158	=> {
		typeID   => 3158,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Assault Missiles AM-704"
	},

	3159	=> {
		typeID   => 3159,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Assault Missiles AM-706"
	},

	3160	=> {
		typeID   => 3160,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' FOF Explosion Radius FR-1002"
	},

	3161	=> {
		typeID   => 3161,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' FOF Explosion Radius FR-1004"
	},

	3162	=> {
		typeID   => 3162,
		groupID  => 74,
		typeName => "Light Electron Blaster II"
	},

	3163	=> {
		typeID   => 3163,
		groupID  => 154,
		typeName => "Light Electron Blaster II Blueprint"
	},

	3164	=> {
		typeID   => 3164,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' FOF Explosion Radius FR-1006"
	},

	3165	=> {
		typeID   => 3165,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Missiles HM-702"
	},

	3166	=> {
		typeID   => 3166,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Missiles HM-704"
	},

	3167	=> {
		typeID   => 3167,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Missiles HM-706"
	},

	3168	=> {
		typeID   => 3168,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Light Missiles LM-902"
	},

	3169	=> {
		typeID   => 3169,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Light Missiles LM-904"
	},

	3170	=> {
		typeID   => 3170,
		groupID  => 74,
		typeName => "Light Ion Blaster II"
	},

	3171	=> {
		typeID   => 3171,
		groupID  => 154,
		typeName => "Light Ion Blaster II Blueprint"
	},

	3172	=> {
		typeID   => 3172,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Light Missiles LM-906"
	},

	3173	=> {
		typeID   => 3173,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Rockets RD-902"
	},

	3174	=> {
		typeID   => 3174,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Rockets RD-904"
	},

	3175	=> {
		typeID   => 3175,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Rockets RD-906"
	},

	3176	=> {
		typeID   => 3176,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Torpedoes TD-602"
	},

	3177	=> {
		typeID   => 3177,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Torpedoes TD-604"
	},

	3178	=> {
		typeID   => 3178,
		groupID  => 74,
		typeName => "Light Neutron Blaster II"
	},

	3179	=> {
		typeID   => 3179,
		groupID  => 154,
		typeName => "Light Neutron Blaster II Blueprint"
	},

	3180	=> {
		typeID   => 3180,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Torpedoes TD-606"
	},

	3181	=> {
		typeID   => 3181,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Cruise Missiles CM-602"
	},

	3182	=> {
		typeID   => 3182,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Cruise Missiles CM-604"
	},

	3183	=> {
		typeID   => 3183,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Cruise Missiles CM-606"
	},

	3184	=> {
		typeID   => 3184,
		groupID  => 257,
		typeName => "ORE Industrial"
	},

	3185	=> {
		typeID   => 3185,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Medium Projectile Turret MP-802"
	},

	3186	=> {
		typeID   => 3186,
		groupID  => 74,
		typeName => "Neutron Blaster Cannon II"
	},

	3187	=> {
		typeID   => 3187,
		groupID  => 154,
		typeName => "Neutron Blaster Cannon II Blueprint"
	},

	3188	=> {
		typeID   => 3188,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Medium Projectile Turret MP-804"
	},

	3189	=> {
		typeID   => 3189,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Medium Projectile Turret MP-806"
	},

	3190	=> {
		typeID   => 3190,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Motion Prediction MR-702"
	},

	3191	=> {
		typeID   => 3191,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Motion Prediction MR-704"
	},

	3192	=> {
		typeID   => 3192,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Motion Prediction MR-706"
	},

	3193	=> {
		typeID   => 3193,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Surgical Strike SS-902"
	},

	3194	=> {
		typeID   => 3194,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Surgical Strike SS-904"
	},

	3195	=> {
		typeID   => 3195,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Surgical Strike SS-906"
	},

	3196	=> {
		typeID   => 3196,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Large Projectile Turret LP-1002"
	},

	3197	=> {
		typeID   => 3197,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Large Projectile Turret LP-1004"
	},

	3198	=> {
		typeID   => 3198,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Large Projectile Turret LP-1006"
	},

	3199	=> {
		typeID   => 3199,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Small Projectile Turret SP-602"
	},

	3200	=> {
		typeID   => 3200,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Small Projectile Turret SP-604"
	},

	3201	=> {
		typeID   => 3201,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Small Projectile Turret SP-606"
	},

	3202	=> {
		typeID   => 3202,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Small Energy Turret SE-602"
	},

	3203	=> {
		typeID   => 3203,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Controlled Bursts CB-702"
	},

	3204	=> {
		typeID   => 3204,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Gunnery RF-902"
	},

	3205	=> {
		typeID   => 3205,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Large Energy Turret LE-1002"
	},

	3206	=> {
		typeID   => 3206,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Medium Energy Turret ME-802"
	},

	3207	=> {
		typeID   => 3207,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Small Energy Turret SE-604"
	},

	3208	=> {
		typeID   => 3208,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Controlled Bursts CB-704"
	},

	3209	=> {
		typeID   => 3209,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Gunnery RF-904"
	},

	3210	=> {
		typeID   => 3210,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Large Energy Turret LE-1004"
	},

	3211	=> {
		typeID   => 3211,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Medium Energy Turret ME-804"
	},

	3212	=> {
		typeID   => 3212,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Small Energy Turret SE-606"
	},

	3213	=> {
		typeID   => 3213,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Controlled Bursts CB-706"
	},

	3214	=> {
		typeID   => 3214,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Gunnery RF-906"
	},

	3215	=> {
		typeID   => 3215,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Large Energy Turret LE-1006"
	},

	3216	=> {
		typeID   => 3216,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Medium Energy Turret ME-806"
	},

	3217	=> {
		typeID   => 3217,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Sharpshooter ST-902"
	},

	3218	=> {
		typeID   => 3218,
		groupID  => 101,
		typeName => "Harvester Mining Drone"
	},

	3220	=> {
		typeID   => 3220,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Trajectory Analysis TA-704"
	},

	3221	=> {
		typeID   => 3221,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Trajectory Analysis TA-706"
	},

	3222	=> {
		typeID   => 3222,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Large Hybrid Turret LH-1002"
	},

	3223	=> {
		typeID   => 3223,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Large Hybrid Turret LH-1004"
	},

	3224	=> {
		typeID   => 3224,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Large Hybrid Turret LH-1006"
	},

	3225	=> {
		typeID   => 3225,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Small Hybrid Turret SH-602"
	},

	3226	=> {
		typeID   => 3226,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Small Hybrid Turret SH-604"
	},

	3227	=> {
		typeID   => 3227,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Small Hybrid Turret SH-606"
	},

	3228	=> {
		typeID   => 3228,
		groupID  => 742,
		typeName => "Zainou 'Gnome' Weapon Upgrades WU-1002"
	},

	3229	=> {
		typeID   => 3229,
		groupID  => 742,
		typeName => "Zainou 'Gnome' Weapon Upgrades WU-1004"
	},

	3230	=> {
		typeID   => 3230,
		groupID  => 742,
		typeName => "Zainou 'Gnome' Weapon Upgrades WU-1006"
	},

	3231	=> {
		typeID   => 3231,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Medium Hybrid Turret MH-802"
	},

	3232	=> {
		typeID   => 3232,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Medium Hybrid Turret MH-804"
	},

	3233	=> {
		typeID   => 3233,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Medium Hybrid Turret MH-806"
	},

	3234	=> {
		typeID   => 3234,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Sharpshooter ST-904"
	},

	3235	=> {
		typeID   => 3235,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Sharpshooter ST-906"
	},

	3236	=> {
		typeID   => 3236,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Trajectory Analysis TA-702"
	},

	3237	=> {
		typeID   => 3237,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Management EM-802"
	},

	3238	=> {
		typeID   => 3238,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Management EM-804"
	},

	3239	=> {
		typeID   => 3239,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Management EM-806"
	},

	3240	=> {
		typeID   => 3240,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Systems Operation EO-602"
	},

	3241	=> {
		typeID   => 3241,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Systems Operation EO-604"
	},

	3242	=> {
		typeID   => 3242,
		groupID  => 52,
		typeName => "Warp Disruptor I"
	},

	3243	=> {
		typeID   => 3243,
		groupID  => 132,
		typeName => "Warp Disruptor I Blueprint"
	},

	3244	=> {
		typeID   => 3244,
		groupID  => 52,
		typeName => "Warp Disruptor II"
	},

	3245	=> {
		typeID   => 3245,
		groupID  => 132,
		typeName => "Warp Disruptor II Blueprint"
	},

	3246	=> {
		typeID   => 3246,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Systems Operation EO-606"
	},

	3247	=> {
		typeID   => 3247,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Emission Systems ES-702"
	},

	3248	=> {
		typeID   => 3248,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Emission Systems ES-704"
	},

	3249	=> {
		typeID   => 3249,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Emission Systems ES-706"
	},

	3250	=> {
		typeID   => 3250,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Pulse Weapons EP-702"
	},

	3251	=> {
		typeID   => 3251,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Pulse Weapons EP-704"
	},

	3252	=> {
		typeID   => 3252,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Pulse Weapons EP-706"
	},

	3253	=> {
		typeID   => 3253,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Grid Upgrades EU-702"
	},

	3254	=> {
		typeID   => 3254,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Grid Upgrades EU-704"
	},

	3255	=> {
		typeID   => 3255,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Grid Upgrades EU-706"
	},

	3256	=> {
		typeID   => 3256,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Power Grid Management EG-602"
	},

	3257	=> {
		typeID   => 3257,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Power Grid Management EG-604"
	},

	3258	=> {
		typeID   => 3258,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Power Grid Management EG-606"
	},

	3259	=> {
		typeID   => 3259,
		groupID  => 1053,
		typeName => "Orkashu Pontine"
	},

	3260	=> {
		typeID   => 3260,
		groupID  => 186,
		typeName => "Sanshas Supercarrier Wreck"
	},

	3261	=> {
		typeID   => 3261,
		groupID  => 306,
		typeName => "Logistics Control Array"
	},

	3262	=> {
		typeID   => 3262,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' Electronics Upgrades EU-602"
	},

	3263	=> {
		typeID   => 3263,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' Electronics Upgrades EU-604"
	},

	3264	=> {
		typeID   => 3264,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' Electronics Upgrades EU-606"
	},

	3265	=> {
		typeID   => 3265,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' CPU Management EE-602"
	},

	3266	=> {
		typeID   => 3266,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' CPU Management EE-604"
	},

	3267	=> {
		typeID   => 3267,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' CPU Management EE-606"
	},

	3268	=> {
		typeID   => 3268,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Signature Analysis SA-702"
	},

	3269	=> {
		typeID   => 3269,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Signature Analysis SA-704"
	},

	3270	=> {
		typeID   => 3270,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Signature Analysis SA-706"
	},

	3271	=> {
		typeID   => 3271,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Electronic Warfare EW-902"
	},

	3272	=> {
		typeID   => 3272,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Electronic Warfare EW-904"
	},

	3273	=> {
		typeID   => 3273,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Electronic Warfare EW-906"
	},

	3274	=> {
		typeID   => 3274,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Long Range Targeting LT-802"
	},

	3275	=> {
		typeID   => 3275,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Long Range Targeting LT-804"
	},

	3276	=> {
		typeID   => 3276,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Long Range Targeting LT-806"
	},

	3277	=> {
		typeID   => 3277,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Propulsion Jamming PJ-802"
	},

	3278	=> {
		typeID   => 3278,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Propulsion Jamming PJ-804"
	},

	3279	=> {
		typeID   => 3279,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Propulsion Jamming PJ-806"
	},

	3280	=> {
		typeID   => 3280,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Sensor Linking SL-902"
	},

	3281	=> {
		typeID   => 3281,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Sensor Linking SL-904"
	},

	3282	=> {
		typeID   => 3282,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Sensor Linking SL-906"
	},

	3283	=> {
		typeID   => 3283,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Weapon Disruption WD-902"
	},

	3284	=> {
		typeID   => 3284,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Weapon Disruption WD-904"
	},

	3285	=> {
		typeID   => 3285,
		groupID  => 53,
		typeName => "Quad Light Beam Laser II"
	},

	3286	=> {
		typeID   => 3286,
		groupID  => 133,
		typeName => "Quad Light Beam Laser II Blueprint"
	},

	3287	=> {
		typeID   => 3287,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Weapon Disruption WD-906"
	},

	3288	=> {
		typeID   => 3288,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Target Painting TG-902"
	},

	3289	=> {
		typeID   => 3289,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Target Painting TG-904"
	},

	3290	=> {
		typeID   => 3290,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Target Painting TG-906"
	},

	3291	=> {
		typeID   => 3291,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Systems RS-602"
	},

	3292	=> {
		typeID   => 3292,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Systems RS-604"
	},

	3293	=> {
		typeID   => 3293,
		groupID  => 12,
		typeName => "Medium Standard Container"
	},

	3296	=> {
		typeID   => 3296,
		groupID  => 12,
		typeName => "Large Standard Container"
	},

	3297	=> {
		typeID   => 3297,
		groupID  => 12,
		typeName => "Small Standard Container"
	},

	3299	=> {
		typeID   => 3299,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Systems RS-606"
	},

	3300	=> {
		typeID   => 3300,
		groupID  => 255,
		typeName => "Gunnery"
	},

	3301	=> {
		typeID   => 3301,
		groupID  => 255,
		typeName => "Small Hybrid Turret"
	},

	3302	=> {
		typeID   => 3302,
		groupID  => 255,
		typeName => "Small Projectile Turret"
	},

	3303	=> {
		typeID   => 3303,
		groupID  => 255,
		typeName => "Small Energy Turret"
	},

	3304	=> {
		typeID   => 3304,
		groupID  => 255,
		typeName => "Medium Hybrid Turret"
	},

	3305	=> {
		typeID   => 3305,
		groupID  => 255,
		typeName => "Medium Projectile Turret"
	},

	3306	=> {
		typeID   => 3306,
		groupID  => 255,
		typeName => "Medium Energy Turret"
	},

	3307	=> {
		typeID   => 3307,
		groupID  => 255,
		typeName => "Large Hybrid Turret"
	},

	3308	=> {
		typeID   => 3308,
		groupID  => 255,
		typeName => "Large Projectile Turret"
	},

	3309	=> {
		typeID   => 3309,
		groupID  => 255,
		typeName => "Large Energy Turret"
	},

	3310	=> {
		typeID   => 3310,
		groupID  => 255,
		typeName => "Rapid Firing"
	},

	3311	=> {
		typeID   => 3311,
		groupID  => 255,
		typeName => "Sharpshooter"
	},

	3312	=> {
		typeID   => 3312,
		groupID  => 255,
		typeName => "Motion Prediction"
	},

	3315	=> {
		typeID   => 3315,
		groupID  => 255,
		typeName => "Surgical Strike"
	},

	3316	=> {
		typeID   => 3316,
		groupID  => 255,
		typeName => "Controlled Bursts"
	},

	3317	=> {
		typeID   => 3317,
		groupID  => 255,
		typeName => "Trajectory Analysis"
	},

	3318	=> {
		typeID   => 3318,
		groupID  => 1216,
		typeName => "Weapon Upgrades"
	},

	3319	=> {
		typeID   => 3319,
		groupID  => 256,
		typeName => "Missile Launcher Operation"
	},

	3320	=> {
		typeID   => 3320,
		groupID  => 256,
		typeName => "Rockets"
	},

	3321	=> {
		typeID   => 3321,
		groupID  => 256,
		typeName => "Light Missiles"
	},

	3322	=> {
		typeID   => 3322,
		groupID  => 256,
		typeName => "Auto-Targeting Missiles"
	},

	3323	=> {
		typeID   => 3323,
		groupID  => 256,
		typeName => "Defender Missiles"
	},

	3324	=> {
		typeID   => 3324,
		groupID  => 256,
		typeName => "Heavy Missiles"
	},

	3325	=> {
		typeID   => 3325,
		groupID  => 256,
		typeName => "Torpedoes"
	},

	3326	=> {
		typeID   => 3326,
		groupID  => 256,
		typeName => "Cruise Missiles"
	},

	3327	=> {
		typeID   => 3327,
		groupID  => 257,
		typeName => "Spaceship Command"
	},

	3328	=> {
		typeID   => 3328,
		groupID  => 257,
		typeName => "Gallente Frigate"
	},

	3329	=> {
		typeID   => 3329,
		groupID  => 257,
		typeName => "Minmatar Frigate"
	},

	3330	=> {
		typeID   => 3330,
		groupID  => 257,
		typeName => "Caldari Frigate"
	},

	3331	=> {
		typeID   => 3331,
		groupID  => 257,
		typeName => "Amarr Frigate"
	},

	3332	=> {
		typeID   => 3332,
		groupID  => 257,
		typeName => "Gallente Cruiser"
	},

	3333	=> {
		typeID   => 3333,
		groupID  => 257,
		typeName => "Minmatar Cruiser"
	},

	3334	=> {
		typeID   => 3334,
		groupID  => 257,
		typeName => "Caldari Cruiser"
	},

	3335	=> {
		typeID   => 3335,
		groupID  => 257,
		typeName => "Amarr Cruiser"
	},

	3336	=> {
		typeID   => 3336,
		groupID  => 257,
		typeName => "Gallente Battleship"
	},

	3337	=> {
		typeID   => 3337,
		groupID  => 257,
		typeName => "Minmatar Battleship"
	},

	3338	=> {
		typeID   => 3338,
		groupID  => 257,
		typeName => "Caldari Battleship"
	},

	3339	=> {
		typeID   => 3339,
		groupID  => 257,
		typeName => "Amarr Battleship"
	},

	3340	=> {
		typeID   => 3340,
		groupID  => 257,
		typeName => "Gallente Industrial"
	},

	3341	=> {
		typeID   => 3341,
		groupID  => 257,
		typeName => "Minmatar Industrial"
	},

	3342	=> {
		typeID   => 3342,
		groupID  => 257,
		typeName => "Caldari Industrial"
	},

	3343	=> {
		typeID   => 3343,
		groupID  => 257,
		typeName => "Amarr Industrial"
	},

	3344	=> {
		typeID   => 3344,
		groupID  => 257,
		typeName => "Gallente Titan"
	},

	3345	=> {
		typeID   => 3345,
		groupID  => 257,
		typeName => "Minmatar Titan"
	},

	3346	=> {
		typeID   => 3346,
		groupID  => 257,
		typeName => "Caldari Titan"
	},

	3347	=> {
		typeID   => 3347,
		groupID  => 257,
		typeName => "Amarr Titan"
	},

	3348	=> {
		typeID   => 3348,
		groupID  => 258,
		typeName => "Leadership"
	},

	3349	=> {
		typeID   => 3349,
		groupID  => 258,
		typeName => "Skirmish Warfare"
	},

	3350	=> {
		typeID   => 3350,
		groupID  => 258,
		typeName => "Siege Warfare"
	},

	3351	=> {
		typeID   => 3351,
		groupID  => 258,
		typeName => "Siege Warfare Specialist"
	},

	3352	=> {
		typeID   => 3352,
		groupID  => 258,
		typeName => "Information Warfare Specialist"
	},

	3354	=> {
		typeID   => 3354,
		groupID  => 258,
		typeName => "Warfare Link Specialist"
	},

	3355	=> {
		typeID   => 3355,
		groupID  => 278,
		typeName => "Social"
	},

	3356	=> {
		typeID   => 3356,
		groupID  => 278,
		typeName => "Negotiation"
	},

	3357	=> {
		typeID   => 3357,
		groupID  => 278,
		typeName => "Diplomacy"
	},

	3358	=> {
		typeID   => 3358,
		groupID  => 278,
		typeName => "Fast Talk"
	},

	3359	=> {
		typeID   => 3359,
		groupID  => 278,
		typeName => "Connections"
	},

	3361	=> {
		typeID   => 3361,
		groupID  => 278,
		typeName => "Criminal Connections"
	},

	3362	=> {
		typeID   => 3362,
		groupID  => 278,
		typeName => "DED Connections"
	},

	3363	=> {
		typeID   => 3363,
		groupID  => 266,
		typeName => "Corporation Management"
	},

	3364	=> {
		typeID   => 3364,
		groupID  => 266,
		typeName => "Station Management"
	},

	3365	=> {
		typeID   => 3365,
		groupID  => 266,
		typeName => "Starbase Management"
	},

	3366	=> {
		typeID   => 3366,
		groupID  => 266,
		typeName => "Factory Management"
	},

	3367	=> {
		typeID   => 3367,
		groupID  => 266,
		typeName => "Refinery Management"
	},

	3368	=> {
		typeID   => 3368,
		groupID  => 266,
		typeName => "Diplomatic Relations"
	},

	3369	=> {
		typeID   => 3369,
		groupID  => 266,
		typeName => "CFO Training"
	},

	3370	=> {
		typeID   => 3370,
		groupID  => 266,
		typeName => "Chief Science Officer"
	},

	3371	=> {
		typeID   => 3371,
		groupID  => 266,
		typeName => "Public Relations"
	},

	3372	=> {
		typeID   => 3372,
		groupID  => 266,
		typeName => "Intelligence Analyst"
	},

	3373	=> {
		typeID   => 3373,
		groupID  => 1545,
		typeName => "Starbase Defense Management"
	},

	3374	=> {
		typeID   => 3374,
		groupID  => 267,
		typeName => "'Learning'"
	},

	3375	=> {
		typeID   => 3375,
		groupID  => 267,
		typeName => "'Iron Will'"
	},

	3376	=> {
		typeID   => 3376,
		groupID  => 267,
		typeName => "'Empathy'"
	},

	3377	=> {
		typeID   => 3377,
		groupID  => 267,
		typeName => "'Analytical Mind'"
	},

	3378	=> {
		typeID   => 3378,
		groupID  => 267,
		typeName => "'Instant Recall'"
	},

	3379	=> {
		typeID   => 3379,
		groupID  => 267,
		typeName => "'Spatial Awareness'"
	},

	3380	=> {
		typeID   => 3380,
		groupID  => 268,
		typeName => "Industry"
	},

	3381	=> {
		typeID   => 3381,
		groupID  => 268,
		typeName => "Amarr Tech"
	},

	3382	=> {
		typeID   => 3382,
		groupID  => 268,
		typeName => "Caldari Tech"
	},

	3383	=> {
		typeID   => 3383,
		groupID  => 268,
		typeName => "Gallente Tech"
	},

	3384	=> {
		typeID   => 3384,
		groupID  => 268,
		typeName => "Minmatar Tech"
	},

	3385	=> {
		typeID   => 3385,
		groupID  => 1218,
		typeName => "Reprocessing"
	},

	3386	=> {
		typeID   => 3386,
		groupID  => 1218,
		typeName => "Mining"
	},

	3387	=> {
		typeID   => 3387,
		groupID  => 268,
		typeName => "Mass Production"
	},

	3388	=> {
		typeID   => 3388,
		groupID  => 268,
		typeName => "Advanced Industry"
	},

	3389	=> {
		typeID   => 3389,
		groupID  => 1218,
		typeName => "Reprocessing Efficiency"
	},

	3390	=> {
		typeID   => 3390,
		groupID  => 1218,
		typeName => "Mobile Refinery Operation"
	},

	3391	=> {
		typeID   => 3391,
		groupID  => 268,
		typeName => "Mobile Factory Operation"
	},

	3392	=> {
		typeID   => 3392,
		groupID  => 1210,
		typeName => "Mechanics"
	},

	3393	=> {
		typeID   => 3393,
		groupID  => 1210,
		typeName => "Repair Systems"
	},

	3394	=> {
		typeID   => 3394,
		groupID  => 1210,
		typeName => "Hull Upgrades"
	},

	3395	=> {
		typeID   => 3395,
		groupID  => 268,
		typeName => "Advanced Small Ship Construction"
	},

	3396	=> {
		typeID   => 3396,
		groupID  => 268,
		typeName => "Advanced Industrial Ship Construction"
	},

	3397	=> {
		typeID   => 3397,
		groupID  => 268,
		typeName => "Advanced Medium Ship Construction"
	},

	3398	=> {
		typeID   => 3398,
		groupID  => 268,
		typeName => "Advanced Large Ship Construction"
	},

	3400	=> {
		typeID   => 3400,
		groupID  => 268,
		typeName => "Outpost Construction"
	},

	3402	=> {
		typeID   => 3402,
		groupID  => 270,
		typeName => "Science"
	},

	3403	=> {
		typeID   => 3403,
		groupID  => 270,
		typeName => "Research"
	},

	3404	=> {
		typeID   => 3404,
		groupID  => 267,
		typeName => "Genetic Engineering"
	},

	3405	=> {
		typeID   => 3405,
		groupID  => 1220,
		typeName => "Biology"
	},

	3406	=> {
		typeID   => 3406,
		groupID  => 270,
		typeName => "Laboratory Operation"
	},

	3408	=> {
		typeID   => 3408,
		groupID  => 270,
		typeName => "Sleeper Encryption Methods"
	},

	3409	=> {
		typeID   => 3409,
		groupID  => 270,
		typeName => "Metallurgy"
	},

	3410	=> {
		typeID   => 3410,
		groupID  => 1218,
		typeName => "Astrogeology"
	},

	3411	=> {
		typeID   => 3411,
		groupID  => 1220,
		typeName => "Cybernetics"
	},

	3412	=> {
		typeID   => 3412,
		groupID  => 1217,
		typeName => "Astrometrics"
	},

	3413	=> {
		typeID   => 3413,
		groupID  => 1216,
		typeName => "Power Grid Management"
	},

	3414	=> {
		typeID   => 3414,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Remote Armor Repair Systems RA-702"
	},

	3415	=> {
		typeID   => 3415,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Remote Armor Repair Systems RA-704"
	},

	3416	=> {
		typeID   => 3416,
		groupID  => 1209,
		typeName => "Shield Operation"
	},

	3417	=> {
		typeID   => 3417,
		groupID  => 1216,
		typeName => "Capacitor Systems Operation"
	},

	3418	=> {
		typeID   => 3418,
		groupID  => 1216,
		typeName => "Capacitor Management"
	},

	3419	=> {
		typeID   => 3419,
		groupID  => 1209,
		typeName => "Shield Management"
	},

	3420	=> {
		typeID   => 3420,
		groupID  => 1209,
		typeName => "Tactical Shield Manipulation"
	},

	3421	=> {
		typeID   => 3421,
		groupID  => 1216,
		typeName => "Energy Pulse Weapons"
	},

	3422	=> {
		typeID   => 3422,
		groupID  => 1209,
		typeName => "Shield Emission Systems"
	},

	3423	=> {
		typeID   => 3423,
		groupID  => 1216,
		typeName => "Capacitor Emission Systems"
	},

	3424	=> {
		typeID   => 3424,
		groupID  => 1216,
		typeName => "Energy Grid Upgrades"
	},

	3425	=> {
		typeID   => 3425,
		groupID  => 1209,
		typeName => "Shield Upgrades"
	},

	3426	=> {
		typeID   => 3426,
		groupID  => 1216,
		typeName => "CPU Management"
	},

	3427	=> {
		typeID   => 3427,
		groupID  => 272,
		typeName => "Electronic Warfare"
	},

	3428	=> {
		typeID   => 3428,
		groupID  => 1213,
		typeName => "Long Range Targeting"
	},

	3429	=> {
		typeID   => 3429,
		groupID  => 1213,
		typeName => "Target Management"
	},

	3430	=> {
		typeID   => 3430,
		groupID  => 1213,
		typeName => "Advanced Target Management"
	},

	3431	=> {
		typeID   => 3431,
		groupID  => 1213,
		typeName => "Signature Analysis"
	},

	3432	=> {
		typeID   => 3432,
		groupID  => 1216,
		typeName => "Electronics Upgrades"
	},

	3433	=> {
		typeID   => 3433,
		groupID  => 272,
		typeName => "Sensor Linking"
	},

	3434	=> {
		typeID   => 3434,
		groupID  => 272,
		typeName => "Weapon Disruption"
	},

	3435	=> {
		typeID   => 3435,
		groupID  => 272,
		typeName => "Propulsion Jamming"
	},

	3436	=> {
		typeID   => 3436,
		groupID  => 273,
		typeName => "Drones"
	},

	3437	=> {
		typeID   => 3437,
		groupID  => 273,
		typeName => "Drone Avionics"
	},

	3438	=> {
		typeID   => 3438,
		groupID  => 273,
		typeName => "Mining Drone Operation"
	},

	3439	=> {
		typeID   => 3439,
		groupID  => 273,
		typeName => "Repair Drone Operation"
	},

	3440	=> {
		typeID   => 3440,
		groupID  => 273,
		typeName => "Salvage Drone Operation"
	},

	3441	=> {
		typeID   => 3441,
		groupID  => 273,
		typeName => "Heavy Drone Operation"
	},

	3442	=> {
		typeID   => 3442,
		groupID  => 273,
		typeName => "Drone Interfacing"
	},

	3443	=> {
		typeID   => 3443,
		groupID  => 274,
		typeName => "Trade"
	},

	3444	=> {
		typeID   => 3444,
		groupID  => 274,
		typeName => "Retail"
	},

	3445	=> {
		typeID   => 3445,
		groupID  => 274,
		typeName => "Black Market Trading"
	},

	3446	=> {
		typeID   => 3446,
		groupID  => 274,
		typeName => "Broker Relations"
	},

	3447	=> {
		typeID   => 3447,
		groupID  => 274,
		typeName => "Visibility"
	},

	3448	=> {
		typeID   => 3448,
		groupID  => 274,
		typeName => "Smuggling"
	},

	3449	=> {
		typeID   => 3449,
		groupID  => 275,
		typeName => "Navigation"
	},

	3450	=> {
		typeID   => 3450,
		groupID  => 275,
		typeName => "Afterburner"
	},

	3451	=> {
		typeID   => 3451,
		groupID  => 275,
		typeName => "Fuel Conservation"
	},

	3452	=> {
		typeID   => 3452,
		groupID  => 275,
		typeName => "Acceleration Control"
	},

	3453	=> {
		typeID   => 3453,
		groupID  => 275,
		typeName => "Evasive Maneuvering"
	},

	3454	=> {
		typeID   => 3454,
		groupID  => 275,
		typeName => "High Speed Maneuvering"
	},

	3455	=> {
		typeID   => 3455,
		groupID  => 275,
		typeName => "Warp Drive Operation"
	},

	3456	=> {
		typeID   => 3456,
		groupID  => 275,
		typeName => "Jump Drive Operation"
	},

	3457	=> {
		typeID   => 3457,
		groupID  => 279,
		typeName => "Test LCO Drone"
	},

	3465	=> {
		typeID   => 3465,
		groupID  => 340,
		typeName => "Large Secure Container"
	},

	3466	=> {
		typeID   => 3466,
		groupID  => 340,
		typeName => "Medium Secure Container"
	},

	3467	=> {
		typeID   => 3467,
		groupID  => 340,
		typeName => "Small Secure Container"
	},

	3468	=> {
		typeID   => 3468,
		groupID  => 649,
		typeName => "Plastic Wrap"
	},

	3469	=> {
		typeID   => 3469,
		groupID  => 285,
		typeName => "Basic Co-Processor"
	},

	3470	=> {
		typeID   => 3470,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Remote Armor Repair Systems RA-706"
	},

	3471	=> {
		typeID   => 3471,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Mechanic MC-802"
	},

	3472	=> {
		typeID   => 3472,
		groupID  => 61,
		typeName => "X-Large Capacitor Battery II"
	},

	3473	=> {
		typeID   => 3473,
		groupID  => 141,
		typeName => "X-Large Capacitor Battery II Blueprint"
	},

	3474	=> {
		typeID   => 3474,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Mechanic MC-804"
	},

	3475	=> {
		typeID   => 3475,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Mechanic MC-806"
	},

	3476	=> {
		typeID   => 3476,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Proficiency RP-902"
	},

	3477	=> {
		typeID   => 3477,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Proficiency RP-904"
	},

	3478	=> {
		typeID   => 3478,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Proficiency RP-906"
	},

	3479	=> {
		typeID   => 3479,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Hull Upgrades HG-1002"
	},

	3480	=> {
		typeID   => 3480,
		groupID  => 61,
		typeName => "Micro Capacitor Battery II"
	},

	3481	=> {
		typeID   => 3481,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Hull Upgrades HG-1004"
	},

	3482	=> {
		typeID   => 3482,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Hull Upgrades HG-1006"
	},

	3483	=> {
		typeID   => 3483,
		groupID  => 283,
		typeName => "Captured Civilians"
	},

	3484	=> {
		typeID   => 3484,
		groupID  => 1056,
		typeName => "Citizen Astur"
	},

	3485	=> {
		typeID   => 3485,
		groupID  => 1056,
		typeName => "Slave 32152"
	},

	3486	=> {
		typeID   => 3486,
		groupID  => 1056,
		typeName => "Slave Tama01"
	},

	3487	=> {
		typeID   => 3487,
		groupID  => 1056,
		typeName => "Slave Heavenbound02"
	},

	3488	=> {
		typeID   => 3488,
		groupID  => 61,
		typeName => "Small Cap Battery II"
	},

	3489	=> {
		typeID   => 3489,
		groupID  => 141,
		typeName => "Small Cap Battery II Blueprint"
	},

	3490	=> {
		typeID   => 3490,
		groupID  => 1056,
		typeName => "Slave Endoma01"
	},

	3491	=> {
		typeID   => 3491,
		groupID  => 306,
		typeName => "Sansha Communications Array"
	},

	3492	=> {
		typeID   => 3492,
		groupID  => 1053,
		typeName => "Sansha's Nation Commander"
	},

	3493	=> {
		typeID   => 3493,
		groupID  => 920,
		typeName => "Incursion ship attributes effects Assault "
	},

	3494	=> {
		typeID   => 3494,
		groupID  => 920,
		typeName => "Incursion ship attributes effects HQ"
	},

	3495	=> {
		typeID   => 3495,
		groupID  => 952,
		typeName => "Shield Transfer Control Tower"
	},

	3496	=> {
		typeID   => 3496,
		groupID  => 61,
		typeName => "Medium Cap Battery II"
	},

	3497	=> {
		typeID   => 3497,
		groupID  => 141,
		typeName => "Medium Cap Battery II Blueprint"
	},

	3498	=> {
		typeID   => 3498,
		groupID  => 306,
		typeName => "CONCORD MTAC Factory"
	},

	3499	=> {
		typeID   => 3499,
		groupID  => 319,
		typeName => "Sansha Starbase Control Tower"
	},

	3500	=> {
		typeID   => 3500,
		groupID  => 319,
		typeName => "Reinforced Nation Outpost"
	},

	3501	=> {
		typeID   => 3501,
		groupID  => 314,
		typeName => "CONCORD MTAC"
	},

	3502	=> {
		typeID   => 3502,
		groupID  => 952,
		typeName => "Nation Ore Refinery"
	},

	3503	=> {
		typeID   => 3503,
		groupID  => 952,
		typeName => "Emergency Evacuation Freighter"
	},

	3504	=> {
		typeID   => 3504,
		groupID  => 61,
		typeName => "Large Cap Battery II"
	},

	3505	=> {
		typeID   => 3505,
		groupID  => 141,
		typeName => "Large Cap Battery II Blueprint"
	},

	3506	=> {
		typeID   => 3506,
		groupID  => 306,
		typeName => "Central Control Nexus"
	},

	3507	=> {
		typeID   => 3507,
		groupID  => 526,
		typeName => "Tactical Response Transmitter"
	},

	3508	=> {
		typeID   => 3508,
		groupID  => 952,
		typeName => "Sansha Control Relay"
	},

	3509	=> {
		typeID   => 3509,
		groupID  => 226,
		typeName => "Sansha Logistics Control Array"
	},

	3510	=> {
		typeID   => 3510,
		groupID  => 226,
		typeName => "Sansha Remote Logistics Station"
	},

	3511	=> {
		typeID   => 3511,
		groupID  => 1054,
		typeName => "Gang booster test NPC"
	},

	3512	=> {
		typeID   => 3512,
		groupID  => 53,
		typeName => "Focused Medium Pulse Laser II"
	},

	3513	=> {
		typeID   => 3513,
		groupID  => 133,
		typeName => "Focused Medium Pulse Laser II Blueprint"
	},

	3514	=> {
		typeID   => 3514,
		groupID  => 659,
		typeName => "Revenant"
	},

	3515	=> {
		typeID   => 3515,
		groupID  => 1013,
		typeName => "Revenant Blueprint"
	},

	3516	=> {
		typeID   => 3516,
		groupID  => 324,
		typeName => "Malice"
	},

	3517	=> {
		typeID   => 3517,
		groupID  => 105,
		typeName => "Malice Blueprint"
	},

	3518	=> {
		typeID   => 3518,
		groupID  => 358,
		typeName => "Vangel"
	},

	3519	=> {
		typeID   => 3519,
		groupID  => 106,
		typeName => "Vangel Blueprint"
	},

	3520	=> {
		typeID   => 3520,
		groupID  => 53,
		typeName => "Heavy Pulse Laser II"
	},

	3521	=> {
		typeID   => 3521,
		groupID  => 133,
		typeName => "Heavy Pulse Laser II Blueprint"
	},

	3522	=> {
		typeID   => 3522,
		groupID  => 1073,
		typeName => "Ion Cannon"
	},

	3523	=> {
		typeID   => 3523,
		groupID  => 226,
		typeName => "Caldari Chimera Carrier"
	},

	3524	=> {
		typeID   => 3524,
		groupID  => 1053,
		typeName => "Jel Rhomben"
	},

	3525	=> {
		typeID   => 3525,
		groupID  => 1053,
		typeName => "Youl Meten"
	},

	3526	=> {
		typeID   => 3526,
		groupID  => 1053,
		typeName => "Orkashu Myelen"
	},

	3527	=> {
		typeID   => 3527,
		groupID  => 1054,
		typeName => "Raa Thalamus"
	},

	3528	=> {
		typeID   => 3528,
		groupID  => 62,
		typeName => "Medium Armor Repairer I"
	},

	3529	=> {
		typeID   => 3529,
		groupID  => 142,
		typeName => "Medium Armor Repairer I Blueprint"
	},

	3530	=> {
		typeID   => 3530,
		groupID  => 62,
		typeName => "Medium Armor Repairer II"
	},

	3531	=> {
		typeID   => 3531,
		groupID  => 142,
		typeName => "Medium Armor Repairer II Blueprint"
	},

	3532	=> {
		typeID   => 3532,
		groupID  => 25,
		typeName => "Echelon"
	},

	3533	=> {
		typeID   => 3533,
		groupID  => 105,
		typeName => "Echelon Blueprint"
	},

	3534	=> {
		typeID   => 3534,
		groupID  => 62,
		typeName => "CONCORD Capital Armor Repairer"
	},

	3535	=> {
		typeID   => 3535,
		groupID  => 142,
		typeName => "CONCORD Capital Armor Repairer Blueprint"
	},

	3536	=> {
		typeID   => 3536,
		groupID  => 325,
		typeName => "CONCORD Capital Remote Armor Repairer"
	},

	3537	=> {
		typeID   => 3537,
		groupID  => 350,
		typeName => "CONCORD Capital Remote Armor Repairer Blueprint"
	},

	3538	=> {
		typeID   => 3538,
		groupID  => 62,
		typeName => "Large Armor Repairer I"
	},

	3539	=> {
		typeID   => 3539,
		groupID  => 142,
		typeName => "Large Armor Repairer I Blueprint"
	},

	3540	=> {
		typeID   => 3540,
		groupID  => 62,
		typeName => "Large Armor Repairer II"
	},

	3541	=> {
		typeID   => 3541,
		groupID  => 142,
		typeName => "Large Armor Repairer II Blueprint"
	},

	3542	=> {
		typeID   => 3542,
		groupID  => 40,
		typeName => "CONCORD Capital Shield Booster"
	},

	3543	=> {
		typeID   => 3543,
		groupID  => 120,
		typeName => "Capital Neutron Saturation Injector I Blueprint"
	},

	3544	=> {
		typeID   => 3544,
		groupID  => 41,
		typeName => "CONCORD Capital Remote Shield Booster"
	},

	3545	=> {
		typeID   => 3545,
		groupID  => 121,
		typeName => "CONCORD Capital Remote Shield Booster Blueprint"
	},

	3546	=> {
		typeID   => 3546,
		groupID  => 74,
		typeName => "CONCORD Ion Siege Blaster"
	},

	3547	=> {
		typeID   => 3547,
		groupID  => 154,
		typeName => "CONCORD Ion Siege Blaster Blueprint"
	},

	3548	=> {
		typeID   => 3548,
		groupID  => 286,
		typeName => "Insurance Teaching Drone"
	},

	3549	=> {
		typeID   => 3549,
		groupID  => 100,
		typeName => "Tutorial Attack Drone"
	},

	3550	=> {
		typeID   => 3550,
		groupID  => 74,
		typeName => "CONCORD Dual 1000mm Railgun"
	},

	3551	=> {
		typeID   => 3551,
		groupID  => 1217,
		typeName => "Survey"
	},

	3552	=> {
		typeID   => 3552,
		groupID  => 87,
		typeName => "Cap Booster 75"
	},

	3553	=> {
		typeID   => 3553,
		groupID  => 169,
		typeName => "Cap Booster 75 Blueprint"
	},

	3554	=> {
		typeID   => 3554,
		groupID  => 87,
		typeName => "Cap Booster 100"
	},

	3555	=> {
		typeID   => 3555,
		groupID  => 169,
		typeName => "Cap Booster 100 Blueprint"
	},

	3556	=> {
		typeID   => 3556,
		groupID  => 76,
		typeName => "Micro Capacitor Booster I"
	},

	3557	=> {
		typeID   => 3557,
		groupID  => 154,
		typeName => "CONCORD Dual 1000mm Railgun Blueprint"
	},

	3558	=> {
		typeID   => 3558,
		groupID  => 76,
		typeName => "Micro Capacitor Booster II"
	},

	3559	=> {
		typeID   => 3559,
		groupID  => 53,
		typeName => "CONCORD Dual Giga Pulse Laser"
	},

	3560	=> {
		typeID   => 3560,
		groupID  => 133,
		typeName => "CONCORD Dual Giga Pulse Laser Blueprint"
	},

	3561	=> {
		typeID   => 3561,
		groupID  => 53,
		typeName => "CONCORD Dual Giga Beam Laser"
	},

	3562	=> {
		typeID   => 3562,
		groupID  => 133,
		typeName => "CONCORD Dual Giga Beam Laser Blueprint"
	},

	3563	=> {
		typeID   => 3563,
		groupID  => 1674,
		typeName => "CONCORD XL Cruise Missile Launcher"
	},

	3564	=> {
		typeID   => 3564,
		groupID  => 136,
		typeName => "CONCORD XL Cruise Missile Launcher Blueprint"
	},

	3565	=> {
		typeID   => 3565,
		groupID  => 524,
		typeName => "CONCORD XL Torpedo Launcher"
	},

	3566	=> {
		typeID   => 3566,
		groupID  => 76,
		typeName => "Small Capacitor Booster I"
	},

	3567	=> {
		typeID   => 3567,
		groupID  => 156,
		typeName => "Small Capacitor Booster I Blueprint"
	},

	3568	=> {
		typeID   => 3568,
		groupID  => 76,
		typeName => "Small Capacitor Booster II"
	},

	3569	=> {
		typeID   => 3569,
		groupID  => 156,
		typeName => "Small Capacitor Booster II Blueprint"
	},

	3570	=> {
		typeID   => 3570,
		groupID  => 136,
		typeName => "CONCORD XL Torpedo Launcher Blueprint"
	},

	3571	=> {
		typeID   => 3571,
		groupID  => 55,
		typeName => "CONCORD Quad 3500mm Siege Artillery"
	},

	3572	=> {
		typeID   => 3572,
		groupID  => 135,
		typeName => "CONCORD Quad 3500mm Siege Artillery Blueprint"
	},

	3573	=> {
		typeID   => 3573,
		groupID  => 55,
		typeName => "CONCORD Hexa 2500mm Repeating Cannon"
	},

	3574	=> {
		typeID   => 3574,
		groupID  => 135,
		typeName => "CONCORD Hexa 2500mm Repeating Cannon Blueprint"
	},

	3575	=> {
		typeID   => 3575,
		groupID  => 67,
		typeName => "CONCORD Capital Remote Capacitor Transmitter"
	},

	3576	=> {
		typeID   => 3576,
		groupID  => 76,
		typeName => "Heavy Capacitor Booster I"
	},

	3577	=> {
		typeID   => 3577,
		groupID  => 156,
		typeName => "Heavy Capacitor Booster I Blueprint"
	},

	3578	=> {
		typeID   => 3578,
		groupID  => 76,
		typeName => "Heavy Capacitor Booster II"
	},

	3579	=> {
		typeID   => 3579,
		groupID  => 156,
		typeName => "Heavy Capacitor Booster II Blueprint"
	},

	3580	=> {
		typeID   => 3580,
		groupID  => 147,
		typeName => "CONCORD Capital Remote Capacitor Transmitter Blueprint"
	},

	3581	=> {
		typeID   => 3581,
		groupID  => 538,
		typeName => "Purloined Sansha Data Analyzer"
	},

	3582	=> {
		typeID   => 3582,
		groupID  => 917,
		typeName => "Purloined Sansha Data Analyzer Blueprint"
	},

	3583	=> {
		typeID   => 3583,
		groupID  => 314,
		typeName => "Badly Mangled Components"
	},

	3584	=> {
		typeID   => 3584,
		groupID  => 314,
		typeName => "True Slave Decryption Node"
	},

	3585	=> {
		typeID   => 3585,
		groupID  => 314,
		typeName => "Mangled Sansha Data Analyzer "
	},

	3586	=> {
		typeID   => 3586,
		groupID  => 41,
		typeName => "Small Remote Shield Booster I"
	},

	3587	=> {
		typeID   => 3587,
		groupID  => 121,
		typeName => "Small Remote Shield Booster I Blueprint"
	},

	3588	=> {
		typeID   => 3588,
		groupID  => 41,
		typeName => "Small Remote Shield Booster II"
	},

	3589	=> {
		typeID   => 3589,
		groupID  => 121,
		typeName => "Small Remote Shield Booster II Blueprint"
	},

	3590	=> {
		typeID   => 3590,
		groupID  => 917,
		typeName => "Mangled Sansha Data Analyzer Blueprint"
	},

	3591	=> {
		typeID   => 3591,
		groupID  => 319,
		typeName => "Angel Control Tower"
	},

	3592	=> {
		typeID   => 3592,
		groupID  => 226,
		typeName => "Caldari Wyvern Carrier "
	},

	3593	=> {
		typeID   => 3593,
		groupID  => 226,
		typeName => "Caldari Phoenix Dreadnough"
	},

	3594	=> {
		typeID   => 3594,
		groupID  => 226,
		typeName => "Caldari Leviathan Titan"
	},

	3595	=> {
		typeID   => 3595,
		groupID  => 226,
		typeName => "Caldari Badger Industrial Ship"
	},

	3596	=> {
		typeID   => 3596,
		groupID  => 41,
		typeName => "Medium Remote Shield Booster I"
	},

	3597	=> {
		typeID   => 3597,
		groupID  => 121,
		typeName => "Medium Remote Shield Booster I Blueprint"
	},

	3598	=> {
		typeID   => 3598,
		groupID  => 41,
		typeName => "Medium Remote Shield Booster II"
	},

	3599	=> {
		typeID   => 3599,
		groupID  => 121,
		typeName => "Medium Remote Shield Booster II Blueprint"
	},

	3600	=> {
		typeID   => 3600,
		groupID  => 226,
		typeName => "Caldari Tayra Industrial Ship"
	},

	3601	=> {
		typeID   => 3601,
		groupID  => 226,
		typeName => "Caldari Charon Freighter"
	},

	3602	=> {
		typeID   => 3602,
		groupID  => 226,
		typeName => "Gallente Atron Frigate"
	},

	3603	=> {
		typeID   => 3603,
		groupID  => 226,
		typeName => "Gallente Imicus Frigate"
	},

	3604	=> {
		typeID   => 3604,
		groupID  => 226,
		typeName => "Gallente Incursus Frigate"
	},

	3605	=> {
		typeID   => 3605,
		groupID  => 226,
		typeName => "Gallente Maulus Frigate"
	},

	3606	=> {
		typeID   => 3606,
		groupID  => 41,
		typeName => "Large Remote Shield Booster I"
	},

	3607	=> {
		typeID   => 3607,
		groupID  => 121,
		typeName => "Large Remote Shield Booster I Blueprint"
	},

	3608	=> {
		typeID   => 3608,
		groupID  => 41,
		typeName => "Large Remote Shield Booster II"
	},

	3609	=> {
		typeID   => 3609,
		groupID  => 121,
		typeName => "Large Remote Shield Booster II Blueprint"
	},

	3610	=> {
		typeID   => 3610,
		groupID  => 226,
		typeName => "Gallente Navitas Frigate"
	},

	3611	=> {
		typeID   => 3611,
		groupID  => 226,
		typeName => "Gallente Tristan Frigate"
	},

	3612	=> {
		typeID   => 3612,
		groupID  => 226,
		typeName => "Gallente Catalyst Destroyer"
	},

	3613	=> {
		typeID   => 3613,
		groupID  => 226,
		typeName => "Gallente Celestis Cruiser"
	},

	3614	=> {
		typeID   => 3614,
		groupID  => 226,
		typeName => "Gallente Exequror Cruiser"
	},

	3615	=> {
		typeID   => 3615,
		groupID  => 226,
		typeName => "Gallente Thorax Cruiser"
	},

	3616	=> {
		typeID   => 3616,
		groupID  => 41,
		typeName => "Capital Remote Shield Booster I"
	},

	3617	=> {
		typeID   => 3617,
		groupID  => 121,
		typeName => "Capital Remote Shield Booster I Blueprint"
	},

	3618	=> {
		typeID   => 3618,
		groupID  => 41,
		typeName => "Capital Remote Shield Booster II"
	},

	3619	=> {
		typeID   => 3619,
		groupID  => 121,
		typeName => "Capital Remote Shield Booster II Blueprint"
	},

	3620	=> {
		typeID   => 3620,
		groupID  => 226,
		typeName => "Fortified Starbase Shield Generator"
	},

	3624	=> {
		typeID   => 3624,
		groupID  => 306,
		typeName => "Holding Cell"
	},

	3625	=> {
		typeID   => 3625,
		groupID  => 517,
		typeName => "Rohan Shadrak's Bellicose"
	},

	3626	=> {
		typeID   => 3626,
		groupID  => 226,
		typeName => "Sansha Station Ruins"
	},

	3627	=> {
		typeID   => 3627,
		groupID  => 314,
		typeName => "Construction Materials"
	},

	3628	=> {
		typeID   => 3628,
		groupID  => 659,
		typeName => "Nation"
	},

	3629	=> {
		typeID   => 3629,
		groupID  => 306,
		typeName => "Amarr Academy Office"
	},

	3630	=> {
		typeID   => 3630,
		groupID  => 226,
		typeName => "Amarr Crucifier Frigate"
	},

	3631	=> {
		typeID   => 3631,
		groupID  => 226,
		typeName => "Amarr Executioner Frigate"
	},

	3632	=> {
		typeID   => 3632,
		groupID  => 226,
		typeName => "Amarr Inquisitor Frigate"
	},

	3633	=> {
		typeID   => 3633,
		groupID  => 226,
		typeName => "Amarr Magnate Frigate"
	},

	3634	=> {
		typeID   => 3634,
		groupID  => 53,
		typeName => "Civilian Gatling Pulse Laser"
	},

	3635	=> {
		typeID   => 3635,
		groupID  => 226,
		typeName => "Amarr Punisher Frigate"
	},

	3636	=> {
		typeID   => 3636,
		groupID  => 53,
		typeName => "Civilian Gatling Autocannon"
	},

	3637	=> {
		typeID   => 3637,
		groupID  => 226,
		typeName => "Amarr Tormentor Frigate"
	},

	3638	=> {
		typeID   => 3638,
		groupID  => 53,
		typeName => "Civilian Gatling Railgun"
	},

	3639	=> {
		typeID   => 3639,
		groupID  => 226,
		typeName => "Amarr Coercer Destroyer"
	},

	3640	=> {
		typeID   => 3640,
		groupID  => 53,
		typeName => "Civilian Light Electron Blaster"
	},

	3641	=> {
		typeID   => 3641,
		groupID  => 226,
		typeName => "Amarr Arbitrator Cruiser"
	},

	3642	=> {
		typeID   => 3642,
		groupID  => 226,
		typeName => "Amarr Augoror Cruiser"
	},

	3643	=> {
		typeID   => 3643,
		groupID  => 280,
		typeName => "Soil"
	},

	3644	=> {
		typeID   => 3644,
		groupID  => 226,
		typeName => "Amarr Omen Cruiser"
	},

	3645	=> {
		typeID   => 3645,
		groupID  => 1042,
		typeName => "Water"
	},

	3646	=> {
		typeID   => 3646,
		groupID  => 226,
		typeName => "Amarr Harbinger Battlecruiser"
	},

	3647	=> {
		typeID   => 3647,
		groupID  => 280,
		typeName => "Holoreels"
	},

	3648	=> {
		typeID   => 3648,
		groupID  => 226,
		typeName => "Amarr Prophecy Battlecruiser"
	},

	3649	=> {
		typeID   => 3649,
		groupID  => 226,
		typeName => "Amarr Abaddon Battleship"
	},

	3650	=> {
		typeID   => 3650,
		groupID  => 226,
		typeName => "Amarr Apocalypse Battleship"
	},

	3651	=> {
		typeID   => 3651,
		groupID  => 54,
		typeName => "Civilian Miner"
	},

	3652	=> {
		typeID   => 3652,
		groupID  => 226,
		typeName => "Amarr Bestower Industrial Ship"
	},

	3653	=> {
		typeID   => 3653,
		groupID  => 63,
		typeName => "Medium Hull Repairer I"
	},

	3654	=> {
		typeID   => 3654,
		groupID  => 143,
		typeName => "Medium Hull Repairer I Blueprint"
	},

	3655	=> {
		typeID   => 3655,
		groupID  => 63,
		typeName => "Medium Hull Repairer II"
	},

	3656	=> {
		typeID   => 3656,
		groupID  => 143,
		typeName => "Medium Hull Repairer II Blueprint"
	},

	3657	=> {
		typeID   => 3657,
		groupID  => 226,
		typeName => "Amarr Sigil Industrial Ship"
	},

	3658	=> {
		typeID   => 3658,
		groupID  => 226,
		typeName => "Amarr Maller Cruiser"
	},

	3659	=> {
		typeID   => 3659,
		groupID  => 226,
		typeName => "Amarr Aeon Carrier"
	},

	3660	=> {
		typeID   => 3660,
		groupID  => 226,
		typeName => "Amarr Archon Carrier"
	},

	3661	=> {
		typeID   => 3661,
		groupID  => 226,
		typeName => "Amarr Revelation Dreadnought"
	},

	3662	=> {
		typeID   => 3662,
		groupID  => 226,
		typeName => "Amarr Avatar Titan"
	},

	3663	=> {
		typeID   => 3663,
		groupID  => 63,
		typeName => "Large Hull Repairer I"
	},

	3664	=> {
		typeID   => 3664,
		groupID  => 143,
		typeName => "Large Hull Repairer I Blueprint"
	},

	3665	=> {
		typeID   => 3665,
		groupID  => 63,
		typeName => "Large Hull Repairer II"
	},

	3666	=> {
		typeID   => 3666,
		groupID  => 143,
		typeName => "Large Hull Repairer II Blueprint"
	},

	3667	=> {
		typeID   => 3667,
		groupID  => 226,
		typeName => "Amarr Providence Freighter"
	},

	3668	=> {
		typeID   => 3668,
		groupID  => 226,
		typeName => "Gallente Brutix Battlecruiser"
	},

	3669	=> {
		typeID   => 3669,
		groupID  => 226,
		typeName => "Gallente Myrmidon Battlecruiser"
	},

	3670	=> {
		typeID   => 3670,
		groupID  => 226,
		typeName => "Caldari Bantam Frigate"
	},

	3671	=> {
		typeID   => 3671,
		groupID  => 226,
		typeName => "Caldari Condor Frigate"
	},

	3672	=> {
		typeID   => 3672,
		groupID  => 226,
		typeName => "Caldari Griffin Frigate"
	},

	3673	=> {
		typeID   => 3673,
		groupID  => 280,
		typeName => "Wheat"
	},

	3674	=> {
		typeID   => 3674,
		groupID  => 226,
		typeName => "Caldari Heron Frigate"
	},

	3675	=> {
		typeID   => 3675,
		groupID  => 226,
		typeName => "Caldari Kestrel Frigate"
	},

	3676	=> {
		typeID   => 3676,
		groupID  => 226,
		typeName => "Caldari Merlin Frigate"
	},

	3677	=> {
		typeID   => 3677,
		groupID  => 226,
		typeName => "Caldari Cormorant Destroyer"
	},

	3678	=> {
		typeID   => 3678,
		groupID  => 226,
		typeName => "Caldari Blackbird Cruiser"
	},

	3679	=> {
		typeID   => 3679,
		groupID  => 226,
		typeName => "Caldari Caracal Cruiser"
	},

	3680	=> {
		typeID   => 3680,
		groupID  => 226,
		typeName => "Caldari Moa Cruiser"
	},

	3681	=> {
		typeID   => 3681,
		groupID  => 226,
		typeName => "Caldari Osprey Cruiser"
	},

	3682	=> {
		typeID   => 3682,
		groupID  => 226,
		typeName => "Caldari Drake Battlecruiser"
	},

	3683	=> {
		typeID   => 3683,
		groupID  => 1042,
		typeName => "Oxygen"
	},

	3684	=> {
		typeID   => 3684,
		groupID  => 226,
		typeName => "Caldari Ferox Battlecruiser"
	},

	3685	=> {
		typeID   => 3685,
		groupID  => 280,
		typeName => "Hydrogen Batteries"
	},

	3686	=> {
		typeID   => 3686,
		groupID  => 226,
		typeName => "Caldari Raven Battleship"
	},

	3687	=> {
		typeID   => 3687,
		groupID  => 280,
		typeName => "Electronic Parts"
	},

	3688	=> {
		typeID   => 3688,
		groupID  => 226,
		typeName => "Caldari Rokh Battleship"
	},

	3689	=> {
		typeID   => 3689,
		groupID  => 1034,
		typeName => "Mechanical Parts"
	},

	3690	=> {
		typeID   => 3690,
		groupID  => 226,
		typeName => "Caldari Scorpion Battleship "
	},

	3691	=> {
		typeID   => 3691,
		groupID  => 1034,
		typeName => "Synthetic Oil"
	},

	3693	=> {
		typeID   => 3693,
		groupID  => 1034,
		typeName => "Fertilizer"
	},

	3695	=> {
		typeID   => 3695,
		groupID  => 1034,
		typeName => "Polytextiles"
	},

	3697	=> {
		typeID   => 3697,
		groupID  => 1034,
		typeName => "Silicate Glass"
	},

	3699	=> {
		typeID   => 3699,
		groupID  => 280,
		typeName => "Quafe"
	},

	3701	=> {
		typeID   => 3701,
		groupID  => 314,
		typeName => "Certification Results"
	},

	3703	=> {
		typeID   => 3703,
		groupID  => 313,
		typeName => "Nerve Sticks"
	},

	3704	=> {
		typeID   => 3704,
		groupID  => 226,
		typeName => "Gallente Dominix Battleship"
	},

	3705	=> {
		typeID   => 3705,
		groupID  => 313,
		typeName => "Crash"
	},

	3706	=> {
		typeID   => 3706,
		groupID  => 226,
		typeName => "Gallente Hyperion Battleship"
	},

	3707	=> {
		typeID   => 3707,
		groupID  => 313,
		typeName => "Blue Pill"
	},

	3708	=> {
		typeID   => 3708,
		groupID  => 226,
		typeName => "Gallente Megathron Battleship"
	},

	3709	=> {
		typeID   => 3709,
		groupID  => 313,
		typeName => "Drop"
	},

	3710	=> {
		typeID   => 3710,
		groupID  => 226,
		typeName => "Gallente Nyx Carrier"
	},

	3711	=> {
		typeID   => 3711,
		groupID  => 313,
		typeName => "X-Instinct"
	},

	3712	=> {
		typeID   => 3712,
		groupID  => 226,
		typeName => "Gallente Thanatos Carrier"
	},

	3713	=> {
		typeID   => 3713,
		groupID  => 313,
		typeName => "Vitoc"
	},

	3714	=> {
		typeID   => 3714,
		groupID  => 226,
		typeName => "Gallente Moros Dreadnought"
	},

	3715	=> {
		typeID   => 3715,
		groupID  => 281,
		typeName => "Frozen Food"
	},

	3716	=> {
		typeID   => 3716,
		groupID  => 226,
		typeName => "Gallente Erebus Titan"
	},

	3717	=> {
		typeID   => 3717,
		groupID  => 281,
		typeName => "Dairy Products"
	},

	3718	=> {
		typeID   => 3718,
		groupID  => 226,
		typeName => "Gallente Iteron Mark I Industrial Ship"
	},

	3719	=> {
		typeID   => 3719,
		groupID  => 283,
		typeName => "Tourists"
	},

	3720	=> {
		typeID   => 3720,
		groupID  => 226,
		typeName => "Gallente Iteron Mark II Industrial Ship"
	},

	3721	=> {
		typeID   => 3721,
		groupID  => 283,
		typeName => "Slaves"
	},

	3722	=> {
		typeID   => 3722,
		groupID  => 226,
		typeName => "Gallente Iteron Mark III Industrial Ship"
	},

	3723	=> {
		typeID   => 3723,
		groupID  => 283,
		typeName => "Slaver Hound"
	},

	3724	=> {
		typeID   => 3724,
		groupID  => 226,
		typeName => "Gallente Iteron Mark IV Industrial Ship"
	},

	3725	=> {
		typeID   => 3725,
		groupID  => 1034,
		typeName => "Livestock"
	},

	3726	=> {
		typeID   => 3726,
		groupID  => 226,
		typeName => "Gallente Iteron Mark V Industrial Ship"
	},

	3727	=> {
		typeID   => 3727,
		groupID  => 282,
		typeName => "Plutonium"
	},

	3728	=> {
		typeID   => 3728,
		groupID  => 226,
		typeName => "Gallente Obelisk Freighter"
	},

	3729	=> {
		typeID   => 3729,
		groupID  => 282,
		typeName => "Toxic Waste"
	},

	3730	=> {
		typeID   => 3730,
		groupID  => 226,
		typeName => "Minmatar Breacher Frigate"
	},

	3731	=> {
		typeID   => 3731,
		groupID  => 266,
		typeName => "Megacorp Management"
	},

	3732	=> {
		typeID   => 3732,
		groupID  => 266,
		typeName => "Empire Control"
	},

	3733	=> {
		typeID   => 3733,
		groupID  => 92,
		typeName => "Cobra Mine"
	},

	3734	=> {
		typeID   => 3734,
		groupID  => 174,
		typeName => "Cobra Mine Blueprint"
	},

	3735	=> {
		typeID   => 3735,
		groupID  => 92,
		typeName => "Anaconda Mine"
	},

	3736	=> {
		typeID   => 3736,
		groupID  => 174,
		typeName => "Anaconda Mine Blueprint"
	},

	3737	=> {
		typeID   => 3737,
		groupID  => 92,
		typeName => "Asp Mine"
	},

	3738	=> {
		typeID   => 3738,
		groupID  => 174,
		typeName => "Asp Mine Blueprint"
	},

	3739	=> {
		typeID   => 3739,
		groupID  => 99,
		typeName => "Caldari Sentry Gun III"
	},

	3740	=> {
		typeID   => 3740,
		groupID  => 99,
		typeName => "Caldari Sentry Gun I"
	},

	3741	=> {
		typeID   => 3741,
		groupID  => 99,
		typeName => "Caldari Sentry Gun II"
	},

	3742	=> {
		typeID   => 3742,
		groupID  => 99,
		typeName => "Gallente Sentry Gun"
	},

	3743	=> {
		typeID   => 3743,
		groupID  => 99,
		typeName => "Minmatar Sentry Gun"
	},

	3744	=> {
		typeID   => 3744,
		groupID  => 805,
		typeName => "Silverfish Alvi"
	},

	3745	=> {
		typeID   => 3745,
		groupID  => 803,
		typeName => "Viral Infector Alvum"
	},

	3746	=> {
		typeID   => 3746,
		groupID  => 803,
		typeName => "Wrecker Alvum"
	},

	3747	=> {
		typeID   => 3747,
		groupID  => 801,
		typeName => "Enforcer Alvatis"
	},

	3748	=> {
		typeID   => 3748,
		groupID  => 805,
		typeName => "Strain Infester Alvi"
	},

	3749	=> {
		typeID   => 3749,
		groupID  => 805,
		typeName => "Decimator Alvi"
	},

	3750	=> {
		typeID   => 3750,
		groupID  => 805,
		typeName => "Infester Alvi"
	},

	3751	=> {
		typeID   => 3751,
		groupID  => 25,
		typeName => "SOCT 1"
	},

	3752	=> {
		typeID   => 3752,
		groupID  => 105,
		typeName => "SOCT 1 Blueprint"
	},

	3753	=> {
		typeID   => 3753,
		groupID  => 25,
		typeName => "SOCT 2"
	},

	3754	=> {
		typeID   => 3754,
		groupID  => 105,
		typeName => "SOCT 2 Blueprint"
	},

	3755	=> {
		typeID   => 3755,
		groupID  => 257,
		typeName => "Jove Frigate"
	},

	3756	=> {
		typeID   => 3756,
		groupID  => 419,
		typeName => "Gnosis"
	},

	3757	=> {
		typeID   => 3757,
		groupID  => 226,
		typeName => "Minmatar Burst Frigate"
	},

	3758	=> {
		typeID   => 3758,
		groupID  => 257,
		typeName => "Jove Cruiser"
	},

	3759	=> {
		typeID   => 3759,
		groupID  => 226,
		typeName => "Minmatar Probe Frigate"
	},

	3760	=> {
		typeID   => 3760,
		groupID  => 226,
		typeName => "Minmatar Rifter Frigate"
	},

	3761	=> {
		typeID   => 3761,
		groupID  => 226,
		typeName => "Minmatar Slasher Frigate"
	},

	3762	=> {
		typeID   => 3762,
		groupID  => 226,
		typeName => "Minmatar Vigil  Frigate"
	},

	3763	=> {
		typeID   => 3763,
		groupID  => 226,
		typeName => "Minmatar Thrasher Destroyer"
	},

	3764	=> {
		typeID   => 3764,
		groupID  => 30,
		typeName => "Leviathan"
	},

	3765	=> {
		typeID   => 3765,
		groupID  => 110,
		typeName => "Leviathan Blueprint"
	},

	3766	=> {
		typeID   => 3766,
		groupID  => 25,
		typeName => "Vigil"
	},

	3767	=> {
		typeID   => 3767,
		groupID  => 105,
		typeName => "Vigil Blueprint"
	},

	3768	=> {
		typeID   => 3768,
		groupID  => 25,
		typeName => "Amarr Police Frigate"
	},

	3769	=> {
		typeID   => 3769,
		groupID  => 105,
		typeName => "Amarr Police Frigate Blueprint"
	},

	3770	=> {
		typeID   => 3770,
		groupID  => 226,
		typeName => "Minmatar Bellicose Cruiser"
	},

	3771	=> {
		typeID   => 3771,
		groupID  => 284,
		typeName => "Ectoplasm"
	},

	3772	=> {
		typeID   => 3772,
		groupID  => 226,
		typeName => "Minmatar Rupture Cruiser"
	},

	3773	=> {
		typeID   => 3773,
		groupID  => 284,
		typeName => "Hydrochloric Acid"
	},

	3774	=> {
		typeID   => 3774,
		groupID  => 226,
		typeName => "Minmatar Scythe Cruiser"
	},

	3775	=> {
		typeID   => 3775,
		groupID  => 1034,
		typeName => "Viral Agent"
	},

	3776	=> {
		typeID   => 3776,
		groupID  => 226,
		typeName => "Minmatar Stabber Cruiser"
	},

	3777	=> {
		typeID   => 3777,
		groupID  => 281,
		typeName => "Long-limb Roes"
	},

	3778	=> {
		typeID   => 3778,
		groupID  => 226,
		typeName => "Minmatar Cyclone Battlecruiser"
	},

	3779	=> {
		typeID   => 3779,
		groupID  => 1042,
		typeName => "Biomass"
	},

	3780	=> {
		typeID   => 3780,
		groupID  => 226,
		typeName => "Minmatar Hurricane Battlecruiser"
	},

	3781	=> {
		typeID   => 3781,
		groupID  => 226,
		typeName => "Minmatar Maelstrom Battleship"
	},

	3782	=> {
		typeID   => 3782,
		groupID  => 226,
		typeName => "Minmatar Tempest Battleship"
	},

	3783	=> {
		typeID   => 3783,
		groupID  => 226,
		typeName => "Minmatar Typhoon Battleship"
	},

	3784	=> {
		typeID   => 3784,
		groupID  => 226,
		typeName => "Minmatar Hel Carrier"
	},

	3785	=> {
		typeID   => 3785,
		groupID  => 226,
		typeName => "Minmatar Nidhoggur Carrier"
	},

	3786	=> {
		typeID   => 3786,
		groupID  => 226,
		typeName => "Minmatar Naglfar Dreadnought"
	},

	3787	=> {
		typeID   => 3787,
		groupID  => 226,
		typeName => "Minmatar Ragnarok Titan"
	},

	3788	=> {
		typeID   => 3788,
		groupID  => 226,
		typeName => "Minmatar Hoarder Industrial Ship"
	},

	3789	=> {
		typeID   => 3789,
		groupID  => 226,
		typeName => "Minmatar Mammoth Industrial Ship"
	},

	3790	=> {
		typeID   => 3790,
		groupID  => 226,
		typeName => "Minmatar Wreathe Industrial Ship"
	},

	3791	=> {
		typeID   => 3791,
		groupID  => 226,
		typeName => "Minmatar Fenrir Freighter"
	},

	3792	=> {
		typeID   => 3792,
		groupID  => 306,
		typeName => "Caldari Academy Office  "
	},

	3793	=> {
		typeID   => 3793,
		groupID  => 538,
		typeName => "Data Subverter I"
	},

	3794	=> {
		typeID   => 3794,
		groupID  => 917,
		typeName => "Data Subverter I Blueprint"
	},

	3795	=> {
		typeID   => 3795,
		groupID  => 495,
		typeName => "Blood Raider Central Bastion"
	},

	3796	=> {
		typeID   => 3796,
		groupID  => 6,
		typeName => "Sun O1 (Blue Bright)"
	},

	3797	=> {
		typeID   => 3797,
		groupID  => 6,
		typeName => "Sun G5 (Pink)"
	},

	3798	=> {
		typeID   => 3798,
		groupID  => 6,
		typeName => "Sun K5 (Orange Bright)"
	},

	3799	=> {
		typeID   => 3799,
		groupID  => 6,
		typeName => "Sun G3 (Pink Small)"
	},

	3800	=> {
		typeID   => 3800,
		groupID  => 6,
		typeName => "Sun M0 (Orange radiant)"
	},

	3801	=> {
		typeID   => 3801,
		groupID  => 6,
		typeName => "Sun A0 (Blue Small)"
	},

	3802	=> {
		typeID   => 3802,
		groupID  => 6,
		typeName => "Sun K3 (Yellow Small)"
	},

	3803	=> {
		typeID   => 3803,
		groupID  => 6,
		typeName => "Sun B5 (White Dwarf)"
	},

	3804	=> {
		typeID   => 3804,
		groupID  => 283,
		typeName => "VIPs"
	},

	3805	=> {
		typeID   => 3805,
		groupID  => 495,
		typeName => "Sansha's Nation Central Bastion"
	},

	3806	=> {
		typeID   => 3806,
		groupID  => 283,
		typeName => "Refugees"
	},

	3807	=> {
		typeID   => 3807,
		groupID  => 226,
		typeName => "Miniball hax"
	},

	3808	=> {
		typeID   => 3808,
		groupID  => 283,
		typeName => "Prisoners"
	},

	3809	=> {
		typeID   => 3809,
		groupID  => 495,
		typeName => "Serpentis Administration Facility"
	},

	3810	=> {
		typeID   => 3810,
		groupID  => 283,
		typeName => "Marines"
	},

	3811	=> {
		typeID   => 3811,
		groupID  => 306,
		typeName => "Minmatar Academy Office"
	},

	3812	=> {
		typeID   => 3812,
		groupID  => 280,
		typeName => "Data Sheets"
	},

	3814	=> {
		typeID   => 3814,
		groupID  => 280,
		typeName => "Reports"
	},

	3818	=> {
		typeID   => 3818,
		groupID  => 313,
		typeName => "Exile"
	},

	3820	=> {
		typeID   => 3820,
		groupID  => 313,
		typeName => "Sooth Sayer"
	},

	3821	=> {
		typeID   => 3821,
		groupID  => 821,
		typeName => "Dread Guristas Commanding Officer"
	},

	3822	=> {
		typeID   => 3822,
		groupID  => 313,
		typeName => "Frentix"
	},

	3823	=> {
		typeID   => 3823,
		groupID  => 821,
		typeName => "True Sansha Archduke"
	},

	3824	=> {
		typeID   => 3824,
		groupID  => 313,
		typeName => "Crystal Egg"
	},

	3825	=> {
		typeID   => 3825,
		groupID  => 821,
		typeName => "Dark Blood Hunter"
	},

	3826	=> {
		typeID   => 3826,
		groupID  => 313,
		typeName => "Mindflood"
	},

	3827	=> {
		typeID   => 3827,
		groupID  => 821,
		typeName => "Shadow Serpentis Big Boss"
	},

	3828	=> {
		typeID   => 3828,
		groupID  => 1034,
		typeName => "Construction Blocks"
	},

	3829	=> {
		typeID   => 3829,
		groupID  => 38,
		typeName => "Medium Shield Extender I"
	},

	3830	=> {
		typeID   => 3830,
		groupID  => 118,
		typeName => "Medium Shield Extender I Blueprint"
	},

	3831	=> {
		typeID   => 3831,
		groupID  => 38,
		typeName => "Medium Shield Extender II"
	},

	3832	=> {
		typeID   => 3832,
		groupID  => 118,
		typeName => "Medium Shield Extender II Blueprint"
	},

	3835	=> {
		typeID   => 3835,
		groupID  => 306,
		typeName => "Gallente Academy Office"
	},

	3836	=> {
		typeID   => 3836,
		groupID  => 526,
		typeName => "Pilot Certification Documents"
	},

	3837	=> {
		typeID   => 3837,
		groupID  => 314,
		typeName => "Token of Submission"
	},

	3838	=> {
		typeID   => 3838,
		groupID  => 314,
		typeName => "Clearance Documents"
	},

	3839	=> {
		typeID   => 3839,
		groupID  => 38,
		typeName => "Large Shield Extender I"
	},

	3840	=> {
		typeID   => 3840,
		groupID  => 118,
		typeName => "Large Shield Extender I Blueprint"
	},

	3841	=> {
		typeID   => 3841,
		groupID  => 38,
		typeName => "Large Shield Extender II"
	},

	3842	=> {
		typeID   => 3842,
		groupID  => 118,
		typeName => "Large Shield Extender II Blueprint"
	},

	3843	=> {
		typeID   => 3843,
		groupID  => 314,
		typeName => "Tribal Sponsorship"
	},

	3844	=> {
		typeID   => 3844,
		groupID  => 314,
		typeName => "Freedom of Operation License"
	},

	3845	=> {
		typeID   => 3845,
		groupID  => 306,
		typeName => "Amarr Cargo Rig"
	},

	3846	=> {
		typeID   => 3846,
		groupID  => 306,
		typeName => "Caldari Cargo Rig"
	},

	3847	=> {
		typeID   => 3847,
		groupID  => 306,
		typeName => "Gallente Cargo Rig"
	},

	3848	=> {
		typeID   => 3848,
		groupID  => 306,
		typeName => "Minmatar Cargo Rig"
	},

	3849	=> {
		typeID   => 3849,
		groupID  => 38,
		typeName => "Micro Shield Extender I"
	},

	3851	=> {
		typeID   => 3851,
		groupID  => 38,
		typeName => "Micro Shield Extender II"
	},

	3858	=> {
		typeID   => 3858,
		groupID  => 319,
		typeName => "Tutorial Fuel Depot"
	},

	3859	=> {
		typeID   => 3859,
		groupID  => 1109,
		typeName => "genericAudioEmitter"
	},

	3863	=> {
		typeID   => 3863,
		groupID  => 301,
		typeName => "CONCORD Police Officer"
	},

	3864	=> {
		typeID   => 3864,
		groupID  => 15,
		typeName => "Amarr Citadel"
	},

	3865	=> {
		typeID   => 3865,
		groupID  => 15,
		typeName => "Gallente Research Station"
	},

	3866	=> {
		typeID   => 3866,
		groupID  => 15,
		typeName => "Gallente Trading Hub"
	},

	3867	=> {
		typeID   => 3867,
		groupID  => 15,
		typeName => "Gallente Industrial Station"
	},

	3868	=> {
		typeID   => 3868,
		groupID  => 15,
		typeName => "Gallente Administrative Station"
	},

	3869	=> {
		typeID   => 3869,
		groupID  => 15,
		typeName => "Gallente Logistics Station"
	},

	3870	=> {
		typeID   => 3870,
		groupID  => 15,
		typeName => "Gallente Mining Station"
	},

	3871	=> {
		typeID   => 3871,
		groupID  => 15,
		typeName => "Caldari Station Hub"
	},

	3872	=> {
		typeID   => 3872,
		groupID  => 15,
		typeName => "Caldari Military Station"
	},

	3873	=> {
		typeID   => 3873,
		groupID  => 10,
		typeName => "Stargate (Caldari Border)"
	},

	3874	=> {
		typeID   => 3874,
		groupID  => 10,
		typeName => "Stargate (Gallente Constellation)"
	},

	3875	=> {
		typeID   => 3875,
		groupID  => 10,
		typeName => "Stargate (Gallente System)"
	},

	3876	=> {
		typeID   => 3876,
		groupID  => 10,
		typeName => "Stargate (Gallente Border)"
	},

	3877	=> {
		typeID   => 3877,
		groupID  => 10,
		typeName => "Stargate (Minmatar Constellation)"
	},

	3880	=> {
		typeID   => 3880,
		groupID  => 226,
		typeName => "Ripped Superstructure"
	},

	3881	=> {
		typeID   => 3881,
		groupID  => 226,
		typeName => "Ruined Monument"
	},

	3882	=> {
		typeID   => 3882,
		groupID  => 820,
		typeName => "Exsanguinator "
	},

	3883	=> {
		typeID   => 3883,
		groupID  => 288,
		typeName => "DED Army Officer"
	},

	3884	=> {
		typeID   => 3884,
		groupID  => 820,
		typeName => "Guristas Distributor"
	},

	3885	=> {
		typeID   => 3885,
		groupID  => 301,
		typeName => "CONCORD Police Captain"
	},

	3886	=> {
		typeID   => 3886,
		groupID  => 288,
		typeName => "DED Army Captain"
	},

	3887	=> {
		typeID   => 3887,
		groupID  => 285,
		typeName => "Co-Processor I"
	},

	3888	=> {
		typeID   => 3888,
		groupID  => 285,
		typeName => "Co-Processor II"
	},

	3889	=> {
		typeID   => 3889,
		groupID  => 820,
		typeName => "Slave Ation09"
	},

	3890	=> {
		typeID   => 3890,
		groupID  => 820,
		typeName => "Sarpati Family Enforcer"
	},

	3891	=> {
		typeID   => 3891,
		groupID  => 820,
		typeName => "5/10 DED Angel Big Boss"
	},

	3893	=> {
		typeID   => 3893,
		groupID  => 278,
		typeName => "Mining Connections"
	},

	3894	=> {
		typeID   => 3894,
		groupID  => 278,
		typeName => "Distribution Connections"
	},

	3895	=> {
		typeID   => 3895,
		groupID  => 278,
		typeName => "Security Connections"
	},

	3897	=> {
		typeID   => 3897,
		groupID  => 72,
		typeName => "Micro Proton Smartbomb I"
	},

	3898	=> {
		typeID   => 3898,
		groupID  => 303,
		typeName => "Quafe Zero"
	},

	3899	=> {
		typeID   => 3899,
		groupID  => 72,
		typeName => "Micro Proton Smartbomb II"
	},

	3901	=> {
		typeID   => 3901,
		groupID  => 72,
		typeName => "Micro Graviton Smartbomb I"
	},

	3903	=> {
		typeID   => 3903,
		groupID  => 72,
		typeName => "Micro Graviton Smartbomb II"
	},

	3907	=> {
		typeID   => 3907,
		groupID  => 72,
		typeName => "Micro Plasma Smartbomb I"
	},

	3909	=> {
		typeID   => 3909,
		groupID  => 72,
		typeName => "Micro Plasma Smartbomb II"
	},

	3910	=> {
		typeID   => 3910,
		groupID  => 940,
		typeName => "Caldari Sofa"
	},

	3911	=> {
		typeID   => 3911,
		groupID  => 940,
		typeName => "Caldari Ship Interface"
	},

	3913	=> {
		typeID   => 3913,
		groupID  => 72,
		typeName => "Micro EMP Smartbomb I"
	},

	3914	=> {
		typeID   => 3914,
		groupID  => 940,
		typeName => "Caldari Main Screen"
	},

	3915	=> {
		typeID   => 3915,
		groupID  => 72,
		typeName => "Micro EMP Smartbomb II"
	},

	3916	=> {
		typeID   => 3916,
		groupID  => 940,
		typeName => "Caldari Planetary Interaction"
	},

	3919	=> {
		typeID   => 3919,
		groupID  => 940,
		typeName => "Caldari Corporation Recruitment"
	},

	3920	=> {
		typeID   => 3920,
		groupID  => 226,
		typeName => "Fortified Amarr Industrial Station"
	},

	3921	=> {
		typeID   => 3921,
		groupID  => 818,
		typeName => "Pirate Saboteur"
	},

	3922	=> {
		typeID   => 3922,
		groupID  => 280,
		typeName => "Hardware"
	},

	3923	=> {
		typeID   => 3923,
		groupID  => 283,
		typeName => "Clones"
	},

	3925	=> {
		typeID   => 3925,
		groupID  => 526,
		typeName => "Reclaimed Organics"
	},

	3926	=> {
		typeID   => 3926,
		groupID  => 526,
		typeName => "Augmented Stem Cells"
	},

	3927	=> {
		typeID   => 3927,
		groupID  => 914,
		typeName => "Clones Blueprint"
	},

	3928	=> {
		typeID   => 3928,
		groupID  => 914,
		typeName => "Hardware Blueprint"
	},

	3930	=> {
		typeID   => 3930,
		groupID  => 940,
		typeName => "Minmatar Sofa"
	},

	3931	=> {
		typeID   => 3931,
		groupID  => 940,
		typeName => "Minmatar Ship Interface"
	},

	3932	=> {
		typeID   => 3932,
		groupID  => 940,
		typeName => "Minmatar Main Screen"
	},

	3933	=> {
		typeID   => 3933,
		groupID  => 940,
		typeName => "Minmatar Corporation Recruitment"
	},

	3934	=> {
		typeID   => 3934,
		groupID  => 940,
		typeName => "Minmatar Planetary Interaction"
	},

	3937	=> {
		typeID   => 3937,
		groupID  => 72,
		typeName => "Medium Proton Smartbomb I"
	},

	3938	=> {
		typeID   => 3938,
		groupID  => 152,
		typeName => "Medium Proton Smartbomb I Blueprint"
	},

	3939	=> {
		typeID   => 3939,
		groupID  => 72,
		typeName => "Medium Proton Smartbomb II"
	},

	3940	=> {
		typeID   => 3940,
		groupID  => 152,
		typeName => "Medium Proton Smartbomb II Blueprint"
	},

	3941	=> {
		typeID   => 3941,
		groupID  => 72,
		typeName => "Medium Graviton Smartbomb I"
	},

	3942	=> {
		typeID   => 3942,
		groupID  => 152,
		typeName => "Medium Graviton Smartbomb I Blueprint"
	},

	3943	=> {
		typeID   => 3943,
		groupID  => 72,
		typeName => "Medium Graviton Smartbomb II"
	},

	3944	=> {
		typeID   => 3944,
		groupID  => 152,
		typeName => "Medium Graviton Smartbomb II Blueprint"
	},

	3947	=> {
		typeID   => 3947,
		groupID  => 72,
		typeName => "Medium Plasma Smartbomb I"
	},

	3948	=> {
		typeID   => 3948,
		groupID  => 152,
		typeName => "Medium Plasma Smartbomb I Blueprint"
	},

	3949	=> {
		typeID   => 3949,
		groupID  => 72,
		typeName => "Medium Plasma Smartbomb II"
	},

	3950	=> {
		typeID   => 3950,
		groupID  => 152,
		typeName => "Medium Plasma Smartbomb II Blueprint"
	},

	3952	=> {
		typeID   => 3952,
		groupID  => 226,
		typeName => "Fortified Archon"
	},

	3953	=> {
		typeID   => 3953,
		groupID  => 72,
		typeName => "Medium EMP Smartbomb I"
	},

	3954	=> {
		typeID   => 3954,
		groupID  => 152,
		typeName => "Medium EMP Smartbomb I Blueprint"
	},

	3955	=> {
		typeID   => 3955,
		groupID  => 72,
		typeName => "Medium EMP Smartbomb II"
	},

	3956	=> {
		typeID   => 3956,
		groupID  => 152,
		typeName => "Medium EMP Smartbomb II Blueprint"
	},

	3957	=> {
		typeID   => 3957,
		groupID  => 226,
		typeName => "Serpentis Stronghold"
	},

	3958	=> {
		typeID   => 3958,
		groupID  => 1083,
		typeName => "GDN-9 \"Nightstalker\" Combat Goggles"
	},

	3959	=> {
		typeID   => 3959,
		groupID  => 818,
		typeName => "Criminal Saboteur"
	},

	3960	=> {
		typeID   => 3960,
		groupID  => 818,
		typeName => "Bandit Saboteur"
	},

	3961	=> {
		typeID   => 3961,
		groupID  => 818,
		typeName => "Rogue Saboteur"
	},

	3962	=> {
		typeID   => 3962,
		groupID  => 1106,
		typeName => "Customs Office Gantry"
	},

	3963	=> {
		typeID   => 3963,
		groupID  => 1048,
		typeName => "Customs Office Gantry Blueprint"
	},

	3964	=> {
		typeID   => 3964,
		groupID  => 1025,
		typeName => "Orbital Command Center"
	},

	3966	=> {
		typeID   => 3966,
		groupID  => 1091,
		typeName => "Men's 'Precision' Boots"
	},

	3967	=> {
		typeID   => 3967,
		groupID  => 226,
		typeName => "Fortified Gallente Station 7"
	},

	3970	=> {
		typeID   => 3970,
		groupID  => 226,
		typeName => "Federation Administrative Outpost"
	},

	3974	=> {
		typeID   => 3974,
		groupID  => 226,
		typeName => "Minmatar Service Outpost Structure"
	},

	3975	=> {
		typeID   => 3975,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (navy)"
	},

	3977	=> {
		typeID   => 3977,
		groupID  => 72,
		typeName => "Large Proton Smartbomb I"
	},

	3978	=> {
		typeID   => 3978,
		groupID  => 152,
		typeName => "Large Proton Smartbomb I Blueprint"
	},

	3979	=> {
		typeID   => 3979,
		groupID  => 72,
		typeName => "Large Proton Smartbomb II"
	},

	3980	=> {
		typeID   => 3980,
		groupID  => 152,
		typeName => "Large Proton Smartbomb II Blueprint"
	},

	3981	=> {
		typeID   => 3981,
		groupID  => 72,
		typeName => "Large Graviton Smartbomb I"
	},

	3982	=> {
		typeID   => 3982,
		groupID  => 152,
		typeName => "Large Graviton Smartbomb I Blueprint"
	},

	3983	=> {
		typeID   => 3983,
		groupID  => 72,
		typeName => "Large Graviton Smartbomb II"
	},

	3984	=> {
		typeID   => 3984,
		groupID  => 152,
		typeName => "Large Graviton Smartbomb II Blueprint"
	},

	3986	=> {
		typeID   => 3986,
		groupID  => 585,
		typeName => "Large Remote Hull Repairer II"
	},

	3987	=> {
		typeID   => 3987,
		groupID  => 72,
		typeName => "Large Plasma Smartbomb I"
	},

	3988	=> {
		typeID   => 3988,
		groupID  => 152,
		typeName => "Large Plasma Smartbomb I Blueprint"
	},

	3989	=> {
		typeID   => 3989,
		groupID  => 72,
		typeName => "Large Plasma Smartbomb II"
	},

	3990	=> {
		typeID   => 3990,
		groupID  => 152,
		typeName => "Large Plasma Smartbomb II Blueprint"
	},

	3991	=> {
		typeID   => 3991,
		groupID  => 870,
		typeName => "Large Remote Hull Repairer II Blueprint"
	},

	3992	=> {
		typeID   => 3992,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (black wax)"
	},

	3993	=> {
		typeID   => 3993,
		groupID  => 72,
		typeName => "Large EMP Smartbomb I"
	},

	3994	=> {
		typeID   => 3994,
		groupID  => 152,
		typeName => "Large EMP Smartbomb I Blueprint"
	},

	3995	=> {
		typeID   => 3995,
		groupID  => 72,
		typeName => "Large EMP Smartbomb II"
	},

	3996	=> {
		typeID   => 3996,
		groupID  => 152,
		typeName => "Large EMP Smartbomb II Blueprint"
	},

	3997	=> {
		typeID   => 3997,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black/gray)"
	},

	3998	=> {
		typeID   => 3998,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (gray)"
	},

	3999	=> {
		typeID   => 3999,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (black wax)"
	},

	4001	=> {
		typeID   => 4001,
		groupID  => 1091,
		typeName => "Men's 'Trench' Boots"
	},

	4002	=> {
		typeID   => 4002,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels"
	},

	4003	=> {
		typeID   => 4003,
		groupID  => 1091,
		typeName => "Women's 'Greave' Knee-Boots"
	},

	4004	=> {
		typeID   => 4004,
		groupID  => 1091,
		typeName => "Women's 'Mystrioso' Boots"
	},

	4005	=> {
		typeID   => 4005,
		groupID  => 27,
		typeName => "Scorpion Ishukone Watch"
	},

	4006	=> {
		typeID   => 4006,
		groupID  => 107,
		typeName => "Scorpion Ishukone Watch Blueprint"
	},

	4007	=> {
		typeID   => 4007,
		groupID  => 226,
		typeName => "Fortified Minmatar Station"
	},

	4008	=> {
		typeID   => 4008,
		groupID  => 1091,
		typeName => "Men's 'Lockstep' Boots"
	},

	4009	=> {
		typeID   => 4009,
		groupID  => 1083,
		typeName => "Looking Glass Monocle Interface (right/gold)"
	},

	4010	=> {
		typeID   => 4010,
		groupID  => 819,
		typeName => "Domination Grigori"
	},

	4011	=> {
		typeID   => 4011,
		groupID  => 319,
		typeName => "Reinforced Drone Bunker"
	},

	4012	=> {
		typeID   => 4012,
		groupID  => 819,
		typeName => "Dread Guristas Irregular"
	},

	4013	=> {
		typeID   => 4013,
		groupID  => 203,
		typeName => "RADAR Backup Array I"
	},

	4014	=> {
		typeID   => 4014,
		groupID  => 203,
		typeName => "RADAR Backup Array II"
	},

	4015	=> {
		typeID   => 4015,
		groupID  => 819,
		typeName => "Dark Blood Alpha"
	},

	4016	=> {
		typeID   => 4016,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black)"
	},

	4017	=> {
		typeID   => 4017,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black/blue/gold)"
	},

	4018	=> {
		typeID   => 4018,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black/gold)"
	},

	4019	=> {
		typeID   => 4019,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black/gold line)"
	},

	4020	=> {
		typeID   => 4020,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black/red/gold)"
	},

	4021	=> {
		typeID   => 4021,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (black/silver)"
	},

	4022	=> {
		typeID   => 4022,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (gold)"
	},

	4023	=> {
		typeID   => 4023,
		groupID  => 15,
		typeName => "Caldari Mining Station"
	},

	4024	=> {
		typeID   => 4024,
		groupID  => 15,
		typeName => "Caldari Food Processing Plant Station"
	},

	4025	=> {
		typeID   => 4025,
		groupID  => 65,
		typeName => "X5 Enduring Stasis Webifier"
	},

	4026	=> {
		typeID   => 4026,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (matte blue)"
	},

	4027	=> {
		typeID   => 4027,
		groupID  => 65,
		typeName => "Fleeting Compact Stasis Webifier"
	},

	4028	=> {
		typeID   => 4028,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (matte green)"
	},

	4029	=> {
		typeID   => 4029,
		groupID  => 65,
		typeName => "'Langour' Drive Disruptor I"
	},

	4030	=> {
		typeID   => 4030,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (matte red)"
	},

	4031	=> {
		typeID   => 4031,
		groupID  => 65,
		typeName => "Patterned Stasis Web I"
	},

	4032	=> {
		typeID   => 4032,
		groupID  => 1090,
		typeName => "Women's 'Excursion' Pants (silver)"
	},

	4033	=> {
		typeID   => 4033,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (black leather)"
	},

	4034	=> {
		typeID   => 4034,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (brown leather)"
	},

	4035	=> {
		typeID   => 4035,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (graphite)"
	},

	4036	=> {
		typeID   => 4036,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (green/gold)"
	},

	4037	=> {
		typeID   => 4037,
		groupID  => 1083,
		typeName => "Odin Synthetic Eye (right/dark)"
	},

	4038	=> {
		typeID   => 4038,
		groupID  => 1083,
		typeName => "Odin Synthetic Eye (right/gray)"
	},

	4039	=> {
		typeID   => 4039,
		groupID  => 1083,
		typeName => "Odin Synthetic Eye (right/gold)"
	},

	4042	=> {
		typeID   => 4042,
		groupID  => 1083,
		typeName => "Looking Glass Monocle Interface (right/gray)"
	},

	4043	=> {
		typeID   => 4043,
		groupID  => 1083,
		typeName => "Odin Synthetic Eye (left/dark)"
	},

	4044	=> {
		typeID   => 4044,
		groupID  => 53,
		typeName => "Sleeper Turret Small"
	},

	4045	=> {
		typeID   => 4045,
		groupID  => 53,
		typeName => "Sleeper Turret Medium"
	},

	4046	=> {
		typeID   => 4046,
		groupID  => 1083,
		typeName => "Odin Synthetic Eye (left/gold)"
	},

	4048	=> {
		typeID   => 4048,
		groupID  => 1083,
		typeName => "Odin Synthetic Eye (left/gray)"
	},

	4049	=> {
		typeID   => 4049,
		groupID  => 53,
		typeName => "Sleeper Turret Large"
	},

	4050	=> {
		typeID   => 4050,
		groupID  => 1083,
		typeName => "Looking Glass Monocle Interface (left/gold)"
	},

	4051	=> {
		typeID   => 4051,
		groupID  => 1136,
		typeName => "Nitrogen Fuel Block"
	},

	4052	=> {
		typeID   => 4052,
		groupID  => 1083,
		typeName => "Looking Glass Monocle Interface (left/gray)"
	},

	4054	=> {
		typeID   => 4054,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat"
	},

	4057	=> {
		typeID   => 4057,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (black)"
	},

	4058	=> {
		typeID   => 4058,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (navy)"
	},

	4059	=> {
		typeID   => 4059,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (dust)"
	},

	4060	=> {
		typeID   => 4060,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (olive)"
	},

	4061	=> {
		typeID   => 4061,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (black)"
	},

	4062	=> {
		typeID   => 4062,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (navy)"
	},

	4063	=> {
		typeID   => 4063,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (dust)"
	},

	4064	=> {
		typeID   => 4064,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (olive)"
	},

	4065	=> {
		typeID   => 4065,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (platinum)"
	},

	4066	=> {
		typeID   => 4066,
		groupID  => 1089,
		typeName => "Women's 'Quafe' T-shirt YC 113"
	},

	4067	=> {
		typeID   => 4067,
		groupID  => 1089,
		typeName => "Men's 'Quafe' T-shirt YC 113"
	},

	4068	=> {
		typeID   => 4068,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (Ishukone Special Edition)"
	},

	4069	=> {
		typeID   => 4069,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (marine)"
	},

	4070	=> {
		typeID   => 4070,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (matte black)"
	},

	4071	=> {
		typeID   => 4071,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (matte blue)"
	},

	4072	=> {
		typeID   => 4072,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (matte red)"
	},

	4073	=> {
		typeID   => 4073,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (red gold)"
	},

	4074	=> {
		typeID   => 4074,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (silver)"
	},

	4075	=> {
		typeID   => 4075,
		groupID  => 1090,
		typeName => "Women's 'Impress' Skirt (white)"
	},

	4076	=> {
		typeID   => 4076,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (black/red)"
	},

	4077	=> {
		typeID   => 4077,
		groupID  => 366,
		typeName => "Acceleration Gate (Precise)"
	},

	4078	=> {
		typeID   => 4078,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (camouflage)"
	},

	4085	=> {
		typeID   => 4085,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (black)"
	},

	4086	=> {
		typeID   => 4086,
		groupID  => 1092,
		typeName => "Short Pixie Hair"
	},

	4088	=> {
		typeID   => 4088,
		groupID  => 1092,
		typeName => "Curly Shoulder Length"
	},

	4089	=> {
		typeID   => 4089,
		groupID  => 314,
		typeName => "Clearance Papers"
	},

	4090	=> {
		typeID   => 4090,
		groupID  => 280,
		typeName => "Large Crates of Quafe"
	},

	4091	=> {
		typeID   => 4091,
		groupID  => 284,
		typeName => "Large Crates of Ectoplasm"
	},

	4093	=> {
		typeID   => 4093,
		groupID  => 1118,
		typeName => "Surface Command Center Prefab Unit"
	},

	4096	=> {
		typeID   => 4096,
		groupID  => 1092,
		typeName => "Hair_Stubble_01"
	},

	4097	=> {
		typeID   => 4097,
		groupID  => 1088,
		typeName => "Men's 'Field Marshal' Coat"
	},

	4098	=> {
		typeID   => 4098,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat"
	},

	4099	=> {
		typeID   => 4099,
		groupID  => 226,
		typeName => "Amarr Factory Outpost"
	},

	4100	=> {
		typeID   => 4100,
		groupID  => 226,
		typeName => "Caldari Research Outpost"
	},

	4101	=> {
		typeID   => 4101,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (black/white)"
	},

	4102	=> {
		typeID   => 4102,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (blue)"
	},

	4103	=> {
		typeID   => 4103,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (graphite)"
	},

	4104	=> {
		typeID   => 4104,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (gray)"
	},

	4105	=> {
		typeID   => 4105,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (gray stripes)"
	},

	4106	=> {
		typeID   => 4106,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (green)"
	},

	4107	=> {
		typeID   => 4107,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (green/black)"
	},

	4108	=> {
		typeID   => 4108,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (green stripes)"
	},

	4109	=> {
		typeID   => 4109,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (khaki)"
	},

	4110	=> {
		typeID   => 4110,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (marine)"
	},

	4111	=> {
		typeID   => 4111,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (matte black)"
	},

	4112	=> {
		typeID   => 4112,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (red)"
	},

	4113	=> {
		typeID   => 4113,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (red leather)"
	},

	4114	=> {
		typeID   => 4114,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (red stripes)"
	},

	4115	=> {
		typeID   => 4115,
		groupID  => 1090,
		typeName => "Women's 'Structure' Skirt (white stripes)"
	},

	4116	=> {
		typeID   => 4116,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (black/gold)"
	},

	4117	=> {
		typeID   => 4117,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (black/red)"
	},

	4118	=> {
		typeID   => 4118,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (blue)"
	},

	4119	=> {
		typeID   => 4119,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (gold)"
	},

	4120	=> {
		typeID   => 4120,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (graphite/white)"
	},

	4121	=> {
		typeID   => 4121,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (green/black)"
	},

	4122	=> {
		typeID   => 4122,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (matte black)"
	},

	4123	=> {
		typeID   => 4123,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (matte red)"
	},

	4124	=> {
		typeID   => 4124,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (red)"
	},

	4125	=> {
		typeID   => 4125,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (silver)"
	},

	4126	=> {
		typeID   => 4126,
		groupID  => 1091,
		typeName => "Women's 'Minima' Heels (turquoise)"
	},

	4127	=> {
		typeID   => 4127,
		groupID  => 1091,
		typeName => "Women's 'Greave' Boots (black/gold)"
	},

	4128	=> {
		typeID   => 4128,
		groupID  => 1091,
		typeName => "Women's 'Greave' Boots (brown)"
	},

	4129	=> {
		typeID   => 4129,
		groupID  => 1091,
		typeName => "Women's 'Greave' Boots (matte brown)"
	},

	4130	=> {
		typeID   => 4130,
		groupID  => 1091,
		typeName => "Women's 'Greave' Boots (matte gray)"
	},

	4131	=> {
		typeID   => 4131,
		groupID  => 1091,
		typeName => "Women's 'Greave' Boots (red)"
	},

	4132	=> {
		typeID   => 4132,
		groupID  => 1091,
		typeName => "Women's 'Mystrioso' Boots (black/white)"
	},

	4133	=> {
		typeID   => 4133,
		groupID  => 1091,
		typeName => "Women's 'Mystrioso' Boots (brown/black)"
	},

	4134	=> {
		typeID   => 4134,
		groupID  => 1091,
		typeName => "Women's 'Mystrioso' Boots (red)"
	},

	4135	=> {
		typeID   => 4135,
		groupID  => 1091,
		typeName => "Women's 'Mystrioso' Boots (white/black)"
	},

	4136	=> {
		typeID   => 4136,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (black)"
	},

	4137	=> {
		typeID   => 4137,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (graphite)"
	},

	4138	=> {
		typeID   => 4138,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (green/gold)"
	},

	4139	=> {
		typeID   => 4139,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (matte blue)"
	},

	4140	=> {
		typeID   => 4140,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (matte red)"
	},

	4141	=> {
		typeID   => 4141,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (red/gold)"
	},

	4142	=> {
		typeID   => 4142,
		groupID  => 1088,
		typeName => "Women's 'Executor' Coat (silver)"
	},

	4143	=> {
		typeID   => 4143,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (black)"
	},

	4144	=> {
		typeID   => 4144,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (black/white)"
	},

	4145	=> {
		typeID   => 4145,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (brown)"
	},

	4146	=> {
		typeID   => 4146,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (gold/black)"
	},

	4147	=> {
		typeID   => 4147,
		groupID  => 53,
		typeName => "Dual Heavy Pulse Laser II"
	},

	4148	=> {
		typeID   => 4148,
		groupID  => 133,
		typeName => "Dual Heavy Pulse Laser II Blueprint"
	},

	4149	=> {
		typeID   => 4149,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (graphite)"
	},

	4150	=> {
		typeID   => 4150,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (green)"
	},

	4151	=> {
		typeID   => 4151,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (matte blue)"
	},

	4152	=> {
		typeID   => 4152,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (matte red)"
	},

	4153	=> {
		typeID   => 4153,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (red)"
	},

	4154	=> {
		typeID   => 4154,
		groupID  => 1088,
		typeName => "Women's 'Structure' Dress (turquoise)"
	},

	4155	=> {
		typeID   => 4155,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (black leather)"
	},

	4156	=> {
		typeID   => 4156,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (black/white)"
	},

	4157	=> {
		typeID   => 4157,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (gold)"
	},

	4158	=> {
		typeID   => 4158,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (graphite)"
	},

	4159	=> {
		typeID   => 4159,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (green satin)"
	},

	4160	=> {
		typeID   => 4160,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (matte black)"
	},

	4161	=> {
		typeID   => 4161,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (matte blue)"
	},

	4162	=> {
		typeID   => 4162,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (matte olive)"
	},

	4163	=> {
		typeID   => 4163,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (orange satin)"
	},

	4164	=> {
		typeID   => 4164,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (red satin)"
	},

	4165	=> {
		typeID   => 4165,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (black)"
	},

	4166	=> {
		typeID   => 4166,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (blue)"
	},

	4167	=> {
		typeID   => 4167,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (gold/black)"
	},

	4168	=> {
		typeID   => 4168,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (gray/black)"
	},

	4169	=> {
		typeID   => 4169,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (brown camo)"
	},

	4170	=> {
		typeID   => 4170,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (green camo)"
	},

	4171	=> {
		typeID   => 4171,
		groupID  => 1090,
		typeName => "Men's 'Commando' Pants (red/black)"
	},

	4172	=> {
		typeID   => 4172,
		groupID  => 1091,
		typeName => "Men's 'Lockstep' Boots (true black)"
	},

	4173	=> {
		typeID   => 4173,
		groupID  => 1091,
		typeName => "Men's 'Lockstep' Boots (worn brown)"
	},

	4174	=> {
		typeID   => 4174,
		groupID  => 1091,
		typeName => "Men's 'Precision' Boots (brown)"
	},

	4175	=> {
		typeID   => 4175,
		groupID  => 1091,
		typeName => "Men's 'Precision' Boots (gray)"
	},

	4176	=> {
		typeID   => 4176,
		groupID  => 1091,
		typeName => "Men's 'Precision' Boots (tan)"
	},

	4177	=> {
		typeID   => 4177,
		groupID  => 1091,
		typeName => "Men's 'Trench' Boots (brown)"
	},

	4178	=> {
		typeID   => 4178,
		groupID  => 1091,
		typeName => "Men's 'Trench' Boots (gray)"
	},

	4179	=> {
		typeID   => 4179,
		groupID  => 1091,
		typeName => "Men's 'Trench' Boots (tan)"
	},

	4180	=> {
		typeID   => 4180,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (black)"
	},

	4181	=> {
		typeID   => 4181,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (blue)"
	},

	4182	=> {
		typeID   => 4182,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (brown)"
	},

	4183	=> {
		typeID   => 4183,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (dark blue)"
	},

	4184	=> {
		typeID   => 4184,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (dark red)"
	},

	4185	=> {
		typeID   => 4185,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (khaki)"
	},

	4186	=> {
		typeID   => 4186,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (light gray)"
	},

	4187	=> {
		typeID   => 4187,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (olive)"
	},

	4188	=> {
		typeID   => 4188,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (dark camo)"
	},

	4189	=> {
		typeID   => 4189,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (desert camo)"
	},

	4190	=> {
		typeID   => 4190,
		groupID  => 1089,
		typeName => "Men's 'Form' T-shirt (white)"
	},

	4191	=> {
		typeID   => 4191,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (black)"
	},

	4192	=> {
		typeID   => 4192,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (blue)"
	},

	4193	=> {
		typeID   => 4193,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (brown)"
	},

	4194	=> {
		typeID   => 4194,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (gray)"
	},

	4195	=> {
		typeID   => 4195,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (green)"
	},

	4196	=> {
		typeID   => 4196,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (gray urban camo)"
	},

	4197	=> {
		typeID   => 4197,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (brown camo)"
	},

	4198	=> {
		typeID   => 4198,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (urban camo)"
	},

	4199	=> {
		typeID   => 4199,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (green camo)"
	},

	4200	=> {
		typeID   => 4200,
		groupID  => 1089,
		typeName => "Men's 'Street' Shirt (white)"
	},

	4201	=> {
		typeID   => 4201,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (black)"
	},

	4202	=> {
		typeID   => 4202,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (blue)"
	},

	4203	=> {
		typeID   => 4203,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (brown)"
	},

	4204	=> {
		typeID   => 4204,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (cream)"
	},

	4205	=> {
		typeID   => 4205,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (dark blue)"
	},

	4206	=> {
		typeID   => 4206,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (dark red)"
	},

	4207	=> {
		typeID   => 4207,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (gray)"
	},

	4208	=> {
		typeID   => 4208,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (green)"
	},

	4209	=> {
		typeID   => 4209,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (khaki)"
	},

	4210	=> {
		typeID   => 4210,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (olive)"
	},

	4211	=> {
		typeID   => 4211,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (orange)"
	},

	4212	=> {
		typeID   => 4212,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (dark camo)"
	},

	4213	=> {
		typeID   => 4213,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (desert camo)"
	},

	4214	=> {
		typeID   => 4214,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (red)"
	},

	4215	=> {
		typeID   => 4215,
		groupID  => 1089,
		typeName => "Women's 'Function' T-shirt (white)"
	},

	4216	=> {
		typeID   => 4216,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (black)"
	},

	4217	=> {
		typeID   => 4217,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (black leather)"
	},

	4218	=> {
		typeID   => 4218,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (blue)"
	},

	4219	=> {
		typeID   => 4219,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (brown)"
	},

	4220	=> {
		typeID   => 4220,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (gray)"
	},

	4221	=> {
		typeID   => 4221,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (green)"
	},

	4222	=> {
		typeID   => 4222,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (orange)"
	},

	4223	=> {
		typeID   => 4223,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (gray camo)"
	},

	4224	=> {
		typeID   => 4224,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (orange camo)"
	},

	4225	=> {
		typeID   => 4225,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (red patterned)"
	},

	4226	=> {
		typeID   => 4226,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (camo)"
	},

	4227	=> {
		typeID   => 4227,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (lined brown)"
	},

	4228	=> {
		typeID   => 4228,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (purple mesh)"
	},

	4229	=> {
		typeID   => 4229,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (black and dark red)"
	},

	4230	=> {
		typeID   => 4230,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (pink camo)"
	},

	4231	=> {
		typeID   => 4231,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (red)"
	},

	4232	=> {
		typeID   => 4232,
		groupID  => 1089,
		typeName => "Women's 'Avenue' Shirt (white)"
	},

	4233	=> {
		typeID   => 4233,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (black)"
	},

	4234	=> {
		typeID   => 4234,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (green/gold)"
	},

	4235	=> {
		typeID   => 4235,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (matte graphite)"
	},

	4236	=> {
		typeID   => 4236,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (matte gray)"
	},

	4237	=> {
		typeID   => 4237,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (matte green)"
	},

	4238	=> {
		typeID   => 4238,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (red/gold)"
	},

	4239	=> {
		typeID   => 4239,
		groupID  => 1088,
		typeName => "Men's 'Esquire' Coat (silver)"
	},

	4240	=> {
		typeID   => 4240,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (gold leather)"
	},

	4241	=> {
		typeID   => 4241,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (gray)"
	},

	4242	=> {
		typeID   => 4242,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (red/black leather)"
	},

	4243	=> {
		typeID   => 4243,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (white/blue)"
	},

	4244	=> {
		typeID   => 4244,
		groupID  => 1088,
		typeName => "Men's 'Field Marshal' Coat (green)"
	},

	4245	=> {
		typeID   => 4245,
		groupID  => 1088,
		typeName => "'Silvershore' Greatcoat"
	},

	4246	=> {
		typeID   => 4246,
		groupID  => 1136,
		typeName => "Hydrogen Fuel Block"
	},

	4247	=> {
		typeID   => 4247,
		groupID  => 1136,
		typeName => "Helium Fuel Block"
	},

	4248	=> {
		typeID   => 4248,
		groupID  => 899,
		typeName => "Warp Disruption Field Generator II"
	},

	4249	=> {
		typeID   => 4249,
		groupID  => 132,
		typeName => "Warp Disruption Field Generator II Blueprint"
	},

	4250	=> {
		typeID   => 4250,
		groupID  => 650,
		typeName => "Small Tractor Beam II"
	},

	4251	=> {
		typeID   => 4251,
		groupID  => 723,
		typeName => "Small Tractor Beam II Blueprint"
	},

	4252	=> {
		typeID   => 4252,
		groupID  => 650,
		typeName => "Capital Tractor Beam II"
	},

	4253	=> {
		typeID   => 4253,
		groupID  => 723,
		typeName => "Capital Tractor Beam II Blueprint"
	},

	4254	=> {
		typeID   => 4254,
		groupID  => 339,
		typeName => "Micro Auxiliary Power Core II"
	},

	4255	=> {
		typeID   => 4255,
		groupID  => 352,
		typeName => "Micro Auxiliary Power Core II Blueprint"
	},

	4256	=> {
		typeID   => 4256,
		groupID  => 862,
		typeName => "Bomb Launcher II"
	},

	4257	=> {
		typeID   => 4257,
		groupID  => 136,
		typeName => "Bomb Launcher II Blueprint"
	},

	4258	=> {
		typeID   => 4258,
		groupID  => 481,
		typeName => "Core Probe Launcher II"
	},

	4259	=> {
		typeID   => 4259,
		groupID  => 918,
		typeName => "Core Probe Launcher II Blueprint"
	},

	4260	=> {
		typeID   => 4260,
		groupID  => 481,
		typeName => "Expanded Probe Launcher II"
	},

	4261	=> {
		typeID   => 4261,
		groupID  => 918,
		typeName => "Expanded Probe Launcher II Blueprint"
	},

	4262	=> {
		typeID   => 4262,
		groupID  => 316,
		typeName => "Armored Warfare Link - Damage Control II"
	},

	4263	=> {
		typeID   => 4263,
		groupID  => 532,
		typeName => "Armored Warfare Link - Damage Control II Blueprint"
	},

	4264	=> {
		typeID   => 4264,
		groupID  => 316,
		typeName => "Armored Warfare Link - Passive Defense II"
	},

	4265	=> {
		typeID   => 4265,
		groupID  => 532,
		typeName => "Armored Warfare Link - Passive Defense II Blueprint"
	},

	4266	=> {
		typeID   => 4266,
		groupID  => 316,
		typeName => "Armored Warfare Link - Rapid Repair II"
	},

	4267	=> {
		typeID   => 4267,
		groupID  => 532,
		typeName => "Armored Warfare Link - Rapid Repair II Blueprint"
	},

	4268	=> {
		typeID   => 4268,
		groupID  => 316,
		typeName => "Information Warfare Link - Electronic Superiority II"
	},

	4269	=> {
		typeID   => 4269,
		groupID  => 532,
		typeName => "Information Warfare Link - Electronic Superiority II Blueprint"
	},

	4270	=> {
		typeID   => 4270,
		groupID  => 316,
		typeName => "Information Warfare Link - Recon Operation II"
	},

	4271	=> {
		typeID   => 4271,
		groupID  => 532,
		typeName => "Information Warfare Link - Recon Operation II Blueprint"
	},

	4272	=> {
		typeID   => 4272,
		groupID  => 316,
		typeName => "Information Warfare Link - Sensor Integrity II"
	},

	4273	=> {
		typeID   => 4273,
		groupID  => 532,
		typeName => "Information Warfare Link - Sensor Integrity II Blueprint"
	},

	4274	=> {
		typeID   => 4274,
		groupID  => 316,
		typeName => "Mining Foreman Link - Harvester Capacitor Efficiency II"
	},

	4275	=> {
		typeID   => 4275,
		groupID  => 532,
		typeName => "Mining Foreman Link - Harvester Capacitor Efficiency II Blueprint"
	},

	4276	=> {
		typeID   => 4276,
		groupID  => 316,
		typeName => "Mining Foreman Link - Laser Optimization II"
	},

	4277	=> {
		typeID   => 4277,
		groupID  => 532,
		typeName => "Mining Foreman Link - Laser Optimization II Blueprint"
	},

	4278	=> {
		typeID   => 4278,
		groupID  => 316,
		typeName => "Mining Foreman Link - Mining Laser Field Enhancement II"
	},

	4279	=> {
		typeID   => 4279,
		groupID  => 532,
		typeName => "Mining Foreman Link - Mining Laser Field Enhancement II Blueprint"
	},

	4280	=> {
		typeID   => 4280,
		groupID  => 316,
		typeName => "Siege Warfare Link - Active Shielding II"
	},

	4281	=> {
		typeID   => 4281,
		groupID  => 532,
		typeName => "Siege Warfare Link - Active Shielding II Blueprint"
	},

	4282	=> {
		typeID   => 4282,
		groupID  => 316,
		typeName => "Siege Warfare Link - Shield Efficiency II"
	},

	4283	=> {
		typeID   => 4283,
		groupID  => 532,
		typeName => "Siege Warfare Link - Shield Efficiency II Blueprint"
	},

	4284	=> {
		typeID   => 4284,
		groupID  => 316,
		typeName => "Siege Warfare Link - Shield Harmonizing II"
	},

	4285	=> {
		typeID   => 4285,
		groupID  => 532,
		typeName => "Siege Warfare Link - Shield Harmonizing II Blueprint"
	},

	4286	=> {
		typeID   => 4286,
		groupID  => 316,
		typeName => "Skirmish Warfare Link - Evasive Maneuvers II"
	},

	4287	=> {
		typeID   => 4287,
		groupID  => 532,
		typeName => "Skirmish Warfare Link - Evasive Maneuvers II Blueprint"
	},

	4288	=> {
		typeID   => 4288,
		groupID  => 316,
		typeName => "Skirmish Warfare Link - Interdiction Maneuvers II"
	},

	4289	=> {
		typeID   => 4289,
		groupID  => 532,
		typeName => "Skirmish Warfare Link - Interdiction Maneuvers II Blueprint"
	},

	4290	=> {
		typeID   => 4290,
		groupID  => 316,
		typeName => "Skirmish Warfare Link - Rapid Deployment II"
	},

	4291	=> {
		typeID   => 4291,
		groupID  => 532,
		typeName => "Skirmish Warfare Link - Rapid Deployment II Blueprint"
	},

	4292	=> {
		typeID   => 4292,
		groupID  => 515,
		typeName => "Siege Module II"
	},

	4293	=> {
		typeID   => 4293,
		groupID  => 516,
		typeName => "Siege Module II Blueprint"
	},

	4294	=> {
		typeID   => 4294,
		groupID  => 515,
		typeName => "Triage Module II"
	},

	4295	=> {
		typeID   => 4295,
		groupID  => 516,
		typeName => "Triage Module II Blueprint"
	},

	4296	=> {
		typeID   => 4296,
		groupID  => 585,
		typeName => "Medium Remote Hull Repairer II"
	},

	4298	=> {
		typeID   => 4298,
		groupID  => 870,
		typeName => "Medium Remote Hull Repairer II Blueprint"
	},

	4299	=> {
		typeID   => 4299,
		groupID  => 585,
		typeName => "Small Remote Hull Repairer II"
	},

	4300	=> {
		typeID   => 4300,
		groupID  => 870,
		typeName => "Small Remote Hull Repairer II Blueprint"
	},

	4301	=> {
		typeID   => 4301,
		groupID  => 474,
		typeName => "Outgrowth Rogue Drone Hive Pass Key"
	},

	4302	=> {
		typeID   => 4302,
		groupID  => 1201,
		typeName => "Oracle"
	},

	4303	=> {
		typeID   => 4303,
		groupID  => 1141,
		typeName => "Research Abstract: Project Tesseract"
	},

	4304	=> {
		typeID   => 4304,
		groupID  => 1141,
		typeName => "Research Abstract: Project Theseus"
	},

	4305	=> {
		typeID   => 4305,
		groupID  => 489,
		typeName => "Oracle Blueprint"
	},

	4306	=> {
		typeID   => 4306,
		groupID  => 1201,
		typeName => "Naga"
	},

	4307	=> {
		typeID   => 4307,
		groupID  => 489,
		typeName => "Naga Blueprint"
	},

	4308	=> {
		typeID   => 4308,
		groupID  => 1201,
		typeName => "Talos"
	},

	4309	=> {
		typeID   => 4309,
		groupID  => 489,
		typeName => "Talos Blueprint"
	},

	4310	=> {
		typeID   => 4310,
		groupID  => 1201,
		typeName => "Tornado"
	},

	4311	=> {
		typeID   => 4311,
		groupID  => 489,
		typeName => "Tornado Blueprint"
	},

	4312	=> {
		typeID   => 4312,
		groupID  => 1136,
		typeName => "Oxygen Fuel Block"
	},

	4313	=> {
		typeID   => 4313,
		groupID  => 1137,
		typeName => "Oxygen Fuel Block Blueprint"
	},

	4314	=> {
		typeID   => 4314,
		groupID  => 1137,
		typeName => "Nitrogen Fuel Block Blueprint"
	},

	4315	=> {
		typeID   => 4315,
		groupID  => 1137,
		typeName => "Helium Fuel Block Blueprint"
	},

	4316	=> {
		typeID   => 4316,
		groupID  => 1137,
		typeName => "Hydrogen Fuel Block Blueprint"
	},

	4318	=> {
		typeID   => 4318,
		groupID  => 1025,
		typeName => "InterBus Customs Office"
	},

	4319	=> {
		typeID   => 4319,
		groupID  => 226,
		typeName => "Protest Monument"
	},

	4320	=> {
		typeID   => 4320,
		groupID  => 1141,
		typeName => "Research Abstract: Project Theta"
	},

	4321	=> {
		typeID   => 4321,
		groupID  => 1141,
		typeName => "Research Abstract: Project Blueprint"
	},

	4322	=> {
		typeID   => 4322,
		groupID  => 1141,
		typeName => "Research Abstract: Project Catapult"
	},

	4323	=> {
		typeID   => 4323,
		groupID  => 1141,
		typeName => "Research Abstract: Project Common Ground"
	},

	4324	=> {
		typeID   => 4324,
		groupID  => 1141,
		typeName => "Research Abstract: Project Huntress Green (1 of 3)"
	},

	4325	=> {
		typeID   => 4325,
		groupID  => 1141,
		typeName => "Research Abstract: Project Algintal"
	},

	4326	=> {
		typeID   => 4326,
		groupID  => 1141,
		typeName => "Research Abstract: Project Enigma"
	},

	4327	=> {
		typeID   => 4327,
		groupID  => 1141,
		typeName => "Research Abstract: Project Trinity"
	},

	4328	=> {
		typeID   => 4328,
		groupID  => 1141,
		typeName => "Research Abstract: Project Infernal Spade"
	},

	4329	=> {
		typeID   => 4329,
		groupID  => 1141,
		typeName => "Research Abstract: Project Astrosurvey"
	},

	4330	=> {
		typeID   => 4330,
		groupID  => 1141,
		typeName => "Research Abstract: Project Omicron"
	},

	4331	=> {
		typeID   => 4331,
		groupID  => 1141,
		typeName => "Research Abstract: Project Omega"
	},

	4332	=> {
		typeID   => 4332,
		groupID  => 1141,
		typeName => "Research Abstract: Project Rho"
	},

	4333	=> {
		typeID   => 4333,
		groupID  => 1141,
		typeName => "Research Abstract: Project Slipstream"
	},

	4334	=> {
		typeID   => 4334,
		groupID  => 1141,
		typeName => "Arek'Jaalan: Site One Contributions Listing"
	},

	4335	=> {
		typeID   => 4335,
		groupID  => 1141,
		typeName => "Research Abstract: Project Compass"
	},

	4336	=> {
		typeID   => 4336,
		groupID  => 1141,
		typeName => "Research Abstract: Project Huntress Green (2 of 3)"
	},

	4337	=> {
		typeID   => 4337,
		groupID  => 1141,
		typeName => "Research Abstract: Project Huntress Green (3 of 3)"
	},

	4338	=> {
		typeID   => 4338,
		groupID  => 1141,
		typeName => "Arek'Jaalan: Mission Statement"
	},

	4345	=> {
		typeID   => 4345,
		groupID  => 77,
		typeName => "Gistum B-Type Adaptive Invulnerability Field"
	},

	4346	=> {
		typeID   => 4346,
		groupID  => 77,
		typeName => "Gistum A-Type Adaptive Invulnerability Field"
	},

	4347	=> {
		typeID   => 4347,
		groupID  => 77,
		typeName => "Pithum A-Type Adaptive Invulnerability Field"
	},

	4348	=> {
		typeID   => 4348,
		groupID  => 77,
		typeName => "Pithum B-Type Adaptive Invulnerability Field"
	},

	4349	=> {
		typeID   => 4349,
		groupID  => 77,
		typeName => "Pithum C-Type Adaptive Invulnerability Field"
	},

	4354	=> {
		typeID   => 4354,
		groupID  => 819,
		typeName => "Sansha Tenebrus"
	},

	4355	=> {
		typeID   => 4355,
		groupID  => 819,
		typeName => "Dark Blood Keeper"
	},

	4356	=> {
		typeID   => 4356,
		groupID  => 819,
		typeName => "Shadow Serpentis Warden"
	},

	4357	=> {
		typeID   => 4357,
		groupID  => 319,
		typeName => "Amarr Drone Mine"
	},

	4358	=> {
		typeID   => 4358,
		groupID  => 283,
		typeName => "Exotic Dancers, Male"
	},

	4359	=> {
		typeID   => 4359,
		groupID  => 707,
		typeName => "QA Jump Bridge"
	},

	4360	=> {
		typeID   => 4360,
		groupID  => 353,
		typeName => "QA ECCM"
	},

	4361	=> {
		typeID   => 4361,
		groupID  => 365,
		typeName => "QA Fuel Control Tower"
	},

	4363	=> {
		typeID   => 4363,
		groupID  => 28,
		typeName => "Miasmos Quafe Ultra Edition"
	},

	4364	=> {
		typeID   => 4364,
		groupID  => 108,
		typeName => "Miasmos Quafe Ultra Edition Blueprint"
	},

	4365	=> {
		typeID   => 4365,
		groupID  => 1089,
		typeName => "Men's 'Quafe' T-shirt YC 114"
	},

	4366	=> {
		typeID   => 4366,
		groupID  => 1089,
		typeName => "Women's 'Quafe' T-shirt YC 114"
	},

	4367	=> {
		typeID   => 4367,
		groupID  => 1089,
		typeName => "Men's 'Sterling' Dress Shirt (white)"
	},

	4368	=> {
		typeID   => 4368,
		groupID  => 1089,
		typeName => "Women's 'Sterling' Dress Blouse (white)"
	},

	4369	=> {
		typeID   => 4369,
		groupID  => 786,
		typeName => "Small Targeting Amplifier I"
	},

	4370	=> {
		typeID   => 4370,
		groupID  => 787,
		typeName => "Small Targeting Amplifier I Blueprint"
	},

	4371	=> {
		typeID   => 4371,
		groupID  => 353,
		typeName => "QA Remote Armor Repair System - 5 Players"
	},

	4372	=> {
		typeID   => 4372,
		groupID  => 353,
		typeName => "QA Shield Transporter - 5 Players"
	},

	4373	=> {
		typeID   => 4373,
		groupID  => 353,
		typeName => "QA Damage Module"
	},

	4374	=> {
		typeID   => 4374,
		groupID  => 353,
		typeName => "QA Multiship Module - 10 Players"
	},

	4375	=> {
		typeID   => 4375,
		groupID  => 353,
		typeName => "QA Multiship Module - 20 Players"
	},

	4376	=> {
		typeID   => 4376,
		groupID  => 353,
		typeName => "QA Multiship Module - 40 Players"
	},

	4377	=> {
		typeID   => 4377,
		groupID  => 353,
		typeName => "QA Multiship Module - 5 Players"
	},

	4380	=> {
		typeID   => 4380,
		groupID  => 353,
		typeName => "QA Immunity Module"
	},

	4383	=> {
		typeID   => 4383,
		groupID  => 1189,
		typeName => "Large Micro Jump Drive"
	},

	4384	=> {
		typeID   => 4384,
		groupID  => 1191,
		typeName => "Large Micro Jump Drive Blueprint"
	},

	4385	=> {
		typeID   => 4385,
		groupID  => 275,
		typeName => "Micro Jump Drive Operation"
	},

	4386	=> {
		typeID   => 4386,
		groupID  => 1149,
		typeName => "Mobile Large Jump Disruptor I"
	},

	4387	=> {
		typeID   => 4387,
		groupID  => 371,
		typeName => "Mobile Large Jump Disruptor I Blueprint"
	},

	4388	=> {
		typeID   => 4388,
		groupID  => 28,
		typeName => "Miasmos Quafe Ultramarine Edition"
	},

	4389	=> {
		typeID   => 4389,
		groupID  => 108,
		typeName => "Miasmos Quafe Ultramarine Edition Blueprint"
	},

	4390	=> {
		typeID   => 4390,
		groupID  => 314,
		typeName => "Pax Ammaria"
	},

	4391	=> {
		typeID   => 4391,
		groupID  => 1156,
		typeName => "Large Ancillary Shield Booster"
	},

	4392	=> {
		typeID   => 4392,
		groupID  => 1157,
		typeName => "Large Ancillary Shield Booster Blueprint"
	},

	4393	=> {
		typeID   => 4393,
		groupID  => 645,
		typeName => "Drone Damage Amplifier I"
	},

	4394	=> {
		typeID   => 4394,
		groupID  => 1152,
		typeName => "Drone Damage Amplifier I Blueprint"
	},

	4395	=> {
		typeID   => 4395,
		groupID  => 781,
		typeName => "Medium Processor Overclocking Unit I"
	},

	4396	=> {
		typeID   => 4396,
		groupID  => 787,
		typeName => "Medium Processor Overclocking Unit I Blueprint"
	},

	4397	=> {
		typeID   => 4397,
		groupID  => 781,
		typeName => "Large Processor Overclocking Unit I"
	},

	4398	=> {
		typeID   => 4398,
		groupID  => 787,
		typeName => "Large Processor Overclocking Unit I Blueprint"
	},

	4399	=> {
		typeID   => 4399,
		groupID  => 781,
		typeName => "Medium Processor Overclocking Unit II"
	},

	4400	=> {
		typeID   => 4400,
		groupID  => 787,
		typeName => "Medium Processor Overclocking Unit II Blueprint"
	},

	4401	=> {
		typeID   => 4401,
		groupID  => 781,
		typeName => "Large Processor Overclocking Unit II"
	},

	4402	=> {
		typeID   => 4402,
		groupID  => 787,
		typeName => "Large Processor Overclocking Unit II Blueprint"
	},

	4403	=> {
		typeID   => 4403,
		groupID  => 1150,
		typeName => "Reactive Armor Hardener"
	},

	4404	=> {
		typeID   => 4404,
		groupID  => 1151,
		typeName => "Reactive Armor Hardener Blueprint"
	},

	4405	=> {
		typeID   => 4405,
		groupID  => 645,
		typeName => "Drone Damage Amplifier II"
	},

	4406	=> {
		typeID   => 4406,
		groupID  => 1152,
		typeName => "Drone Damage Amplifier II Blueprint"
	},

	4407	=> {
		typeID   => 4407,
		groupID  => 1153,
		typeName => "Shield Booster Fuel Allocation Script"
	},

	4408	=> {
		typeID   => 4408,
		groupID  => 912,
		typeName => "Shield Booster Fuel Allocation Script Blueprint"
	},

	4409	=> {
		typeID   => 4409,
		groupID  => 1154,
		typeName => "Target Spectrum Breaker"
	},

	4410	=> {
		typeID   => 4410,
		groupID  => 1155,
		typeName => "Target Spectrum Breaker Blueprint"
	},

	4411	=> {
		typeID   => 4411,
		groupID  => 272,
		typeName => "Target Breaker Amplification"
	},

	4421	=> {
		typeID   => 4421,
		groupID  => 43,
		typeName => "F-a10 Buffer Capacitor Regenerator"
	},

	4423	=> {
		typeID   => 4423,
		groupID  => 43,
		typeName => "Industrial Capacitor Recharger"
	},

	4425	=> {
		typeID   => 4425,
		groupID  => 43,
		typeName => "AGM Capacitor Charge Array"
	},

	4427	=> {
		typeID   => 4427,
		groupID  => 43,
		typeName => "Secondary Parallel Link-Capacitor"
	},

	4431	=> {
		typeID   => 4431,
		groupID  => 43,
		typeName => "F-b10 Nominal Capacitor Regenerator"
	},

	4433	=> {
		typeID   => 4433,
		groupID  => 43,
		typeName => "Barton Reactor Capacitor Recharger I"
	},

	4435	=> {
		typeID   => 4435,
		groupID  => 43,
		typeName => "Eutectic Compact Cap Recharger"
	},

	4437	=> {
		typeID   => 4437,
		groupID  => 43,
		typeName => "Fixed Parallel Link-Capacitor I"
	},

	4471	=> {
		typeID   => 4471,
		groupID  => 71,
		typeName => "Small Infectious Scoped Energy Neutralizer"
	},

	4473	=> {
		typeID   => 4473,
		groupID  => 71,
		typeName => "Small Rudimentary Energy Destabilizer I"
	},

	4475	=> {
		typeID   => 4475,
		groupID  => 71,
		typeName => "Small Unstable Power Fluctuator I"
	},

	4477	=> {
		typeID   => 4477,
		groupID  => 71,
		typeName => "Small Gremlin Compact Energy Neutralizer"
	},

	4529	=> {
		typeID   => 4529,
		groupID  => 62,
		typeName => "Small I-a Polarized Armor Regenerator"
	},

	4531	=> {
		typeID   => 4531,
		groupID  => 62,
		typeName => "Small Inefficient Armor Repair Unit"
	},

	4533	=> {
		typeID   => 4533,
		groupID  => 62,
		typeName => "Small 'Accommodation' Vestment Reconstructer I"
	},

	4535	=> {
		typeID   => 4535,
		groupID  => 62,
		typeName => "Small Automated Carapace Restoration"
	},

	4569	=> {
		typeID   => 4569,
		groupID  => 62,
		typeName => "Medium I-a Polarized Armor Regenerator"
	},

	4571	=> {
		typeID   => 4571,
		groupID  => 62,
		typeName => "Medium Inefficient Armor Repair Unit"
	},

	4573	=> {
		typeID   => 4573,
		groupID  => 62,
		typeName => "Medium 'Accommodation' Vestment Reconstructer I"
	},

	4575	=> {
		typeID   => 4575,
		groupID  => 62,
		typeName => "Medium Automated Carapace Restoration"
	},

	4579	=> {
		typeID   => 4579,
		groupID  => 62,
		typeName => "Medium Nano Armor Repair Unit I"
	},

	4609	=> {
		typeID   => 4609,
		groupID  => 62,
		typeName => "Large I-a Polarized Armor Regenerator"
	},

	4611	=> {
		typeID   => 4611,
		groupID  => 62,
		typeName => "Large Inefficient Armor Repair Unit"
	},

	4613	=> {
		typeID   => 4613,
		groupID  => 62,
		typeName => "Large 'Accommodation' Vestment Reconstructer I"
	},

	4615	=> {
		typeID   => 4615,
		groupID  => 62,
		typeName => "Large Automated Carapace Restoration"
	},

	4621	=> {
		typeID   => 4621,
		groupID  => 62,
		typeName => "Large 'Reprieve' Vestment Reconstructer I"
	},

	4745	=> {
		typeID   => 4745,
		groupID  => 61,
		typeName => "Micro F-4a Ld-Sulfate Capacitor Charge Unit"
	},

	4747	=> {
		typeID   => 4747,
		groupID  => 61,
		typeName => "Micro Ld-Acid Capacitor Battery I"
	},

	4749	=> {
		typeID   => 4749,
		groupID  => 61,
		typeName => "Micro Peroxide Capacitor Power Cell"
	},

	4751	=> {
		typeID   => 4751,
		groupID  => 61,
		typeName => "Micro Ohm Capacitor Reserve I"
	},

	4785	=> {
		typeID   => 4785,
		groupID  => 61,
		typeName => "Small F-4a Ld-Sulfate Capacitor Charge Unit"
	},

	4787	=> {
		typeID   => 4787,
		groupID  => 61,
		typeName => "Small Compact Pb-Acid Cap Battery "
	},

	4789	=> {
		typeID   => 4789,
		groupID  => 61,
		typeName => "Small Peroxide Capacitor Power Cell"
	},

	4791	=> {
		typeID   => 4791,
		groupID  => 61,
		typeName => "Small Ohm Capacitor Reserve I"
	},

	4829	=> {
		typeID   => 4829,
		groupID  => 76,
		typeName => "Medium F-RX Prototype Capacitor Boost"
	},

	4831	=> {
		typeID   => 4831,
		groupID  => 76,
		typeName => "Medium Brief Capacitor Overcharge I"
	},

	4833	=> {
		typeID   => 4833,
		groupID  => 76,
		typeName => "Medium Electrochemical Capacitor Booster I"
	},

	4835	=> {
		typeID   => 4835,
		groupID  => 76,
		typeName => "Medium Tapered Capacitor Infusion I"
	},

	4869	=> {
		typeID   => 4869,
		groupID  => 61,
		typeName => "Large F-4a Ld-Sulfate Capacitor Charge Unit"
	},

	4871	=> {
		typeID   => 4871,
		groupID  => 61,
		typeName => "Large Compact Pb-Acid Cap Battery"
	},

	4873	=> {
		typeID   => 4873,
		groupID  => 61,
		typeName => "Large Peroxide Capacitor Power Cell"
	},

	4875	=> {
		typeID   => 4875,
		groupID  => 61,
		typeName => "Large Ohm Capacitor Reserve I"
	},

	4909	=> {
		typeID   => 4909,
		groupID  => 61,
		typeName => "X-Large F-4a Ld-Sulfate Capacitor Charge Unit"
	},

	4911	=> {
		typeID   => 4911,
		groupID  => 61,
		typeName => "X-Large Ld-Acid Capacitor Battery I"
	},

	4913	=> {
		typeID   => 4913,
		groupID  => 61,
		typeName => "X-Large Peroxide Capacitor Power Cell"
	},

	4915	=> {
		typeID   => 4915,
		groupID  => 61,
		typeName => "X-Large Ohm Capacitor Reserve I"
	},

	4955	=> {
		typeID   => 4955,
		groupID  => 76,
		typeName => "Micro F-RX Prototype Capacitor Boost"
	},

	4957	=> {
		typeID   => 4957,
		groupID  => 76,
		typeName => "Micro Brief Capacitor Overcharge I"
	},

	4959	=> {
		typeID   => 4959,
		groupID  => 76,
		typeName => "Micro Electrochemical Capacitor Booster I"
	},

	4961	=> {
		typeID   => 4961,
		groupID  => 76,
		typeName => "Micro Tapered Capacitor Infusion I"
	},

	5007	=> {
		typeID   => 5007,
		groupID  => 76,
		typeName => "Small F-RX Prototype Capacitor Boost"
	},

	5009	=> {
		typeID   => 5009,
		groupID  => 76,
		typeName => "Small Brief Capacitor Overcharge I"
	},

	5011	=> {
		typeID   => 5011,
		groupID  => 76,
		typeName => "Small Electrochemical Capacitor Booster I"
	},

	5013	=> {
		typeID   => 5013,
		groupID  => 76,
		typeName => "Small Tapered Capacitor Infusion I"
	},

	5017	=> {
		typeID   => 5017,
		groupID  => 76,
		typeName => "Small Perishable Capacitor Overcharge II"
	},

	5047	=> {
		typeID   => 5047,
		groupID  => 76,
		typeName => "Heavy F-RX Prototype Capacitor Boost"
	},

	5049	=> {
		typeID   => 5049,
		groupID  => 76,
		typeName => "Heavy Brief Capacitor Overcharge I"
	},

	5051	=> {
		typeID   => 5051,
		groupID  => 76,
		typeName => "Heavy Electrochemical Capacitor Booster I"
	},

	5053	=> {
		typeID   => 5053,
		groupID  => 76,
		typeName => "Heavy Tapered Capacitor Infusion I"
	},

	5087	=> {
		typeID   => 5087,
		groupID  => 67,
		typeName => "Small Partial E95a Remote Capacitor Transmitter"
	},

	5089	=> {
		typeID   => 5089,
		groupID  => 67,
		typeName => "Small Murky Remote Capacitor Transmitter"
	},

	5091	=> {
		typeID   => 5091,
		groupID  => 67,
		typeName => "Small 'Regard' Remote Capacitor Transmitter"
	},

	5093	=> {
		typeID   => 5093,
		groupID  => 67,
		typeName => "Small Asymmetric Remote Capacitor Transmitter"
	},

	5135	=> {
		typeID   => 5135,
		groupID  => 68,
		typeName => "E5 Prototype Energy Vampire"
	},

	5137	=> {
		typeID   => 5137,
		groupID  => 68,
		typeName => "Small Knave Scoped Energy Nosferatu"
	},

	5139	=> {
		typeID   => 5139,
		groupID  => 68,
		typeName => "Small Diminishing Power System Drain I"
	},

	5141	=> {
		typeID   => 5141,
		groupID  => 68,
		typeName => "Small Ghoul Compact Energy Nosferatu"
	},

	5175	=> {
		typeID   => 5175,
		groupID  => 53,
		typeName => "Gatling Modal Laser I"
	},

	5177	=> {
		typeID   => 5177,
		groupID  => 53,
		typeName => "Gatling Afocal Maser I"
	},

	5179	=> {
		typeID   => 5179,
		groupID  => 53,
		typeName => "Gatling Modulated Energy Beam I"
	},

	5181	=> {
		typeID   => 5181,
		groupID  => 53,
		typeName => "Gatling Anode Particle Stream I"
	},

	5215	=> {
		typeID   => 5215,
		groupID  => 53,
		typeName => "Dual Modal Pulse Laser I"
	},

	5217	=> {
		typeID   => 5217,
		groupID  => 53,
		typeName => "Dual Afocal Pulse Maser I"
	},

	5219	=> {
		typeID   => 5219,
		groupID  => 53,
		typeName => "Dual Modulated Pulse Energy Beam I"
	},

	5221	=> {
		typeID   => 5221,
		groupID  => 53,
		typeName => "Dual Anode Pulse Particle Stream I"
	},

	5231	=> {
		typeID   => 5231,
		groupID  => 54,
		typeName => "EP-R Argon Ion Basic Excavation Pulse"
	},

	5233	=> {
		typeID   => 5233,
		groupID  => 54,
		typeName => "Single Diode Basic Mining Laser"
	},

	5235	=> {
		typeID   => 5235,
		groupID  => 54,
		typeName => "Xenon Basic Drilling Beam"
	},

	5237	=> {
		typeID   => 5237,
		groupID  => 54,
		typeName => "Rubin Basic Particle Bore Stream"
	},

	5239	=> {
		typeID   => 5239,
		groupID  => 54,
		typeName => "EP-S Gaussian Scoped Mining Laser"
	},

	5241	=> {
		typeID   => 5241,
		groupID  => 54,
		typeName => "Dual Diode Mining Laser I"
	},

	5243	=> {
		typeID   => 5243,
		groupID  => 54,
		typeName => "XeCl Drilling Beam I"
	},

	5245	=> {
		typeID   => 5245,
		groupID  => 54,
		typeName => "Particle Bore Compact Mining Laser"
	},

	5279	=> {
		typeID   => 5279,
		groupID  => 290,
		typeName => "F-23 Compact Remote Sensor Booster"
	},

	5280	=> {
		typeID   => 5280,
		groupID  => 290,
		typeName => "Connected Remote Sensor Booster"
	},

	5281	=> {
		typeID   => 5281,
		groupID  => 290,
		typeName => "Coadjunct Scoped Remote Sensor Booster"
	},

	5282	=> {
		typeID   => 5282,
		groupID  => 290,
		typeName => "Linked Enduring Sensor Booster"
	},

	5299	=> {
		typeID   => 5299,
		groupID  => 208,
		typeName => "LFT Enduring Sensor Dampener"
	},

	5300	=> {
		typeID   => 5300,
		groupID  => 208,
		typeName => "Indirect Scanning Dampening Unit I"
	},

	5301	=> {
		typeID   => 5301,
		groupID  => 208,
		typeName => "Kapteyn Compact Sensor Dampener"
	},

	5302	=> {
		typeID   => 5302,
		groupID  => 208,
		typeName => "Phased Muon Scoped Sensor Dampener"
	},

	5319	=> {
		typeID   => 5319,
		groupID  => 291,
		typeName => "Baker Nunn Enduring Tracking Disruptor I"
	},

	5320	=> {
		typeID   => 5320,
		groupID  => 291,
		typeName => "Balmer Series Compact Tracking Disruptor I"
	},

	5321	=> {
		typeID   => 5321,
		groupID  => 291,
		typeName => "C-IR Compact Guidance Disruptor"
	},

	5322	=> {
		typeID   => 5322,
		groupID  => 291,
		typeName => "DDO Scoped Tracking Disruptor I"
	},

	5339	=> {
		typeID   => 5339,
		groupID  => 209,
		typeName => "F-293 Scoped Remote Tracking Computer"
	},

	5340	=> {
		typeID   => 5340,
		groupID  => 209,
		typeName => "P-S Compact Remote Tracking Computer"
	},

	5341	=> {
		typeID   => 5341,
		groupID  => 209,
		typeName => "'Prayer' Remote Tracking Computer"
	},

	5342	=> {
		typeID   => 5342,
		groupID  => 209,
		typeName => "Alfven Enduring Remote Tracking Computer"
	},

	5359	=> {
		typeID   => 5359,
		groupID  => 80,
		typeName => "1Z-3 Subversive ECM Eruption"
	},

	5361	=> {
		typeID   => 5361,
		groupID  => 80,
		typeName => "Deluge Enduring Burst Jammer"
	},

	5363	=> {
		typeID   => 5363,
		groupID  => 80,
		typeName => "Rash Compact Burst Jammer"
	},

	5365	=> {
		typeID   => 5365,
		groupID  => 80,
		typeName => "Cetus Scoped Burst Jammer"
	},

	5399	=> {
		typeID   => 5399,
		groupID  => 52,
		typeName => "J5 Enduring Warp Disruptor"
	},

	5401	=> {
		typeID   => 5401,
		groupID  => 52,
		typeName => "Fleeting Warp Disruptor I"
	},

	5403	=> {
		typeID   => 5403,
		groupID  => 52,
		typeName => "Faint Scoped Warp Disruptor"
	},

	5405	=> {
		typeID   => 5405,
		groupID  => 52,
		typeName => "Initiated Compact Warp Disruptor"
	},

	5439	=> {
		typeID   => 5439,
		groupID  => 52,
		typeName => "J5b Enduring Warp Scrambler"
	},

	5441	=> {
		typeID   => 5441,
		groupID  => 52,
		typeName => "Fleeting Progressive Warp Scrambler I"
	},

	5443	=> {
		typeID   => 5443,
		groupID  => 52,
		typeName => "Faint Epsilon Scoped Warp Scrambler"
	},

	5445	=> {
		typeID   => 5445,
		groupID  => 52,
		typeName => "Initiated Compact Warp Scrambler"
	},

	5479	=> {
		typeID   => 5479,
		groupID  => 765,
		typeName => "Marked Modified SS Expanded Cargo"
	},

	5481	=> {
		typeID   => 5481,
		groupID  => 765,
		typeName => "Partial Hull Conversion Expanded Cargo"
	},

	5483	=> {
		typeID   => 5483,
		groupID  => 765,
		typeName => "Alpha Hull Mod Expanded Cargo"
	},

	5485	=> {
		typeID   => 5485,
		groupID  => 765,
		typeName => "Type-E Altered SS Expanded Cargo"
	},

	5487	=> {
		typeID   => 5487,
		groupID  => 765,
		typeName => "Mark I Modified SS Expanded Cargo"
	},

	5489	=> {
		typeID   => 5489,
		groupID  => 765,
		typeName => "Local Hull Conversion Expanded Cargo I"
	},

	5491	=> {
		typeID   => 5491,
		groupID  => 765,
		typeName => "Beta Hull Mod Expanded Cargo"
	},

	5493	=> {
		typeID   => 5493,
		groupID  => 765,
		typeName => "Type-D Restrained Expanded Cargo"
	},

	5519	=> {
		typeID   => 5519,
		groupID  => 762,
		typeName => "Marked Modified SS Inertial Stabilizers"
	},

	5521	=> {
		typeID   => 5521,
		groupID  => 762,
		typeName => "Partial Hull Conversion Inertial Stabilizers"
	},

	5523	=> {
		typeID   => 5523,
		groupID  => 762,
		typeName => "Alpha Hull Mod Inertial Stabilizers"
	},

	5525	=> {
		typeID   => 5525,
		groupID  => 762,
		typeName => "Type-E Altered SS Inertial Stabilizers"
	},

	5527	=> {
		typeID   => 5527,
		groupID  => 762,
		typeName => "Mark I Modified SS Inertial Stabilizers"
	},

	5529	=> {
		typeID   => 5529,
		groupID  => 762,
		typeName => "Local Hull Conversion Inertial Stabilizers I"
	},

	5531	=> {
		typeID   => 5531,
		groupID  => 762,
		typeName => "Beta Hull Mod Inertial Stabilizers"
	},

	5533	=> {
		typeID   => 5533,
		groupID  => 762,
		typeName => "Type-D Restrained Inertial Stabilizers"
	},

	5559	=> {
		typeID   => 5559,
		groupID  => 763,
		typeName => "Partial Hull Conversion Nanofiber Structure"
	},

	5561	=> {
		typeID   => 5561,
		groupID  => 763,
		typeName => "Local Hull Conversion Nanofiber Structure I"
	},

	5591	=> {
		typeID   => 5591,
		groupID  => 763,
		typeName => "Alpha Hull Mod Nanofiber Structure"
	},

	5593	=> {
		typeID   => 5593,
		groupID  => 763,
		typeName => "Type-E Altered SS Nanofiber Structure"
	},

	5595	=> {
		typeID   => 5595,
		groupID  => 763,
		typeName => "Marked Modified SS Nanofiber Structure"
	},

	5597	=> {
		typeID   => 5597,
		groupID  => 763,
		typeName => "Beta Hull Mod Nanofiber Structure"
	},

	5599	=> {
		typeID   => 5599,
		groupID  => 763,
		typeName => "Type-D Restrained Nanofiber Structure"
	},

	5601	=> {
		typeID   => 5601,
		groupID  => 763,
		typeName => "Mark I Modified SS Nanofiber Structure"
	},

	5611	=> {
		typeID   => 5611,
		groupID  => 764,
		typeName => "Partial Hull Conversion Overdrive Injector"
	},

	5613	=> {
		typeID   => 5613,
		groupID  => 764,
		typeName => "Alpha Hull Mod Overdrive Injector"
	},

	5615	=> {
		typeID   => 5615,
		groupID  => 764,
		typeName => "Type-E Altered SS Overdrive Injector"
	},

	5617	=> {
		typeID   => 5617,
		groupID  => 764,
		typeName => "Marked Modified SS Overdrive Injector"
	},

	5627	=> {
		typeID   => 5627,
		groupID  => 764,
		typeName => "Local Hull Conversion Overdrive Injector I"
	},

	5629	=> {
		typeID   => 5629,
		groupID  => 764,
		typeName => "Beta Hull Mod Overdrive Injector"
	},

	5631	=> {
		typeID   => 5631,
		groupID  => 764,
		typeName => "Type-D Restrained Overdrive Injector"
	},

	5633	=> {
		typeID   => 5633,
		groupID  => 764,
		typeName => "Mark I Modified SS Overdrive Injector"
	},

	5643	=> {
		typeID   => 5643,
		groupID  => 78,
		typeName => "Local Hull Conversion Reinforced Bulkheads I"
	},

	5645	=> {
		typeID   => 5645,
		groupID  => 78,
		typeName => "Beta Hull Mod Reinforced Bulkheads"
	},

	5647	=> {
		typeID   => 5647,
		groupID  => 78,
		typeName => "Type-D Restrained Reinforced Bulkheads"
	},

	5649	=> {
		typeID   => 5649,
		groupID  => 78,
		typeName => "Mark I Compact Reinforced Bulkheads"
	},

	5675	=> {
		typeID   => 5675,
		groupID  => 78,
		typeName => "Partial Hull Conversion Reinforced Bulkheads"
	},

	5677	=> {
		typeID   => 5677,
		groupID  => 78,
		typeName => "Alpha Hull Mod Reinforced Bulkheads"
	},

	5679	=> {
		typeID   => 5679,
		groupID  => 78,
		typeName => "Type-E Altered SS Reinforced Bulkheads"
	},

	5681	=> {
		typeID   => 5681,
		groupID  => 78,
		typeName => "Marked Modified SS Reinforced Bulkheads"
	},

	5683	=> {
		typeID   => 5683,
		groupID  => 63,
		typeName => "Medium Inefficient Hull Repair Unit"
	},

	5693	=> {
		typeID   => 5693,
		groupID  => 63,
		typeName => "Small Inefficient Hull Repair Unit"
	},

	5697	=> {
		typeID   => 5697,
		groupID  => 63,
		typeName => "Large Inefficient Hull Repair Unit"
	},

	5719	=> {
		typeID   => 5719,
		groupID  => 63,
		typeName => "Medium 'Hope' Hull Reconstructor I"
	},

	5721	=> {
		typeID   => 5721,
		groupID  => 63,
		typeName => "Medium Automated Structural Restoration"
	},

	5723	=> {
		typeID   => 5723,
		groupID  => 63,
		typeName => "Medium I-b Polarized Structural Regenerator"
	},

	5743	=> {
		typeID   => 5743,
		groupID  => 63,
		typeName => "Small 'Hope' Hull Reconstructor I"
	},

	5745	=> {
		typeID   => 5745,
		groupID  => 63,
		typeName => "Small Automated Structural Restoration"
	},

	5747	=> {
		typeID   => 5747,
		groupID  => 63,
		typeName => "Small I-b Polarized Structural Regenerator"
	},

	5755	=> {
		typeID   => 5755,
		groupID  => 63,
		typeName => "Large 'Hope' Hull Reconstructor I"
	},

	5757	=> {
		typeID   => 5757,
		groupID  => 63,
		typeName => "Large Automated Structural Restoration"
	},

	5759	=> {
		typeID   => 5759,
		groupID  => 63,
		typeName => "Large I-b Polarized Structural Regenerator"
	},

	5829	=> {
		typeID   => 5829,
		groupID  => 60,
		typeName => "GLFF Containment Field"
	},

	5831	=> {
		typeID   => 5831,
		groupID  => 60,
		typeName => "Interior Force Field Array"
	},

	5833	=> {
		typeID   => 5833,
		groupID  => 60,
		typeName => "Systematic Damage Control"
	},

	5835	=> {
		typeID   => 5835,
		groupID  => 60,
		typeName => "F84 Local Damage System"
	},

	5837	=> {
		typeID   => 5837,
		groupID  => 60,
		typeName => "Pseudoelectron Containment Field I"
	},

	5839	=> {
		typeID   => 5839,
		groupID  => 60,
		typeName => "IFFA Compact Damage Control"
	},

	5841	=> {
		typeID   => 5841,
		groupID  => 60,
		typeName => "Emergency Damage Control I"
	},

	5843	=> {
		typeID   => 5843,
		groupID  => 60,
		typeName => "F85 Peripheral Damage System I"
	},

	5845	=> {
		typeID   => 5845,
		groupID  => 205,
		typeName => "Heat Exhaust System"
	},

	5846	=> {
		typeID   => 5846,
		groupID  => 205,
		typeName => "Thermal Exhaust System I"
	},

	5849	=> {
		typeID   => 5849,
		groupID  => 205,
		typeName => "Extruded Compact Heat Sink"
	},

	5854	=> {
		typeID   => 5854,
		groupID  => 205,
		typeName => "Stamped Heat Sink"
	},

	5855	=> {
		typeID   => 5855,
		groupID  => 205,
		typeName => "'Boreas' Coolant System"
	},

	5856	=> {
		typeID   => 5856,
		groupID  => 205,
		typeName => "C3S Convection Thermal Radiator"
	},

	5857	=> {
		typeID   => 5857,
		groupID  => 205,
		typeName => "'Skadi' Coolant System I"
	},

	5858	=> {
		typeID   => 5858,
		groupID  => 205,
		typeName => "C4S Coiled Circuit Thermal Radiator"
	},

	5865	=> {
		typeID   => 5865,
		groupID  => 82,
		typeName => "Indirect Target Acquisition I"
	},

	5867	=> {
		typeID   => 5867,
		groupID  => 82,
		typeName => "Passive Targeting Array I"
	},

	5869	=> {
		typeID   => 5869,
		groupID  => 82,
		typeName => "Suppressed Targeting System I"
	},

	5871	=> {
		typeID   => 5871,
		groupID  => 82,
		typeName => "41F Veiled Targeting Unit"
	},

	5913	=> {
		typeID   => 5913,
		groupID  => 59,
		typeName => "Hydraulic Stabilization Actuator"
	},

	5915	=> {
		typeID   => 5915,
		groupID  => 59,
		typeName => "Lateral Gyrostabilizer"
	},

	5917	=> {
		typeID   => 5917,
		groupID  => 59,
		typeName => "Stabilized Weapon Mounts"
	},

	5919	=> {
		typeID   => 5919,
		groupID  => 59,
		typeName => "F-M2 Weapon Inertial Suspensor"
	},

	5929	=> {
		typeID   => 5929,
		groupID  => 59,
		typeName => "Pneumatic Stabilization Actuator I"
	},

	5931	=> {
		typeID   => 5931,
		groupID  => 59,
		typeName => "Cross-Lateral Gyrostabilizer I"
	},

	5933	=> {
		typeID   => 5933,
		groupID  => 59,
		typeName => "Counterbalanced Compact Gyrostabilizer"
	},

	5935	=> {
		typeID   => 5935,
		groupID  => 59,
		typeName => "F-M3 Munition Inertial Suspensor"
	},

	5945	=> {
		typeID   => 5945,
		groupID  => 46,
		typeName => "500MN Cold-Gas Enduring Microwarpdrive"
	},

	5955	=> {
		typeID   => 5955,
		groupID  => 46,
		typeName => "100MN Monopropellant Enduring Afterburner"
	},

	5971	=> {
		typeID   => 5971,
		groupID  => 46,
		typeName => "5MN Cold-Gas Enduring Microwarpdrive"
	},

	5973	=> {
		typeID   => 5973,
		groupID  => 46,
		typeName => "5MN Y-T8 Compact Microwarpdrive"
	},

	5975	=> {
		typeID   => 5975,
		groupID  => 46,
		typeName => "50MN Cold-Gas Enduring Microwarpdrive"
	},

	6001	=> {
		typeID   => 6001,
		groupID  => 46,
		typeName => "1MN Y-S8 Compact Afterburner"
	},

	6003	=> {
		typeID   => 6003,
		groupID  => 46,
		typeName => "1MN Monopropellant Enduring Afterburner"
	},

	6005	=> {
		typeID   => 6005,
		groupID  => 46,
		typeName => "10MN Monopropellant Enduring Afterburner"
	},

	6041	=> {
		typeID   => 6041,
		groupID  => 96,
		typeName => "Hostile Target Acquisition I"
	},

	6043	=> {
		typeID   => 6043,
		groupID  => 96,
		typeName => "'Recusant' Hostile Targeting Array I"
	},

	6045	=> {
		typeID   => 6045,
		groupID  => 96,
		typeName => "Responsive Auto-Targeting System I"
	},

	6047	=> {
		typeID   => 6047,
		groupID  => 96,
		typeName => "Automated Targeting Unit I"
	},

	6073	=> {
		typeID   => 6073,
		groupID  => 61,
		typeName => "Medium Compact Pb-Acid Cap Battery"
	},

	6083	=> {
		typeID   => 6083,
		groupID  => 61,
		typeName => "Medium Peroxide Capacitor Power Cell"
	},

	6097	=> {
		typeID   => 6097,
		groupID  => 61,
		typeName => "Medium Ohm Capacitor Reserve I"
	},

	6111	=> {
		typeID   => 6111,
		groupID  => 61,
		typeName => "Medium F-4a Ld-Sulfate Capacitor Charge Unit"
	},

	6129	=> {
		typeID   => 6129,
		groupID  => 47,
		typeName => "Surface Cargo Scanner I"
	},

	6131	=> {
		typeID   => 6131,
		groupID  => 47,
		typeName => "Type-E Enduring Cargo Scanner"
	},

	6133	=> {
		typeID   => 6133,
		groupID  => 47,
		typeName => "Interior Type-E Cargo Identifier"
	},

	6135	=> {
		typeID   => 6135,
		groupID  => 47,
		typeName => "PL-0 Scoped Cargo Scanner"
	},

	6157	=> {
		typeID   => 6157,
		groupID  => 212,
		typeName => "Supplemental Scanning CPU I"
	},

	6158	=> {
		typeID   => 6158,
		groupID  => 212,
		typeName => "Prototype Sensor Booster"
	},

	6159	=> {
		typeID   => 6159,
		groupID  => 212,
		typeName => "Alumel-Wired Enduring Sensor Booster"
	},

	6160	=> {
		typeID   => 6160,
		groupID  => 212,
		typeName => "F-90 Compact Sensor Booster"
	},

	6173	=> {
		typeID   => 6173,
		groupID  => 213,
		typeName => "Optical Compact Tracking Computer"
	},

	6174	=> {
		typeID   => 6174,
		groupID  => 213,
		typeName => "Monopulse Tracking Mechanism I"
	},

	6175	=> {
		typeID   => 6175,
		groupID  => 213,
		typeName => "'Orion' Tracking CPU I"
	},

	6176	=> {
		typeID   => 6176,
		groupID  => 213,
		typeName => "F-12 Enduring Tracking Computer"
	},

	6193	=> {
		typeID   => 6193,
		groupID  => 203,
		typeName => "Emergency Magnetometric Scanners"
	},

	6194	=> {
		typeID   => 6194,
		groupID  => 203,
		typeName => "Emergency Multi-Frequency Scanners"
	},

	6195	=> {
		typeID   => 6195,
		groupID  => 203,
		typeName => "Reserve Gravimetric Scanners"
	},

	6199	=> {
		typeID   => 6199,
		groupID  => 203,
		typeName => "Reserve Ladar Scanners"
	},

	6202	=> {
		typeID   => 6202,
		groupID  => 203,
		typeName => "Emergency RADAR Scanners"
	},

	6203	=> {
		typeID   => 6203,
		groupID  => 203,
		typeName => "Reserve Magnetometric Scanners"
	},

	6207	=> {
		typeID   => 6207,
		groupID  => 203,
		typeName => "Reserve Multi-Frequency Scanners"
	},

	6212	=> {
		typeID   => 6212,
		groupID  => 203,
		typeName => "Reserve RADAR Scanners"
	},

	6216	=> {
		typeID   => 6216,
		groupID  => 203,
		typeName => "Emergency Ladar Scanners"
	},

	6217	=> {
		typeID   => 6217,
		groupID  => 203,
		typeName => "Emergency Gravimetric Scanners"
	},

	6218	=> {
		typeID   => 6218,
		groupID  => 203,
		typeName => "Protected Gravimetric Backup Cluster I"
	},

	6222	=> {
		typeID   => 6222,
		groupID  => 203,
		typeName => "Protected Ladar Backup Cluster I"
	},

	6225	=> {
		typeID   => 6225,
		groupID  => 203,
		typeName => "Sealed RADAR Backup Cluster"
	},

	6226	=> {
		typeID   => 6226,
		groupID  => 203,
		typeName => "Protected Magnetometric Backup Cluster I"
	},

	6230	=> {
		typeID   => 6230,
		groupID  => 203,
		typeName => "Protected Multi-Frequency Backup Cluster I"
	},

	6234	=> {
		typeID   => 6234,
		groupID  => 203,
		typeName => "Protected RADAR Backup Cluster I"
	},

	6238	=> {
		typeID   => 6238,
		groupID  => 203,
		typeName => "Sealed Magnetometric Backup Cluster"
	},

	6239	=> {
		typeID   => 6239,
		groupID  => 203,
		typeName => "Sealed Multi-Frequency Backup Cluster"
	},

	6241	=> {
		typeID   => 6241,
		groupID  => 203,
		typeName => "Sealed Ladar Backup Cluster"
	},

	6242	=> {
		typeID   => 6242,
		groupID  => 203,
		typeName => "Sealed Gravimetric Backup Cluster"
	},

	6243	=> {
		typeID   => 6243,
		groupID  => 203,
		typeName => "Surrogate Gravimetric Reserve Array I"
	},

	6244	=> {
		typeID   => 6244,
		groupID  => 203,
		typeName => "F-43 Repetitive Gravimetric Backup Sensors"
	},

	6251	=> {
		typeID   => 6251,
		groupID  => 203,
		typeName => "Surrogate Ladar Reserve Array I"
	},

	6252	=> {
		typeID   => 6252,
		groupID  => 203,
		typeName => "F-43 Repetitive Ladar Backup Sensors"
	},

	6257	=> {
		typeID   => 6257,
		groupID  => 203,
		typeName => "Surplus RADAR Reserve Array"
	},

	6258	=> {
		typeID   => 6258,
		groupID  => 203,
		typeName => "F-42 Reiterative RADAR Backup Sensors"
	},

	6259	=> {
		typeID   => 6259,
		groupID  => 203,
		typeName => "Surrogate Magnetometric Reserve Array I"
	},

	6260	=> {
		typeID   => 6260,
		groupID  => 203,
		typeName => "F-43 Repetitive Magnetometric Backup Sensors"
	},

	6267	=> {
		typeID   => 6267,
		groupID  => 203,
		typeName => "Surrogate Multi-Frequency Reserve Array I"
	},

	6268	=> {
		typeID   => 6268,
		groupID  => 203,
		typeName => "F-43 Repetitive Multi-Frequency Backup Sensors"
	},

	6275	=> {
		typeID   => 6275,
		groupID  => 203,
		typeName => "Surrogate RADAR Reserve Array I"
	},

	6276	=> {
		typeID   => 6276,
		groupID  => 203,
		typeName => "F-43 Repetitive RADAR Backup Sensors"
	},

	6283	=> {
		typeID   => 6283,
		groupID  => 203,
		typeName => "Surplus Magnetometric Reserve Array"
	},

	6284	=> {
		typeID   => 6284,
		groupID  => 203,
		typeName => "F-42 Reiterative Magnetometric Backup Sensors"
	},

	6285	=> {
		typeID   => 6285,
		groupID  => 203,
		typeName => "Surplus Multi-Frequency Reserve Array"
	},

	6286	=> {
		typeID   => 6286,
		groupID  => 203,
		typeName => "F-42 Reiterative Multi-Frequency Backup Sensors"
	},

	6289	=> {
		typeID   => 6289,
		groupID  => 203,
		typeName => "Surplus Ladar Reserve Array"
	},

	6290	=> {
		typeID   => 6290,
		groupID  => 203,
		typeName => "F-42 Reiterative Ladar Backup Sensors"
	},

	6291	=> {
		typeID   => 6291,
		groupID  => 203,
		typeName => "Surplus Gravimetric Reserve Array"
	},

	6292	=> {
		typeID   => 6292,
		groupID  => 203,
		typeName => "F-42 Reiterative Gravimetric Backup Sensors"
	},

	6293	=> {
		typeID   => 6293,
		groupID  => 210,
		typeName => "Wavelength Signal Enhancer I"
	},

	6294	=> {
		typeID   => 6294,
		groupID  => 210,
		typeName => "'Mendicant' Signal Booster I"
	},

	6295	=> {
		typeID   => 6295,
		groupID  => 210,
		typeName => "Type-D Attenuation Signal Augmentation"
	},

	6296	=> {
		typeID   => 6296,
		groupID  => 210,
		typeName => "F-89 Compact Signal Amplifier"
	},

	6309	=> {
		typeID   => 6309,
		groupID  => 210,
		typeName => "Amplitude Signal Enhancer"
	},

	6310	=> {
		typeID   => 6310,
		groupID  => 210,
		typeName => "'Acolyth' Signal Booster"
	},

	6311	=> {
		typeID   => 6311,
		groupID  => 210,
		typeName => "Type-E Discriminative Signal Augmentation"
	},

	6312	=> {
		typeID   => 6312,
		groupID  => 210,
		typeName => "F-90 Positional Signal Amplifier"
	},

	6321	=> {
		typeID   => 6321,
		groupID  => 211,
		typeName => "Beam Parallax Tracking Program"
	},

	6322	=> {
		typeID   => 6322,
		groupID  => 211,
		typeName => "Beta-Nought Tracking Mode"
	},

	6323	=> {
		typeID   => 6323,
		groupID  => 211,
		typeName => "Azimuth Descalloping Tracking Enhancer"
	},

	6324	=> {
		typeID   => 6324,
		groupID  => 211,
		typeName => "F-AQ Delay-Line Scan Tracking Subroutines"
	},

	6325	=> {
		typeID   => 6325,
		groupID  => 211,
		typeName => "Fourier Compact Tracking Enhancer"
	},

	6326	=> {
		typeID   => 6326,
		groupID  => 211,
		typeName => "Sigma-Nought Tracking Mode I"
	},

	6327	=> {
		typeID   => 6327,
		groupID  => 211,
		typeName => "Auto-Gain Control Tracking Enhancer I"
	},

	6328	=> {
		typeID   => 6328,
		groupID  => 211,
		typeName => "F-aQ Phase Code Tracking Subroutines"
	},

	6437	=> {
		typeID   => 6437,
		groupID  => 40,
		typeName => "Small C5-L Emergency Shield Overload I"
	},

	6439	=> {
		typeID   => 6439,
		groupID  => 40,
		typeName => "Small Neutron Saturation Injector I"
	},

	6441	=> {
		typeID   => 6441,
		groupID  => 40,
		typeName => "Small Clarity Ward Booster I"
	},

	6443	=> {
		typeID   => 6443,
		groupID  => 40,
		typeName => "Small Converse Deflection Catalyzer"
	},

	6485	=> {
		typeID   => 6485,
		groupID  => 39,
		typeName => "M51 Benefactor Compact Shield Recharger"
	},

	6487	=> {
		typeID   => 6487,
		groupID  => 39,
		typeName => "Supplemental Screen Generator I"
	},

	6489	=> {
		typeID   => 6489,
		groupID  => 39,
		typeName => "'Benefactor' Ward Reconstructor"
	},

	6491	=> {
		typeID   => 6491,
		groupID  => 39,
		typeName => "Passive Barrier Compensator I"
	},

	6525	=> {
		typeID   => 6525,
		groupID  => 48,
		typeName => "Ta3 Perfunctory Vessel Probe"
	},

	6527	=> {
		typeID   => 6527,
		groupID  => 48,
		typeName => "Ta3 Compact Ship Scanner"
	},

	6529	=> {
		typeID   => 6529,
		groupID  => 48,
		typeName => "Speculative Ship Identifier I"
	},

	6531	=> {
		typeID   => 6531,
		groupID  => 48,
		typeName => "Practical Type-E Ship Probe"
	},

	6567	=> {
		typeID   => 6567,
		groupID  => 49,
		typeName => "ML-3 Amphilotite Mining Probe"
	},

	6569	=> {
		typeID   => 6569,
		groupID  => 49,
		typeName => "ML-3 Scoped Survey Scanner"
	},

	6571	=> {
		typeID   => 6571,
		groupID  => 49,
		typeName => "Rock-Scanning Sensor Array I"
	},

	6573	=> {
		typeID   => 6573,
		groupID  => 49,
		typeName => "'Dactyl' Type-E Asteroid Analyzer"
	},

	6631	=> {
		typeID   => 6631,
		groupID  => 53,
		typeName => "Dual Modal Light Laser I"
	},

	6633	=> {
		typeID   => 6633,
		groupID  => 53,
		typeName => "Dual Afocal Light Maser I"
	},

	6635	=> {
		typeID   => 6635,
		groupID  => 53,
		typeName => "Dual Modulated Light Energy Beam I"
	},

	6637	=> {
		typeID   => 6637,
		groupID  => 53,
		typeName => "Dual Anode Light Particle Stream I"
	},

	6671	=> {
		typeID   => 6671,
		groupID  => 53,
		typeName => "Small Focused Modal Pulse Laser I"
	},

	6673	=> {
		typeID   => 6673,
		groupID  => 53,
		typeName => "Small Focused Afocal Pulse Maser I"
	},

	6675	=> {
		typeID   => 6675,
		groupID  => 53,
		typeName => "Small Focused Modulated Pulse Energy Beam I"
	},

	6677	=> {
		typeID   => 6677,
		groupID  => 53,
		typeName => "Small Focused Anode Pulse Particle Stream I"
	},

	6715	=> {
		typeID   => 6715,
		groupID  => 53,
		typeName => "Small Focused Modal Laser I"
	},

	6717	=> {
		typeID   => 6717,
		groupID  => 53,
		typeName => "Small Focused Afocal Maser I"
	},

	6719	=> {
		typeID   => 6719,
		groupID  => 53,
		typeName => "Small Focused Modulated Energy Beam I"
	},

	6721	=> {
		typeID   => 6721,
		groupID  => 53,
		typeName => "Small Focused Anode Particle Stream I"
	},

	6757	=> {
		typeID   => 6757,
		groupID  => 53,
		typeName => "Quad Modal Light Laser I"
	},

	6759	=> {
		typeID   => 6759,
		groupID  => 53,
		typeName => "Quad Afocal Light Maser I"
	},

	6761	=> {
		typeID   => 6761,
		groupID  => 53,
		typeName => "Quad Modulated Light Energy Beam I"
	},

	6763	=> {
		typeID   => 6763,
		groupID  => 53,
		typeName => "Quad Anode Light Particle Stream I"
	},

	6805	=> {
		typeID   => 6805,
		groupID  => 53,
		typeName => "Focused Modal Pulse Laser I"
	},

	6807	=> {
		typeID   => 6807,
		groupID  => 53,
		typeName => "Focused Afocal Pulse Maser I"
	},

	6809	=> {
		typeID   => 6809,
		groupID  => 53,
		typeName => "Focused Modulated Pulse Energy Beam I"
	},

	6811	=> {
		typeID   => 6811,
		groupID  => 53,
		typeName => "Focused Anode Pulse Particle Stream I"
	},

	6859	=> {
		typeID   => 6859,
		groupID  => 53,
		typeName => "Focused Modal Medium Laser I"
	},

	6861	=> {
		typeID   => 6861,
		groupID  => 53,
		typeName => "Focused Afocal Medium Maser I"
	},

	6863	=> {
		typeID   => 6863,
		groupID  => 53,
		typeName => "Focused Modulated Medium Energy Beam I"
	},

	6865	=> {
		typeID   => 6865,
		groupID  => 53,
		typeName => "Focused Anode Medium Particle Stream I"
	},

	6919	=> {
		typeID   => 6919,
		groupID  => 53,
		typeName => "Heavy Modal Pulse Laser I"
	},

	6921	=> {
		typeID   => 6921,
		groupID  => 53,
		typeName => "Heavy Afocal Pulse Maser I"
	},

	6923	=> {
		typeID   => 6923,
		groupID  => 53,
		typeName => "Heavy Modulated Pulse Energy Beam I"
	},

	6925	=> {
		typeID   => 6925,
		groupID  => 53,
		typeName => "Heavy Anode Pulse Particle Stream I"
	},

	6959	=> {
		typeID   => 6959,
		groupID  => 53,
		typeName => "Heavy Modal Laser I"
	},

	6961	=> {
		typeID   => 6961,
		groupID  => 53,
		typeName => "Heavy Afocal Maser I"
	},

	6963	=> {
		typeID   => 6963,
		groupID  => 53,
		typeName => "Heavy Modulated Energy Beam I"
	},

	6965	=> {
		typeID   => 6965,
		groupID  => 53,
		typeName => "Heavy Anode Particle Stream I"
	},

	6999	=> {
		typeID   => 6999,
		groupID  => 53,
		typeName => "Dual Heavy Modal Pulse Laser I"
	},

	7001	=> {
		typeID   => 7001,
		groupID  => 53,
		typeName => "Dual Heavy Afocal Pulse Maser I"
	},

	7003	=> {
		typeID   => 7003,
		groupID  => 53,
		typeName => "Dual Heavy Modulated Pulse Energy Beam I"
	},

	7005	=> {
		typeID   => 7005,
		groupID  => 53,
		typeName => "Dual Heavy Anode Pulse Particle Stream I"
	},

	7043	=> {
		typeID   => 7043,
		groupID  => 53,
		typeName => "Dual Modal Heavy Laser I"
	},

	7045	=> {
		typeID   => 7045,
		groupID  => 53,
		typeName => "Dual Afocal Heavy Maser I"
	},

	7047	=> {
		typeID   => 7047,
		groupID  => 53,
		typeName => "Dual Modulated Heavy Energy Beam I"
	},

	7049	=> {
		typeID   => 7049,
		groupID  => 53,
		typeName => "Dual Anode Heavy Particle Stream I"
	},

	7083	=> {
		typeID   => 7083,
		groupID  => 53,
		typeName => "Mega Modal Pulse Laser I"
	},

	7085	=> {
		typeID   => 7085,
		groupID  => 53,
		typeName => "Mega Afocal Pulse Maser I"
	},

	7087	=> {
		typeID   => 7087,
		groupID  => 53,
		typeName => "Mega Modulated Pulse Energy Beam I"
	},

	7089	=> {
		typeID   => 7089,
		groupID  => 53,
		typeName => "Mega Anode Pulse Particle Stream I"
	},

	7123	=> {
		typeID   => 7123,
		groupID  => 53,
		typeName => "Mega Modal Laser I"
	},

	7125	=> {
		typeID   => 7125,
		groupID  => 53,
		typeName => "Mega Afocal Maser I"
	},

	7127	=> {
		typeID   => 7127,
		groupID  => 53,
		typeName => "Mega Modulated Energy Beam I"
	},

	7131	=> {
		typeID   => 7131,
		groupID  => 53,
		typeName => "Mega Anode Particle Stream I"
	},

	7167	=> {
		typeID   => 7167,
		groupID  => 53,
		typeName => "Tachyon Modal Laser I"
	},

	7169	=> {
		typeID   => 7169,
		groupID  => 53,
		typeName => "Tachyon Afocal Maser I"
	},

	7171	=> {
		typeID   => 7171,
		groupID  => 53,
		typeName => "Tachyon Modulated Energy Beam I"
	},

	7173	=> {
		typeID   => 7173,
		groupID  => 53,
		typeName => "Tachyon Anode Particle Stream I"
	},

	7217	=> {
		typeID   => 7217,
		groupID  => 289,
		typeName => "Spot Pulsing ECCM I"
	},

	7218	=> {
		typeID   => 7218,
		groupID  => 289,
		typeName => "Piercing ECCM Emitter I"
	},

	7219	=> {
		typeID   => 7219,
		groupID  => 289,
		typeName => "Scattering ECCM Projector I"
	},

	7220	=> {
		typeID   => 7220,
		groupID  => 289,
		typeName => "Phased Muon ECCM Caster I"
	},

	7247	=> {
		typeID   => 7247,
		groupID  => 74,
		typeName => "75mm Prototype Gauss Gun"
	},

	7249	=> {
		typeID   => 7249,
		groupID  => 74,
		typeName => "75mm 'Scout' Accelerator Cannon"
	},

	7251	=> {
		typeID   => 7251,
		groupID  => 74,
		typeName => "75mm Carbide Railgun I"
	},

	7253	=> {
		typeID   => 7253,
		groupID  => 74,
		typeName => "75mm Compressed Coil Gun I"
	},

	7287	=> {
		typeID   => 7287,
		groupID  => 74,
		typeName => "150mm Prototype Gauss Gun"
	},

	7289	=> {
		typeID   => 7289,
		groupID  => 74,
		typeName => "150mm 'Scout' Accelerator Cannon"
	},

	7291	=> {
		typeID   => 7291,
		groupID  => 74,
		typeName => "150mm Carbide Railgun I"
	},

	7293	=> {
		typeID   => 7293,
		groupID  => 74,
		typeName => "150mm Compressed Coil Gun I"
	},

	7327	=> {
		typeID   => 7327,
		groupID  => 74,
		typeName => "Dual 150mm Prototype Gauss Gun"
	},

	7329	=> {
		typeID   => 7329,
		groupID  => 74,
		typeName => "Dual 150mm 'Scout' Accelerator Cannon"
	},

	7331	=> {
		typeID   => 7331,
		groupID  => 74,
		typeName => "Dual 150mm Carbide Railgun I"
	},

	7333	=> {
		typeID   => 7333,
		groupID  => 74,
		typeName => "Dual 150mm Compressed Coil Gun I"
	},

	7367	=> {
		typeID   => 7367,
		groupID  => 74,
		typeName => "250mm Prototype Gauss Gun"
	},

	7369	=> {
		typeID   => 7369,
		groupID  => 74,
		typeName => "250mm 'Scout' Accelerator Cannon"
	},

	7371	=> {
		typeID   => 7371,
		groupID  => 74,
		typeName => "250mm Carbide Railgun I"
	},

	7373	=> {
		typeID   => 7373,
		groupID  => 74,
		typeName => "250mm Compressed Coil Gun I"
	},

	7407	=> {
		typeID   => 7407,
		groupID  => 74,
		typeName => "Dual 250mm Prototype Gauss Gun"
	},

	7409	=> {
		typeID   => 7409,
		groupID  => 74,
		typeName => "Dual 250mm 'Scout' Accelerator Cannon"
	},

	7411	=> {
		typeID   => 7411,
		groupID  => 74,
		typeName => "Dual 250mm Carbide Railgun I"
	},

	7413	=> {
		typeID   => 7413,
		groupID  => 74,
		typeName => "Dual 250mm Compressed Coil Gun I"
	},

	7447	=> {
		typeID   => 7447,
		groupID  => 74,
		typeName => "425mm Prototype Gauss Gun"
	},

	7449	=> {
		typeID   => 7449,
		groupID  => 74,
		typeName => "425mm 'Scout' Accelerator Cannon"
	},

	7451	=> {
		typeID   => 7451,
		groupID  => 74,
		typeName => "425mm Carbide Railgun I"
	},

	7453	=> {
		typeID   => 7453,
		groupID  => 74,
		typeName => "425mm Compressed Coil Gun I"
	},

	7487	=> {
		typeID   => 7487,
		groupID  => 74,
		typeName => "Modal Light Electron Particle Accelerator I"
	},

	7489	=> {
		typeID   => 7489,
		groupID  => 74,
		typeName => "Limited Light Electron Blaster I"
	},

	7491	=> {
		typeID   => 7491,
		groupID  => 74,
		typeName => "Regulated Light Electron Phase Cannon I"
	},

	7493	=> {
		typeID   => 7493,
		groupID  => 74,
		typeName => "Anode Light Electron Particle Cannon I"
	},

	7535	=> {
		typeID   => 7535,
		groupID  => 74,
		typeName => "Modal Light Ion Particle Accelerator I"
	},

	7537	=> {
		typeID   => 7537,
		groupID  => 74,
		typeName => "Limited Light Ion Blaster I"
	},

	7539	=> {
		typeID   => 7539,
		groupID  => 74,
		typeName => "Regulated Light Ion Phase Cannon I"
	},

	7541	=> {
		typeID   => 7541,
		groupID  => 74,
		typeName => "Anode Light Ion Particle Cannon I"
	},

	7579	=> {
		typeID   => 7579,
		groupID  => 74,
		typeName => "Modal Light Neutron Particle Accelerator I"
	},

	7581	=> {
		typeID   => 7581,
		groupID  => 74,
		typeName => "Limited Light Neutron Blaster I"
	},

	7583	=> {
		typeID   => 7583,
		groupID  => 74,
		typeName => "Regulated Light Neutron Phase Cannon I"
	},

	7585	=> {
		typeID   => 7585,
		groupID  => 74,
		typeName => "Anode Light Neutron Particle Cannon I"
	},

	7619	=> {
		typeID   => 7619,
		groupID  => 74,
		typeName => "Modal Electron Particle Accelerator I"
	},

	7621	=> {
		typeID   => 7621,
		groupID  => 74,
		typeName => "Limited Electron Blaster I"
	},

	7623	=> {
		typeID   => 7623,
		groupID  => 74,
		typeName => "Regulated Electron Phase Cannon I"
	},

	7625	=> {
		typeID   => 7625,
		groupID  => 74,
		typeName => "Anode Electron Particle Cannon I"
	},

	7663	=> {
		typeID   => 7663,
		groupID  => 74,
		typeName => "Modal Ion Particle Accelerator I"
	},

	7665	=> {
		typeID   => 7665,
		groupID  => 74,
		typeName => "Limited Ion Blaster I"
	},

	7667	=> {
		typeID   => 7667,
		groupID  => 74,
		typeName => "Regulated Ion Phase Cannon I"
	},

	7669	=> {
		typeID   => 7669,
		groupID  => 74,
		typeName => "Anode Ion Particle Cannon I"
	},

	7703	=> {
		typeID   => 7703,
		groupID  => 74,
		typeName => "Modal Neutron Particle Accelerator I"
	},

	7705	=> {
		typeID   => 7705,
		groupID  => 74,
		typeName => "Limited Neutron Blaster I"
	},

	7707	=> {
		typeID   => 7707,
		groupID  => 74,
		typeName => "Regulated Neutron Phase Cannon I"
	},

	7709	=> {
		typeID   => 7709,
		groupID  => 74,
		typeName => "Anode Neutron Particle Cannon I"
	},

	7743	=> {
		typeID   => 7743,
		groupID  => 74,
		typeName => "Modal Mega Electron Particle Accelerator I"
	},

	7745	=> {
		typeID   => 7745,
		groupID  => 74,
		typeName => "Limited Electron Blaster Cannon I"
	},

	7747	=> {
		typeID   => 7747,
		groupID  => 74,
		typeName => "Regulated Mega Electron Phase Cannon I"
	},

	7749	=> {
		typeID   => 7749,
		groupID  => 74,
		typeName => "Anode Mega Electron Particle Cannon I"
	},

	7783	=> {
		typeID   => 7783,
		groupID  => 74,
		typeName => "Modal Mega Neutron Particle Accelerator I"
	},

	7785	=> {
		typeID   => 7785,
		groupID  => 74,
		typeName => "Limited Mega Neutron Blaster I"
	},

	7787	=> {
		typeID   => 7787,
		groupID  => 74,
		typeName => "Regulated Mega Neutron Phase Cannon I"
	},

	7789	=> {
		typeID   => 7789,
		groupID  => 74,
		typeName => "Anode Mega Neutron Particle Cannon I"
	},

	7827	=> {
		typeID   => 7827,
		groupID  => 74,
		typeName => "Modal Mega Ion Particle Accelerator I"
	},

	7829	=> {
		typeID   => 7829,
		groupID  => 74,
		typeName => "Limited Mega Ion Blaster I"
	},

	7831	=> {
		typeID   => 7831,
		groupID  => 74,
		typeName => "Regulated Mega Ion Phase Cannon I"
	},

	7833	=> {
		typeID   => 7833,
		groupID  => 74,
		typeName => "Anode Mega Ion Particle Cannon I"
	},

	7867	=> {
		typeID   => 7867,
		groupID  => 202,
		typeName => "Supplemental Ladar ECCM Scanning Array I"
	},

	7869	=> {
		typeID   => 7869,
		groupID  => 202,
		typeName => "Supplemental Gravimetric ECCM Scanning Array I"
	},

	7870	=> {
		typeID   => 7870,
		groupID  => 202,
		typeName => "Supplemental Omni ECCM Scanning Array I"
	},

	7887	=> {
		typeID   => 7887,
		groupID  => 202,
		typeName => "Supplemental Radar ECCM Scanning Array I"
	},

	7889	=> {
		typeID   => 7889,
		groupID  => 202,
		typeName => "Supplemental Magnetometric ECCM Scanning Array I"
	},

	7892	=> {
		typeID   => 7892,
		groupID  => 202,
		typeName => "Prototype ECCM Radar Sensor Cluster"
	},

	7893	=> {
		typeID   => 7893,
		groupID  => 202,
		typeName => "Prototype ECCM Ladar Sensor Cluster"
	},

	7895	=> {
		typeID   => 7895,
		groupID  => 202,
		typeName => "Prototype ECCM Gravimetric Sensor Cluster"
	},

	7896	=> {
		typeID   => 7896,
		groupID  => 202,
		typeName => "Prototype ECCM Omni Sensor Cluster"
	},

	7914	=> {
		typeID   => 7914,
		groupID  => 202,
		typeName => "Prototype ECCM Magnetometric Sensor Cluster"
	},

	7917	=> {
		typeID   => 7917,
		groupID  => 202,
		typeName => "Alumel Radar ECCM Sensor Array I"
	},

	7918	=> {
		typeID   => 7918,
		groupID  => 202,
		typeName => "Alumel Ladar ECCM Sensor Array I"
	},

	7922	=> {
		typeID   => 7922,
		groupID  => 202,
		typeName => "Alumel Gravimetric ECCM Sensor Array I"
	},

	7926	=> {
		typeID   => 7926,
		groupID  => 202,
		typeName => "Alumel Omni ECCM Sensor Array I"
	},

	7937	=> {
		typeID   => 7937,
		groupID  => 202,
		typeName => "Alumel Magnetometric ECCM Sensor Array I"
	},

	7948	=> {
		typeID   => 7948,
		groupID  => 202,
		typeName => "Gravimetric Positional ECCM Sensor System I"
	},

	7964	=> {
		typeID   => 7964,
		groupID  => 202,
		typeName => "Radar Positional ECCM Sensor System I"
	},

	7965	=> {
		typeID   => 7965,
		groupID  => 202,
		typeName => "Omni Positional ECCM Sensor System I"
	},

	7966	=> {
		typeID   => 7966,
		groupID  => 202,
		typeName => "Ladar Positional ECCM Sensor System I"
	},

	7970	=> {
		typeID   => 7970,
		groupID  => 202,
		typeName => "Magnetometric Positional ECCM Sensor System I"
	},

	7993	=> {
		typeID   => 7993,
		groupID  => 509,
		typeName => "Experimental TE-2100 Light Missile Launcher"
	},

	7997	=> {
		typeID   => 7997,
		groupID  => 510,
		typeName => "XR-3200 Heavy Missile Bay"
	},

	8001	=> {
		typeID   => 8001,
		groupID  => 508,
		typeName => "Experimental ZW-4100 Torpedo Launcher"
	},

	8007	=> {
		typeID   => 8007,
		groupID  => 511,
		typeName => "Experimental SV-2000 Rapid Light Missile Launcher"
	},

	8023	=> {
		typeID   => 8023,
		groupID  => 511,
		typeName => "Upgraded 'Malkuth' Rapid Light Missile Launcher"
	},

	8025	=> {
		typeID   => 8025,
		groupID  => 511,
		typeName => "Limited 'Limos' Rapid Light Missile Launcher"
	},

	8027	=> {
		typeID   => 8027,
		groupID  => 511,
		typeName => "Prototype 'Arbalest' Rapid Light Missile Launcher"
	},

	8089	=> {
		typeID   => 8089,
		groupID  => 509,
		typeName => "Arbalest Compact Light Missile Launcher"
	},

	8091	=> {
		typeID   => 8091,
		groupID  => 509,
		typeName => "TE-2100 Ample Light Missile Launcher"
	},

	8093	=> {
		typeID   => 8093,
		groupID  => 509,
		typeName => "Prototype 'Arbalest' Light Missile Launcher"
	},

	8101	=> {
		typeID   => 8101,
		groupID  => 510,
		typeName => "'Malkuth' Heavy Missile Launcher I"
	},

	8103	=> {
		typeID   => 8103,
		groupID  => 510,
		typeName => "Advanced 'Limos' Heavy Missile Bay I"
	},

	8105	=> {
		typeID   => 8105,
		groupID  => 510,
		typeName => "'Arbalest' Heavy Missile Launcher"
	},

	8113	=> {
		typeID   => 8113,
		groupID  => 508,
		typeName => "Upgraded 'Malkuth' Torpedo Launcher"
	},

	8115	=> {
		typeID   => 8115,
		groupID  => 508,
		typeName => "Limited 'Limos' Torpedo Launcher"
	},

	8117	=> {
		typeID   => 8117,
		groupID  => 508,
		typeName => "Prototype 'Arbalest' Torpedo Launcher"
	},

	8131	=> {
		typeID   => 8131,
		groupID  => 768,
		typeName => "Local Power Plant Manager: Capacitor Flux I"
	},

	8133	=> {
		typeID   => 8133,
		groupID  => 768,
		typeName => "Mark I Compact Capacitor Flux Coil"
	},

	8135	=> {
		typeID   => 8135,
		groupID  => 768,
		typeName => "Type-D Restrained Capacitor Flux Coil"
	},

	8137	=> {
		typeID   => 8137,
		groupID  => 768,
		typeName => "Mark I Generator Refitting: Capacitor Flux"
	},

	8163	=> {
		typeID   => 8163,
		groupID  => 768,
		typeName => "Partial Power Plant Manager: Capacitor Flux"
	},

	8165	=> {
		typeID   => 8165,
		groupID  => 768,
		typeName => "Alpha Reactor Control: Capacitor Flux"
	},

	8167	=> {
		typeID   => 8167,
		groupID  => 768,
		typeName => "Type-E Power Core Modification: Capacitor Flux"
	},

	8169	=> {
		typeID   => 8169,
		groupID  => 768,
		typeName => "Marked Generator Refitting: Capacitor Flux"
	},

	8171	=> {
		typeID   => 8171,
		groupID  => 767,
		typeName => "Local Power Plant Manager: Capacity Power Relay I"
	},

	8173	=> {
		typeID   => 8173,
		groupID  => 767,
		typeName => "Beta Reactor Control: Capacitor Power Relay I"
	},

	8175	=> {
		typeID   => 8175,
		groupID  => 767,
		typeName => "Type-D Restrained Capacitor Power Relay"
	},

	8177	=> {
		typeID   => 8177,
		groupID  => 767,
		typeName => "Mark I Compact Capacitor Power Relay"
	},

	8203	=> {
		typeID   => 8203,
		groupID  => 767,
		typeName => "Partial Power Plant Manager: Capacity Power Relay"
	},

	8205	=> {
		typeID   => 8205,
		groupID  => 767,
		typeName => "Alpha Reactor Control: Capacitor Power Relay"
	},

	8207	=> {
		typeID   => 8207,
		groupID  => 767,
		typeName => "Type-E Power Core Modification: Capacitor Power Relay"
	},

	8209	=> {
		typeID   => 8209,
		groupID  => 767,
		typeName => "Marked Generator Refitting: Capacitor Power Relay"
	},

	8211	=> {
		typeID   => 8211,
		groupID  => 766,
		typeName => "Partial Power Plant Manager: Diagnostic System"
	},

	8213	=> {
		typeID   => 8213,
		groupID  => 766,
		typeName => "Alpha Reactor Control: Diagnostic System"
	},

	8215	=> {
		typeID   => 8215,
		groupID  => 766,
		typeName => "Type-E Power Core Modification: Diagnostic System"
	},

	8217	=> {
		typeID   => 8217,
		groupID  => 766,
		typeName => "Marked Generator Refitting: Diagnostic System"
	},

	8219	=> {
		typeID   => 8219,
		groupID  => 766,
		typeName => "Local Power Plant Manager: Diagnostic System I"
	},

	8221	=> {
		typeID   => 8221,
		groupID  => 766,
		typeName => "Beta Reactor Control: Diagnostic System I"
	},

	8223	=> {
		typeID   => 8223,
		groupID  => 766,
		typeName => "Type-D Power Core Modification: Diagnostic System"
	},

	8225	=> {
		typeID   => 8225,
		groupID  => 766,
		typeName => "Mark I Compact Power Diagnostic System"
	},

	8251	=> {
		typeID   => 8251,
		groupID  => 769,
		typeName => "Partial Power Plant Manager: Reaction Control"
	},

	8253	=> {
		typeID   => 8253,
		groupID  => 769,
		typeName => "Alpha Reactor Control: Reaction Control"
	},

	8255	=> {
		typeID   => 8255,
		groupID  => 766,
		typeName => "Type-E Power Core Modification: Reaction Control"
	},

	8257	=> {
		typeID   => 8257,
		groupID  => 769,
		typeName => "Marked Generator Refitting: Reaction Control"
	},

	8259	=> {
		typeID   => 8259,
		groupID  => 769,
		typeName => "Local Power Plant Manager: Reaction Control I"
	},

	8261	=> {
		typeID   => 8261,
		groupID  => 769,
		typeName => "Beta Reactor Control: Reaction Control I"
	},

	8263	=> {
		typeID   => 8263,
		groupID  => 769,
		typeName => "Mark I Compact Reactor Control Unit"
	},

	8265	=> {
		typeID   => 8265,
		groupID  => 769,
		typeName => "Mark I Generator Refitting: Reaction Control"
	},

	8291	=> {
		typeID   => 8291,
		groupID  => 770,
		typeName => "Local Power Plant Manager: Reaction Shield Flux I"
	},

	8293	=> {
		typeID   => 8293,
		groupID  => 770,
		typeName => "Beta Reactor Control: Shield Flux I"
	},

	8295	=> {
		typeID   => 8295,
		groupID  => 770,
		typeName => "Type-D Restrained Shield Flux Coil"
	},

	8297	=> {
		typeID   => 8297,
		groupID  => 770,
		typeName => "Mark I Compact Shield Flux Coil"
	},

	8323	=> {
		typeID   => 8323,
		groupID  => 770,
		typeName => "Partial Power Plant Manager: Shield Flux"
	},

	8325	=> {
		typeID   => 8325,
		groupID  => 770,
		typeName => "Alpha Reactor Shield Flux"
	},

	8327	=> {
		typeID   => 8327,
		groupID  => 770,
		typeName => "Type-E Power Core Modification: Shield Flux"
	},

	8329	=> {
		typeID   => 8329,
		groupID  => 770,
		typeName => "Marked Generator Refitting: Shield Flux"
	},

	8331	=> {
		typeID   => 8331,
		groupID  => 57,
		typeName => "Local Power Plant Manager: Reaction Shield Power Relay I"
	},

	8333	=> {
		typeID   => 8333,
		groupID  => 57,
		typeName => "Beta Reactor Control: Shield Power Relay I"
	},

	8335	=> {
		typeID   => 8335,
		groupID  => 57,
		typeName => "Type-D Restrained Shield Power Relay"
	},

	8337	=> {
		typeID   => 8337,
		groupID  => 57,
		typeName => "Mark I Compact Shield Power Relay"
	},

	8339	=> {
		typeID   => 8339,
		groupID  => 57,
		typeName => "Partial Power Plant Manager: Shield Power Relay"
	},

	8341	=> {
		typeID   => 8341,
		groupID  => 57,
		typeName => "Alpha Reactor Shield Power Relay"
	},

	8343	=> {
		typeID   => 8343,
		groupID  => 57,
		typeName => "Type-E Power Core Modification: Shield Power Relay"
	},

	8345	=> {
		typeID   => 8345,
		groupID  => 57,
		typeName => "Marked Generator Refitting: Shield Power Relay"
	},

	8387	=> {
		typeID   => 8387,
		groupID  => 38,
		typeName => "Micro Subordinate Screen Stabilizer I"
	},

	8397	=> {
		typeID   => 8397,
		groupID  => 38,
		typeName => "Medium Subordinate Screen Stabilizer I"
	},

	8401	=> {
		typeID   => 8401,
		groupID  => 38,
		typeName => "Small Subordinate Screen Stabilizer I"
	},

	8409	=> {
		typeID   => 8409,
		groupID  => 38,
		typeName => "Large Subordinate Screen Stabilizer I"
	},

	8419	=> {
		typeID   => 8419,
		groupID  => 38,
		typeName => "Large Azeotropic Restrained Shield Extender"
	},

	8427	=> {
		typeID   => 8427,
		groupID  => 38,
		typeName => "Small Azeotropic Restrained Shield Extender"
	},

	8433	=> {
		typeID   => 8433,
		groupID  => 38,
		typeName => "Medium Azeotropic Restrained Shield Extender"
	},

	8437	=> {
		typeID   => 8437,
		groupID  => 38,
		typeName => "Micro Azeotropic Ward Salubrity I"
	},

	8465	=> {
		typeID   => 8465,
		groupID  => 38,
		typeName => "Micro Supplemental Barrier Emitter I"
	},

	8477	=> {
		typeID   => 8477,
		groupID  => 38,
		typeName => "Medium Supplemental Barrier Emitter I"
	},

	8481	=> {
		typeID   => 8481,
		groupID  => 38,
		typeName => "Small Supplemental Barrier Emitter I"
	},

	8489	=> {
		typeID   => 8489,
		groupID  => 38,
		typeName => "Large Supplemental Barrier Emitter I"
	},

	8505	=> {
		typeID   => 8505,
		groupID  => 38,
		typeName => "Micro F-S9 Regolith Shield Induction"
	},

	8517	=> {
		typeID   => 8517,
		groupID  => 38,
		typeName => "Medium F-S9 Regolith Compact Shield Extender"
	},

	8521	=> {
		typeID   => 8521,
		groupID  => 38,
		typeName => "Small F-S9 Regolith Compact Shield Extender"
	},

	8529	=> {
		typeID   => 8529,
		groupID  => 38,
		typeName => "Large F-S9 Regolith Compact Shield Extender"
	},

	8531	=> {
		typeID   => 8531,
		groupID  => 41,
		typeName => "Small Murky Compact Remote Shield Booster"
	},

	8533	=> {
		typeID   => 8533,
		groupID  => 41,
		typeName => "Small 'Atonement' Remote Shield Booster"
	},

	8535	=> {
		typeID   => 8535,
		groupID  => 41,
		typeName => "Small Asymmetric Enduring Remote Shield Booster"
	},

	8537	=> {
		typeID   => 8537,
		groupID  => 41,
		typeName => "Small S95a Scoped Remote Shield Booster"
	},

	8579	=> {
		typeID   => 8579,
		groupID  => 41,
		typeName => "Medium Murky Compact Remote Shield Booster"
	},

	8581	=> {
		typeID   => 8581,
		groupID  => 41,
		typeName => "Medium 'Atonement' Remote Shield Booster"
	},

	8583	=> {
		typeID   => 8583,
		groupID  => 41,
		typeName => "Medium Asymmetric Enduring Remote Shield Booster"
	},

	8585	=> {
		typeID   => 8585,
		groupID  => 41,
		typeName => "Medium S95a Scoped Remote Shield Booster"
	},

	8627	=> {
		typeID   => 8627,
		groupID  => 41,
		typeName => "Micro Murky Remote Shield Booster"
	},

	8629	=> {
		typeID   => 8629,
		groupID  => 41,
		typeName => "Micro 'Atonement' Remote Shield Booster"
	},

	8631	=> {
		typeID   => 8631,
		groupID  => 41,
		typeName => "Micro Asymmetric Remote Shield Booster"
	},

	8633	=> {
		typeID   => 8633,
		groupID  => 41,
		typeName => "Micro S95a Remote Shield Booster"
	},

	8635	=> {
		typeID   => 8635,
		groupID  => 41,
		typeName => "Large Murky Compact Remote Shield Booster"
	},

	8637	=> {
		typeID   => 8637,
		groupID  => 41,
		typeName => "Large 'Atonement' Remote Shield Booster"
	},

	8639	=> {
		typeID   => 8639,
		groupID  => 41,
		typeName => "Large Asymmetric Enduring Remote Shield Booster"
	},

	8641	=> {
		typeID   => 8641,
		groupID  => 41,
		typeName => "Large S95a Scoped Remote Shield Booster"
	},

	8683	=> {
		typeID   => 8683,
		groupID  => 41,
		typeName => "X-Large Murky Remote Shield Booster"
	},

	8685	=> {
		typeID   => 8685,
		groupID  => 41,
		typeName => "X-Large 'Atonement' Remote Shield Booster"
	},

	8687	=> {
		typeID   => 8687,
		groupID  => 41,
		typeName => "X-Large Asymmetric Remote Shield Booster"
	},

	8689	=> {
		typeID   => 8689,
		groupID  => 41,
		typeName => "X-Large S95a Remote Shield Booster"
	},

	8743	=> {
		typeID   => 8743,
		groupID  => 285,
		typeName => "Nanomechanical CPU Enhancer"
	},

	8744	=> {
		typeID   => 8744,
		groupID  => 285,
		typeName => "Nanoelectrical Co-Processor"
	},

	8745	=> {
		typeID   => 8745,
		groupID  => 285,
		typeName => "Photonic CPU Enhancer"
	},

	8746	=> {
		typeID   => 8746,
		groupID  => 285,
		typeName => "Quantum Co-Processor"
	},

	8747	=> {
		typeID   => 8747,
		groupID  => 285,
		typeName => "Nanomechanical CPU Enhancer I"
	},

	8748	=> {
		typeID   => 8748,
		groupID  => 285,
		typeName => "Photonic Upgraded Co-Processor"
	},

	8749	=> {
		typeID   => 8749,
		groupID  => 285,
		typeName => "Photonic CPU Enhancer I"
	},

	8750	=> {
		typeID   => 8750,
		groupID  => 285,
		typeName => "Quantum Co-Processor I"
	},

	8759	=> {
		typeID   => 8759,
		groupID  => 55,
		typeName => "125mm Light 'Scout' Autocannon I"
	},

	8785	=> {
		typeID   => 8785,
		groupID  => 55,
		typeName => "125mm Light Carbine Repeating Cannon I"
	},

	8787	=> {
		typeID   => 8787,
		groupID  => 55,
		typeName => "125mm Light Gallium Machine Gun"
	},

	8789	=> {
		typeID   => 8789,
		groupID  => 55,
		typeName => "125mm Light Prototype Automatic Cannon"
	},

	8815	=> {
		typeID   => 8815,
		groupID  => 55,
		typeName => "150mm Light 'Scout' Autocannon I"
	},

	8817	=> {
		typeID   => 8817,
		groupID  => 55,
		typeName => "150mm Light Carbine Repeating Cannon I"
	},

	8819	=> {
		typeID   => 8819,
		groupID  => 55,
		typeName => "150mm Light Gallium Machine Gun"
	},

	8821	=> {
		typeID   => 8821,
		groupID  => 55,
		typeName => "150mm Light Prototype Automatic Cannon"
	},

	8863	=> {
		typeID   => 8863,
		groupID  => 55,
		typeName => "200mm Light 'Scout' Autocannon I"
	},

	8865	=> {
		typeID   => 8865,
		groupID  => 55,
		typeName => "200mm Light Carbine Repeating Cannon I"
	},

	8867	=> {
		typeID   => 8867,
		groupID  => 55,
		typeName => "200mm Light Gallium Machine Gun"
	},

	8869	=> {
		typeID   => 8869,
		groupID  => 55,
		typeName => "200mm Light Prototype Automatic Cannon"
	},

	8903	=> {
		typeID   => 8903,
		groupID  => 55,
		typeName => "250mm Light 'Scout' Artillery I"
	},

	8905	=> {
		typeID   => 8905,
		groupID  => 55,
		typeName => "250mm Light Carbine Howitzer I"
	},

	8907	=> {
		typeID   => 8907,
		groupID  => 55,
		typeName => "250mm Light Gallium Cannon"
	},

	8909	=> {
		typeID   => 8909,
		groupID  => 55,
		typeName => "250mm Light Prototype Siege Cannon"
	},

	9071	=> {
		typeID   => 9071,
		groupID  => 55,
		typeName => "Dual 180mm 'Scout' Autocannon I"
	},

	9073	=> {
		typeID   => 9073,
		groupID  => 55,
		typeName => "Dual 180mm Carbine Repeating Cannon I"
	},

	9091	=> {
		typeID   => 9091,
		groupID  => 55,
		typeName => "Dual 180mm Gallium Machine Gun"
	},

	9093	=> {
		typeID   => 9093,
		groupID  => 55,
		typeName => "Dual 180mm Prototype Automatic Cannon"
	},

	9127	=> {
		typeID   => 9127,
		groupID  => 55,
		typeName => "220mm Medium 'Scout' Autocannon I"
	},

	9129	=> {
		typeID   => 9129,
		groupID  => 55,
		typeName => "220mm Medium Carbine Repeating Cannon I"
	},

	9131	=> {
		typeID   => 9131,
		groupID  => 55,
		typeName => "220mm Medium Gallium Machine Gun"
	},

	9133	=> {
		typeID   => 9133,
		groupID  => 55,
		typeName => "220mm Medium Prototype Automatic Cannon"
	},

	9135	=> {
		typeID   => 9135,
		groupID  => 55,
		typeName => "425mm Medium 'Scout' Autocannon I"
	},

	9137	=> {
		typeID   => 9137,
		groupID  => 55,
		typeName => "425mm Medium Carbine Repeating Cannon I"
	},

	9139	=> {
		typeID   => 9139,
		groupID  => 55,
		typeName => "425mm Medium Gallium Machine Gun"
	},

	9141	=> {
		typeID   => 9141,
		groupID  => 55,
		typeName => "425mm Medium Prototype Automatic Cannon"
	},

	9207	=> {
		typeID   => 9207,
		groupID  => 55,
		typeName => "650mm Medium 'Scout' Artillery I"
	},

	9209	=> {
		typeID   => 9209,
		groupID  => 55,
		typeName => "650mm Medium Carbine Howitzer I"
	},

	9211	=> {
		typeID   => 9211,
		groupID  => 55,
		typeName => "650mm Medium Gallium Cannon"
	},

	9213	=> {
		typeID   => 9213,
		groupID  => 55,
		typeName => "650mm Medium Prototype Siege Cannon"
	},

	9247	=> {
		typeID   => 9247,
		groupID  => 55,
		typeName => "Dual 425mm 'Scout' Autocannon I"
	},

	9249	=> {
		typeID   => 9249,
		groupID  => 55,
		typeName => "Dual 425mm Carbine Repeating Cannon I"
	},

	9251	=> {
		typeID   => 9251,
		groupID  => 55,
		typeName => "Dual 425mm Gallium Machine Gun"
	},

	9253	=> {
		typeID   => 9253,
		groupID  => 55,
		typeName => "Dual 425mm Prototype Automatic Cannon"
	},

	9287	=> {
		typeID   => 9287,
		groupID  => 55,
		typeName => "Dual 650mm 'Scout' Repeating Cannon I"
	},

	9289	=> {
		typeID   => 9289,
		groupID  => 55,
		typeName => "Dual 650mm Carbine Repeating Cannon I"
	},

	9291	=> {
		typeID   => 9291,
		groupID  => 55,
		typeName => "Dual 650mm Gallium Repeating Cannon"
	},

	9293	=> {
		typeID   => 9293,
		groupID  => 55,
		typeName => "Dual 650mm Prototype Automatic Cannon"
	},

	9327	=> {
		typeID   => 9327,
		groupID  => 55,
		typeName => "800mm Heavy 'Scout' Repeating Cannon I"
	},

	9329	=> {
		typeID   => 9329,
		groupID  => 55,
		typeName => "800mm Heavy Carbine Repeating Cannon I"
	},

	9331	=> {
		typeID   => 9331,
		groupID  => 55,
		typeName => "800mm Heavy Gallium Repeating Cannon"
	},

	9333	=> {
		typeID   => 9333,
		groupID  => 55,
		typeName => "800mm Heavy Prototype Automatic Cannon"
	},

	9367	=> {
		typeID   => 9367,
		groupID  => 55,
		typeName => "1200mm Heavy 'Scout' Artillery I"
	},

	9369	=> {
		typeID   => 9369,
		groupID  => 55,
		typeName => "1200mm Heavy Carbine Howitzer I"
	},

	9371	=> {
		typeID   => 9371,
		groupID  => 55,
		typeName => "1200mm Heavy Gallium Cannon"
	},

	9373	=> {
		typeID   => 9373,
		groupID  => 55,
		typeName => "1200mm Heavy Prototype Artillery"
	},

	9377	=> {
		typeID   => 9377,
		groupID  => 55,
		typeName => "1200mm Heavy Prototype Siege Cannon"
	},

	9411	=> {
		typeID   => 9411,
		groupID  => 55,
		typeName => "280mm 'Scout' Artillery I"
	},

	9413	=> {
		typeID   => 9413,
		groupID  => 55,
		typeName => "280mm Carbine Howitzer I"
	},

	9415	=> {
		typeID   => 9415,
		groupID  => 55,
		typeName => "280mm Gallium Cannon"
	},

	9417	=> {
		typeID   => 9417,
		groupID  => 55,
		typeName => "280mm Prototype Siege Cannon"
	},

	9419	=> {
		typeID   => 9419,
		groupID  => 55,
		typeName => "720mm 'Probe' Artillery I"
	},

	9421	=> {
		typeID   => 9421,
		groupID  => 55,
		typeName => "720mm Cordite Howitzer I"
	},

	9451	=> {
		typeID   => 9451,
		groupID  => 55,
		typeName => "720mm 'Scout' Artillery I"
	},

	9453	=> {
		typeID   => 9453,
		groupID  => 55,
		typeName => "720mm Carbine Howitzer I"
	},

	9455	=> {
		typeID   => 9455,
		groupID  => 55,
		typeName => "720mm Gallium Cannon"
	},

	9457	=> {
		typeID   => 9457,
		groupID  => 55,
		typeName => "720mm Prototype Siege Cannon"
	},

	9491	=> {
		typeID   => 9491,
		groupID  => 55,
		typeName => "1400mm 'Scout' Artillery I"
	},

	9493	=> {
		typeID   => 9493,
		groupID  => 55,
		typeName => "1400mm Carbine Howitzer I"
	},

	9495	=> {
		typeID   => 9495,
		groupID  => 55,
		typeName => "1400mm Gallium Cannon"
	},

	9497	=> {
		typeID   => 9497,
		groupID  => 55,
		typeName => "1400mm Prototype Siege Cannon"
	},

	9518	=> {
		typeID   => 9518,
		groupID  => 201,
		typeName => "Initiated Ion Field ECM I"
	},

	9519	=> {
		typeID   => 9519,
		groupID  => 201,
		typeName => "FZ-3 Subversive Spatial Destabilizer ECM"
	},

	9520	=> {
		typeID   => 9520,
		groupID  => 201,
		typeName => "'Penumbra' White Noise ECM"
	},

	9521	=> {
		typeID   => 9521,
		groupID  => 201,
		typeName => "Initiated Enduring Multispectral ECM"
	},

	9522	=> {
		typeID   => 9522,
		groupID  => 201,
		typeName => "Faint Phase Inversion ECM I"
	},

	9556	=> {
		typeID   => 9556,
		groupID  => 295,
		typeName => "Upgraded Explosive Deflection Amplifier I"
	},

	9562	=> {
		typeID   => 9562,
		groupID  => 295,
		typeName => "Supplemental EM Ward Amplifier"
	},

	9566	=> {
		typeID   => 9566,
		groupID  => 295,
		typeName => "Supplemental Thermal Dissipation Amplifier"
	},

	9568	=> {
		typeID   => 9568,
		groupID  => 295,
		typeName => "Upgraded Thermal Dissipation Amplifier I"
	},

	9570	=> {
		typeID   => 9570,
		groupID  => 295,
		typeName => "Supplemental Kinetic Deflection Amplifier"
	},

	9574	=> {
		typeID   => 9574,
		groupID  => 295,
		typeName => "Supplemental Explosive Deflection Amplifier"
	},

	9580	=> {
		typeID   => 9580,
		groupID  => 295,
		typeName => "Upgraded EM Ward Amplifier I"
	},

	9582	=> {
		typeID   => 9582,
		groupID  => 295,
		typeName => "Upgraded Kinetic Deflection Amplifier I"
	},

	9608	=> {
		typeID   => 9608,
		groupID  => 77,
		typeName => "Limited Kinetic Deflection Field I"
	},

	9622	=> {
		typeID   => 9622,
		groupID  => 77,
		typeName => "Limited 'Anointed' EM Ward Field"
	},

	9632	=> {
		typeID   => 9632,
		groupID  => 77,
		typeName => "Limited Adaptive Invulnerability Field I"
	},

	9646	=> {
		typeID   => 9646,
		groupID  => 77,
		typeName => "Limited Explosive Deflection Field I"
	},

	9660	=> {
		typeID   => 9660,
		groupID  => 77,
		typeName => "Limited Thermal Dissipation Field I"
	},

	9668	=> {
		typeID   => 9668,
		groupID  => 72,
		typeName => "Large Rudimentary Concussion Bomb I"
	},

	9670	=> {
		typeID   => 9670,
		groupID  => 72,
		typeName => "Small Rudimentary Concussion Bomb I"
	},

	9678	=> {
		typeID   => 9678,
		groupID  => 72,
		typeName => "Large 'Vehemence' Shockwave Charge"
	},

	9680	=> {
		typeID   => 9680,
		groupID  => 72,
		typeName => "Small 'Vehemence' Shockwave Charge"
	},

	9702	=> {
		typeID   => 9702,
		groupID  => 72,
		typeName => "Micro Rudimentary Concussion Bomb I"
	},

	9706	=> {
		typeID   => 9706,
		groupID  => 72,
		typeName => "Micro 'Vehemence' Shockwave Charge"
	},

	9728	=> {
		typeID   => 9728,
		groupID  => 72,
		typeName => "Medium Rudimentary Concussion Bomb I"
	},

	9734	=> {
		typeID   => 9734,
		groupID  => 72,
		typeName => "Medium 'Vehemence' Shockwave Charge"
	},

	9744	=> {
		typeID   => 9744,
		groupID  => 72,
		typeName => "Small 'Notos' Explosive Charge I"
	},

	9750	=> {
		typeID   => 9750,
		groupID  => 72,
		typeName => "Micro 'Notos' Explosive Charge I"
	},

	9762	=> {
		typeID   => 9762,
		groupID  => 72,
		typeName => "Medium 'Notos' Explosive Charge I"
	},

	9772	=> {
		typeID   => 9772,
		groupID  => 72,
		typeName => "Large 'Notos' Explosive Charge I"
	},

	9784	=> {
		typeID   => 9784,
		groupID  => 72,
		typeName => "Small YF-12a Smartbomb"
	},

	9790	=> {
		typeID   => 9790,
		groupID  => 72,
		typeName => "Micro YF-12a Smartbomb"
	},

	9800	=> {
		typeID   => 9800,
		groupID  => 72,
		typeName => "Medium YF-12a Smartbomb"
	},

	9808	=> {
		typeID   => 9808,
		groupID  => 72,
		typeName => "Large YF-12a Smartbomb"
	},

	9826	=> {
		typeID   => 9826,
		groupID  => 280,
		typeName => "Carbon"
	},

	9828	=> {
		typeID   => 9828,
		groupID  => 1042,
		typeName => "Silicon"
	},

	9830	=> {
		typeID   => 9830,
		groupID  => 1034,
		typeName => "Rocket Fuel"
	},

	9832	=> {
		typeID   => 9832,
		groupID  => 1034,
		typeName => "Coolant"
	},

	9834	=> {
		typeID   => 9834,
		groupID  => 1040,
		typeName => "Guidance Systems"
	},

	9836	=> {
		typeID   => 9836,
		groupID  => 1034,
		typeName => "Consumer Electronics"
	},

	9838	=> {
		typeID   => 9838,
		groupID  => 1034,
		typeName => "Superconductors"
	},

	9840	=> {
		typeID   => 9840,
		groupID  => 1034,
		typeName => "Transmitter"
	},

	9842	=> {
		typeID   => 9842,
		groupID  => 1034,
		typeName => "Miniature Electronics"
	},

	9844	=> {
		typeID   => 9844,
		groupID  => 280,
		typeName => "Small Arms"
	},

	9846	=> {
		typeID   => 9846,
		groupID  => 1040,
		typeName => "Planetary Vehicles"
	},

	9848	=> {
		typeID   => 9848,
		groupID  => 1040,
		typeName => "Robotics"
	},

	9850	=> {
		typeID   => 9850,
		groupID  => 280,
		typeName => "Spirits"
	},

	9852	=> {
		typeID   => 9852,
		groupID  => 280,
		typeName => "Tobacco"
	},

	9854	=> {
		typeID   => 9854,
		groupID  => 237,
		typeName => "Polaris Inspector Frigate"
	},

	9856	=> {
		typeID   => 9856,
		groupID  => 15,
		typeName => "Amarr Class A Starport"
	},

	9857	=> {
		typeID   => 9857,
		groupID  => 15,
		typeName => "Amarr Class B Starport"
	},

	9858	=> {
		typeID   => 9858,
		groupID  => 237,
		typeName => "Polaris Centurion TEST"
	},

	9860	=> {
		typeID   => 9860,
		groupID  => 237,
		typeName => "Polaris Legatus Frigate"
	},

	9862	=> {
		typeID   => 9862,
		groupID  => 237,
		typeName => "Polaris Centurion Frigate"
	},

	9867	=> {
		typeID   => 9867,
		groupID  => 15,
		typeName => "Heaven"
	},

	9868	=> {
		typeID   => 9868,
		groupID  => 15,
		typeName => "Concord Starbase"
	},

	9869	=> {
		typeID   => 9869,
		groupID  => 298,
		typeName => "Loiterer I"
	},

	9871	=> {
		typeID   => 9871,
		groupID  => 299,
		typeName => "Repair Drone"
	},

	9873	=> {
		typeID   => 9873,
		groupID  => 15,
		typeName => "Dark Amarr Station O"
	},

	9875	=> {
		typeID   => 9875,
		groupID  => 226,
		typeName => "Minmatar Trade Station Ruins"
	},

	9876	=> {
		typeID   => 9876,
		groupID  => 226,
		typeName => "Fortified Amarr Commercial Station Ruins"
	},

	9877	=> {
		typeID   => 9877,
		groupID  => 226,
		typeName => "Amarr Military Station Ruins"
	},

	9878	=> {
		typeID   => 9878,
		groupID  => 226,
		typeName => "Amarr Mining Station Ruins"
	},

	9879	=> {
		typeID   => 9879,
		groupID  => 226,
		typeName => "Amarr Research Station Ruins"
	},

	9880	=> {
		typeID   => 9880,
		groupID  => 226,
		typeName => "Amarr Trade Station Ruins"
	},

	9881	=> {
		typeID   => 9881,
		groupID  => 226,
		typeName => "Fortified Caldari Station Ruins - Huge & Sprawling"
	},

	9882	=> {
		typeID   => 9882,
		groupID  => 226,
		typeName => "Caldari Station Ruins - Hook Shaped"
	},

	9883	=> {
		typeID   => 9883,
		groupID  => 226,
		typeName => "Fortified Caldari Station Ruins - Flat Hulk"
	},

	9884	=> {
		typeID   => 9884,
		groupID  => 226,
		typeName => "Caldari Station Ruins - Industry Drill"
	},

	9885	=> {
		typeID   => 9885,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Disc"
	},

	9886	=> {
		typeID   => 9886,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Fathom"
	},

	9887	=> {
		typeID   => 9887,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Ugly Industrial"
	},

	9888	=> {
		typeID   => 9888,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Biodomes"
	},

	9889	=> {
		typeID   => 9889,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Factory"
	},

	9890	=> {
		typeID   => 9890,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Military"
	},

	9891	=> {
		typeID   => 9891,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Research"
	},

	9892	=> {
		typeID   => 9892,
		groupID  => 226,
		typeName => "Gallente Station Ruins - Commercial"
	},

	9893	=> {
		typeID   => 9893,
		groupID  => 226,
		typeName => "Minmatar Commercial Station Ruins"
	},

	9894	=> {
		typeID   => 9894,
		groupID  => 226,
		typeName => "Minmatar Industry Station Ruins"
	},

	9895	=> {
		typeID   => 9895,
		groupID  => 226,
		typeName => "Minmatar Military Station Ruins"
	},

	9896	=> {
		typeID   => 9896,
		groupID  => 226,
		typeName => "Minmatar Mining Station Ruins"
	},

	9897	=> {
		typeID   => 9897,
		groupID  => 226,
		typeName => "Minmatar Research Station Ruins"
	},

	9898	=> {
		typeID   => 9898,
		groupID  => 226,
		typeName => "Minmatar General Station Ruins"
	},

	9899	=> {
		typeID   => 9899,
		groupID  => 745,
		typeName => "Ocular Filter - Basic"
	},

	9917	=> {
		typeID   => 9917,
		groupID  => 23,
		typeName => "Clone Grade Delta"
	},

	9919	=> {
		typeID   => 9919,
		groupID  => 23,
		typeName => "Clone Grade Epsilon"
	},

	9921	=> {
		typeID   => 9921,
		groupID  => 23,
		typeName => "Clone Grade Zeta"
	},

	9923	=> {
		typeID   => 9923,
		groupID  => 23,
		typeName => "Clone Grade Eta"
	},

	9925	=> {
		typeID   => 9925,
		groupID  => 23,
		typeName => "Clone Grade Theta"
	},

	9927	=> {
		typeID   => 9927,
		groupID  => 23,
		typeName => "Clone Grade Iota"
	},

	9929	=> {
		typeID   => 9929,
		groupID  => 23,
		typeName => "Clone Grade Kappa"
	},

	9931	=> {
		typeID   => 9931,
		groupID  => 23,
		typeName => "Clone Grade Lambda"
	},

	9933	=> {
		typeID   => 9933,
		groupID  => 23,
		typeName => "Clone Grade Mu"
	},

	9935	=> {
		typeID   => 9935,
		groupID  => 23,
		typeName => "Clone Grade Nu"
	},

	9937	=> {
		typeID   => 9937,
		groupID  => 23,
		typeName => "Clone Grade Xi"
	},

	9939	=> {
		typeID   => 9939,
		groupID  => 23,
		typeName => "Clone Grade Omicron"
	},

	9941	=> {
		typeID   => 9941,
		groupID  => 745,
		typeName => "Memory Augmentation - Basic"
	},

	9942	=> {
		typeID   => 9942,
		groupID  => 745,
		typeName => "Neural Boost - Basic"
	},

	9943	=> {
		typeID   => 9943,
		groupID  => 745,
		typeName => "Cybernetic Subprocessor - Basic"
	},

	9944	=> {
		typeID   => 9944,
		groupID  => 302,
		typeName => "Magnetic Field Stabilizer I"
	},

	9945	=> {
		typeID   => 9945,
		groupID  => 139,
		typeName => "Magnetic Field Stabilizer I Blueprint"
	},

	9947	=> {
		typeID   => 9947,
		groupID  => 303,
		typeName => "Standard Crash Booster"
	},

	9950	=> {
		typeID   => 9950,
		groupID  => 303,
		typeName => "Standard Blue Pill Booster"
	},

	9955	=> {
		typeID   => 9955,
		groupID  => 257,
		typeName => "Polaris"
	},

	9956	=> {
		typeID   => 9956,
		groupID  => 745,
		typeName => "Social Adaptation Chip - Basic"
	},

	9957	=> {
		typeID   => 9957,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Motion Prediction MR-703"
	},

	9959	=> {
		typeID   => 9959,
		groupID  => 182,
		typeName => "Amarr Surveillance Officer"
	},

	9960	=> {
		typeID   => 9960,
		groupID  => 182,
		typeName => "Amarr Surveillance Sergeant Major"
	},

	9962	=> {
		typeID   => 9962,
		groupID  => 182,
		typeName => "Amarr Surveillance Sergeant"
	},

	9965	=> {
		typeID   => 9965,
		groupID  => 182,
		typeName => "Caldari Police Vice Commissioner"
	},

	9970	=> {
		typeID   => 9970,
		groupID  => 182,
		typeName => "Caldari Police 3rd Lieutenant"
	},

	9971	=> {
		typeID   => 9971,
		groupID  => 182,
		typeName => "Caldari Police 1st Lieutenant"
	},

	9977	=> {
		typeID   => 9977,
		groupID  => 182,
		typeName => "Minmatar Security Officer 2nd Rank"
	},

	9978	=> {
		typeID   => 9978,
		groupID  => 182,
		typeName => "Minmatar Security Officer 1st Rank"
	},

	9983	=> {
		typeID   => 9983,
		groupID  => 182,
		typeName => "Gallente Police Master Sergeant"
	},

	9984	=> {
		typeID   => 9984,
		groupID  => 182,
		typeName => "Gallente Police Captain"
	},

	9987	=> {
		typeID   => 9987,
		groupID  => 182,
		typeName => "Khanid Surveillance Officer"
	},

	9988	=> {
		typeID   => 9988,
		groupID  => 182,
		typeName => "Khanid Surveillance Sergeant"
	},

	9989	=> {
		typeID   => 9989,
		groupID  => 182,
		typeName => "Minmatar Security Officer 3rd Rank"
	},

	9991	=> {
		typeID   => 9991,
		groupID  => 182,
		typeName => "Gallente Police Sergeant"
	},

	9997	=> {
		typeID   => 9997,
		groupID  => 288,
		typeName => "Imperial Navy Sergeant Major"
	},

	9998	=> {
		typeID   => 9998,
		groupID  => 288,
		typeName => "Imperial Navy Sergeant"
	},

	9999	=> {
		typeID   => 9999,
		groupID  => 288,
		typeName => "Imperial Navy Captain"
	},

	10000	=> {
		typeID   => 10000,
		groupID  => 288,
		typeName => "Imperial Navy Major"
	},

	10001	=> {
		typeID   => 10001,
		groupID  => 288,
		typeName => "Imperial Navy Colonel"
	},

	10003	=> {
		typeID   => 10003,
		groupID  => 288,
		typeName => "Imperial Navy General"
	},

	10013	=> {
		typeID   => 10013,
		groupID  => 550,
		typeName => "Angel Hijacker"
	},

	10014	=> {
		typeID   => 10014,
		groupID  => 550,
		typeName => "Angel Outlaw"
	},

	10015	=> {
		typeID   => 10015,
		groupID  => 550,
		typeName => "Angel Nomad"
	},

	10016	=> {
		typeID   => 10016,
		groupID  => 550,
		typeName => "Angel Raider"
	},

	10017	=> {
		typeID   => 10017,
		groupID  => 551,
		typeName => "Angel Depredator"
	},

	10018	=> {
		typeID   => 10018,
		groupID  => 551,
		typeName => "Angel Smasher"
	},

	10019	=> {
		typeID   => 10019,
		groupID  => 550,
		typeName => "Angel Hunter"
	},

	10025	=> {
		typeID   => 10025,
		groupID  => 567,
		typeName => "Sansha's Servant"
	},

	10026	=> {
		typeID   => 10026,
		groupID  => 567,
		typeName => "Sansha's Scavenger"
	},

	10027	=> {
		typeID   => 10027,
		groupID  => 567,
		typeName => "Sansha's Savage"
	},

	10028	=> {
		typeID   => 10028,
		groupID  => 567,
		typeName => "Sansha's Plague"
	},

	10030	=> {
		typeID   => 10030,
		groupID  => 566,
		typeName => "Sansha's Ravager"
	},

	10035	=> {
		typeID   => 10035,
		groupID  => 182,
		typeName => "CONCORD SWAT Officer"
	},

	10036	=> {
		typeID   => 10036,
		groupID  => 182,
		typeName => "CONCORD SWAT Captain"
	},

	10037	=> {
		typeID   => 10037,
		groupID  => 301,
		typeName => "DED Special Operation Officer"
	},

	10038	=> {
		typeID   => 10038,
		groupID  => 301,
		typeName => "DED Special Operation Captain"
	},

	10039	=> {
		typeID   => 10039,
		groupID  => 40,
		typeName => "Civilian Shield Booster"
	},

	10040	=> {
		typeID   => 10040,
		groupID  => 120,
		typeName => "Civilian Shield Booster Blueprint"
	},

	10041	=> {
		typeID   => 10041,
		groupID  => 226,
		typeName => "Frozen Corpse"
	},

	10043	=> {
		typeID   => 10043,
		groupID  => 297,
		typeName => "Peddler"
	},

	10044	=> {
		typeID   => 10044,
		groupID  => 297,
		typeName => "Column"
	},

	10045	=> {
		typeID   => 10045,
		groupID  => 297,
		typeName => "Vanguard"
	},

	10046	=> {
		typeID   => 10046,
		groupID  => 288,
		typeName => "Caldari Navy Captain 2nd Rank"
	},

	10047	=> {
		typeID   => 10047,
		groupID  => 288,
		typeName => "Caldari Navy Captain 1st Rank"
	},

	10048	=> {
		typeID   => 10048,
		groupID  => 288,
		typeName => "Caldari Navy Commodore"
	},

	10050	=> {
		typeID   => 10050,
		groupID  => 288,
		typeName => "Caldari Navy Vice Admiral"
	},

	10052	=> {
		typeID   => 10052,
		groupID  => 288,
		typeName => "Federation Navy Command Sergeant Major"
	},

	10053	=> {
		typeID   => 10053,
		groupID  => 288,
		typeName => "Federation Navy Fleet Captain"
	},

	10054	=> {
		typeID   => 10054,
		groupID  => 288,
		typeName => "Federation Navy Sergeant Major"
	},

	10056	=> {
		typeID   => 10056,
		groupID  => 288,
		typeName => "Federation Navy Fleet Major"
	},

	10057	=> {
		typeID   => 10057,
		groupID  => 288,
		typeName => "Federation Navy Fleet Colonel"
	},

	10058	=> {
		typeID   => 10058,
		groupID  => 288,
		typeName => "Republic Fleet Private 3rd Rank"
	},

	10060	=> {
		typeID   => 10060,
		groupID  => 288,
		typeName => "Republic Fleet Captain"
	},

	10065	=> {
		typeID   => 10065,
		groupID  => 227,
		typeName => "Dark Cloud"
	},

	10066	=> {
		typeID   => 10066,
		groupID  => 227,
		typeName => "Dark Green Cloud"
	},

	10067	=> {
		typeID   => 10067,
		groupID  => 227,
		typeName => "Dust Cloud"
	},

	10068	=> {
		typeID   => 10068,
		groupID  => 227,
		typeName => "Ion Cloud"
	},

	10069	=> {
		typeID   => 10069,
		groupID  => 227,
		typeName => "Spark Cloud"
	},

	10071	=> {
		typeID   => 10071,
		groupID  => 305,
		typeName => "Toxic Comet"
	},

	10073	=> {
		typeID   => 10073,
		groupID  => 305,
		typeName => "Gold Comet"
	},

	10076	=> {
		typeID   => 10076,
		groupID  => 288,
		typeName => "Khanid Navy Sergeant"
	},

	10077	=> {
		typeID   => 10077,
		groupID  => 288,
		typeName => "Republic Fleet Commander"
	},

	10078	=> {
		typeID   => 10078,
		groupID  => 288,
		typeName => "Republic Fleet High Captain"
	},

	10079	=> {
		typeID   => 10079,
		groupID  => 288,
		typeName => "Khanid Navy Sergeant Major"
	},

	10080	=> {
		typeID   => 10080,
		groupID  => 288,
		typeName => "Khanid Navy Major"
	},

	10082	=> {
		typeID   => 10082,
		groupID  => 288,
		typeName => "Khanid Navy Colonel"
	},

	10083	=> {
		typeID   => 10083,
		groupID  => 288,
		typeName => "Khanid Navy General"
	},

	10084	=> {
		typeID   => 10084,
		groupID  => 288,
		typeName => "Ammatar Navy Sergeant"
	},

	10085	=> {
		typeID   => 10085,
		groupID  => 288,
		typeName => "Ammatar Navy Sergeant Major"
	},

	10086	=> {
		typeID   => 10086,
		groupID  => 288,
		typeName => "Ammatar Navy Major"
	},

	10089	=> {
		typeID   => 10089,
		groupID  => 288,
		typeName => "Ammatar Navy General"
	},

	10090	=> {
		typeID   => 10090,
		groupID  => 288,
		typeName => "Sarum Navy Sergeant"
	},

	10091	=> {
		typeID   => 10091,
		groupID  => 288,
		typeName => "Sarum Navy Major"
	},

	10092	=> {
		typeID   => 10092,
		groupID  => 288,
		typeName => "Sarum Navy Captain"
	},

	10095	=> {
		typeID   => 10095,
		groupID  => 288,
		typeName => "Sarum Navy General"
	},

	10097	=> {
		typeID   => 10097,
		groupID  => 182,
		typeName => "Ammatar Surveillance Officer"
	},

	10099	=> {
		typeID   => 10099,
		groupID  => 182,
		typeName => "Ammatar Surveillance Sergeant Major"
	},

	10100	=> {
		typeID   => 10100,
		groupID  => 182,
		typeName => "Ammatar Surveillance Sergeant"
	},

	10102	=> {
		typeID   => 10102,
		groupID  => 182,
		typeName => "Sarum Surveillance Officer"
	},

	10104	=> {
		typeID   => 10104,
		groupID  => 182,
		typeName => "Sarum Surveillance Sergeant Major"
	},

	10105	=> {
		typeID   => 10105,
		groupID  => 182,
		typeName => "Sarum Surveillance Sergeant"
	},

	10106	=> {
		typeID   => 10106,
		groupID  => 288,
		typeName => "Intaki Defense Sergeant Major"
	},

	10107	=> {
		typeID   => 10107,
		groupID  => 288,
		typeName => "Intaki Defense Command Sergeant Major"
	},

	10108	=> {
		typeID   => 10108,
		groupID  => 288,
		typeName => "Intaki Defense Fleet Captain"
	},

	10109	=> {
		typeID   => 10109,
		groupID  => 288,
		typeName => "Intaki Defense Fleet Colonel"
	},

	10110	=> {
		typeID   => 10110,
		groupID  => 826,
		typeName => "Thukker Follower"
	},

	10111	=> {
		typeID   => 10111,
		groupID  => 288,
		typeName => "Thukker Brute"
	},

	10112	=> {
		typeID   => 10112,
		groupID  => 288,
		typeName => "Thukker Warrior"
	},

	10113	=> {
		typeID   => 10113,
		groupID  => 288,
		typeName => "Thukker Tribal Lord"
	},

	10114	=> {
		typeID   => 10114,
		groupID  => 297,
		typeName => "Tradesman"
	},

	10115	=> {
		typeID   => 10115,
		groupID  => 297,
		typeName => "Merchant"
	},

	10116	=> {
		typeID   => 10116,
		groupID  => 297,
		typeName => "Trafficker"
	},

	10117	=> {
		typeID   => 10117,
		groupID  => 297,
		typeName => "Caravan"
	},

	10118	=> {
		typeID   => 10118,
		groupID  => 297,
		typeName => "Flotilla"
	},

	10119	=> {
		typeID   => 10119,
		groupID  => 226,
		typeName => "Outpost/Disc - Spiky & Pulsating"
	},

	10120	=> {
		typeID   => 10120,
		groupID  => 226,
		typeName => "Rock - Infested by Rogue Drones"
	},

	10121	=> {
		typeID   => 10121,
		groupID  => 226,
		typeName => "Small Asteroid w/Drone-tech"
	},

	10122	=> {
		typeID   => 10122,
		groupID  => 226,
		typeName => "Multi-purpose Pad"
	},

	10123	=> {
		typeID   => 10123,
		groupID  => 226,
		typeName => "Pulsating Power Generator"
	},

	10124	=> {
		typeID   => 10124,
		groupID  => 226,
		typeName => "Beacon"
	},

	10125	=> {
		typeID   => 10125,
		groupID  => 288,
		typeName => "Mordu's Lieutenant 3rd Rank"
	},

	10126	=> {
		typeID   => 10126,
		groupID  => 288,
		typeName => "Mordu's Lieutenant 2nd Rank"
	},

	10127	=> {
		typeID   => 10127,
		groupID  => 226,
		typeName => "Magnetic Double-Capped Bubble"
	},

	10128	=> {
		typeID   => 10128,
		groupID  => 227,
		typeName => "Dark Gray Cloud"
	},

	10129	=> {
		typeID   => 10129,
		groupID  => 227,
		typeName => "Dark Gray Turbulent Cloud"
	},

	10130	=> {
		typeID   => 10130,
		groupID  => 227,
		typeName => "Electric Cloud"
	},

	10131	=> {
		typeID   => 10131,
		groupID  => 227,
		typeName => "Fire Cloud"
	},

	10132	=> {
		typeID   => 10132,
		groupID  => 227,
		typeName => "Plasma Cloud"
	},

	10133	=> {
		typeID   => 10133,
		groupID  => 288,
		typeName => "Mordu's Lieutenant"
	},

	10134	=> {
		typeID   => 10134,
		groupID  => 288,
		typeName => "Mordu's Captain"
	},

	10135	=> {
		typeID   => 10135,
		groupID  => 226,
		typeName => "Depleted Station Battery"
	},

	10136	=> {
		typeID   => 10136,
		groupID  => 226,
		typeName => "Black Monolith"
	},

	10137	=> {
		typeID   => 10137,
		groupID  => 226,
		typeName => "Rock Formation - Branched & Twisted"
	},

	10138	=> {
		typeID   => 10138,
		groupID  => 226,
		typeName => "Spaceshuttle Wreck"
	},

	10139	=> {
		typeID   => 10139,
		groupID  => 226,
		typeName => "Circular Construction"
	},

	10140	=> {
		typeID   => 10140,
		groupID  => 226,
		typeName => "Debris - Broken Engine Part 1"
	},

	10141	=> {
		typeID   => 10141,
		groupID  => 226,
		typeName => "Debris - Broken Engine Part 2"
	},

	10142	=> {
		typeID   => 10142,
		groupID  => 226,
		typeName => "Debris - Power Conduit"
	},

	10143	=> {
		typeID   => 10143,
		groupID  => 226,
		typeName => "Debris - Twisted Metal"
	},

	10144	=> {
		typeID   => 10144,
		groupID  => 226,
		typeName => "Scanner Sentry - Rapid Pulse"
	},

	10151	=> {
		typeID   => 10151,
		groupID  => 303,
		typeName => "Improved Crash Booster"
	},

	10152	=> {
		typeID   => 10152,
		groupID  => 303,
		typeName => "Strong Crash Booster"
	},

	10155	=> {
		typeID   => 10155,
		groupID  => 303,
		typeName => "Improved Blue Pill Booster"
	},

	10156	=> {
		typeID   => 10156,
		groupID  => 303,
		typeName => "Strong Blue Pill Booster"
	},

	10164	=> {
		typeID   => 10164,
		groupID  => 303,
		typeName => "Standard Sooth Sayer Booster"
	},

	10165	=> {
		typeID   => 10165,
		groupID  => 303,
		typeName => "Improved Sooth Sayer Booster"
	},

	10166	=> {
		typeID   => 10166,
		groupID  => 303,
		typeName => "Strong Sooth Sayer Booster"
	},

	10167	=> {
		typeID   => 10167,
		groupID  => 306,
		typeName => "Abandoned Container"
	},

	10188	=> {
		typeID   => 10188,
		groupID  => 302,
		typeName => "'Basic' Magnetic Field Stabilizer"
	},

	10190	=> {
		typeID   => 10190,
		groupID  => 302,
		typeName => "Magnetic Field Stabilizer II"
	},

	10191	=> {
		typeID   => 10191,
		groupID  => 139,
		typeName => "Magnetic Field Stabilizer II Blueprint"
	},

	10204	=> {
		typeID   => 10204,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Sharpshooter ST-903"
	},

	10208	=> {
		typeID   => 10208,
		groupID  => 745,
		typeName => "Memory Augmentation - Standard"
	},

	10209	=> {
		typeID   => 10209,
		groupID  => 745,
		typeName => "Memory Augmentation - Improved"
	},

	10210	=> {
		typeID   => 10210,
		groupID  => 745,
		typeName => "Memory Augmentation - Advanced"
	},

	10211	=> {
		typeID   => 10211,
		groupID  => 745,
		typeName => "Memory Augmentation - Elite"
	},

	10212	=> {
		typeID   => 10212,
		groupID  => 745,
		typeName => "Neural Boost - Standard"
	},

	10213	=> {
		typeID   => 10213,
		groupID  => 745,
		typeName => "Neural Boost - Improved"
	},

	10214	=> {
		typeID   => 10214,
		groupID  => 745,
		typeName => "Neural Boost - Advanced"
	},

	10215	=> {
		typeID   => 10215,
		groupID  => 745,
		typeName => "Neural Boost - Elite"
	},

	10216	=> {
		typeID   => 10216,
		groupID  => 745,
		typeName => "Ocular Filter - Standard"
	},

	10217	=> {
		typeID   => 10217,
		groupID  => 745,
		typeName => "Ocular Filter - Improved"
	},

	10218	=> {
		typeID   => 10218,
		groupID  => 745,
		typeName => "Ocular Filter - Advanced"
	},

	10219	=> {
		typeID   => 10219,
		groupID  => 745,
		typeName => "Ocular Filter - Elite"
	},

	10221	=> {
		typeID   => 10221,
		groupID  => 745,
		typeName => "Cybernetic Subprocessor - Standard"
	},

	10222	=> {
		typeID   => 10222,
		groupID  => 745,
		typeName => "Cybernetic Subprocessor - Improved"
	},

	10223	=> {
		typeID   => 10223,
		groupID  => 745,
		typeName => "Cybernetic Subprocessor - Advanced"
	},

	10224	=> {
		typeID   => 10224,
		groupID  => 745,
		typeName => "Cybernetic Subprocessor - Elite"
	},

	10225	=> {
		typeID   => 10225,
		groupID  => 745,
		typeName => "Social Adaptation Chip - Standard"
	},

	10226	=> {
		typeID   => 10226,
		groupID  => 745,
		typeName => "Social Adaptation Chip - Improved"
	},

	10227	=> {
		typeID   => 10227,
		groupID  => 745,
		typeName => "Social Adaptation Chip - Advanced"
	},

	10228	=> {
		typeID   => 10228,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Management SM-703"
	},

	10231	=> {
		typeID   => 10231,
		groupID  => 306,
		typeName => "Flotsam"
	},

	10232	=> {
		typeID   => 10232,
		groupID  => 227,
		typeName => "Debris Cloud"
	},

	10233	=> {
		typeID   => 10233,
		groupID  => 227,
		typeName => "Meteor Cloud"
	},

	10234	=> {
		typeID   => 10234,
		groupID  => 226,
		typeName => "Gallente Outpost"
	},

	10235	=> {
		typeID   => 10235,
		groupID  => 226,
		typeName => "Amarr Refining Outpost"
	},

	10236	=> {
		typeID   => 10236,
		groupID  => 226,
		typeName => "Amarr Repair Outpost"
	},

	10237	=> {
		typeID   => 10237,
		groupID  => 226,
		typeName => "Amarr Tactical Outpost"
	},

	10238	=> {
		typeID   => 10238,
		groupID  => 226,
		typeName => "Caldari Refining Outpost"
	},

	10239	=> {
		typeID   => 10239,
		groupID  => 226,
		typeName => "Caldari Repair Outpost"
	},

	10240	=> {
		typeID   => 10240,
		groupID  => 226,
		typeName => "Caldari Tactical Outpost"
	},

	10241	=> {
		typeID   => 10241,
		groupID  => 226,
		typeName => "Minmatar Refining Outpost"
	},

	10242	=> {
		typeID   => 10242,
		groupID  => 226,
		typeName => "Minmatar Repair Outpost"
	},

	10243	=> {
		typeID   => 10243,
		groupID  => 226,
		typeName => "Minmatar Tactical Outpost"
	},

	10244	=> {
		typeID   => 10244,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Signature Analysis SA-703"
	},

	10246	=> {
		typeID   => 10246,
		groupID  => 101,
		typeName => "Mining Drone I"
	},

	10247	=> {
		typeID   => 10247,
		groupID  => 177,
		typeName => "Mining Drone I Blueprint"
	},

	10248	=> {
		typeID   => 10248,
		groupID  => 101,
		typeName => "Mining Drone - Improved"
	},

	10250	=> {
		typeID   => 10250,
		groupID  => 101,
		typeName => "Mining Drone II"
	},

	10251	=> {
		typeID   => 10251,
		groupID  => 177,
		typeName => "Mining Drone II Blueprint"
	},

	10252	=> {
		typeID   => 10252,
		groupID  => 101,
		typeName => "Mining Drone - Elite"
	},

	10256	=> {
		typeID   => 10256,
		groupID  => 226,
		typeName => "Asteroid Mining Post"
	},

	10257	=> {
		typeID   => 10257,
		groupID  => 307,
		typeName => "Gallente Administrative Outpost Platform"
	},

	10258	=> {
		typeID   => 10258,
		groupID  => 307,
		typeName => "Minmatar Service Outpost Platform"
	},

	10260	=> {
		typeID   => 10260,
		groupID  => 307,
		typeName => "Amarr Factory Outpost Platform"
	},

	10261	=> {
		typeID   => 10261,
		groupID  => 306,
		typeName => "Drifting Cask"
	},

	10262	=> {
		typeID   => 10262,
		groupID  => 306,
		typeName => "Forsaken Stockpile"
	},

	10263	=> {
		typeID   => 10263,
		groupID  => 306,
		typeName => "Cache Container"
	},

	10264	=> {
		typeID   => 10264,
		groupID  => 257,
		typeName => "Concord"
	},

	10265	=> {
		typeID   => 10265,
		groupID  => 561,
		typeName => "Guristas Ascriber"
	},

	10266	=> {
		typeID   => 10266,
		groupID  => 562,
		typeName => "Guristas Wrecker"
	},

	10267	=> {
		typeID   => 10267,
		groupID  => 226,
		typeName => "Coral Rock Formation"
	},

	10269	=> {
		typeID   => 10269,
		groupID  => 226,
		typeName => "Floating Stonehenge"
	},

	10270	=> {
		typeID   => 10270,
		groupID  => 226,
		typeName => "Low-Tech Solar Harvester"
	},

	10273	=> {
		typeID   => 10273,
		groupID  => 567,
		typeName => "Sansha's Minion"
	},

	10274	=> {
		typeID   => 10274,
		groupID  => 566,
		typeName => "Sansha's Ravisher"
	},

	10275	=> {
		typeID   => 10275,
		groupID  => 557,
		typeName => "Blood Follower"
	},

	10276	=> {
		typeID   => 10276,
		groupID  => 557,
		typeName => "Blood Herald"
	},

	10277	=> {
		typeID   => 10277,
		groupID  => 557,
		typeName => "Blood Upholder"
	},

	10278	=> {
		typeID   => 10278,
		groupID  => 557,
		typeName => "Blood Seeker"
	},

	10279	=> {
		typeID   => 10279,
		groupID  => 557,
		typeName => "Blood Collector"
	},

	10280	=> {
		typeID   => 10280,
		groupID  => 557,
		typeName => "Blood Reaver"
	},

	10281	=> {
		typeID   => 10281,
		groupID  => 555,
		typeName => "Blood Arch Reaver"
	},

	10282	=> {
		typeID   => 10282,
		groupID  => 555,
		typeName => "Blood Arch Engraver"
	},

	10283	=> {
		typeID   => 10283,
		groupID  => 572,
		typeName => "Serpentis Scout"
	},

	10284	=> {
		typeID   => 10284,
		groupID  => 572,
		typeName => "Serpentis Watchman"
	},

	10285	=> {
		typeID   => 10285,
		groupID  => 572,
		typeName => "Serpentis Guard"
	},

	10286	=> {
		typeID   => 10286,
		groupID  => 572,
		typeName => "Serpentis Defender"
	},

	10287	=> {
		typeID   => 10287,
		groupID  => 571,
		typeName => "Serpentis Chief Patroller"
	},

	10299	=> {
		typeID   => 10299,
		groupID  => 802,
		typeName => "Alvus Controller"
	},

	10305	=> {
		typeID   => 10305,
		groupID  => 226,
		typeName => "Ghost Ship"
	},

	10629	=> {
		typeID   => 10629,
		groupID  => 507,
		typeName => "Rocket Launcher I"
	},

	10630	=> {
		typeID   => 10630,
		groupID  => 136,
		typeName => "Rocket Launcher I Blueprint"
	},

	10631	=> {
		typeID   => 10631,
		groupID  => 507,
		typeName => "Rocket Launcher II"
	},

	10632	=> {
		typeID   => 10632,
		groupID  => 136,
		typeName => "Rocket Launcher II Blueprint"
	},

	10642	=> {
		typeID   => 10642,
		groupID  => 308,
		typeName => "Countermeasure Launcher I"
	},

	10643	=> {
		typeID   => 10643,
		groupID  => 136,
		typeName => "Countermeasure Launcher I Blueprint"
	},

	10645	=> {
		typeID   => 10645,
		groupID  => 310,
		typeName => "Celestial Beacon"
	},

	10646	=> {
		typeID   => 10646,
		groupID  => 314,
		typeName => "Training Certificate"
	},

	10648	=> {
		typeID   => 10648,
		groupID  => 336,
		typeName => "Sentinel Sentry Gun I"
	},

	10649	=> {
		typeID   => 10649,
		groupID  => 287,
		typeName => "Training Drone"
	},

	10650	=> {
		typeID   => 10650,
		groupID  => 288,
		typeName => "Ammatar Navy Captain"
	},

	10651	=> {
		typeID   => 10651,
		groupID  => 288,
		typeName => "Caldari Navy Captain 3rd Rank"
	},

	10652	=> {
		typeID   => 10652,
		groupID  => 288,
		typeName => "Federation Navy First Sergeant"
	},

	10653	=> {
		typeID   => 10653,
		groupID  => 288,
		typeName => "Intaki Defense First Sergeant"
	},

	10654	=> {
		typeID   => 10654,
		groupID  => 288,
		typeName => "Mordu's Lieutenant 1st Rank"
	},

	10655	=> {
		typeID   => 10655,
		groupID  => 288,
		typeName => "Mordu's Legion"
	},

	10656	=> {
		typeID   => 10656,
		groupID  => 288,
		typeName => "Sarum Navy Sergeant Major"
	},

	10657	=> {
		typeID   => 10657,
		groupID  => 288,
		typeName => "Thukker Tribalist"
	},

	10658	=> {
		typeID   => 10658,
		groupID  => 288,
		typeName => "Thukker Tribal Priest"
	},

	10660	=> {
		typeID   => 10660,
		groupID  => 182,
		typeName => "Caldari Police 2nd Lieutenant"
	},

	10663	=> {
		typeID   => 10663,
		groupID  => 288,
		typeName => "Republic Fleet Private 1st Rank"
	},

	10664	=> {
		typeID   => 10664,
		groupID  => 288,
		typeName => "Republic Fleet Private 2nd Rank"
	},

	10665	=> {
		typeID   => 10665,
		groupID  => 336,
		typeName => "Sentinel Sentry Gun II"
	},

	10666	=> {
		typeID   => 10666,
		groupID  => 336,
		typeName => "Sentinel Sentry Gun III"
	},

	10667	=> {
		typeID   => 10667,
		groupID  => 336,
		typeName => "Sentinel Sentry Gun IV"
	},

	10668	=> {
		typeID   => 10668,
		groupID  => 336,
		typeName => "Sentinel Sentry Gun V"
	},

	10669	=> {
		typeID   => 10669,
		groupID  => 288,
		typeName => "Ammatar Navy Colonel"
	},

	10670	=> {
		typeID   => 10670,
		groupID  => 288,
		typeName => "Khanid Navy Captain"
	},

	10674	=> {
		typeID   => 10674,
		groupID  => 182,
		typeName => "Khanid Surveillance Sergeant Major"
	},

	10676	=> {
		typeID   => 10676,
		groupID  => 288,
		typeName => "Sarum Navy Colonel"
	},

	10677	=> {
		typeID   => 10677,
		groupID  => 288,
		typeName => "Intaki Defense Fleet Major"
	},

	10678	=> {
		typeID   => 10678,
		groupID  => 74,
		typeName => "125mm Railgun I"
	},

	10679	=> {
		typeID   => 10679,
		groupID  => 154,
		typeName => "125mm Railgun I Blueprint"
	},

	10680	=> {
		typeID   => 10680,
		groupID  => 74,
		typeName => "125mm Railgun II"
	},

	10681	=> {
		typeID   => 10681,
		groupID  => 154,
		typeName => "125mm Railgun II Blueprint"
	},

	10688	=> {
		typeID   => 10688,
		groupID  => 74,
		typeName => "125mm 'Scout' Accelerator Cannon"
	},

	10690	=> {
		typeID   => 10690,
		groupID  => 74,
		typeName => "125mm Carbide Railgun I"
	},

	10692	=> {
		typeID   => 10692,
		groupID  => 74,
		typeName => "125mm Compressed Coil Gun I"
	},

	10694	=> {
		typeID   => 10694,
		groupID  => 74,
		typeName => "125mm Prototype Gauss Gun"
	},

	10753	=> {
		typeID   => 10753,
		groupID  => 227,
		typeName => "Soft Cloud"
	},

	10754	=> {
		typeID   => 10754,
		groupID  => 227,
		typeName => "Wispy Orange Cloud"
	},

	10755	=> {
		typeID   => 10755,
		groupID  => 227,
		typeName => "Sulphuric Cloud"
	},

	10756	=> {
		typeID   => 10756,
		groupID  => 227,
		typeName => "Dust Streak"
	},

	10757	=> {
		typeID   => 10757,
		groupID  => 227,
		typeName => "Plasmic Gas Cloud"
	},

	10758	=> {
		typeID   => 10758,
		groupID  => 227,
		typeName => "Wispy Chlorine Cloud"
	},

	10759	=> {
		typeID   => 10759,
		groupID  => 227,
		typeName => "Micro Nebula"
	},

	10760	=> {
		typeID   => 10760,
		groupID  => 227,
		typeName => "Acidic Cloud"
	},

	10761	=> {
		typeID   => 10761,
		groupID  => 227,
		typeName => "Nebulaic Cloud"
	},

	10762	=> {
		typeID   => 10762,
		groupID  => 227,
		typeName => "Chlorine Cloud"
	},

	10763	=> {
		typeID   => 10763,
		groupID  => 227,
		typeName => "Gaseous Cloud"
	},

	10764	=> {
		typeID   => 10764,
		groupID  => 227,
		typeName => "Amber Cloud"
	},

	10765	=> {
		typeID   => 10765,
		groupID  => 227,
		typeName => "Green Gas Cloud"
	},

	10766	=> {
		typeID   => 10766,
		groupID  => 336,
		typeName => "Guardian Sentry Gun I"
	},

	10767	=> {
		typeID   => 10767,
		groupID  => 336,
		typeName => "Guardian Sentry Gun II"
	},

	10768	=> {
		typeID   => 10768,
		groupID  => 336,
		typeName => "Guardian Sentry Gun III"
	},

	10769	=> {
		typeID   => 10769,
		groupID  => 336,
		typeName => "Guardian Sentry Gun IV"
	},

	10770	=> {
		typeID   => 10770,
		groupID  => 336,
		typeName => "Guardian Sentry Gun V"
	},

	10771	=> {
		typeID   => 10771,
		groupID  => 226,
		typeName => "Asteroid Colony - Factory"
	},

	10772	=> {
		typeID   => 10772,
		groupID  => 226,
		typeName => "Asteroid Colony - Refinery"
	},

	10773	=> {
		typeID   => 10773,
		groupID  => 226,
		typeName => "Asteroid Colony - Wedge Shape"
	},

	10774	=> {
		typeID   => 10774,
		groupID  => 226,
		typeName => "Asteroid Colony - High & Massive"
	},

	10775	=> {
		typeID   => 10775,
		groupID  => 226,
		typeName => "Asteroid Colony - Medium Size"
	},

	10778	=> {
		typeID   => 10778,
		groupID  => 226,
		typeName => "Asteroid Colony - High & Medium Size"
	},

	10779	=> {
		typeID   => 10779,
		groupID  => 226,
		typeName => "Asteroid Colony - Small Tower"
	},

	10780	=> {
		typeID   => 10780,
		groupID  => 226,
		typeName => "Asteroid Colony - Small & Flat"
	},

	10781	=> {
		typeID   => 10781,
		groupID  => 226,
		typeName => "Asteroid Colony - Flat Hulk"
	},

	10782	=> {
		typeID   => 10782,
		groupID  => 226,
		typeName => "Giant Snake-Shaped Asteroid"
	},

	10783	=> {
		typeID   => 10783,
		groupID  => 226,
		typeName => "Small Rock"
	},

	10784	=> {
		typeID   => 10784,
		groupID  => 226,
		typeName => "Small and Sharded Rock"
	},

	10785	=> {
		typeID   => 10785,
		groupID  => 226,
		typeName => "Sharded Rock"
	},

	10786	=> {
		typeID   => 10786,
		groupID  => 226,
		typeName => "Tiny Rock"
	},

	10787	=> {
		typeID   => 10787,
		groupID  => 226,
		typeName => "Snake Shaped Asteroid"
	},

	10788	=> {
		typeID   => 10788,
		groupID  => 226,
		typeName => "Gas/Storage Silo"
	},

	10795	=> {
		typeID   => 10795,
		groupID  => 15,
		typeName => "Jovian Construct"
	},

	10809	=> {
		typeID   => 10809,
		groupID  => 312,
		typeName => "Thick White"
	},

	10810	=> {
		typeID   => 10810,
		groupID  => 312,
		typeName => "Bllue faint"
	},

	10811	=> {
		typeID   => 10811,
		groupID  => 312,
		typeName => "Blue quarter"
	},

	10812	=> {
		typeID   => 10812,
		groupID  => 312,
		typeName => "White sharp hemisphere"
	},

	10813	=> {
		typeID   => 10813,
		groupID  => 312,
		typeName => "Brown hemisphere"
	},

	10814	=> {
		typeID   => 10814,
		groupID  => 312,
		typeName => "Faint hemisphere"
	},

	10815	=> {
		typeID   => 10815,
		groupID  => 312,
		typeName => "White Crescent"
	},

	10816	=> {
		typeID   => 10816,
		groupID  => 312,
		typeName => "Brown crescent"
	},

	10817	=> {
		typeID   => 10817,
		groupID  => 312,
		typeName => "Brown quarter"
	},

	10818	=> {
		typeID   => 10818,
		groupID  => 312,
		typeName => "Quarter shard"
	},

	10819	=> {
		typeID   => 10819,
		groupID  => 312,
		typeName => "Bitter edge"
	},

	10820	=> {
		typeID   => 10820,
		groupID  => 312,
		typeName => "Thin claw"
	},

	10821	=> {
		typeID   => 10821,
		groupID  => 312,
		typeName => "White solid"
	},

	10822	=> {
		typeID   => 10822,
		groupID  => 312,
		typeName => "White solid 2"
	},

	10823	=> {
		typeID   => 10823,
		groupID  => 297,
		typeName => "Retailer"
	},

	10824	=> {
		typeID   => 10824,
		groupID  => 297,
		typeName => "Chafferer"
	},

	10825	=> {
		typeID   => 10825,
		groupID  => 297,
		typeName => "Trailer"
	},

	10826	=> {
		typeID   => 10826,
		groupID  => 297,
		typeName => "Hauler"
	},

	10827	=> {
		typeID   => 10827,
		groupID  => 297,
		typeName => "Trader"
	},

	10828	=> {
		typeID   => 10828,
		groupID  => 297,
		typeName => "Courier"
	},

	10829	=> {
		typeID   => 10829,
		groupID  => 297,
		typeName => "Purveyor"
	},

	10830	=> {
		typeID   => 10830,
		groupID  => 297,
		typeName => "Carrier"
	},

	10831	=> {
		typeID   => 10831,
		groupID  => 297,
		typeName => "Hawker"
	},

	10832	=> {
		typeID   => 10832,
		groupID  => 297,
		typeName => "Huckster"
	},

	10833	=> {
		typeID   => 10833,
		groupID  => 297,
		typeName => "Patronager"
	},

	10834	=> {
		typeID   => 10834,
		groupID  => 297,
		typeName => "Chandler"
	},

	10836	=> {
		typeID   => 10836,
		groupID  => 40,
		typeName => "Medium Shield Booster I"
	},

	10837	=> {
		typeID   => 10837,
		groupID  => 120,
		typeName => "Medium Shield Booster I Blueprint"
	},

	10838	=> {
		typeID   => 10838,
		groupID  => 40,
		typeName => "Large Shield Booster I"
	},

	10839	=> {
		typeID   => 10839,
		groupID  => 120,
		typeName => "Large Shield Booster I Blueprint"
	},

	10840	=> {
		typeID   => 10840,
		groupID  => 40,
		typeName => "X-Large Shield Booster I"
	},

	10841	=> {
		typeID   => 10841,
		groupID  => 120,
		typeName => "X-Large Shield Booster I Blueprint"
	},

	10842	=> {
		typeID   => 10842,
		groupID  => 40,
		typeName => "X-Large Shield Booster II"
	},

	10843	=> {
		typeID   => 10843,
		groupID  => 120,
		typeName => "X-Large Shield Booster II Blueprint"
	},

	10850	=> {
		typeID   => 10850,
		groupID  => 40,
		typeName => "Medium Shield Booster II"
	},

	10851	=> {
		typeID   => 10851,
		groupID  => 120,
		typeName => "Medium Shield Booster II Blueprint"
	},

	10858	=> {
		typeID   => 10858,
		groupID  => 40,
		typeName => "Large Shield Booster II"
	},

	10859	=> {
		typeID   => 10859,
		groupID  => 120,
		typeName => "Large Shield Booster II Blueprint"
	},

	10866	=> {
		typeID   => 10866,
		groupID  => 40,
		typeName => "Medium Neutron Saturation Injector I"
	},

	10868	=> {
		typeID   => 10868,
		groupID  => 40,
		typeName => "Medium Clarity Ward Booster I"
	},

	10870	=> {
		typeID   => 10870,
		groupID  => 40,
		typeName => "Medium Converse Deflection Catalyzer"
	},

	10872	=> {
		typeID   => 10872,
		groupID  => 40,
		typeName => "Medium C5-L Emergency Shield Overload I"
	},

	10874	=> {
		typeID   => 10874,
		groupID  => 40,
		typeName => "Large Neutron Saturation Injector I"
	},

	10876	=> {
		typeID   => 10876,
		groupID  => 40,
		typeName => "Large Clarity Ward Booster I"
	},

	10878	=> {
		typeID   => 10878,
		groupID  => 40,
		typeName => "Large Converse Deflection Catalyzer"
	},

	10880	=> {
		typeID   => 10880,
		groupID  => 40,
		typeName => "Large C5-L Emergency Shield Overload I"
	},

	10882	=> {
		typeID   => 10882,
		groupID  => 40,
		typeName => "X-Large Neutron Saturation Injector I"
	},

	10884	=> {
		typeID   => 10884,
		groupID  => 40,
		typeName => "X-Large Clarity Ward Booster I"
	},

	10886	=> {
		typeID   => 10886,
		groupID  => 40,
		typeName => "X-Large Converse Deflection Catalyzer"
	},

	10888	=> {
		typeID   => 10888,
		groupID  => 40,
		typeName => "X-Large C5-L Emergency Shield Overload I"
	},

	10986	=> {
		typeID   => 10986,
		groupID  => 806,
		typeName => "Moth Apis"
	},

	10987	=> {
		typeID   => 10987,
		groupID  => 806,
		typeName => "Dragonfly Apis"
	},

	10988	=> {
		typeID   => 10988,
		groupID  => 806,
		typeName => "Termite Apis"
	},

	10989	=> {
		typeID   => 10989,
		groupID  => 806,
		typeName => "Scorpionfly Apis"
	},

	10990	=> {
		typeID   => 10990,
		groupID  => 806,
		typeName => "Arachula Apis"
	},

	10991	=> {
		typeID   => 10991,
		groupID  => 806,
		typeName => "Tarantula Apis"
	},

	10992	=> {
		typeID   => 10992,
		groupID  => 806,
		typeName => "Beelzebub Apis"
	},

	10993	=> {
		typeID   => 10993,
		groupID  => 806,
		typeName => "Mammon Apis"
	},

	10994	=> {
		typeID   => 10994,
		groupID  => 806,
		typeName => "Asmodeus Apis"
	},

	10995	=> {
		typeID   => 10995,
		groupID  => 806,
		typeName => "Belphegor Apis"
	},

	10998	=> {
		typeID   => 10998,
		groupID  => 315,
		typeName => "Warp Core Stabilizer I"
	},

	10999	=> {
		typeID   => 10999,
		groupID  => 298,
		typeName => "Convoy Escort"
	},

	11000	=> {
		typeID   => 11000,
		groupID  => 298,
		typeName => "Convoy Protector"
	},

	11001	=> {
		typeID   => 11001,
		groupID  => 298,
		typeName => "Convoy Guard"
	},

	11002	=> {
		typeID   => 11002,
		groupID  => 298,
		typeName => "Convoy Sentry"
	},

	11011	=> {
		typeID   => 11011,
		groupID  => 26,
		typeName => "Guardian-Vexor"
	},

	11012	=> {
		typeID   => 11012,
		groupID  => 106,
		typeName => "Guardian-Vexor Blueprint"
	},

	11013	=> {
		typeID   => 11013,
		groupID  => 314,
		typeName => "Drug Contact List"
	},

	11014	=> {
		typeID   => 11014,
		groupID  => 316,
		typeName => "Command Processor I"
	},

	11015	=> {
		typeID   => 11015,
		groupID  => 274,
		typeName => "Test"
	},

	11017	=> {
		typeID   => 11017,
		groupID  => 316,
		typeName => "Skirmish Warfare Link - Interdiction Maneuvers I"
	},

	11019	=> {
		typeID   => 11019,
		groupID  => 25,
		typeName => "Cockroach"
	},

	11021	=> {
		typeID   => 11021,
		groupID  => 550,
		typeName => "Angel Thug"
	},

	11022	=> {
		typeID   => 11022,
		groupID  => 550,
		typeName => "Angel Ruffian"
	},

	11023	=> {
		typeID   => 11023,
		groupID  => 550,
		typeName => "Angel Ambusher"
	},

	11024	=> {
		typeID   => 11024,
		groupID  => 550,
		typeName => "Angel Impaler"
	},

	11025	=> {
		typeID   => 11025,
		groupID  => 551,
		typeName => "Angel Predator"
	},

	11026	=> {
		typeID   => 11026,
		groupID  => 551,
		typeName => "Angel Crusher"
	},

	11027	=> {
		typeID   => 11027,
		groupID  => 562,
		typeName => "Guristas Infiltrator"
	},

	11028	=> {
		typeID   => 11028,
		groupID  => 562,
		typeName => "Guristas Saboteur"
	},

	11029	=> {
		typeID   => 11029,
		groupID  => 562,
		typeName => "Guristas Destructor"
	},

	11030	=> {
		typeID   => 11030,
		groupID  => 562,
		typeName => "Guristas Demolisher"
	},

	11031	=> {
		typeID   => 11031,
		groupID  => 561,
		typeName => "Guristas Murderer"
	},

	11032	=> {
		typeID   => 11032,
		groupID  => 567,
		typeName => "Sansha's Ravener"
	},

	11033	=> {
		typeID   => 11033,
		groupID  => 567,
		typeName => "Sansha's Enslaver"
	},

	11034	=> {
		typeID   => 11034,
		groupID  => 567,
		typeName => "Sansha's Slavehunter"
	},

	11035	=> {
		typeID   => 11035,
		groupID  => 567,
		typeName => "Sansha's Butcher"
	},

	11036	=> {
		typeID   => 11036,
		groupID  => 561,
		typeName => "Guristas Killer"
	},

	11037	=> {
		typeID   => 11037,
		groupID  => 566,
		typeName => "Sansha's Beast"
	},

	11038	=> {
		typeID   => 11038,
		groupID  => 566,
		typeName => "Sansha's Juggernaut"
	},

	11039	=> {
		typeID   => 11039,
		groupID  => 557,
		typeName => "Blood Worshipper"
	},

	11040	=> {
		typeID   => 11040,
		groupID  => 557,
		typeName => "Blood Raider"
	},

	11041	=> {
		typeID   => 11041,
		groupID  => 557,
		typeName => "Blood Diviner"
	},

	11042	=> {
		typeID   => 11042,
		groupID  => 557,
		typeName => "Blood Engraver"
	},

	11043	=> {
		typeID   => 11043,
		groupID  => 555,
		typeName => "Blood Arch Templar"
	},

	11044	=> {
		typeID   => 11044,
		groupID  => 555,
		typeName => "Blood Revenant"
	},

	11045	=> {
		typeID   => 11045,
		groupID  => 572,
		typeName => "Serpentis Agent"
	},

	11046	=> {
		typeID   => 11046,
		groupID  => 572,
		typeName => "Serpentis Patroller"
	},

	11047	=> {
		typeID   => 11047,
		groupID  => 572,
		typeName => "Serpentis Safeguard"
	},

	11048	=> {
		typeID   => 11048,
		groupID  => 572,
		typeName => "Serpentis Protector"
	},

	11049	=> {
		typeID   => 11049,
		groupID  => 571,
		typeName => "Serpentis Chief Scout"
	},

	11050	=> {
		typeID   => 11050,
		groupID  => 571,
		typeName => "Serpentis Chief Watchman"
	},

	11052	=> {
		typeID   => 11052,
		groupID  => 316,
		typeName => "Information Warfare Link - Sensor Integrity I"
	},

	11066	=> {
		typeID   => 11066,
		groupID  => 314,
		typeName => "Trinary Data"
	},

	11067	=> {
		typeID   => 11067,
		groupID  => 314,
		typeName => "Nugoeihuvi Data Chip"
	},

	11068	=> {
		typeID   => 11068,
		groupID  => 314,
		typeName => "Special Delivery"
	},

	11069	=> {
		typeID   => 11069,
		groupID  => 314,
		typeName => "Criminal Dog Tag"
	},

	11070	=> {
		typeID   => 11070,
		groupID  => 314,
		typeName => "Religious Artifact"
	},

	11071	=> {
		typeID   => 11071,
		groupID  => 314,
		typeName => "Battery Cartridge"
	},

	11072	=> {
		typeID   => 11072,
		groupID  => 306,
		typeName => "Data Storage"
	},

	11074	=> {
		typeID   => 11074,
		groupID  => 724,
		typeName => "Talisman Alpha Blueprint"
	},

	11075	=> {
		typeID   => 11075,
		groupID  => 257,
		typeName => "Jove Industrial"
	},

	11076	=> {
		typeID   => 11076,
		groupID  => 319,
		typeName => "Serpentis Stronghold"
	},

	11077	=> {
		typeID   => 11077,
		groupID  => 319,
		typeName => "Angel Battlestation"
	},

	11078	=> {
		typeID   => 11078,
		groupID  => 257,
		typeName => "Jove Battleship"
	},

	11079	=> {
		typeID   => 11079,
		groupID  => 319,
		typeName => "Guristas War Installation"
	},

	11080	=> {
		typeID   => 11080,
		groupID  => 319,
		typeName => "Sansha's Battletower"
	},

	11081	=> {
		typeID   => 11081,
		groupID  => 319,
		typeName => "Blood Raider Battlestation"
	},

	11082	=> {
		typeID   => 11082,
		groupID  => 255,
		typeName => "Small Railgun Specialization"
	},

	11083	=> {
		typeID   => 11083,
		groupID  => 255,
		typeName => "Small Beam Laser Specialization"
	},

	11084	=> {
		typeID   => 11084,
		groupID  => 255,
		typeName => "Small Autocannon Specialization"
	},

	11101	=> {
		typeID   => 11101,
		groupID  => 302,
		typeName => "Linear Flux Stabilizer I"
	},

	11103	=> {
		typeID   => 11103,
		groupID  => 302,
		typeName => "Insulated Stabilizer Array I"
	},

	11105	=> {
		typeID   => 11105,
		groupID  => 302,
		typeName => "Vortex Compact Magnetic Field Stabilizer"
	},

	11107	=> {
		typeID   => 11107,
		groupID  => 302,
		typeName => "Gauss Field Balancer I"
	},

	11109	=> {
		typeID   => 11109,
		groupID  => 302,
		typeName => "Linear Flux Stabilizer"
	},

	11111	=> {
		typeID   => 11111,
		groupID  => 302,
		typeName => "Insulated Stabilizer Array"
	},

	11113	=> {
		typeID   => 11113,
		groupID  => 302,
		typeName => "Magnetic Vortex Stabilizer"
	},

	11115	=> {
		typeID   => 11115,
		groupID  => 302,
		typeName => "Gauss Field Balancer"
	},

	11125	=> {
		typeID   => 11125,
		groupID  => 301,
		typeName => "CONCORD Police Commander"
	},

	11126	=> {
		typeID   => 11126,
		groupID  => 182,
		typeName => "CONCORD SWAT Commander"
	},

	11127	=> {
		typeID   => 11127,
		groupID  => 288,
		typeName => "DED Army Commander"
	},

	11128	=> {
		typeID   => 11128,
		groupID  => 301,
		typeName => "DED Special Operation Commander"
	},

	11129	=> {
		typeID   => 11129,
		groupID  => 31,
		typeName => "Gallente Shuttle"
	},

	11130	=> {
		typeID   => 11130,
		groupID  => 111,
		typeName => "Gallente Shuttle Blueprint"
	},

	11132	=> {
		typeID   => 11132,
		groupID  => 31,
		typeName => "Minmatar Shuttle"
	},

	11133	=> {
		typeID   => 11133,
		groupID  => 111,
		typeName => "Minmatar Shuttle Blueprint"
	},

	11134	=> {
		typeID   => 11134,
		groupID  => 31,
		typeName => "Amarr Shuttle"
	},

	11135	=> {
		typeID   => 11135,
		groupID  => 111,
		typeName => "Amarr Shuttle Blueprint"
	},

	11136	=> {
		typeID   => 11136,
		groupID  => 323,
		typeName => "Concord Billboard"
	},

	11137	=> {
		typeID   => 11137,
		groupID  => 288,
		typeName => "Imperial Navy Fleet Marshall"
	},

	11138	=> {
		typeID   => 11138,
		groupID  => 288,
		typeName => "Caldari Navy Fleet Admiral"
	},

	11139	=> {
		typeID   => 11139,
		groupID  => 288,
		typeName => "Federation Navy Fleet General"
	},

	11140	=> {
		typeID   => 11140,
		groupID  => 288,
		typeName => "Republic Fleet High Commander"
	},

	11167	=> {
		typeID   => 11167,
		groupID  => 319,
		typeName => "Fragmented Cathedral I"
	},

	11168	=> {
		typeID   => 11168,
		groupID  => 319,
		typeName => "Fragmented Cathedral II"
	},

	11169	=> {
		typeID   => 11169,
		groupID  => 319,
		typeName => "Fragmented Cathedral III"
	},

	11170	=> {
		typeID   => 11170,
		groupID  => 319,
		typeName => "Fragmented Cathedral IV"
	},

	11171	=> {
		typeID   => 11171,
		groupID  => 319,
		typeName => "Fragmented Cathedral V"
	},

	11172	=> {
		typeID   => 11172,
		groupID  => 830,
		typeName => "Helios"
	},

	11173	=> {
		typeID   => 11173,
		groupID  => 105,
		typeName => "Helios Blueprint"
	},

	11174	=> {
		typeID   => 11174,
		groupID  => 893,
		typeName => "Keres"
	},

	11175	=> {
		typeID   => 11175,
		groupID  => 105,
		typeName => "Keres Blueprint"
	},

	11176	=> {
		typeID   => 11176,
		groupID  => 831,
		typeName => "Crow"
	},

	11177	=> {
		typeID   => 11177,
		groupID  => 105,
		typeName => "Crow Blueprint"
	},

	11178	=> {
		typeID   => 11178,
		groupID  => 831,
		typeName => "Raptor"
	},

	11179	=> {
		typeID   => 11179,
		groupID  => 105,
		typeName => "Raptor Blueprint"
	},

	11182	=> {
		typeID   => 11182,
		groupID  => 830,
		typeName => "Cheetah"
	},

	11183	=> {
		typeID   => 11183,
		groupID  => 105,
		typeName => "Cheetah Blueprint"
	},

	11184	=> {
		typeID   => 11184,
		groupID  => 831,
		typeName => "Crusader"
	},

	11185	=> {
		typeID   => 11185,
		groupID  => 105,
		typeName => "Crusader Blueprint"
	},

	11186	=> {
		typeID   => 11186,
		groupID  => 831,
		typeName => "Malediction"
	},

	11187	=> {
		typeID   => 11187,
		groupID  => 105,
		typeName => "Malediction Blueprint"
	},

	11188	=> {
		typeID   => 11188,
		groupID  => 830,
		typeName => "Anathema"
	},

	11189	=> {
		typeID   => 11189,
		groupID  => 105,
		typeName => "Anathema Blueprint"
	},

	11190	=> {
		typeID   => 11190,
		groupID  => 893,
		typeName => "Sentinel"
	},

	11191	=> {
		typeID   => 11191,
		groupID  => 105,
		typeName => "Sentinel Blueprint"
	},

	11192	=> {
		typeID   => 11192,
		groupID  => 830,
		typeName => "Buzzard"
	},

	11193	=> {
		typeID   => 11193,
		groupID  => 105,
		typeName => "Buzzard Blueprint"
	},

	11194	=> {
		typeID   => 11194,
		groupID  => 893,
		typeName => "Kitsune"
	},

	11195	=> {
		typeID   => 11195,
		groupID  => 105,
		typeName => "Kitsune Blueprint"
	},

	11196	=> {
		typeID   => 11196,
		groupID  => 831,
		typeName => "Claw"
	},

	11197	=> {
		typeID   => 11197,
		groupID  => 105,
		typeName => "Claw Blueprint"
	},

	11198	=> {
		typeID   => 11198,
		groupID  => 831,
		typeName => "Stiletto"
	},

	11199	=> {
		typeID   => 11199,
		groupID  => 105,
		typeName => "Stiletto Blueprint"
	},

	11200	=> {
		typeID   => 11200,
		groupID  => 831,
		typeName => "Taranis"
	},

	11201	=> {
		typeID   => 11201,
		groupID  => 105,
		typeName => "Taranis Blueprint"
	},

	11202	=> {
		typeID   => 11202,
		groupID  => 831,
		typeName => "Ares"
	},

	11203	=> {
		typeID   => 11203,
		groupID  => 105,
		typeName => "Ares Blueprint"
	},

	11204	=> {
		typeID   => 11204,
		groupID  => 1216,
		typeName => "Advanced Energy Grid Upgrades"
	},

	11206	=> {
		typeID   => 11206,
		groupID  => 1209,
		typeName => "Advanced Shield Upgrades"
	},

	11207	=> {
		typeID   => 11207,
		groupID  => 1216,
		typeName => "Advanced Weapon Upgrades"
	},

	11208	=> {
		typeID   => 11208,
		groupID  => 272,
		typeName => "Advanced Sensor Upgrades"
	},

	11209	=> {
		typeID   => 11209,
		groupID  => 226,
		typeName => "Barren Asteroid"
	},

	11210	=> {
		typeID   => 11210,
		groupID  => 226,
		typeName => "Sheared Rock Formation"
	},

	11215	=> {
		typeID   => 11215,
		groupID  => 326,
		typeName => "Basic Energized EM Membrane"
	},

	11216	=> {
		typeID   => 11216,
		groupID  => 163,
		typeName => "Basic Energized EM Membrane Blueprint"
	},

	11217	=> {
		typeID   => 11217,
		groupID  => 326,
		typeName => "Energized EM Membrane I"
	},

	11218	=> {
		typeID   => 11218,
		groupID  => 163,
		typeName => "Energized EM Membrane I Blueprint"
	},

	11219	=> {
		typeID   => 11219,
		groupID  => 326,
		typeName => "Energized EM Membrane II"
	},

	11220	=> {
		typeID   => 11220,
		groupID  => 163,
		typeName => "Energized EM Membrane II Blueprint"
	},

	11225	=> {
		typeID   => 11225,
		groupID  => 326,
		typeName => "Basic Energized Explosive Membrane"
	},

	11226	=> {
		typeID   => 11226,
		groupID  => 163,
		typeName => "Basic Energized Explosive Membrane Blueprint"
	},

	11227	=> {
		typeID   => 11227,
		groupID  => 326,
		typeName => "Energized Explosive Membrane I"
	},

	11228	=> {
		typeID   => 11228,
		groupID  => 163,
		typeName => "Energized Explosive Membrane I Blueprint"
	},

	11229	=> {
		typeID   => 11229,
		groupID  => 326,
		typeName => "Energized Explosive Membrane II"
	},

	11230	=> {
		typeID   => 11230,
		groupID  => 163,
		typeName => "Energized Explosive Membrane II Blueprint"
	},

	11235	=> {
		typeID   => 11235,
		groupID  => 326,
		typeName => "Basic Energized Armor Layering Membrane"
	},

	11236	=> {
		typeID   => 11236,
		groupID  => 163,
		typeName => "Basic Energized Armor Layering Membrane Blueprint"
	},

	11237	=> {
		typeID   => 11237,
		groupID  => 326,
		typeName => "Energized Armor Layering Membrane I"
	},

	11238	=> {
		typeID   => 11238,
		groupID  => 163,
		typeName => "Energized Armor Layering Membrane I Blueprint"
	},

	11239	=> {
		typeID   => 11239,
		groupID  => 326,
		typeName => "Energized Armor Layering Membrane II"
	},

	11240	=> {
		typeID   => 11240,
		groupID  => 163,
		typeName => "Energized Armor Layering Membrane II Blueprint"
	},

	11245	=> {
		typeID   => 11245,
		groupID  => 326,
		typeName => "Basic Energized Kinetic Membrane"
	},

	11246	=> {
		typeID   => 11246,
		groupID  => 163,
		typeName => "Basic Energized Kinetic Membrane Blueprint"
	},

	11247	=> {
		typeID   => 11247,
		groupID  => 326,
		typeName => "Energized Kinetic Membrane I"
	},

	11248	=> {
		typeID   => 11248,
		groupID  => 163,
		typeName => "Energized Kinetic Membrane I Blueprint"
	},

	11249	=> {
		typeID   => 11249,
		groupID  => 326,
		typeName => "Energized Kinetic Membrane II"
	},

	11250	=> {
		typeID   => 11250,
		groupID  => 163,
		typeName => "Energized Kinetic Membrane II Blueprint"
	},

	11255	=> {
		typeID   => 11255,
		groupID  => 326,
		typeName => "Basic Energized Thermal Membrane"
	},

	11256	=> {
		typeID   => 11256,
		groupID  => 163,
		typeName => "Basic Energized Thermal Membrane Blueprint"
	},

	11257	=> {
		typeID   => 11257,
		groupID  => 326,
		typeName => "Energized Thermal Membrane I"
	},

	11258	=> {
		typeID   => 11258,
		groupID  => 163,
		typeName => "Energized Thermal Membrane I Blueprint"
	},

	11259	=> {
		typeID   => 11259,
		groupID  => 326,
		typeName => "Energized Thermal Membrane II"
	},

	11260	=> {
		typeID   => 11260,
		groupID  => 163,
		typeName => "Energized Thermal Membrane II Blueprint"
	},

	11265	=> {
		typeID   => 11265,
		groupID  => 326,
		typeName => "Basic Energized Adaptive Nano Membrane"
	},

	11266	=> {
		typeID   => 11266,
		groupID  => 163,
		typeName => "Basic Energized Adaptive Nano Membrane Blueprint"
	},

	11267	=> {
		typeID   => 11267,
		groupID  => 326,
		typeName => "Energized Adaptive Nano Membrane I"
	},

	11268	=> {
		typeID   => 11268,
		groupID  => 163,
		typeName => "Energized Adaptive Nano Membrane I Blueprint"
	},

	11269	=> {
		typeID   => 11269,
		groupID  => 326,
		typeName => "Energized Adaptive Nano Membrane II"
	},

	11270	=> {
		typeID   => 11270,
		groupID  => 163,
		typeName => "Energized Adaptive Nano Membrane II Blueprint"
	},

	11277	=> {
		typeID   => 11277,
		groupID  => 328,
		typeName => "Armor Thermal Hardener I"
	},

	11278	=> {
		typeID   => 11278,
		groupID  => 348,
		typeName => "Armor Thermal Hardener I Blueprint"
	},

	11279	=> {
		typeID   => 11279,
		groupID  => 329,
		typeName => "1600mm Steel Plates I"
	},

	11280	=> {
		typeID   => 11280,
		groupID  => 349,
		typeName => "1600mm Steel Plates I Blueprint"
	},

	11283	=> {
		typeID   => 11283,
		groupID  => 87,
		typeName => "Cap Booster 150"
	},

	11284	=> {
		typeID   => 11284,
		groupID  => 169,
		typeName => "Cap Booster 150 Blueprint"
	},

	11285	=> {
		typeID   => 11285,
		groupID  => 87,
		typeName => "Cap Booster 200"
	},

	11286	=> {
		typeID   => 11286,
		groupID  => 169,
		typeName => "Cap Booster 200 Blueprint"
	},

	11287	=> {
		typeID   => 11287,
		groupID  => 87,
		typeName => "Cap Booster 400"
	},

	11288	=> {
		typeID   => 11288,
		groupID  => 169,
		typeName => "Cap Booster 400 Blueprint"
	},

	11289	=> {
		typeID   => 11289,
		groupID  => 87,
		typeName => "Cap Booster 800"
	},

	11290	=> {
		typeID   => 11290,
		groupID  => 169,
		typeName => "Cap Booster 800 Blueprint"
	},

	11291	=> {
		typeID   => 11291,
		groupID  => 329,
		typeName => "50mm Steel Plates I"
	},

	11292	=> {
		typeID   => 11292,
		groupID  => 349,
		typeName => "50mm Steel Plates I Blueprint"
	},

	11293	=> {
		typeID   => 11293,
		groupID  => 329,
		typeName => "100mm Steel Plates I"
	},

	11294	=> {
		typeID   => 11294,
		groupID  => 349,
		typeName => "100mm Steel Plates I Blueprint"
	},

	11295	=> {
		typeID   => 11295,
		groupID  => 329,
		typeName => "200mm Steel Plates I"
	},

	11296	=> {
		typeID   => 11296,
		groupID  => 349,
		typeName => "200mm Steel Plates I Blueprint"
	},

	11297	=> {
		typeID   => 11297,
		groupID  => 329,
		typeName => "400mm Steel Plates I"
	},

	11298	=> {
		typeID   => 11298,
		groupID  => 349,
		typeName => "400mm Steel Plates I Blueprint"
	},

	11299	=> {
		typeID   => 11299,
		groupID  => 329,
		typeName => "800mm Steel Plates I"
	},

	11300	=> {
		typeID   => 11300,
		groupID  => 349,
		typeName => "800mm Steel Plates I Blueprint"
	},

	11301	=> {
		typeID   => 11301,
		groupID  => 328,
		typeName => "Armor EM Hardener I"
	},

	11302	=> {
		typeID   => 11302,
		groupID  => 348,
		typeName => "Armor EM Hardener I Blueprint"
	},

	11303	=> {
		typeID   => 11303,
		groupID  => 328,
		typeName => "Armor Explosive Hardener I"
	},

	11304	=> {
		typeID   => 11304,
		groupID  => 348,
		typeName => "Armor Explosive Hardener I Blueprint"
	},

	11305	=> {
		typeID   => 11305,
		groupID  => 328,
		typeName => "Armor Kinetic Hardener I"
	},

	11306	=> {
		typeID   => 11306,
		groupID  => 348,
		typeName => "Armor Kinetic Hardener I Blueprint"
	},

	11307	=> {
		typeID   => 11307,
		groupID  => 329,
		typeName => "400mm Reinforced Titanium Plates I"
	},

	11309	=> {
		typeID   => 11309,
		groupID  => 329,
		typeName => "400mm Rolled Tungsten Compact Plates"
	},

	11311	=> {
		typeID   => 11311,
		groupID  => 329,
		typeName => "400mm Crystalline Carbonide Restrained Plates"
	},

	11313	=> {
		typeID   => 11313,
		groupID  => 329,
		typeName => "400mm Reinforced Nanofiber Plates I"
	},

	11315	=> {
		typeID   => 11315,
		groupID  => 329,
		typeName => "800mm Reinforced Titanium Plates I"
	},

	11317	=> {
		typeID   => 11317,
		groupID  => 329,
		typeName => "800mm Rolled Tungsten Compact Plates"
	},

	11319	=> {
		typeID   => 11319,
		groupID  => 329,
		typeName => "800mm Crystalline Carbonide Restrained Plates"
	},

	11321	=> {
		typeID   => 11321,
		groupID  => 329,
		typeName => "800mm Reinforced Nanofiber Plates I"
	},

	11323	=> {
		typeID   => 11323,
		groupID  => 329,
		typeName => "1600mm Reinforced Titanium Plates I"
	},

	11325	=> {
		typeID   => 11325,
		groupID  => 329,
		typeName => "1600mm Rolled Tungsten Compact Plates"
	},

	11327	=> {
		typeID   => 11327,
		groupID  => 329,
		typeName => "1600mm Crystalline Carbonide Restrained Plates"
	},

	11329	=> {
		typeID   => 11329,
		groupID  => 329,
		typeName => "1600mm Reinforced Nanofiber Plates I"
	},

	11331	=> {
		typeID   => 11331,
		groupID  => 329,
		typeName => "50mm Reinforced Titanium Plates I"
	},

	11333	=> {
		typeID   => 11333,
		groupID  => 329,
		typeName => "50mm Reinforced Rolled Tungsten Plates I"
	},

	11335	=> {
		typeID   => 11335,
		groupID  => 329,
		typeName => "50mm Reinforced Crystalline Carbonide Plates I"
	},

	11337	=> {
		typeID   => 11337,
		groupID  => 329,
		typeName => "50mm Reinforced Nanofiber Plates I"
	},

	11339	=> {
		typeID   => 11339,
		groupID  => 329,
		typeName => "100mm Reinforced Titanium Plates I"
	},

	11341	=> {
		typeID   => 11341,
		groupID  => 329,
		typeName => "100mm Rolled Tungsten Compact Plates"
	},

	11343	=> {
		typeID   => 11343,
		groupID  => 329,
		typeName => "100mm Crystalline Carbonide Restrained Plates"
	},

	11345	=> {
		typeID   => 11345,
		groupID  => 329,
		typeName => "100mm Reinforced Nanofiber Plates I"
	},

	11347	=> {
		typeID   => 11347,
		groupID  => 329,
		typeName => "200mm Reinforced Titanium Plates I"
	},

	11349	=> {
		typeID   => 11349,
		groupID  => 329,
		typeName => "200mm Rolled Tungsten Compact Plates"
	},

	11351	=> {
		typeID   => 11351,
		groupID  => 329,
		typeName => "200mm Crystalline Carbonide Restrained Plates"
	},

	11353	=> {
		typeID   => 11353,
		groupID  => 329,
		typeName => "200mm Reinforced Nanofiber Plates I"
	},

	11355	=> {
		typeID   => 11355,
		groupID  => 325,
		typeName => "Small Remote Armor Repairer I"
	},

	11356	=> {
		typeID   => 11356,
		groupID  => 350,
		typeName => "Small Remote Armor Repairer I Blueprint"
	},

	11357	=> {
		typeID   => 11357,
		groupID  => 325,
		typeName => "Medium Remote Armor Repairer I"
	},

	11358	=> {
		typeID   => 11358,
		groupID  => 350,
		typeName => "Medium Remote Armor Repairer I Blueprint"
	},

	11359	=> {
		typeID   => 11359,
		groupID  => 325,
		typeName => "Large Remote Armor Repairer I"
	},

	11360	=> {
		typeID   => 11360,
		groupID  => 350,
		typeName => "Large Remote Armor Repairer I Blueprint"
	},

	11365	=> {
		typeID   => 11365,
		groupID  => 324,
		typeName => "Vengeance"
	},

	11366	=> {
		typeID   => 11366,
		groupID  => 105,
		typeName => "Vengeance Blueprint"
	},

	11367	=> {
		typeID   => 11367,
		groupID  => 318,
		typeName => "map Landmark"
	},

	11369	=> {
		typeID   => 11369,
		groupID  => 226,
		typeName => "Particle Acceleration Superstructure"
	},

	11370	=> {
		typeID   => 11370,
		groupID  => 330,
		typeName => "Prototype Cloaking Device I"
	},

	11371	=> {
		typeID   => 11371,
		groupID  => 324,
		typeName => "Wolf"
	},

	11372	=> {
		typeID   => 11372,
		groupID  => 105,
		typeName => "Wolf Blueprint"
	},

	11373	=> {
		typeID   => 11373,
		groupID  => 324,
		typeName => "Blade"
	},

	11374	=> {
		typeID   => 11374,
		groupID  => 105,
		typeName => "Blade Blueprint"
	},

	11375	=> {
		typeID   => 11375,
		groupID  => 324,
		typeName => "Erinye"
	},

	11376	=> {
		typeID   => 11376,
		groupID  => 105,
		typeName => "Erinye Blueprint"
	},

	11377	=> {
		typeID   => 11377,
		groupID  => 834,
		typeName => "Nemesis"
	},

	11378	=> {
		typeID   => 11378,
		groupID  => 105,
		typeName => "Nemesis Blueprint"
	},

	11379	=> {
		typeID   => 11379,
		groupID  => 324,
		typeName => "Hawk"
	},

	11380	=> {
		typeID   => 11380,
		groupID  => 105,
		typeName => "Hawk Blueprint"
	},

	11381	=> {
		typeID   => 11381,
		groupID  => 324,
		typeName => "Harpy"
	},

	11382	=> {
		typeID   => 11382,
		groupID  => 105,
		typeName => "Harpy Blueprint"
	},

	11383	=> {
		typeID   => 11383,
		groupID  => 324,
		typeName => "Gatherer"
	},

	11384	=> {
		typeID   => 11384,
		groupID  => 105,
		typeName => "Gatherer Blueprint"
	},

	11387	=> {
		typeID   => 11387,
		groupID  => 893,
		typeName => "Hyena"
	},

	11388	=> {
		typeID   => 11388,
		groupID  => 105,
		typeName => "Hyena Blueprint"
	},

	11389	=> {
		typeID   => 11389,
		groupID  => 324,
		typeName => "Kishar"
	},

	11390	=> {
		typeID   => 11390,
		groupID  => 105,
		typeName => "Kishar Blueprint"
	},

	11393	=> {
		typeID   => 11393,
		groupID  => 324,
		typeName => "Retribution"
	},

	11394	=> {
		typeID   => 11394,
		groupID  => 105,
		typeName => "Retribution Blueprint"
	},

	11395	=> {
		typeID   => 11395,
		groupID  => 1218,
		typeName => "Deep Core Mining"
	},

	11396	=> {
		typeID   => 11396,
		groupID  => 468,
		typeName => "Mercoxit"
	},

	11399	=> {
		typeID   => 11399,
		groupID  => 18,
		typeName => "Morphite"
	},

	11400	=> {
		typeID   => 11400,
		groupID  => 324,
		typeName => "Jaguar"
	},

	11401	=> {
		typeID   => 11401,
		groupID  => 105,
		typeName => "Jaguar Blueprint"
	},

	11433	=> {
		typeID   => 11433,
		groupID  => 270,
		typeName => "High Energy Physics"
	},

	11441	=> {
		typeID   => 11441,
		groupID  => 270,
		typeName => "Plasma Physics"
	},

	11442	=> {
		typeID   => 11442,
		groupID  => 270,
		typeName => "Nanite Engineering"
	},

	11443	=> {
		typeID   => 11443,
		groupID  => 270,
		typeName => "Hydromagnetic Physics"
	},

	11444	=> {
		typeID   => 11444,
		groupID  => 270,
		typeName => "Amarr Starship Engineering"
	},

	11445	=> {
		typeID   => 11445,
		groupID  => 270,
		typeName => "Minmatar Starship Engineering"
	},

	11446	=> {
		typeID   => 11446,
		groupID  => 270,
		typeName => "Graviton Physics"
	},

	11447	=> {
		typeID   => 11447,
		groupID  => 270,
		typeName => "Laser Physics"
	},

	11448	=> {
		typeID   => 11448,
		groupID  => 270,
		typeName => "Electromagnetic Physics"
	},

	11449	=> {
		typeID   => 11449,
		groupID  => 270,
		typeName => "Rocket Science"
	},

	11450	=> {
		typeID   => 11450,
		groupID  => 270,
		typeName => "Gallente Starship Engineering"
	},

	11451	=> {
		typeID   => 11451,
		groupID  => 270,
		typeName => "Nuclear Physics"
	},

	11452	=> {
		typeID   => 11452,
		groupID  => 270,
		typeName => "Mechanical Engineering"
	},

	11453	=> {
		typeID   => 11453,
		groupID  => 270,
		typeName => "Electronic Engineering"
	},

	11454	=> {
		typeID   => 11454,
		groupID  => 270,
		typeName => "Caldari Starship Engineering"
	},

	11455	=> {
		typeID   => 11455,
		groupID  => 270,
		typeName => "Quantum Physics"
	},

	11457	=> {
		typeID   => 11457,
		groupID  => 332,
		typeName => "R.Db - Viziam"
	},

	11458	=> {
		typeID   => 11458,
		groupID  => 332,
		typeName => "R.Db - Khanid Innovation"
	},

	11459	=> {
		typeID   => 11459,
		groupID  => 332,
		typeName => "R.Db - Carthum Conglomerate"
	},

	11460	=> {
		typeID   => 11460,
		groupID  => 332,
		typeName => "R.Db - Thukker Mix"
	},

	11461	=> {
		typeID   => 11461,
		groupID  => 332,
		typeName => "R.Db - Boundless Creations"
	},

	11462	=> {
		typeID   => 11462,
		groupID  => 332,
		typeName => "R.Db - Core Complexion"
	},

	11463	=> {
		typeID   => 11463,
		groupID  => 332,
		typeName => "R.Db - Ishukone"
	},

	11464	=> {
		typeID   => 11464,
		groupID  => 332,
		typeName => "R.Db - Kaalakiota"
	},

	11465	=> {
		typeID   => 11465,
		groupID  => 332,
		typeName => "R.Db - Roden Shipyards"
	},

	11466	=> {
		typeID   => 11466,
		groupID  => 332,
		typeName => "R.Db - CreoDron"
	},

	11467	=> {
		typeID   => 11467,
		groupID  => 332,
		typeName => "R.Db - Duvolle Labs"
	},

	11468	=> {
		typeID   => 11468,
		groupID  => 332,
		typeName => "Hacker Deck - Codex"
	},

	11469	=> {
		typeID   => 11469,
		groupID  => 332,
		typeName => "Hacker Deck - Shaman"
	},

	11470	=> {
		typeID   => 11470,
		groupID  => 332,
		typeName => "Hacker Deck - Hermes"
	},

	11471	=> {
		typeID   => 11471,
		groupID  => 332,
		typeName => "Hacker Deck - LXD-27"
	},

	11472	=> {
		typeID   => 11472,
		groupID  => 332,
		typeName => "Hyper Net Uplink"
	},

	11473	=> {
		typeID   => 11473,
		groupID  => 332,
		typeName => "Terran Molecular Sequencer"
	},

	11474	=> {
		typeID   => 11474,
		groupID  => 332,
		typeName => "R.A.M.- Industrial Tech"
	},

	11475	=> {
		typeID   => 11475,
		groupID  => 332,
		typeName => "R.A.M.- Armor/Hull Tech"
	},

	11476	=> {
		typeID   => 11476,
		groupID  => 332,
		typeName => "R.A.M.- Ammunition Tech"
	},

	11477	=> {
		typeID   => 11477,
		groupID  => 332,
		typeName => "R.A.M.- Platform Tech"
	},

	11478	=> {
		typeID   => 11478,
		groupID  => 332,
		typeName => "R.A.M.- Starship Tech"
	},

	11479	=> {
		typeID   => 11479,
		groupID  => 332,
		typeName => "R.A.M.- Cruiser Tech"
	},

	11480	=> {
		typeID   => 11480,
		groupID  => 332,
		typeName => "R.A.M.- Battleship Tech"
	},

	11481	=> {
		typeID   => 11481,
		groupID  => 332,
		typeName => "R.A.M.- Robotics"
	},

	11482	=> {
		typeID   => 11482,
		groupID  => 332,
		typeName => "R.A.M.- Energy Tech"
	},

	11483	=> {
		typeID   => 11483,
		groupID  => 332,
		typeName => "R.A.M.- Electronics"
	},

	11484	=> {
		typeID   => 11484,
		groupID  => 332,
		typeName => "R.A.M.- Shield Tech"
	},

	11485	=> {
		typeID   => 11485,
		groupID  => 332,
		typeName => "R.A.M.- Cybernetics"
	},

	11486	=> {
		typeID   => 11486,
		groupID  => 332,
		typeName => "R.A.M.- Weapon Tech"
	},

	11487	=> {
		typeID   => 11487,
		groupID  => 270,
		typeName => "Astronautic Engineering"
	},

	11488	=> {
		typeID   => 11488,
		groupID  => 340,
		typeName => "Huge Secure Container"
	},

	11489	=> {
		typeID   => 11489,
		groupID  => 340,
		typeName => "Giant Secure Container"
	},

	11490	=> {
		typeID   => 11490,
		groupID  => 340,
		typeName => "Colossal Secure Container"
	},

	11491	=> {
		typeID   => 11491,
		groupID  => 333,
		typeName => "Datacore - Takmahl Tech 1"
	},

	11492	=> {
		typeID   => 11492,
		groupID  => 333,
		typeName => "Datacore - Takmahl Tech 2"
	},

	11493	=> {
		typeID   => 11493,
		groupID  => 333,
		typeName => "Datacore - Takmahl Tech 3"
	},

	11496	=> {
		typeID   => 11496,
		groupID  => 333,
		typeName => "Datacore - Defensive Subsystems Engineering"
	},

	11498	=> {
		typeID   => 11498,
		groupID  => 333,
		typeName => "Datacore - Sleeper Tech 3"
	},

	11499	=> {
		typeID   => 11499,
		groupID  => 333,
		typeName => "Datacore - Sleeper Tech 4"
	},

	11504	=> {
		typeID   => 11504,
		groupID  => 333,
		typeName => "Datacore - Yan Jung Tech 3"
	},

	11506	=> {
		typeID   => 11506,
		groupID  => 333,
		typeName => "Datacore - Yan Jung Tech 5"
	},

	11508	=> {
		typeID   => 11508,
		groupID  => 314,
		typeName => "Cross of the Sacred Throne Order"
	},

	11509	=> {
		typeID   => 11509,
		groupID  => 314,
		typeName => "Onyx Heart of Valor"
	},

	11510	=> {
		typeID   => 11510,
		groupID  => 314,
		typeName => "Aidonis Honorary Fellow Medallion"
	},

	11511	=> {
		typeID   => 11511,
		groupID  => 314,
		typeName => "Liberty Tattoo of the Minmatar Nation"
	},

	11512	=> {
		typeID   => 11512,
		groupID  => 314,
		typeName => "Enlightened Soul Silver Shield"
	},

	11513	=> {
		typeID   => 11513,
		groupID  => 332,
		typeName => "R.A.M.- Pharmaceuticals"
	},

	11514	=> {
		typeID   => 11514,
		groupID  => 332,
		typeName => "R.A.M.- Hypernet Tech"
	},

	11515	=> {
		typeID   => 11515,
		groupID  => 182,
		typeName => "Amarr Surveillance General Major"
	},

	11516	=> {
		typeID   => 11516,
		groupID  => 182,
		typeName => "Sarum Surveillance General Major"
	},

	11517	=> {
		typeID   => 11517,
		groupID  => 182,
		typeName => "Ammatar Surveillance General Major"
	},

	11518	=> {
		typeID   => 11518,
		groupID  => 182,
		typeName => "Khanid Surveillance General Major"
	},

	11519	=> {
		typeID   => 11519,
		groupID  => 182,
		typeName => "Gallente Police Major"
	},

	11520	=> {
		typeID   => 11520,
		groupID  => 182,
		typeName => "Minmatar Security High Captain"
	},

	11521	=> {
		typeID   => 11521,
		groupID  => 182,
		typeName => "Caldari Police Commissioner"
	},

	11528	=> {
		typeID   => 11528,
		groupID  => 314,
		typeName => "Jovian Delegates"
	},

	11529	=> {
		typeID   => 11529,
		groupID  => 270,
		typeName => "Molecular Engineering"
	},

	11530	=> {
		typeID   => 11530,
		groupID  => 334,
		typeName => "Plasma Thruster"
	},

	11531	=> {
		typeID   => 11531,
		groupID  => 334,
		typeName => "Ion Thruster"
	},

	11532	=> {
		typeID   => 11532,
		groupID  => 334,
		typeName => "Fusion Thruster"
	},

	11533	=> {
		typeID   => 11533,
		groupID  => 334,
		typeName => "Magpulse Thruster"
	},

	11534	=> {
		typeID   => 11534,
		groupID  => 334,
		typeName => "Gravimetric Sensor Cluster"
	},

	11535	=> {
		typeID   => 11535,
		groupID  => 334,
		typeName => "Magnetometric Sensor Cluster"
	},

	11536	=> {
		typeID   => 11536,
		groupID  => 334,
		typeName => "Ladar Sensor Cluster"
	},

	11537	=> {
		typeID   => 11537,
		groupID  => 334,
		typeName => "Radar Sensor Cluster"
	},

	11538	=> {
		typeID   => 11538,
		groupID  => 334,
		typeName => "Nanomechanical Microprocessor"
	},

	11539	=> {
		typeID   => 11539,
		groupID  => 334,
		typeName => "Nanoelectrical Microprocessor"
	},

	11540	=> {
		typeID   => 11540,
		groupID  => 334,
		typeName => "Quantum Microprocessor"
	},

	11541	=> {
		typeID   => 11541,
		groupID  => 334,
		typeName => "Photon Microprocessor"
	},

	11542	=> {
		typeID   => 11542,
		groupID  => 334,
		typeName => "Fernite Carbide Composite Armor Plate"
	},

	11543	=> {
		typeID   => 11543,
		groupID  => 334,
		typeName => "Tungsten Carbide Armor Plate"
	},

	11544	=> {
		typeID   => 11544,
		groupID  => 334,
		typeName => "Titanium Diborite Armor Plate"
	},

	11545	=> {
		typeID   => 11545,
		groupID  => 334,
		typeName => "Crystalline Carbonide Armor Plate"
	},

	11546	=> {
		typeID   => 11546,
		groupID  => 335,
		typeName => "Mining Pollution Cloud"
	},

	11547	=> {
		typeID   => 11547,
		groupID  => 334,
		typeName => "Fusion Reactor Unit"
	},

	11548	=> {
		typeID   => 11548,
		groupID  => 334,
		typeName => "Nuclear Reactor Unit"
	},

	11549	=> {
		typeID   => 11549,
		groupID  => 334,
		typeName => "Antimatter Reactor Unit"
	},

	11550	=> {
		typeID   => 11550,
		groupID  => 334,
		typeName => "Graviton Reactor Unit"
	},

	11551	=> {
		typeID   => 11551,
		groupID  => 334,
		typeName => "Electrolytic Capacitor Unit"
	},

	11552	=> {
		typeID   => 11552,
		groupID  => 334,
		typeName => "Scalar Capacitor Unit"
	},

	11553	=> {
		typeID   => 11553,
		groupID  => 334,
		typeName => "Oscillator Capacitor Unit"
	},

	11554	=> {
		typeID   => 11554,
		groupID  => 334,
		typeName => "Tesseract Capacitor Unit"
	},

	11555	=> {
		typeID   => 11555,
		groupID  => 334,
		typeName => "Deflection Shield Emitter"
	},

	11556	=> {
		typeID   => 11556,
		groupID  => 334,
		typeName => "Pulse Shield Emitter"
	},

	11557	=> {
		typeID   => 11557,
		groupID  => 334,
		typeName => "Linear Shield Emitter"
	},

	11558	=> {
		typeID   => 11558,
		groupID  => 334,
		typeName => "Sustained Shield Emitter"
	},

	11561	=> {
		typeID   => 11561,
		groupID  => 338,
		typeName => "Shield Boost Amplifier I"
	},

	11562	=> {
		typeID   => 11562,
		groupID  => 360,
		typeName => "Shield Boost Amplifier I Blueprint"
	},

	11563	=> {
		typeID   => 11563,
		groupID  => 339,
		typeName => "Micro Auxiliary Power Core I"
	},

	11564	=> {
		typeID   => 11564,
		groupID  => 352,
		typeName => "Micro Auxiliary Power Core I Blueprint"
	},

	11566	=> {
		typeID   => 11566,
		groupID  => 1209,
		typeName => "Thermal Shield Compensation"
	},

	11567	=> {
		typeID   => 11567,
		groupID  => 30,
		typeName => "Avatar"
	},

	11568	=> {
		typeID   => 11568,
		groupID  => 110,
		typeName => "Avatar Blueprint"
	},

	11569	=> {
		typeID   => 11569,
		groupID  => 258,
		typeName => "Armored Warfare Specialist"
	},

	11572	=> {
		typeID   => 11572,
		groupID  => 258,
		typeName => "Skirmish Warfare Specialist"
	},

	11574	=> {
		typeID   => 11574,
		groupID  => 258,
		typeName => "Wing Command"
	},

	11577	=> {
		typeID   => 11577,
		groupID  => 330,
		typeName => "Improved Cloaking Device II"
	},

	11578	=> {
		typeID   => 11578,
		groupID  => 330,
		typeName => "Covert Ops Cloaking Device II"
	},

	11579	=> {
		typeID   => 11579,
		groupID  => 272,
		typeName => "Cloaking"
	},

	11580	=> {
		typeID   => 11580,
		groupID  => 336,
		typeName => "BH Sentry Gun"
	},

	11584	=> {
		typeID   => 11584,
		groupID  => 1545,
		typeName => "Anchoring"
	},

	11585	=> {
		typeID   => 11585,
		groupID  => 314,
		typeName => "Pax Amarria"
	},

	11586	=> {
		typeID   => 11586,
		groupID  => 314,
		typeName => "Signed Copy of Pax Amarria"
	},

	11587	=> {
		typeID   => 11587,
		groupID  => 314,
		typeName => "Temple Stone"
	},

	11588	=> {
		typeID   => 11588,
		groupID  => 314,
		typeName => "Defunct Drone Sensor Module"
	},

	11589	=> {
		typeID   => 11589,
		groupID  => 306,
		typeName => "Temple Stone Storage"
	},

	11590	=> {
		typeID   => 11590,
		groupID  => 306,
		typeName => "Drone Sensor Storage"
	},

	11593	=> {
		typeID   => 11593,
		groupID  => 818,
		typeName => "The Thief"
	},

	11594	=> {
		typeID   => 11594,
		groupID  => 818,
		typeName => "The Ex-Employee"
	},

	11595	=> {
		typeID   => 11595,
		groupID  => 818,
		typeName => "Rogue Agent"
	},

	11596	=> {
		typeID   => 11596,
		groupID  => 818,
		typeName => "Sangrel Minn"
	},

	11597	=> {
		typeID   => 11597,
		groupID  => 817,
		typeName => "Kruul"
	},

	11598	=> {
		typeID   => 11598,
		groupID  => 818,
		typeName => "Kruul's Henchman"
	},

	11600	=> {
		typeID   => 11600,
		groupID  => 818,
		typeName => "Pirate Drone"
	},

	11601	=> {
		typeID   => 11601,
		groupID  => 613,
		typeName => "Guristas Emissary"
	},

	11602	=> {
		typeID   => 11602,
		groupID  => 314,
		typeName => "Gallente Federation Transaction And Salary Logs"
	},

	11603	=> {
		typeID   => 11603,
		groupID  => 314,
		typeName => "Shiez Kuzaks Ship Database"
	},

	11604	=> {
		typeID   => 11604,
		groupID  => 314,
		typeName => "Caldari State Transaction And Salary Logs"
	},

	11606	=> {
		typeID   => 11606,
		groupID  => 314,
		typeName => "Amarr Empire Transaction And Salary Logs"
	},

	11607	=> {
		typeID   => 11607,
		groupID  => 314,
		typeName => "Minmatar Republic Transaction And Salary Logs"
	},

	11608	=> {
		typeID   => 11608,
		groupID  => 314,
		typeName => "Ammatar Transaction and salary logs"
	},

	11610	=> {
		typeID   => 11610,
		groupID  => 526,
		typeName => "Nugoeihuvi reports"
	},

	11612	=> {
		typeID   => 11612,
		groupID  => 218,
		typeName => "Heat Sink I Blueprint"
	},

	11613	=> {
		typeID   => 11613,
		groupID  => 342,
		typeName => "Warp Core Stabilizer I Blueprint"
	},

	11614	=> {
		typeID   => 11614,
		groupID  => 343,
		typeName => "Tracking Disruptor I Blueprint"
	},

	11616	=> {
		typeID   => 11616,
		groupID  => 344,
		typeName => "Tracking Enhancer I Blueprint"
	},

	11617	=> {
		typeID   => 11617,
		groupID  => 345,
		typeName => "Remote Tracking Computer I Blueprint"
	},

	11619	=> {
		typeID   => 11619,
		groupID  => 346,
		typeName => "Co-Processor I Blueprint"
	},

	11620	=> {
		typeID   => 11620,
		groupID  => 223,
		typeName => "Sensor Booster I Blueprint"
	},

	11621	=> {
		typeID   => 11621,
		groupID  => 224,
		typeName => "Tracking Computer I Blueprint"
	},

	11622	=> {
		typeID   => 11622,
		groupID  => 131,
		typeName => "ECCM - Gravimetric I Blueprint"
	},

	11623	=> {
		typeID   => 11623,
		groupID  => 131,
		typeName => "ECCM - Ladar I Blueprint"
	},

	11624	=> {
		typeID   => 11624,
		groupID  => 131,
		typeName => "ECCM - Magnetometric I Blueprint"
	},

	11625	=> {
		typeID   => 11625,
		groupID  => 131,
		typeName => "ECCM - Radar I Blueprint"
	},

	11626	=> {
		typeID   => 11626,
		groupID  => 131,
		typeName => "ECCM - Omni I Blueprint"
	},

	11628	=> {
		typeID   => 11628,
		groupID  => 130,
		typeName => "Magnetometric ECM I Blueprint"
	},

	11629	=> {
		typeID   => 11629,
		groupID  => 130,
		typeName => "Multispectral ECM I Blueprint"
	},

	11630	=> {
		typeID   => 11630,
		groupID  => 130,
		typeName => "Ladar ECM I Blueprint"
	},

	11631	=> {
		typeID   => 11631,
		groupID  => 130,
		typeName => "Gravimetric ECM I Blueprint"
	},

	11632	=> {
		typeID   => 11632,
		groupID  => 130,
		typeName => "Radar ECM I Blueprint"
	},

	11634	=> {
		typeID   => 11634,
		groupID  => 347,
		typeName => "Signal Amplifier I Blueprint"
	},

	11635	=> {
		typeID   => 11635,
		groupID  => 314,
		typeName => "Personal Information Data"
	},

	11636	=> {
		typeID   => 11636,
		groupID  => 705,
		typeName => "Minmatar Mercenary Warship"
	},

	11639	=> {
		typeID   => 11639,
		groupID  => 683,
		typeName => "Minmatar Mercenary Fighter"
	},

	11640	=> {
		typeID   => 11640,
		groupID  => 315,
		typeName => "Warp Core Stabilizer II"
	},

	11641	=> {
		typeID   => 11641,
		groupID  => 342,
		typeName => "Warp Core Stabilizer II Blueprint"
	},

	11642	=> {
		typeID   => 11642,
		groupID  => 328,
		typeName => "Armor EM Hardener II"
	},

	11643	=> {
		typeID   => 11643,
		groupID  => 348,
		typeName => "Armor EM Hardener II Blueprint"
	},

	11644	=> {
		typeID   => 11644,
		groupID  => 328,
		typeName => "Armor Kinetic Hardener II"
	},

	11645	=> {
		typeID   => 11645,
		groupID  => 348,
		typeName => "Armor Kinetic Hardener II Blueprint"
	},

	11646	=> {
		typeID   => 11646,
		groupID  => 328,
		typeName => "Armor Explosive Hardener II"
	},

	11647	=> {
		typeID   => 11647,
		groupID  => 348,
		typeName => "Armor Explosive Hardener II Blueprint"
	},

	11648	=> {
		typeID   => 11648,
		groupID  => 328,
		typeName => "Armor Thermal Hardener II"
	},

	11649	=> {
		typeID   => 11649,
		groupID  => 348,
		typeName => "Armor Thermal Hardener II Blueprint"
	},

	11650	=> {
		typeID   => 11650,
		groupID  => 817,
		typeName => "Zerim Kurzon"
	},

	11651	=> {
		typeID   => 11651,
		groupID  => 818,
		typeName => "Shark Kurzon"
	},

	11652	=> {
		typeID   => 11652,
		groupID  => 818,
		typeName => "Kurzon Mercenary"
	},

	11653	=> {
		typeID   => 11653,
		groupID  => 332,
		typeName => "Hacker Deck - Alpha"
	},

	11654	=> {
		typeID   => 11654,
		groupID  => 314,
		typeName => "Korim Kor-Azor"
	},

	11655	=> {
		typeID   => 11655,
		groupID  => 817,
		typeName => "Shiez Kuzak"
	},

	11656	=> {
		typeID   => 11656,
		groupID  => 818,
		typeName => "Kuzak Mercenary Fighter"
	},

	11657	=> {
		typeID   => 11657,
		groupID  => 665,
		typeName => "Imperial Navy Detective"
	},

	11658	=> {
		typeID   => 11658,
		groupID  => 665,
		typeName => "Ammatar Navy Detective"
	},

	11659	=> {
		typeID   => 11659,
		groupID  => 671,
		typeName => "Caldari Navy Detective"
	},

	11660	=> {
		typeID   => 11660,
		groupID  => 705,
		typeName => "Republic Fleet Detective"
	},

	11661	=> {
		typeID   => 11661,
		groupID  => 678,
		typeName => "Federation Navy Detective"
	},

	11662	=> {
		typeID   => 11662,
		groupID  => 665,
		typeName => "Imperial Navy Scout"
	},

	11663	=> {
		typeID   => 11663,
		groupID  => 665,
		typeName => "Ammatar Navy Scout"
	},

	11664	=> {
		typeID   => 11664,
		groupID  => 671,
		typeName => "Caldari Navy Scout"
	},

	11665	=> {
		typeID   => 11665,
		groupID  => 683,
		typeName => "Minmatar Freedom Fighter"
	},

	11666	=> {
		typeID   => 11666,
		groupID  => 677,
		typeName => "Federation Navy Scout"
	},

	11668	=> {
		typeID   => 11668,
		groupID  => 817,
		typeName => "Bounty Hunter Ikaruz"
	},

	11669	=> {
		typeID   => 11669,
		groupID  => 817,
		typeName => "Bounty Hunter Obunga"
	},

	11670	=> {
		typeID   => 11670,
		groupID  => 817,
		typeName => "Bounty Hunter Jason"
	},

	11671	=> {
		typeID   => 11671,
		groupID  => 817,
		typeName => "Bounty Hunter Okochyn"
	},

	11672	=> {
		typeID   => 11672,
		groupID  => 818,
		typeName => "Bounty Hunter Rookie"
	},

	11673	=> {
		typeID   => 11673,
		groupID  => 818,
		typeName => "Mercenary Fighter"
	},

	11675	=> {
		typeID   => 11675,
		groupID  => 817,
		typeName => "Karothas"
	},

	11676	=> {
		typeID   => 11676,
		groupID  => 817,
		typeName => "Ibrahim"
	},

	11677	=> {
		typeID   => 11677,
		groupID  => 817,
		typeName => "Akori"
	},

	11678	=> {
		typeID   => 11678,
		groupID  => 226,
		typeName => "TEST Beacon"
	},

	11679	=> {
		typeID   => 11679,
		groupID  => 818,
		typeName => "Mercenary Rookie"
	},

	11680	=> {
		typeID   => 11680,
		groupID  => 306,
		typeName => "Forcefield Array"
	},

	11681	=> {
		typeID   => 11681,
		groupID  => 818,
		typeName => "Shazzyr"
	},

	11683	=> {
		typeID   => 11683,
		groupID  => 817,
		typeName => "Shogon"
	},

	11684	=> {
		typeID   => 11684,
		groupID  => 817,
		typeName => "Roland"
	},

	11685	=> {
		typeID   => 11685,
		groupID  => 818,
		typeName => "Durim"
	},

	11688	=> {
		typeID   => 11688,
		groupID  => 334,
		typeName => "Particle Accelerator Unit"
	},

	11689	=> {
		typeID   => 11689,
		groupID  => 334,
		typeName => "Laser Focusing Crystals"
	},

	11690	=> {
		typeID   => 11690,
		groupID  => 334,
		typeName => "Superconductor Rails"
	},

	11691	=> {
		typeID   => 11691,
		groupID  => 334,
		typeName => "Thermonuclear Trigger Unit"
	},

	11692	=> {
		typeID   => 11692,
		groupID  => 334,
		typeName => "Nuclear Pulse Generator"
	},

	11693	=> {
		typeID   => 11693,
		groupID  => 334,
		typeName => "Graviton Pulse Generator"
	},

	11694	=> {
		typeID   => 11694,
		groupID  => 334,
		typeName => "EM Pulse Generator"
	},

	11695	=> {
		typeID   => 11695,
		groupID  => 334,
		typeName => "Plasma Pulse Generator"
	},

	11699	=> {
		typeID   => 11699,
		groupID  => 817,
		typeName => "Thanok Kuggar"
	},

	11701	=> {
		typeID   => 11701,
		groupID  => 283,
		typeName => "Thanok"
	},

	11702	=> {
		typeID   => 11702,
		groupID  => 314,
		typeName => "Transaction And Salary Logs"
	},

	11703	=> {
		typeID   => 11703,
		groupID  => 314,
		typeName => "Angel Cartel Plans"
	},

	11704	=> {
		typeID   => 11704,
		groupID  => 817,
		typeName => "Shakyr Maruk"
	},

	11705	=> {
		typeID   => 11705,
		groupID  => 818,
		typeName => "Shakyr Personal Guard"
	},

	11707	=> {
		typeID   => 11707,
		groupID  => 314,
		typeName => "Strange Mechanical Device"
	},

	11708	=> {
		typeID   => 11708,
		groupID  => 817,
		typeName => "Alena Karyn"
	},

	11709	=> {
		typeID   => 11709,
		groupID  => 283,
		typeName => "Comatose Alena Karyn"
	},

	11710	=> {
		typeID   => 11710,
		groupID  => 705,
		typeName => "Minmatar Transport Ship"
	},

	11711	=> {
		typeID   => 11711,
		groupID  => 668,
		typeName => "Amarr Transport Ship"
	},

	11712	=> {
		typeID   => 11712,
		groupID  => 673,
		typeName => "Caldari Transport Ship"
	},

	11713	=> {
		typeID   => 11713,
		groupID  => 668,
		typeName => "Ammatar Transport Ship"
	},

	11714	=> {
		typeID   => 11714,
		groupID  => 927,
		typeName => "Gallente Transport Ship"
	},

	11716	=> {
		typeID   => 11716,
		groupID  => 604,
		typeName => "Blood Raider Transport Ship"
	},

	11717	=> {
		typeID   => 11717,
		groupID  => 622,
		typeName => "Sanshas Transport Ship"
	},

	11718	=> {
		typeID   => 11718,
		groupID  => 613,
		typeName => "Guristas Transport Ship"
	},

	11719	=> {
		typeID   => 11719,
		groupID  => 595,
		typeName => "Angel Cartel Transport Ship"
	},

	11720	=> {
		typeID   => 11720,
		groupID  => 631,
		typeName => "Serpentis Transport Ship"
	},

	11721	=> {
		typeID   => 11721,
		groupID  => 817,
		typeName => "Rogue Pirate Transport Ship"
	},

	11722	=> {
		typeID   => 11722,
		groupID  => 817,
		typeName => "Rogue Pirate Escort"
	},

	11723	=> {
		typeID   => 11723,
		groupID  => 314,
		typeName => "Design Documents"
	},

	11724	=> {
		typeID   => 11724,
		groupID  => 355,
		typeName => "Glossy Compound"
	},

	11725	=> {
		typeID   => 11725,
		groupID  => 355,
		typeName => "Plush Compound"
	},

	11732	=> {
		typeID   => 11732,
		groupID  => 355,
		typeName => "Sheen Compound"
	},

	11733	=> {
		typeID   => 11733,
		groupID  => 355,
		typeName => "Motley Compound"
	},

	11734	=> {
		typeID   => 11734,
		groupID  => 355,
		typeName => "Opulent Compound"
	},

	11735	=> {
		typeID   => 11735,
		groupID  => 355,
		typeName => "Dark Compound"
	},

	11736	=> {
		typeID   => 11736,
		groupID  => 355,
		typeName => "Lustering Alloy"
	},

	11737	=> {
		typeID   => 11737,
		groupID  => 355,
		typeName => "Precious Alloy"
	},

	11738	=> {
		typeID   => 11738,
		groupID  => 355,
		typeName => "Lucent Compound"
	},

	11739	=> {
		typeID   => 11739,
		groupID  => 355,
		typeName => "Condensed Alloy"
	},

	11740	=> {
		typeID   => 11740,
		groupID  => 355,
		typeName => "Gleaming Alloy"
	},

	11741	=> {
		typeID   => 11741,
		groupID  => 355,
		typeName => "Crystal Compound"
	},

	11742	=> {
		typeID   => 11742,
		groupID  => 283,
		typeName => "The Damsel"
	},

	11744	=> {
		typeID   => 11744,
		groupID  => 353,
		typeName => "QA Cloaking Device"
	},

	11745	=> {
		typeID   => 11745,
		groupID  => 683,
		typeName => "Republic Fleet Scout"
	},

	11746	=> {
		typeID   => 11746,
		groupID  => 332,
		typeName => "R.Db - Lai Dai"
	},

	11747	=> {
		typeID   => 11747,
		groupID  => 346,
		typeName => "Co-Processor II Blueprint"
	},

	11750	=> {
		typeID   => 11750,
		groupID  => 131,
		typeName => "ECCM - Gravimetric II Blueprint"
	},

	11754	=> {
		typeID   => 11754,
		groupID  => 131,
		typeName => "ECCM - Ladar II Blueprint"
	},

	11758	=> {
		typeID   => 11758,
		groupID  => 131,
		typeName => "ECCM - Magnetometric II Blueprint"
	},

	11762	=> {
		typeID   => 11762,
		groupID  => 131,
		typeName => "ECCM - Omni II Blueprint"
	},

	11766	=> {
		typeID   => 11766,
		groupID  => 131,
		typeName => "ECCM - Radar II Blueprint"
	},

	11770	=> {
		typeID   => 11770,
		groupID  => 131,
		typeName => "ECCM Projector I Blueprint"
	},

	11771	=> {
		typeID   => 11771,
		groupID  => 131,
		typeName => "ECCM Projector II Blueprint"
	},

	11775	=> {
		typeID   => 11775,
		groupID  => 130,
		typeName => "Magnetometric ECM II Blueprint"
	},

	11779	=> {
		typeID   => 11779,
		groupID  => 130,
		typeName => "Multispectral ECM II Blueprint"
	},

	11783	=> {
		typeID   => 11783,
		groupID  => 130,
		typeName => "Ladar ECM II Blueprint"
	},

	11787	=> {
		typeID   => 11787,
		groupID  => 130,
		typeName => "Gravimetric ECM II Blueprint"
	},

	11791	=> {
		typeID   => 11791,
		groupID  => 130,
		typeName => "Radar ECM II Blueprint"
	},

	11795	=> {
		typeID   => 11795,
		groupID  => 218,
		typeName => "Heat Sink II Blueprint"
	},

	11798	=> {
		typeID   => 11798,
		groupID  => 223,
		typeName => "Remote Sensor Booster I Blueprint"
	},

	11799	=> {
		typeID   => 11799,
		groupID  => 223,
		typeName => "Remote Sensor Booster II Blueprint"
	},

	11803	=> {
		typeID   => 11803,
		groupID  => 223,
		typeName => "Remote Sensor Dampener I Blueprint"
	},

	11804	=> {
		typeID   => 11804,
		groupID  => 223,
		typeName => "Remote Sensor Dampener II Blueprint"
	},

	11808	=> {
		typeID   => 11808,
		groupID  => 223,
		typeName => "Sensor Booster II Blueprint"
	},

	11812	=> {
		typeID   => 11812,
		groupID  => 347,
		typeName => "Signal Amplifier II Blueprint"
	},

	11820	=> {
		typeID   => 11820,
		groupID  => 347,
		typeName => "Gravimetric Backup Array I Blueprint"
	},

	11821	=> {
		typeID   => 11821,
		groupID  => 347,
		typeName => "Gravimetric Backup Array II Blueprint"
	},

	11824	=> {
		typeID   => 11824,
		groupID  => 347,
		typeName => "Ladar Backup Array I Blueprint"
	},

	11825	=> {
		typeID   => 11825,
		groupID  => 347,
		typeName => "Ladar Backup Array II Blueprint"
	},

	11828	=> {
		typeID   => 11828,
		groupID  => 347,
		typeName => "Magnetometric Backup Array I Blueprint"
	},

	11829	=> {
		typeID   => 11829,
		groupID  => 347,
		typeName => "Magnetometric Backup Array II Blueprint"
	},

	11832	=> {
		typeID   => 11832,
		groupID  => 347,
		typeName => "Multi Sensor Backup Array I Blueprint"
	},

	11833	=> {
		typeID   => 11833,
		groupID  => 347,
		typeName => "Multi Sensor Backup Array II Blueprint"
	},

	11836	=> {
		typeID   => 11836,
		groupID  => 347,
		typeName => "RADAR Backup Array I Blueprint"
	},

	11837	=> {
		typeID   => 11837,
		groupID  => 347,
		typeName => "RADAR Backup Array II Blueprint"
	},

	11840	=> {
		typeID   => 11840,
		groupID  => 224,
		typeName => "Tracking Computer II Blueprint"
	},

	11844	=> {
		typeID   => 11844,
		groupID  => 343,
		typeName => "Tracking Disruptor II Blueprint"
	},

	11848	=> {
		typeID   => 11848,
		groupID  => 344,
		typeName => "Tracking Enhancer II Blueprint"
	},

	11851	=> {
		typeID   => 11851,
		groupID  => 345,
		typeName => "Remote Tracking Computer II Blueprint"
	},

	11855	=> {
		typeID   => 11855,
		groupID  => 281,
		typeName => "Protein Delicacies"
	},

	11856	=> {
		typeID   => 11856,
		groupID  => 314,
		typeName => "Foundation Stone"
	},

	11857	=> {
		typeID   => 11857,
		groupID  => 356,
		typeName => "R.Db - Roden Shipyards Blueprint"
	},

	11858	=> {
		typeID   => 11858,
		groupID  => 270,
		typeName => "Hypernet Science"
	},

	11859	=> {
		typeID   => 11859,
		groupID  => 356,
		typeName => "R.A.M.- Energy Tech Blueprint"
	},

	11860	=> {
		typeID   => 11860,
		groupID  => 356,
		typeName => "R.A.M.- Cybernetics Blueprint"
	},

	11861	=> {
		typeID   => 11861,
		groupID  => 356,
		typeName => "R.A.M.- Platform Tech Blueprint"
	},

	11862	=> {
		typeID   => 11862,
		groupID  => 356,
		typeName => "Hacker Deck - LXD-27 Blueprint"
	},

	11863	=> {
		typeID   => 11863,
		groupID  => 356,
		typeName => "Hacker Deck - Codex Blueprint"
	},

	11864	=> {
		typeID   => 11864,
		groupID  => 356,
		typeName => "Hacker Deck - Hermes Blueprint"
	},

	11865	=> {
		typeID   => 11865,
		groupID  => 356,
		typeName => "Hacker Deck - Shaman Blueprint"
	},

	11866	=> {
		typeID   => 11866,
		groupID  => 356,
		typeName => "Hyper Net Uplink Blueprint"
	},

	11867	=> {
		typeID   => 11867,
		groupID  => 356,
		typeName => "R.A.M.- Battleship Tech Blueprint"
	},

	11868	=> {
		typeID   => 11868,
		groupID  => 356,
		typeName => "R.A.M.- Cruiser Tech Blueprint"
	},

	11869	=> {
		typeID   => 11869,
		groupID  => 356,
		typeName => "R.A.M.- Industrial Tech Blueprint"
	},

	11870	=> {
		typeID   => 11870,
		groupID  => 356,
		typeName => "R.A.M.- Electronics Blueprint"
	},

	11871	=> {
		typeID   => 11871,
		groupID  => 356,
		typeName => "Terran Molecular Sequencer Blueprint"
	},

	11872	=> {
		typeID   => 11872,
		groupID  => 356,
		typeName => "R.A.M.- Ammunition Tech Blueprint"
	},

	11873	=> {
		typeID   => 11873,
		groupID  => 356,
		typeName => "R.A.M.- Armor/Hull Tech Blueprint"
	},

	11874	=> {
		typeID   => 11874,
		groupID  => 356,
		typeName => "R.A.M.- Hypernet Tech Blueprint"
	},

	11876	=> {
		typeID   => 11876,
		groupID  => 356,
		typeName => "R.Db - Boundless Creations Blueprint"
	},

	11877	=> {
		typeID   => 11877,
		groupID  => 356,
		typeName => "R.Db - Core Complexion Blueprint"
	},

	11878	=> {
		typeID   => 11878,
		groupID  => 356,
		typeName => "R.Db - CreoDron Blueprint"
	},

	11879	=> {
		typeID   => 11879,
		groupID  => 356,
		typeName => "R.Db - Duvolle Labs Blueprint"
	},

	11880	=> {
		typeID   => 11880,
		groupID  => 356,
		typeName => "R.Db - Carthum Conglomerate Blueprint"
	},

	11881	=> {
		typeID   => 11881,
		groupID  => 356,
		typeName => "R.Db - Kaalakiota Blueprint"
	},

	11882	=> {
		typeID   => 11882,
		groupID  => 356,
		typeName => "R.Db - Khanid Innovation Blueprint"
	},

	11883	=> {
		typeID   => 11883,
		groupID  => 356,
		typeName => "R.Db - Thukker Mix Blueprint"
	},

	11884	=> {
		typeID   => 11884,
		groupID  => 356,
		typeName => "R.Db - Viziam Blueprint"
	},

	11885	=> {
		typeID   => 11885,
		groupID  => 356,
		typeName => "R.Db - Ishukone Blueprint"
	},

	11886	=> {
		typeID   => 11886,
		groupID  => 356,
		typeName => "R.Db - Lai Dai Blueprint"
	},

	11887	=> {
		typeID   => 11887,
		groupID  => 356,
		typeName => "R.A.M.- Robotics Blueprint"
	},

	11888	=> {
		typeID   => 11888,
		groupID  => 356,
		typeName => "R.A.M.- Pharmaceuticals Blueprint"
	},

	11889	=> {
		typeID   => 11889,
		groupID  => 356,
		typeName => "R.A.M.- Shield Tech Blueprint"
	},

	11890	=> {
		typeID   => 11890,
		groupID  => 356,
		typeName => "R.A.M.- Starship Tech Blueprint"
	},

	11891	=> {
		typeID   => 11891,
		groupID  => 356,
		typeName => "R.A.M.- Weapon Tech Blueprint"
	},

	11892	=> {
		typeID   => 11892,
		groupID  => 356,
		typeName => "Hacker Deck - Alpha Blueprint"
	},

	11894	=> {
		typeID   => 11894,
		groupID  => 551,
		typeName => "Angel Breaker"
	},

	11895	=> {
		typeID   => 11895,
		groupID  => 551,
		typeName => "Angel Defeater"
	},

	11896	=> {
		typeID   => 11896,
		groupID  => 551,
		typeName => "Angel Marauder"
	},

	11897	=> {
		typeID   => 11897,
		groupID  => 551,
		typeName => "Angel Liquidator"
	},

	11898	=> {
		typeID   => 11898,
		groupID  => 552,
		typeName => "Angel Commander"
	},

	11899	=> {
		typeID   => 11899,
		groupID  => 552,
		typeName => "Angel General"
	},

	11900	=> {
		typeID   => 11900,
		groupID  => 552,
		typeName => "Angel Warlord"
	},

	11901	=> {
		typeID   => 11901,
		groupID  => 555,
		typeName => "Blood Sage"
	},

	11902	=> {
		typeID   => 11902,
		groupID  => 555,
		typeName => "Blood Priest"
	},

	11903	=> {
		typeID   => 11903,
		groupID  => 555,
		typeName => "Blood Arch Sage"
	},

	11904	=> {
		typeID   => 11904,
		groupID  => 555,
		typeName => "Blood Arch Priest"
	},

	11905	=> {
		typeID   => 11905,
		groupID  => 556,
		typeName => "Blood Archon"
	},

	11906	=> {
		typeID   => 11906,
		groupID  => 556,
		typeName => "Blood Prophet"
	},

	11907	=> {
		typeID   => 11907,
		groupID  => 556,
		typeName => "Blood Oracle"
	},

	11908	=> {
		typeID   => 11908,
		groupID  => 556,
		typeName => "Blood Apostle"
	},

	11909	=> {
		typeID   => 11909,
		groupID  => 566,
		typeName => "Sansha's Slaughterer"
	},

	11910	=> {
		typeID   => 11910,
		groupID  => 566,
		typeName => "Sansha's Execrator"
	},

	11911	=> {
		typeID   => 11911,
		groupID  => 566,
		typeName => "Sansha's Mutilator"
	},

	11912	=> {
		typeID   => 11912,
		groupID  => 566,
		typeName => "Sansha's Torturer"
	},

	11913	=> {
		typeID   => 11913,
		groupID  => 565,
		typeName => "Sansha's Lord"
	},

	11914	=> {
		typeID   => 11914,
		groupID  => 565,
		typeName => "Sansha's Slave Lord"
	},

	11915	=> {
		typeID   => 11915,
		groupID  => 565,
		typeName => "Sansha's Mutant Lord"
	},

	11916	=> {
		typeID   => 11916,
		groupID  => 565,
		typeName => "Sansha's Savage Lord"
	},

	11917	=> {
		typeID   => 11917,
		groupID  => 571,
		typeName => "Serpentis Chief Guard"
	},

	11918	=> {
		typeID   => 11918,
		groupID  => 571,
		typeName => "Serpentis Chief Safeguard"
	},

	11919	=> {
		typeID   => 11919,
		groupID  => 571,
		typeName => "Serpentis Chief Defender"
	},

	11920	=> {
		typeID   => 11920,
		groupID  => 571,
		typeName => "Serpentis Chief Protector"
	},

	11921	=> {
		typeID   => 11921,
		groupID  => 570,
		typeName => "Serpentis Baron"
	},

	11922	=> {
		typeID   => 11922,
		groupID  => 570,
		typeName => "Serpentis Commodore"
	},

	11923	=> {
		typeID   => 11923,
		groupID  => 570,
		typeName => "Serpentis Port Admiral"
	},

	11924	=> {
		typeID   => 11924,
		groupID  => 570,
		typeName => "Serpentis Rear Admiral"
	},

	11927	=> {
		typeID   => 11927,
		groupID  => 552,
		typeName => "Angel War General"
	},

	11928	=> {
		typeID   => 11928,
		groupID  => 561,
		typeName => "Guristas Annihilator"
	},

	11929	=> {
		typeID   => 11929,
		groupID  => 561,
		typeName => "Guristas Nullifier"
	},

	11930	=> {
		typeID   => 11930,
		groupID  => 561,
		typeName => "Guristas Mortifier"
	},

	11931	=> {
		typeID   => 11931,
		groupID  => 561,
		typeName => "Guristas Inferno"
	},

	11932	=> {
		typeID   => 11932,
		groupID  => 560,
		typeName => "Guristas Eradicator"
	},

	11933	=> {
		typeID   => 11933,
		groupID  => 560,
		typeName => "Guristas Obliterator"
	},

	11934	=> {
		typeID   => 11934,
		groupID  => 560,
		typeName => "Guristas Dismantler"
	},

	11935	=> {
		typeID   => 11935,
		groupID  => 560,
		typeName => "Guristas Extinguisher"
	},

	11936	=> {
		typeID   => 11936,
		groupID  => 27,
		typeName => "Apocalypse Imperial Issue"
	},

	11937	=> {
		typeID   => 11937,
		groupID  => 107,
		typeName => "Apocalypse Imperial Issue Blueprint"
	},

	11938	=> {
		typeID   => 11938,
		groupID  => 27,
		typeName => "Armageddon Imperial Issue"
	},

	11939	=> {
		typeID   => 11939,
		groupID  => 107,
		typeName => "Armageddon Imperial Issue Blueprint"
	},

	11940	=> {
		typeID   => 11940,
		groupID  => 25,
		typeName => "Gold Magnate"
	},

	11942	=> {
		typeID   => 11942,
		groupID  => 25,
		typeName => "Silver Magnate"
	},

	11944	=> {
		typeID   => 11944,
		groupID  => 314,
		typeName => "Synthetic Coffee"
	},

	11947	=> {
		typeID   => 11947,
		groupID  => 687,
		typeName => "Khanid Fighter"
	},

	11948	=> {
		typeID   => 11948,
		groupID  => 689,
		typeName => "Khanid Officer"
	},

	11957	=> {
		typeID   => 11957,
		groupID  => 833,
		typeName => "Falcon"
	},

	11958	=> {
		typeID   => 11958,
		groupID  => 106,
		typeName => "Falcon Blueprint"
	},

	11959	=> {
		typeID   => 11959,
		groupID  => 906,
		typeName => "Rook"
	},

	11960	=> {
		typeID   => 11960,
		groupID  => 106,
		typeName => "Rook Blueprint"
	},

	11961	=> {
		typeID   => 11961,
		groupID  => 906,
		typeName => "Huginn"
	},

	11962	=> {
		typeID   => 11962,
		groupID  => 106,
		typeName => "Huginn Blueprint"
	},

	11963	=> {
		typeID   => 11963,
		groupID  => 833,
		typeName => "Rapier"
	},

	11964	=> {
		typeID   => 11964,
		groupID  => 106,
		typeName => "Rapier Blueprint"
	},

	11965	=> {
		typeID   => 11965,
		groupID  => 833,
		typeName => "Pilgrim"
	},

	11966	=> {
		typeID   => 11966,
		groupID  => 106,
		typeName => "Pilgrim Blueprint"
	},

	11969	=> {
		typeID   => 11969,
		groupID  => 833,
		typeName => "Arazu"
	},

	11970	=> {
		typeID   => 11970,
		groupID  => 106,
		typeName => "Arazu Blueprint"
	},

	11971	=> {
		typeID   => 11971,
		groupID  => 906,
		typeName => "Lachesis"
	},

	11972	=> {
		typeID   => 11972,
		groupID  => 106,
		typeName => "Lachesis Blueprint"
	},

	11978	=> {
		typeID   => 11978,
		groupID  => 832,
		typeName => "Scimitar"
	},

	11979	=> {
		typeID   => 11979,
		groupID  => 106,
		typeName => "Scimitar Blueprint"
	},

	11985	=> {
		typeID   => 11985,
		groupID  => 832,
		typeName => "Basilisk"
	},

	11986	=> {
		typeID   => 11986,
		groupID  => 106,
		typeName => "Basilisk Blueprint"
	},

	11987	=> {
		typeID   => 11987,
		groupID  => 832,
		typeName => "Guardian"
	},

	11988	=> {
		typeID   => 11988,
		groupID  => 106,
		typeName => "Guardian Blueprint"
	},

	11989	=> {
		typeID   => 11989,
		groupID  => 832,
		typeName => "Oneiros"
	},

	11990	=> {
		typeID   => 11990,
		groupID  => 106,
		typeName => "Oneiros Blueprint"
	},

	11993	=> {
		typeID   => 11993,
		groupID  => 358,
		typeName => "Cerberus"
	},

	11994	=> {
		typeID   => 11994,
		groupID  => 106,
		typeName => "Cerberus Blueprint"
	},

	11995	=> {
		typeID   => 11995,
		groupID  => 894,
		typeName => "Onyx"
	},

	11996	=> {
		typeID   => 11996,
		groupID  => 106,
		typeName => "Onyx Blueprint"
	},

	11999	=> {
		typeID   => 11999,
		groupID  => 358,
		typeName => "Vagabond"
	},

	12000	=> {
		typeID   => 12000,
		groupID  => 106,
		typeName => "Vagabond Blueprint"
	},

	12003	=> {
		typeID   => 12003,
		groupID  => 358,
		typeName => "Zealot"
	},

	12004	=> {
		typeID   => 12004,
		groupID  => 106,
		typeName => "Zealot Blueprint"
	},

	12005	=> {
		typeID   => 12005,
		groupID  => 358,
		typeName => "Ishtar"
	},

	12006	=> {
		typeID   => 12006,
		groupID  => 106,
		typeName => "Ishtar Blueprint"
	},

	12011	=> {
		typeID   => 12011,
		groupID  => 358,
		typeName => "Eagle"
	},

	12012	=> {
		typeID   => 12012,
		groupID  => 106,
		typeName => "Eagle Blueprint"
	},

	12013	=> {
		typeID   => 12013,
		groupID  => 894,
		typeName => "Broadsword"
	},

	12014	=> {
		typeID   => 12014,
		groupID  => 106,
		typeName => "Broadsword Blueprint"
	},

	12015	=> {
		typeID   => 12015,
		groupID  => 358,
		typeName => "Muninn"
	},

	12016	=> {
		typeID   => 12016,
		groupID  => 106,
		typeName => "Muninn Blueprint"
	},

	12017	=> {
		typeID   => 12017,
		groupID  => 894,
		typeName => "Devoter"
	},

	12018	=> {
		typeID   => 12018,
		groupID  => 106,
		typeName => "Devoter Blueprint"
	},

	12019	=> {
		typeID   => 12019,
		groupID  => 358,
		typeName => "Sacrilege"
	},

	12020	=> {
		typeID   => 12020,
		groupID  => 106,
		typeName => "Sacrilege Blueprint"
	},

	12021	=> {
		typeID   => 12021,
		groupID  => 894,
		typeName => "Phobos"
	},

	12022	=> {
		typeID   => 12022,
		groupID  => 106,
		typeName => "Phobos Blueprint"
	},

	12023	=> {
		typeID   => 12023,
		groupID  => 358,
		typeName => "Deimos"
	},

	12024	=> {
		typeID   => 12024,
		groupID  => 106,
		typeName => "Deimos Blueprint"
	},

	12028	=> {
		typeID   => 12028,
		groupID  => 306,
		typeName => "Storage Bin"
	},

	12029	=> {
		typeID   => 12029,
		groupID  => 687,
		typeName => "Khanid Elite Fighter"
	},

	12031	=> {
		typeID   => 12031,
		groupID  => 105,
		typeName => "Manticore Blueprint"
	},

	12032	=> {
		typeID   => 12032,
		groupID  => 834,
		typeName => "Manticore"
	},

	12034	=> {
		typeID   => 12034,
		groupID  => 834,
		typeName => "Hound"
	},

	12035	=> {
		typeID   => 12035,
		groupID  => 105,
		typeName => "Hound Blueprint"
	},

	12036	=> {
		typeID   => 12036,
		groupID  => 324,
		typeName => "Dagger"
	},

	12037	=> {
		typeID   => 12037,
		groupID  => 105,
		typeName => "Dagger Blueprint"
	},

	12038	=> {
		typeID   => 12038,
		groupID  => 834,
		typeName => "Purifier"
	},

	12041	=> {
		typeID   => 12041,
		groupID  => 105,
		typeName => "Purifier Blueprint"
	},

	12042	=> {
		typeID   => 12042,
		groupID  => 324,
		typeName => "Ishkur"
	},

	12043	=> {
		typeID   => 12043,
		groupID  => 105,
		typeName => "Ishkur Blueprint"
	},

	12044	=> {
		typeID   => 12044,
		groupID  => 324,
		typeName => "Enyo"
	},

	12045	=> {
		typeID   => 12045,
		groupID  => 105,
		typeName => "Enyo Blueprint"
	},

	12046	=> {
		typeID   => 12046,
		groupID  => 668,
		typeName => "Ammatar Slave Trader"
	},

	12047	=> {
		typeID   => 12047,
		groupID  => 689,
		typeName => "Khanid Slave Trader"
	},

	12048	=> {
		typeID   => 12048,
		groupID  => 668,
		typeName => "Amarr Slave Trader"
	},

	12049	=> {
		typeID   => 12049,
		groupID  => 283,
		typeName => "Slaver"
	},

	12052	=> {
		typeID   => 12052,
		groupID  => 46,
		typeName => "50MN Microwarpdrive I"
	},

	12053	=> {
		typeID   => 12053,
		groupID  => 126,
		typeName => "50MN Microwarpdrive I Blueprint"
	},

	12054	=> {
		typeID   => 12054,
		groupID  => 46,
		typeName => "500MN Microwarpdrive I"
	},

	12055	=> {
		typeID   => 12055,
		groupID  => 126,
		typeName => "500MN Microwarpdrive I Blueprint"
	},

	12056	=> {
		typeID   => 12056,
		groupID  => 46,
		typeName => "10MN Afterburner I"
	},

	12057	=> {
		typeID   => 12057,
		groupID  => 126,
		typeName => "10MN Afterburner I Blueprint"
	},

	12058	=> {
		typeID   => 12058,
		groupID  => 46,
		typeName => "10MN Afterburner II"
	},

	12059	=> {
		typeID   => 12059,
		groupID  => 126,
		typeName => "10MN Afterburner II Blueprint"
	},

	12066	=> {
		typeID   => 12066,
		groupID  => 46,
		typeName => "100MN Afterburner I"
	},

	12067	=> {
		typeID   => 12067,
		groupID  => 126,
		typeName => "100MN Afterburner I Blueprint"
	},

	12068	=> {
		typeID   => 12068,
		groupID  => 46,
		typeName => "100MN Afterburner II"
	},

	12069	=> {
		typeID   => 12069,
		groupID  => 126,
		typeName => "100MN Afterburner II Blueprint"
	},

	12076	=> {
		typeID   => 12076,
		groupID  => 46,
		typeName => "50MN Microwarpdrive II"
	},

	12077	=> {
		typeID   => 12077,
		groupID  => 126,
		typeName => "50MN Microwarpdrive II Blueprint"
	},

	12084	=> {
		typeID   => 12084,
		groupID  => 46,
		typeName => "500MN Microwarpdrive II"
	},

	12085	=> {
		typeID   => 12085,
		groupID  => 126,
		typeName => "500MN Microwarpdrive II Blueprint"
	},

	12092	=> {
		typeID   => 12092,
		groupID  => 257,
		typeName => "Interceptors"
	},

	12093	=> {
		typeID   => 12093,
		groupID  => 257,
		typeName => "Covert Ops"
	},

	12095	=> {
		typeID   => 12095,
		groupID  => 257,
		typeName => "Assault Frigates"
	},

	12096	=> {
		typeID   => 12096,
		groupID  => 257,
		typeName => "Logistics Cruisers"
	},

	12097	=> {
		typeID   => 12097,
		groupID  => 257,
		typeName => "Destroyers"
	},

	12098	=> {
		typeID   => 12098,
		groupID  => 257,
		typeName => "Interdictors"
	},

	12099	=> {
		typeID   => 12099,
		groupID  => 257,
		typeName => "Battlecruisers"
	},

	12102	=> {
		typeID   => 12102,
		groupID  => 67,
		typeName => "Large Remote Capacitor Transmitter II"
	},

	12103	=> {
		typeID   => 12103,
		groupID  => 147,
		typeName => "Large Remote Capacitor Transmitter II Blueprint"
	},

	12104	=> {
		typeID   => 12104,
		groupID  => 401,
		typeName => "Improved Cloaking Device II Blueprint"
	},

	12105	=> {
		typeID   => 12105,
		groupID  => 401,
		typeName => "Covert Ops Cloaking Device II Blueprint"
	},

	12108	=> {
		typeID   => 12108,
		groupID  => 54,
		typeName => "Deep Core Mining Laser I"
	},

	12109	=> {
		typeID   => 12109,
		groupID  => 134,
		typeName => "Deep Core Mining Laser I Blueprint"
	},

	12110	=> {
		typeID   => 12110,
		groupID  => 283,
		typeName => "Homeless"
	},

	12179	=> {
		typeID   => 12179,
		groupID  => 270,
		typeName => "Research Project Management"
	},

	12180	=> {
		typeID   => 12180,
		groupID  => 1218,
		typeName => "Arkonor Processing"
	},

	12181	=> {
		typeID   => 12181,
		groupID  => 1218,
		typeName => "Bistot Processing"
	},

	12182	=> {
		typeID   => 12182,
		groupID  => 1218,
		typeName => "Crokite Processing"
	},

	12183	=> {
		typeID   => 12183,
		groupID  => 1218,
		typeName => "Dark Ochre Processing"
	},

	12184	=> {
		typeID   => 12184,
		groupID  => 1218,
		typeName => "Gneiss Processing"
	},

	12185	=> {
		typeID   => 12185,
		groupID  => 1218,
		typeName => "Hedbergite Processing"
	},

	12186	=> {
		typeID   => 12186,
		groupID  => 1218,
		typeName => "Hemorphite Processing"
	},

	12187	=> {
		typeID   => 12187,
		groupID  => 1218,
		typeName => "Jaspet Processing"
	},

	12188	=> {
		typeID   => 12188,
		groupID  => 1218,
		typeName => "Kernite Processing"
	},

	12189	=> {
		typeID   => 12189,
		groupID  => 1218,
		typeName => "Mercoxit Processing"
	},

	12190	=> {
		typeID   => 12190,
		groupID  => 1218,
		typeName => "Omber Processing"
	},

	12191	=> {
		typeID   => 12191,
		groupID  => 1218,
		typeName => "Plagioclase Processing"
	},

	12192	=> {
		typeID   => 12192,
		groupID  => 1218,
		typeName => "Pyroxeres Processing"
	},

	12193	=> {
		typeID   => 12193,
		groupID  => 1218,
		typeName => "Scordite Processing"
	},

	12194	=> {
		typeID   => 12194,
		groupID  => 1218,
		typeName => "Spodumain Processing"
	},

	12195	=> {
		typeID   => 12195,
		groupID  => 1218,
		typeName => "Veldspar Processing"
	},

	12196	=> {
		typeID   => 12196,
		groupID  => 1218,
		typeName => "Scrapmetal Processing"
	},

	12197	=> {
		typeID   => 12197,
		groupID  => 817,
		typeName => "Grecko"
	},

	12198	=> {
		typeID   => 12198,
		groupID  => 361,
		typeName => "Mobile Small Warp Disruptor I"
	},

	12199	=> {
		typeID   => 12199,
		groupID  => 361,
		typeName => "Mobile Medium Warp Disruptor I"
	},

	12200	=> {
		typeID   => 12200,
		groupID  => 361,
		typeName => "Mobile Large Warp Disruptor I"
	},

	12201	=> {
		typeID   => 12201,
		groupID  => 255,
		typeName => "Small Artillery Specialization"
	},

	12202	=> {
		typeID   => 12202,
		groupID  => 255,
		typeName => "Medium Artillery Specialization"
	},

	12203	=> {
		typeID   => 12203,
		groupID  => 255,
		typeName => "Large Artillery Specialization"
	},

	12204	=> {
		typeID   => 12204,
		groupID  => 255,
		typeName => "Medium Beam Laser Specialization"
	},

	12205	=> {
		typeID   => 12205,
		groupID  => 255,
		typeName => "Large Beam Laser Specialization"
	},

	12206	=> {
		typeID   => 12206,
		groupID  => 255,
		typeName => "Medium Railgun Specialization"
	},

	12207	=> {
		typeID   => 12207,
		groupID  => 255,
		typeName => "Large Railgun Specialization"
	},

	12208	=> {
		typeID   => 12208,
		groupID  => 255,
		typeName => "Medium Autocannon Specialization"
	},

	12209	=> {
		typeID   => 12209,
		groupID  => 255,
		typeName => "Large Autocannon Specialization"
	},

	12210	=> {
		typeID   => 12210,
		groupID  => 255,
		typeName => "Small Blaster Specialization"
	},

	12211	=> {
		typeID   => 12211,
		groupID  => 255,
		typeName => "Medium Blaster Specialization"
	},

	12212	=> {
		typeID   => 12212,
		groupID  => 255,
		typeName => "Large Blaster Specialization"
	},

	12213	=> {
		typeID   => 12213,
		groupID  => 255,
		typeName => "Small Pulse Laser Specialization"
	},

	12214	=> {
		typeID   => 12214,
		groupID  => 255,
		typeName => "Medium Pulse Laser Specialization"
	},

	12215	=> {
		typeID   => 12215,
		groupID  => 255,
		typeName => "Large Pulse Laser Specialization"
	},

	12217	=> {
		typeID   => 12217,
		groupID  => 67,
		typeName => "Medium Remote Capacitor Transmitter I"
	},

	12218	=> {
		typeID   => 12218,
		groupID  => 147,
		typeName => "Medium Remote Capacitor Transmitter I Blueprint"
	},

	12219	=> {
		typeID   => 12219,
		groupID  => 67,
		typeName => "Capital Remote Capacitor Transmitter I"
	},

	12220	=> {
		typeID   => 12220,
		groupID  => 147,
		typeName => "Capital Remote Capacitor Transmitter I Blueprint"
	},

	12221	=> {
		typeID   => 12221,
		groupID  => 67,
		typeName => "Medium Remote Capacitor Transmitter II"
	},

	12222	=> {
		typeID   => 12222,
		groupID  => 147,
		typeName => "Medium Remote Capacitor Transmitter II Blueprint"
	},

	12223	=> {
		typeID   => 12223,
		groupID  => 67,
		typeName => "Capital Remote Capacitor Transmitter II"
	},

	12224	=> {
		typeID   => 12224,
		groupID  => 147,
		typeName => "Capital Remote Capacitor Transmitter II Blueprint"
	},

	12225	=> {
		typeID   => 12225,
		groupID  => 67,
		typeName => "Large Remote Capacitor Transmitter I"
	},

	12226	=> {
		typeID   => 12226,
		groupID  => 147,
		typeName => "Large Remote Capacitor Transmitter I Blueprint"
	},

	12235	=> {
		typeID   => 12235,
		groupID  => 365,
		typeName => "Amarr Control Tower"
	},

	12236	=> {
		typeID   => 12236,
		groupID  => 365,
		typeName => "Gallente Control Tower"
	},

	12237	=> {
		typeID   => 12237,
		groupID  => 363,
		typeName => "Ship Maintenance Array"
	},

	12238	=> {
		typeID   => 12238,
		groupID  => 311,
		typeName => "Reprocessing Array"
	},

	12239	=> {
		typeID   => 12239,
		groupID  => 1282,
		typeName => "Compression Array"
	},

	12240	=> {
		typeID   => 12240,
		groupID  => 364,
		typeName => "Medium Storage Array"
	},

	12241	=> {
		typeID   => 12241,
		groupID  => 266,
		typeName => "Sovereignty"
	},

	12242	=> {
		typeID   => 12242,
		groupID  => 15,
		typeName => "Station (Conquerable 1)"
	},

	12243	=> {
		typeID   => 12243,
		groupID  => 283,
		typeName => "Science Graduates"
	},

	12244	=> {
		typeID   => 12244,
		groupID  => 817,
		typeName => "University Escort Ship"
	},

	12245	=> {
		typeID   => 12245,
		groupID  => 185,
		typeName => "Angel Fugitive"
	},

	12246	=> {
		typeID   => 12246,
		groupID  => 185,
		typeName => "Blood Fugitive"
	},

	12248	=> {
		typeID   => 12248,
		groupID  => 185,
		typeName => "Sansha's Fugitive"
	},

	12249	=> {
		typeID   => 12249,
		groupID  => 185,
		typeName => "Serpentis Fugitive"
	},

	12250	=> {
		typeID   => 12250,
		groupID  => 314,
		typeName => "Criminal DNA"
	},

	12251	=> {
		typeID   => 12251,
		groupID  => 817,
		typeName => "Sarrah"
	},

	12252	=> {
		typeID   => 12252,
		groupID  => 817,
		typeName => "Schmidt"
	},

	12253	=> {
		typeID   => 12253,
		groupID  => 817,
		typeName => "Olufami"
	},

	12254	=> {
		typeID   => 12254,
		groupID  => 817,
		typeName => "Test_NONE"
	},

	12255	=> {
		typeID   => 12255,
		groupID  => 817,
		typeName => "Elena Gazky"
	},

	12256	=> {
		typeID   => 12256,
		groupID  => 816,
		typeName => "Zor"
	},

	12257	=> {
		typeID   => 12257,
		groupID  => 68,
		typeName => "Medium Energy Nosferatu I"
	},

	12258	=> {
		typeID   => 12258,
		groupID  => 148,
		typeName => "Medium Energy Nosferatu I Blueprint"
	},

	12259	=> {
		typeID   => 12259,
		groupID  => 68,
		typeName => "Medium Energy Nosferatu II"
	},

	12260	=> {
		typeID   => 12260,
		groupID  => 148,
		typeName => "Medium Energy Nosferatu II Blueprint"
	},

	12261	=> {
		typeID   => 12261,
		groupID  => 68,
		typeName => "Heavy Energy Nosferatu I"
	},

	12262	=> {
		typeID   => 12262,
		groupID  => 148,
		typeName => "Heavy Energy Nosferatu I Blueprint"
	},

	12263	=> {
		typeID   => 12263,
		groupID  => 68,
		typeName => "Heavy Energy Nosferatu II"
	},

	12264	=> {
		typeID   => 12264,
		groupID  => 148,
		typeName => "Heavy Energy Nosferatu II Blueprint"
	},

	12265	=> {
		typeID   => 12265,
		groupID  => 71,
		typeName => "Medium Energy Neutralizer I"
	},

	12266	=> {
		typeID   => 12266,
		groupID  => 151,
		typeName => "Medium Energy Neutralizer I Blueprint"
	},

	12267	=> {
		typeID   => 12267,
		groupID  => 71,
		typeName => "Medium Energy Neutralizer II"
	},

	12268	=> {
		typeID   => 12268,
		groupID  => 151,
		typeName => "Medium Energy Neutralizer II Blueprint"
	},

	12269	=> {
		typeID   => 12269,
		groupID  => 71,
		typeName => "Heavy Energy Neutralizer I"
	},

	12270	=> {
		typeID   => 12270,
		groupID  => 151,
		typeName => "Heavy Energy Neutralizer I Blueprint"
	},

	12271	=> {
		typeID   => 12271,
		groupID  => 71,
		typeName => "Heavy Energy Neutralizer II"
	},

	12272	=> {
		typeID   => 12272,
		groupID  => 151,
		typeName => "Heavy Energy Neutralizer II Blueprint"
	},

	12273	=> {
		typeID   => 12273,
		groupID  => 366,
		typeName => "Ancient Acceleration Gate"
	},

	12274	=> {
		typeID   => 12274,
		groupID  => 367,
		typeName => "Ballistic Control System I"
	},

	12275	=> {
		typeID   => 12275,
		groupID  => 400,
		typeName => "Ballistic Control System I Blueprint"
	},

	12292	=> {
		typeID   => 12292,
		groupID  => 10,
		typeName => "Smuggler route stargate"
	},

	12293	=> {
		typeID   => 12293,
		groupID  => 368,
		typeName => "Basic Global Warp Disruptor"
	},

	12294	=> {
		typeID   => 12294,
		groupID  => 15,
		typeName => "Station (Conquerable 2)"
	},

	12295	=> {
		typeID   => 12295,
		groupID  => 15,
		typeName => "Station (Conquerable 3)"
	},

	12297	=> {
		typeID   => 12297,
		groupID  => 371,
		typeName => "Mobile Small Warp Disruptor I Blueprint"
	},

	12300	=> {
		typeID   => 12300,
		groupID  => 371,
		typeName => "Mobile Medium Warp Disruptor I Blueprint"
	},

	12301	=> {
		typeID   => 12301,
		groupID  => 371,
		typeName => "Mobile Large Warp Disruptor I Blueprint"
	},

	12302	=> {
		typeID   => 12302,
		groupID  => 314,
		typeName => "Test Dummies"
	},

	12303	=> {
		typeID   => 12303,
		groupID  => 314,
		typeName => "Unassembled Energy Weapons"
	},

	12304	=> {
		typeID   => 12304,
		groupID  => 370,
		typeName => "Angel Copper Tag"
	},

	12305	=> {
		typeID   => 12305,
		groupID  => 273,
		typeName => "Drone Navigation"
	},

	12306	=> {
		typeID   => 12306,
		groupID  => 369,
		typeName => "Angel Ship Log 137863054"
	},

	12339	=> {
		typeID   => 12339,
		groupID  => 369,
		typeName => "Angel Ship Log 165462566"
	},

	12340	=> {
		typeID   => 12340,
		groupID  => 369,
		typeName => "Angel Ship Log 109285473"
	},

	12341	=> {
		typeID   => 12341,
		groupID  => 369,
		typeName => "Angel Ship Log 174132231"
	},

	12342	=> {
		typeID   => 12342,
		groupID  => 369,
		typeName => "Angel Ship Log 141490454"
	},

	12343	=> {
		typeID   => 12343,
		groupID  => 369,
		typeName => "Angel Ship Log 349584483"
	},

	12344	=> {
		typeID   => 12344,
		groupID  => 74,
		typeName => "200mm Railgun I"
	},

	12345	=> {
		typeID   => 12345,
		groupID  => 154,
		typeName => "200mm Railgun I Blueprint"
	},

	12346	=> {
		typeID   => 12346,
		groupID  => 74,
		typeName => "200mm Railgun II"
	},

	12347	=> {
		typeID   => 12347,
		groupID  => 154,
		typeName => "200mm Railgun II Blueprint"
	},

	12354	=> {
		typeID   => 12354,
		groupID  => 74,
		typeName => "350mm Railgun I"
	},

	12355	=> {
		typeID   => 12355,
		groupID  => 154,
		typeName => "350mm Railgun I Blueprint"
	},

	12356	=> {
		typeID   => 12356,
		groupID  => 74,
		typeName => "350mm Railgun II"
	},

	12357	=> {
		typeID   => 12357,
		groupID  => 154,
		typeName => "350mm Railgun II Blueprint"
	},

	12365	=> {
		typeID   => 12365,
		groupID  => 1209,
		typeName => "EM Shield Compensation"
	},

	12366	=> {
		typeID   => 12366,
		groupID  => 1209,
		typeName => "Kinetic Shield Compensation"
	},

	12367	=> {
		typeID   => 12367,
		groupID  => 1209,
		typeName => "Explosive Shield Compensation"
	},

	12368	=> {
		typeID   => 12368,
		groupID  => 272,
		typeName => "Hypereuclidean Navigation"
	},

	12369	=> {
		typeID   => 12369,
		groupID  => 369,
		typeName => "Angel Ship Log 303445882"
	},

	12370	=> {
		typeID   => 12370,
		groupID  => 369,
		typeName => "Angel Ship Log 343873495"
	},

	12371	=> {
		typeID   => 12371,
		groupID  => 369,
		typeName => "Angel Ship Log 523366291"
	},

	12372	=> {
		typeID   => 12372,
		groupID  => 369,
		typeName => "Angel Ship Log 583225679"
	},

	12373	=> {
		typeID   => 12373,
		groupID  => 369,
		typeName => "Blood Raider Log 137393941"
	},

	12374	=> {
		typeID   => 12374,
		groupID  => 369,
		typeName => "Blood Raider Log 118338758"
	},

	12375	=> {
		typeID   => 12375,
		groupID  => 369,
		typeName => "Blood Raider Log 114019732"
	},

	12376	=> {
		typeID   => 12376,
		groupID  => 267,
		typeName => "'Logic'"
	},

	12377	=> {
		typeID   => 12377,
		groupID  => 369,
		typeName => "Blood Raider Log 189897223"
	},

	12378	=> {
		typeID   => 12378,
		groupID  => 369,
		typeName => "Blood Raider Log 167593883"
	},

	12379	=> {
		typeID   => 12379,
		groupID  => 369,
		typeName => "Blood Raider Log 397001231"
	},

	12380	=> {
		typeID   => 12380,
		groupID  => 369,
		typeName => "Blood Raider Log 335499422"
	},

	12381	=> {
		typeID   => 12381,
		groupID  => 369,
		typeName => "Blood Raider Log 389314943"
	},

	12382	=> {
		typeID   => 12382,
		groupID  => 369,
		typeName => "Blood Raider Log 534970023"
	},

	12383	=> {
		typeID   => 12383,
		groupID  => 267,
		typeName => "'Presence'"
	},

	12384	=> {
		typeID   => 12384,
		groupID  => 369,
		typeName => "Blood Raider Log 518719843"
	},

	12385	=> {
		typeID   => 12385,
		groupID  => 267,
		typeName => "'Eidetic Memory'"
	},

	12386	=> {
		typeID   => 12386,
		groupID  => 267,
		typeName => "'Focus'"
	},

	12387	=> {
		typeID   => 12387,
		groupID  => 267,
		typeName => "'Clarity'"
	},

	12388	=> {
		typeID   => 12388,
		groupID  => 667,
		typeName => "Imperial Navy Apocalypse"
	},

	12389	=> {
		typeID   => 12389,
		groupID  => 706,
		typeName => "Republic Fleet Tempest"
	},

	12390	=> {
		typeID   => 12390,
		groupID  => 680,
		typeName => "Federation Navy Megathron"
	},

	12391	=> {
		typeID   => 12391,
		groupID  => 674,
		typeName => "Caldari Navy Raven"
	},

	12392	=> {
		typeID   => 12392,
		groupID  => 691,
		typeName => "Khanid Mashtori"
	},

	12394	=> {
		typeID   => 12394,
		groupID  => 673,
		typeName => "Caldari Navy Blackbird"
	},

	12438	=> {
		typeID   => 12438,
		groupID  => 705,
		typeName => "Republic Fleet Stabber"
	},

	12439	=> {
		typeID   => 12439,
		groupID  => 668,
		typeName => "Imperial Navy Omen"
	},

	12440	=> {
		typeID   => 12440,
		groupID  => 678,
		typeName => "Federation Navy Vexor"
	},

	12441	=> {
		typeID   => 12441,
		groupID  => 256,
		typeName => "Missile Bombardment"
	},

	12442	=> {
		typeID   => 12442,
		groupID  => 256,
		typeName => "Missile Projection"
	},

	12444	=> {
		typeID   => 12444,
		groupID  => 369,
		typeName => "Serpentis Ship Log 12682884"
	},

	12445	=> {
		typeID   => 12445,
		groupID  => 369,
		typeName => "Serpentis Ship Log 187076356"
	},

	12446	=> {
		typeID   => 12446,
		groupID  => 369,
		typeName => "Serpentis Ship Log 144391348"
	},

	12447	=> {
		typeID   => 12447,
		groupID  => 369,
		typeName => "Serpentis Ship Log 103298223"
	},

	12448	=> {
		typeID   => 12448,
		groupID  => 369,
		typeName => "Serpentis Ship Log 166832001"
	},

	12449	=> {
		typeID   => 12449,
		groupID  => 369,
		typeName => "Serpentis Ship Log 381038422"
	},

	12450	=> {
		typeID   => 12450,
		groupID  => 369,
		typeName => "Serpentis Ship Log 303248612"
	},

	12451	=> {
		typeID   => 12451,
		groupID  => 369,
		typeName => "Serpentis Ship Log 378922371"
	},

	12452	=> {
		typeID   => 12452,
		groupID  => 369,
		typeName => "Serpentis Ship Log 534643764"
	},

	12453	=> {
		typeID   => 12453,
		groupID  => 369,
		typeName => "Serpentis Ship Log 501163556"
	},

	12454	=> {
		typeID   => 12454,
		groupID  => 369,
		typeName => "Guristas Ship Log 119373337"
	},

	12455	=> {
		typeID   => 12455,
		groupID  => 369,
		typeName => "Guristas Ship Log 108634544"
	},

	12456	=> {
		typeID   => 12456,
		groupID  => 369,
		typeName => "Guristas Ship Log 125792289"
	},

	12457	=> {
		typeID   => 12457,
		groupID  => 369,
		typeName => "Guristas Ship Log 175568934"
	},

	12460	=> {
		typeID   => 12460,
		groupID  => 369,
		typeName => "Guristas Ship Log 180983465"
	},

	12461	=> {
		typeID   => 12461,
		groupID  => 369,
		typeName => "Guristas Ship Log 312887432"
	},

	12462	=> {
		typeID   => 12462,
		groupID  => 369,
		typeName => "Guristas Ship Log 398560763"
	},

	12463	=> {
		typeID   => 12463,
		groupID  => 369,
		typeName => "Guristas Ship Log 365764054"
	},

	12464	=> {
		typeID   => 12464,
		groupID  => 816,
		typeName => "Mercenary Overlord"
	},

	12465	=> {
		typeID   => 12465,
		groupID  => 369,
		typeName => "Guristas Ship Log 534987422"
	},

	12466	=> {
		typeID   => 12466,
		groupID  => 369,
		typeName => "Guristas Ship Log 573652885"
	},

	12467	=> {
		typeID   => 12467,
		groupID  => 369,
		typeName => "Sansha Ship Log 104398459"
	},

	12468	=> {
		typeID   => 12468,
		groupID  => 369,
		typeName => "Sansha Ship Log 187342874"
	},

	12469	=> {
		typeID   => 12469,
		groupID  => 369,
		typeName => "Sansha Ship Log 148920447"
	},

	12474	=> {
		typeID   => 12474,
		groupID  => 369,
		typeName => "Sansha Ship Log 136423760"
	},

	12475	=> {
		typeID   => 12475,
		groupID  => 369,
		typeName => "Sansha Ship Log 112457832"
	},

	12476	=> {
		typeID   => 12476,
		groupID  => 369,
		typeName => "Sansha Ship Log 363587633"
	},

	12477	=> {
		typeID   => 12477,
		groupID  => 369,
		typeName => "Sansha Ship Log 309832812"
	},

	12478	=> {
		typeID   => 12478,
		groupID  => 314,
		typeName => "Khumaak"
	},

	12479	=> {
		typeID   => 12479,
		groupID  => 369,
		typeName => "Sansha Ship Log 322301875"
	},

	12480	=> {
		typeID   => 12480,
		groupID  => 369,
		typeName => "Sansha Ship Log 549327937"
	},

	12481	=> {
		typeID   => 12481,
		groupID  => 369,
		typeName => "Sansha Ship Log 566930267"
	},

	12484	=> {
		typeID   => 12484,
		groupID  => 273,
		typeName => "Amarr Drone Specialization"
	},

	12485	=> {
		typeID   => 12485,
		groupID  => 273,
		typeName => "Minmatar Drone Specialization"
	},

	12486	=> {
		typeID   => 12486,
		groupID  => 273,
		typeName => "Gallente Drone Specialization"
	},

	12487	=> {
		typeID   => 12487,
		groupID  => 273,
		typeName => "Caldari Drone Specialization"
	},

	12528	=> {
		typeID   => 12528,
		groupID  => 370,
		typeName => "Angel Silver Tag"
	},

	12529	=> {
		typeID   => 12529,
		groupID  => 370,
		typeName => "Angel Brass Tag"
	},

	12530	=> {
		typeID   => 12530,
		groupID  => 370,
		typeName => "Angel Palladium Tag"
	},

	12531	=> {
		typeID   => 12531,
		groupID  => 370,
		typeName => "Angel Crystal Tag"
	},

	12532	=> {
		typeID   => 12532,
		groupID  => 370,
		typeName => "Blood Bronze Tag"
	},

	12533	=> {
		typeID   => 12533,
		groupID  => 370,
		typeName => "Blood Silver Tag"
	},

	12534	=> {
		typeID   => 12534,
		groupID  => 370,
		typeName => "Blood Upper-Tier Tag"
	},

	12535	=> {
		typeID   => 12535,
		groupID  => 370,
		typeName => "Blood Platinum Tag"
	},

	12536	=> {
		typeID   => 12536,
		groupID  => 370,
		typeName => "Blood Crystal Tag"
	},

	12537	=> {
		typeID   => 12537,
		groupID  => 370,
		typeName => "Serpentis Bronze Tag"
	},

	12538	=> {
		typeID   => 12538,
		groupID  => 370,
		typeName => "Serpentis Silver Tag"
	},

	12539	=> {
		typeID   => 12539,
		groupID  => 370,
		typeName => "Serpentis Gold Tag"
	},

	12540	=> {
		typeID   => 12540,
		groupID  => 370,
		typeName => "Serpentis Platinum Tag"
	},

	12541	=> {
		typeID   => 12541,
		groupID  => 370,
		typeName => "Serpentis Crystal Tag"
	},

	12542	=> {
		typeID   => 12542,
		groupID  => 370,
		typeName => "Guristas Bronze Tag"
	},

	12543	=> {
		typeID   => 12543,
		groupID  => 370,
		typeName => "Guristas Silver Tag"
	},

	12544	=> {
		typeID   => 12544,
		groupID  => 370,
		typeName => "Guristas Gold Tag"
	},

	12545	=> {
		typeID   => 12545,
		groupID  => 370,
		typeName => "Guristas Platinum Tag"
	},

	12546	=> {
		typeID   => 12546,
		groupID  => 370,
		typeName => "Guristas Crystal Tag"
	},

	12547	=> {
		typeID   => 12547,
		groupID  => 370,
		typeName => "Sansha Bronze Tag"
	},

	12548	=> {
		typeID   => 12548,
		groupID  => 370,
		typeName => "Sansha Silver Tag"
	},

	12549	=> {
		typeID   => 12549,
		groupID  => 370,
		typeName => "Sansha Gold Tag"
	},

	12550	=> {
		typeID   => 12550,
		groupID  => 370,
		typeName => "Sansha Platinum Tag"
	},

	12551	=> {
		typeID   => 12551,
		groupID  => 370,
		typeName => "Sansha Crystal Tag"
	},

	12552	=> {
		typeID   => 12552,
		groupID  => 374,
		typeName => "Lux S"
	},

	12553	=> {
		typeID   => 12553,
		groupID  => 726,
		typeName => "Lux S Blueprint"
	},

	12554	=> {
		typeID   => 12554,
		groupID  => 306,
		typeName => "Munition Storage"
	},

	12555	=> {
		typeID   => 12555,
		groupID  => 306,
		typeName => "Charge Ammunition Storage"
	},

	12556	=> {
		typeID   => 12556,
		groupID  => 306,
		typeName => "Frequency Crystal Storage"
	},

	12557	=> {
		typeID   => 12557,
		groupID  => 374,
		typeName => "Gleam S"
	},

	12558	=> {
		typeID   => 12558,
		groupID  => 726,
		typeName => "Gleam S Blueprint"
	},

	12559	=> {
		typeID   => 12559,
		groupID  => 374,
		typeName => "Aurora S"
	},

	12560	=> {
		typeID   => 12560,
		groupID  => 726,
		typeName => "Aurora S Blueprint"
	},

	12561	=> {
		typeID   => 12561,
		groupID  => 375,
		typeName => "Blaze S"
	},

	12562	=> {
		typeID   => 12562,
		groupID  => 726,
		typeName => "Blaze S Blueprint"
	},

	12563	=> {
		typeID   => 12563,
		groupID  => 375,
		typeName => "Scorch S"
	},

	12564	=> {
		typeID   => 12564,
		groupID  => 726,
		typeName => "Scorch S Blueprint"
	},

	12565	=> {
		typeID   => 12565,
		groupID  => 375,
		typeName => "Conflagration S"
	},

	12566	=> {
		typeID   => 12566,
		groupID  => 726,
		typeName => "Conflagration S Blueprint"
	},

	12597	=> {
		typeID   => 12597,
		groupID  => 369,
		typeName => "Angel Ship Log 516543793"
	},

	12598	=> {
		typeID   => 12598,
		groupID  => 369,
		typeName => "Blood Raider Log 533870654"
	},

	12599	=> {
		typeID   => 12599,
		groupID  => 369,
		typeName => "Serpentis Ship Log 598549355"
	},

	12600	=> {
		typeID   => 12600,
		groupID  => 369,
		typeName => "Guristas Ship Log 524785540"
	},

	12601	=> {
		typeID   => 12601,
		groupID  => 369,
		typeName => "Sansha Ship Log 500237688"
	},

	12602	=> {
		typeID   => 12602,
		groupID  => 306,
		typeName => "Missile Storage"
	},

	12604	=> {
		typeID   => 12604,
		groupID  => 48,
		typeName => "BH Ship Scanner"
	},

	12608	=> {
		typeID   => 12608,
		groupID  => 372,
		typeName => "Hail S"
	},

	12609	=> {
		typeID   => 12609,
		groupID  => 725,
		typeName => "Hail S Blueprint"
	},

	12610	=> {
		typeID   => 12610,
		groupID  => 377,
		typeName => "Desolation S"
	},

	12611	=> {
		typeID   => 12611,
		groupID  => 722,
		typeName => "Desolation S Blueprint"
	},

	12612	=> {
		typeID   => 12612,
		groupID  => 377,
		typeName => "Void S"
	},

	12613	=> {
		typeID   => 12613,
		groupID  => 722,
		typeName => "Void S Blueprint"
	},

	12614	=> {
		typeID   => 12614,
		groupID  => 377,
		typeName => "Null S"
	},

	12615	=> {
		typeID   => 12615,
		groupID  => 722,
		typeName => "Null S Blueprint"
	},

	12616	=> {
		typeID   => 12616,
		groupID  => 373,
		typeName => "Bolt S"
	},

	12617	=> {
		typeID   => 12617,
		groupID  => 722,
		typeName => "Bolt S Blueprint"
	},

	12618	=> {
		typeID   => 12618,
		groupID  => 373,
		typeName => "Spike S"
	},

	12619	=> {
		typeID   => 12619,
		groupID  => 722,
		typeName => "Spike S Blueprint"
	},

	12620	=> {
		typeID   => 12620,
		groupID  => 373,
		typeName => "Javelin S"
	},

	12621	=> {
		typeID   => 12621,
		groupID  => 722,
		typeName => "Javelin S Blueprint"
	},

	12625	=> {
		typeID   => 12625,
		groupID  => 372,
		typeName => "Barrage S"
	},

	12626	=> {
		typeID   => 12626,
		groupID  => 725,
		typeName => "Barrage S Blueprint"
	},

	12627	=> {
		typeID   => 12627,
		groupID  => 372,
		typeName => "Storm S"
	},

	12628	=> {
		typeID   => 12628,
		groupID  => 725,
		typeName => "Storm S Blueprint"
	},

	12629	=> {
		typeID   => 12629,
		groupID  => 376,
		typeName => "Shock S"
	},

	12630	=> {
		typeID   => 12630,
		groupID  => 725,
		typeName => "Shock S Blueprint"
	},

	12631	=> {
		typeID   => 12631,
		groupID  => 376,
		typeName => "Quake S"
	},

	12632	=> {
		typeID   => 12632,
		groupID  => 725,
		typeName => "Quake S Blueprint"
	},

	12633	=> {
		typeID   => 12633,
		groupID  => 376,
		typeName => "Tremor S"
	},

	12634	=> {
		typeID   => 12634,
		groupID  => 725,
		typeName => "Tremor S Blueprint"
	},

	12709	=> {
		typeID   => 12709,
		groupID  => 379,
		typeName => "Target Painter I"
	},

	12710	=> {
		typeID   => 12710,
		groupID  => 504,
		typeName => "Target Painter I Blueprint"
	},

	12711	=> {
		typeID   => 12711,
		groupID  => 341,
		typeName => "Small Active Stealth System I"
	},

	12712	=> {
		typeID   => 12712,
		groupID  => 120,
		typeName => "Small Active Stealth System I Blueprint"
	},

	12713	=> {
		typeID   => 12713,
		groupID  => 341,
		typeName => "Medium Active Stealth System I"
	},

	12714	=> {
		typeID   => 12714,
		groupID  => 120,
		typeName => "Medium Active Stealth System I Blueprint"
	},

	12715	=> {
		typeID   => 12715,
		groupID  => 341,
		typeName => "Large Active Stealth System I"
	},

	12716	=> {
		typeID   => 12716,
		groupID  => 120,
		typeName => "Large Active Stealth System I Blueprint"
	},

	12717	=> {
		typeID   => 12717,
		groupID  => 341,
		typeName => "Huge Active Stealth System I"
	},

	12718	=> {
		typeID   => 12718,
		groupID  => 120,
		typeName => "Huge Active Stealth System I Blueprint"
	},

	12729	=> {
		typeID   => 12729,
		groupID  => 1202,
		typeName => "Crane"
	},

	12730	=> {
		typeID   => 12730,
		groupID  => 503,
		typeName => "Crane Blueprint"
	},

	12731	=> {
		typeID   => 12731,
		groupID  => 380,
		typeName => "Bustard"
	},

	12732	=> {
		typeID   => 12732,
		groupID  => 503,
		typeName => "Bustard Blueprint"
	},

	12733	=> {
		typeID   => 12733,
		groupID  => 1202,
		typeName => "Prorator"
	},

	12734	=> {
		typeID   => 12734,
		groupID  => 503,
		typeName => "Prorator Blueprint"
	},

	12735	=> {
		typeID   => 12735,
		groupID  => 1202,
		typeName => "Prowler"
	},

	12736	=> {
		typeID   => 12736,
		groupID  => 503,
		typeName => "Prowler Blueprint"
	},

	12743	=> {
		typeID   => 12743,
		groupID  => 1202,
		typeName => "Viator"
	},

	12744	=> {
		typeID   => 12744,
		groupID  => 503,
		typeName => "Viator Blueprint"
	},

	12745	=> {
		typeID   => 12745,
		groupID  => 380,
		typeName => "Occator"
	},

	12746	=> {
		typeID   => 12746,
		groupID  => 503,
		typeName => "Occator Blueprint"
	},

	12747	=> {
		typeID   => 12747,
		groupID  => 380,
		typeName => "Mastodon"
	},

	12748	=> {
		typeID   => 12748,
		groupID  => 503,
		typeName => "Mastodon Blueprint"
	},

	12753	=> {
		typeID   => 12753,
		groupID  => 380,
		typeName => "Impel"
	},

	12754	=> {
		typeID   => 12754,
		groupID  => 503,
		typeName => "Impel Blueprint"
	},

	12761	=> {
		typeID   => 12761,
		groupID  => 376,
		typeName => "Quake L"
	},

	12762	=> {
		typeID   => 12762,
		groupID  => 725,
		typeName => "Quake L Blueprint"
	},

	12763	=> {
		typeID   => 12763,
		groupID  => 376,
		typeName => "Shock L"
	},

	12764	=> {
		typeID   => 12764,
		groupID  => 725,
		typeName => "Shock L Blueprint"
	},

	12765	=> {
		typeID   => 12765,
		groupID  => 376,
		typeName => "Tremor L"
	},

	12766	=> {
		typeID   => 12766,
		groupID  => 725,
		typeName => "Tremor L Blueprint"
	},

	12767	=> {
		typeID   => 12767,
		groupID  => 376,
		typeName => "Quake M"
	},

	12768	=> {
		typeID   => 12768,
		groupID  => 725,
		typeName => "Quake M Blueprint"
	},

	12769	=> {
		typeID   => 12769,
		groupID  => 376,
		typeName => "Shock M"
	},

	12770	=> {
		typeID   => 12770,
		groupID  => 725,
		typeName => "Shock M Blueprint"
	},

	12771	=> {
		typeID   => 12771,
		groupID  => 376,
		typeName => "Tremor M"
	},

	12772	=> {
		typeID   => 12772,
		groupID  => 725,
		typeName => "Tremor M Blueprint"
	},

	12773	=> {
		typeID   => 12773,
		groupID  => 372,
		typeName => "Barrage M"
	},

	12774	=> {
		typeID   => 12774,
		groupID  => 725,
		typeName => "Barrage M Blueprint"
	},

	12775	=> {
		typeID   => 12775,
		groupID  => 372,
		typeName => "Barrage L"
	},

	12776	=> {
		typeID   => 12776,
		groupID  => 725,
		typeName => "Barrage L Blueprint"
	},

	12777	=> {
		typeID   => 12777,
		groupID  => 372,
		typeName => "Hail M"
	},

	12778	=> {
		typeID   => 12778,
		groupID  => 725,
		typeName => "Hail M Blueprint"
	},

	12779	=> {
		typeID   => 12779,
		groupID  => 372,
		typeName => "Hail L"
	},

	12780	=> {
		typeID   => 12780,
		groupID  => 725,
		typeName => "Hail L Blueprint"
	},

	12781	=> {
		typeID   => 12781,
		groupID  => 372,
		typeName => "Storm M"
	},

	12782	=> {
		typeID   => 12782,
		groupID  => 725,
		typeName => "Storm M Blueprint"
	},

	12783	=> {
		typeID   => 12783,
		groupID  => 372,
		typeName => "Storm L"
	},

	12784	=> {
		typeID   => 12784,
		groupID  => 725,
		typeName => "Storm L Blueprint"
	},

	12785	=> {
		typeID   => 12785,
		groupID  => 377,
		typeName => "Null M"
	},

	12786	=> {
		typeID   => 12786,
		groupID  => 722,
		typeName => "Null M Blueprint"
	},

	12787	=> {
		typeID   => 12787,
		groupID  => 377,
		typeName => "Null L"
	},

	12788	=> {
		typeID   => 12788,
		groupID  => 722,
		typeName => "Null L Blueprint"
	},

	12789	=> {
		typeID   => 12789,
		groupID  => 377,
		typeName => "Void M"
	},

	12790	=> {
		typeID   => 12790,
		groupID  => 722,
		typeName => "Void M Blueprint"
	},

	12791	=> {
		typeID   => 12791,
		groupID  => 377,
		typeName => "Void L"
	},

	12792	=> {
		typeID   => 12792,
		groupID  => 722,
		typeName => "Void L Blueprint"
	},

	12793	=> {
		typeID   => 12793,
		groupID  => 377,
		typeName => "Desolation M"
	},

	12794	=> {
		typeID   => 12794,
		groupID  => 722,
		typeName => "Desolation M Blueprint"
	},

	12795	=> {
		typeID   => 12795,
		groupID  => 377,
		typeName => "Desolation L"
	},

	12796	=> {
		typeID   => 12796,
		groupID  => 722,
		typeName => "Desolation L Blueprint"
	},

	12797	=> {
		typeID   => 12797,
		groupID  => 373,
		typeName => "Bolt M"
	},

	12798	=> {
		typeID   => 12798,
		groupID  => 722,
		typeName => "Bolt M Blueprint"
	},

	12799	=> {
		typeID   => 12799,
		groupID  => 373,
		typeName => "Bolt L"
	},

	12800	=> {
		typeID   => 12800,
		groupID  => 722,
		typeName => "Bolt L Blueprint"
	},

	12801	=> {
		typeID   => 12801,
		groupID  => 373,
		typeName => "Javelin M"
	},

	12802	=> {
		typeID   => 12802,
		groupID  => 722,
		typeName => "Javelin M Blueprint"
	},

	12803	=> {
		typeID   => 12803,
		groupID  => 373,
		typeName => "Javelin L"
	},

	12804	=> {
		typeID   => 12804,
		groupID  => 722,
		typeName => "Javelin L Blueprint"
	},

	12805	=> {
		typeID   => 12805,
		groupID  => 373,
		typeName => "Spike M"
	},

	12806	=> {
		typeID   => 12806,
		groupID  => 722,
		typeName => "Spike M Blueprint"
	},

	12807	=> {
		typeID   => 12807,
		groupID  => 373,
		typeName => "Spike L"
	},

	12808	=> {
		typeID   => 12808,
		groupID  => 722,
		typeName => "Spike L Blueprint"
	},

	12810	=> {
		typeID   => 12810,
		groupID  => 375,
		typeName => "Blaze M"
	},

	12811	=> {
		typeID   => 12811,
		groupID  => 726,
		typeName => "Blaze M Blueprint"
	},

	12812	=> {
		typeID   => 12812,
		groupID  => 375,
		typeName => "Blaze L"
	},

	12813	=> {
		typeID   => 12813,
		groupID  => 726,
		typeName => "Blaze L Blueprint"
	},

	12814	=> {
		typeID   => 12814,
		groupID  => 375,
		typeName => "Conflagration M"
	},

	12815	=> {
		typeID   => 12815,
		groupID  => 726,
		typeName => "Conflagration M Blueprint"
	},

	12816	=> {
		typeID   => 12816,
		groupID  => 375,
		typeName => "Conflagration L"
	},

	12817	=> {
		typeID   => 12817,
		groupID  => 726,
		typeName => "Conflagration L Blueprint"
	},

	12818	=> {
		typeID   => 12818,
		groupID  => 375,
		typeName => "Scorch M"
	},

	12819	=> {
		typeID   => 12819,
		groupID  => 726,
		typeName => "Scorch M Blueprint"
	},

	12820	=> {
		typeID   => 12820,
		groupID  => 375,
		typeName => "Scorch L"
	},

	12821	=> {
		typeID   => 12821,
		groupID  => 726,
		typeName => "Scorch L Blueprint"
	},

	12822	=> {
		typeID   => 12822,
		groupID  => 374,
		typeName => "Aurora M"
	},

	12823	=> {
		typeID   => 12823,
		groupID  => 726,
		typeName => "Aurora M Blueprint"
	},

	12824	=> {
		typeID   => 12824,
		groupID  => 374,
		typeName => "Aurora L"
	},

	12825	=> {
		typeID   => 12825,
		groupID  => 726,
		typeName => "Aurora L Blueprint"
	},

	12826	=> {
		typeID   => 12826,
		groupID  => 374,
		typeName => "Gleam M"
	},

	12827	=> {
		typeID   => 12827,
		groupID  => 726,
		typeName => "Gleam M Blueprint"
	},

	12828	=> {
		typeID   => 12828,
		groupID  => 374,
		typeName => "Gleam L"
	},

	12829	=> {
		typeID   => 12829,
		groupID  => 726,
		typeName => "Gleam L Blueprint"
	},

	12830	=> {
		typeID   => 12830,
		groupID  => 374,
		typeName => "Lux M"
	},

	12831	=> {
		typeID   => 12831,
		groupID  => 726,
		typeName => "Lux M Blueprint"
	},

	12832	=> {
		typeID   => 12832,
		groupID  => 374,
		typeName => "Lux L"
	},

	12833	=> {
		typeID   => 12833,
		groupID  => 726,
		typeName => "Lux L Blueprint"
	},

	12834	=> {
		typeID   => 12834,
		groupID  => 274,
		typeName => "General Freight"
	},

	12835	=> {
		typeID   => 12835,
		groupID  => 817,
		typeName => "Mercenary Commander"
	},

	12836	=> {
		typeID   => 12836,
		groupID  => 1040,
		typeName => "Transcranial Microcontrollers"
	},

	12847	=> {
		typeID   => 12847,
		groupID  => 382,
		typeName => "Ammo Shipping Crate"
	},

	12850	=> {
		typeID   => 12850,
		groupID  => 382,
		typeName => "General Shipping Crate"
	},

	12851	=> {
		typeID   => 12851,
		groupID  => 382,
		typeName => "Consumable Shipping Crate"
	},

	12852	=> {
		typeID   => 12852,
		groupID  => 382,
		typeName => "Hazardous Material Shipping Crate"
	},

	12853	=> {
		typeID   => 12853,
		groupID  => 382,
		typeName => "Raw Material Shipping Crate"
	},

	12854	=> {
		typeID   => 12854,
		groupID  => 382,
		typeName => "Frigate Shipping Crate"
	},

	12856	=> {
		typeID   => 12856,
		groupID  => 382,
		typeName => "Mineral Shipping Crate"
	},

	12865	=> {
		typeID   => 12865,
		groupID  => 280,
		typeName => "Quafe Ultra"
	},

	12867	=> {
		typeID   => 12867,
		groupID  => 333,
		typeName => "Datacore - Talocan Tech 1"
	},

	12892	=> {
		typeID   => 12892,
		groupID  => 817,
		typeName => "Maryk Ogun"
	},

	12989	=> {
		typeID   => 12989,
		groupID  => 319,
		typeName => "Rent-A-Dream Pleasure Gardens"
	},

	12994	=> {
		typeID   => 12994,
		groupID  => 314,
		typeName => "Quafe Ultra Special Edition"
	},

	12995	=> {
		typeID   => 12995,
		groupID  => 314,
		typeName => "Ultra! Promotional holoreel"
	},

	12996	=> {
		typeID   => 12996,
		groupID  => 817,
		typeName => "UDI Mercenary"
	},

	12999	=> {
		typeID   => 12999,
		groupID  => 668,
		typeName => "Ammatar Navy Augoror"
	},

	13000	=> {
		typeID   => 13000,
		groupID  => 401,
		typeName => "Prototype Cloaking Device I Blueprint"
	},

	13001	=> {
		typeID   => 13001,
		groupID  => 68,
		typeName => "Small Energy Nosferatu II"
	},

	13002	=> {
		typeID   => 13002,
		groupID  => 148,
		typeName => "Small Energy Nosferatu II Blueprint"
	},

	13003	=> {
		typeID   => 13003,
		groupID  => 71,
		typeName => "Small Energy Neutralizer II"
	},

	13004	=> {
		typeID   => 13004,
		groupID  => 151,
		typeName => "Small Energy Neutralizer II Blueprint"
	},

	13032	=> {
		typeID   => 13032,
		groupID  => 550,
		typeName => "Arch Angel Rogue"
	},

	13033	=> {
		typeID   => 13033,
		groupID  => 550,
		typeName => "Arch Angel Thug"
	},

	13034	=> {
		typeID   => 13034,
		groupID  => 319,
		typeName => "Power Generator"
	},

	13035	=> {
		typeID   => 13035,
		groupID  => 550,
		typeName => "Arch Angel Hijacker"
	},

	13036	=> {
		typeID   => 13036,
		groupID  => 550,
		typeName => "Arch Angel Outlaw"
	},

	13037	=> {
		typeID   => 13037,
		groupID  => 557,
		typeName => "Elder Blood Upholder"
	},

	13038	=> {
		typeID   => 13038,
		groupID  => 557,
		typeName => "Elder Blood Worshipper"
	},

	13039	=> {
		typeID   => 13039,
		groupID  => 557,
		typeName => "Elder Blood Follower"
	},

	13040	=> {
		typeID   => 13040,
		groupID  => 557,
		typeName => "Elder Blood Herald"
	},

	13041	=> {
		typeID   => 13041,
		groupID  => 562,
		typeName => "Dire Guristas Invader"
	},

	13042	=> {
		typeID   => 13042,
		groupID  => 562,
		typeName => "Dire Guristas Infiltrator"
	},

	13043	=> {
		typeID   => 13043,
		groupID  => 562,
		typeName => "Dire Guristas Imputor"
	},

	13044	=> {
		typeID   => 13044,
		groupID  => 562,
		typeName => "Dire Guristas Arrogator"
	},

	13045	=> {
		typeID   => 13045,
		groupID  => 567,
		typeName => "Sansha's Loyal Ravener"
	},

	13046	=> {
		typeID   => 13046,
		groupID  => 567,
		typeName => "Sansha's Loyal Scavanger"
	},

	13047	=> {
		typeID   => 13047,
		groupID  => 567,
		typeName => "Sansha's Loyal Minion"
	},

	13048	=> {
		typeID   => 13048,
		groupID  => 567,
		typeName => "Sansha's Loyal Servant"
	},

	13049	=> {
		typeID   => 13049,
		groupID  => 572,
		typeName => "Guardian Agent"
	},

	13050	=> {
		typeID   => 13050,
		groupID  => 572,
		typeName => "Guardian Spy"
	},

	13051	=> {
		typeID   => 13051,
		groupID  => 572,
		typeName => "Guardian Scout"
	},

	13052	=> {
		typeID   => 13052,
		groupID  => 572,
		typeName => "Guardian Initiate"
	},

	13067	=> {
		typeID   => 13067,
		groupID  => 314,
		typeName => "Smurgleblaster"
	},

	13068	=> {
		typeID   => 13068,
		groupID  => 383,
		typeName => "Guristas Sentry Gun"
	},

	13069	=> {
		typeID   => 13069,
		groupID  => 274,
		typeName => "Starship Freight"
	},

	13070	=> {
		typeID   => 13070,
		groupID  => 274,
		typeName => "Mineral Freight"
	},

	13071	=> {
		typeID   => 13071,
		groupID  => 274,
		typeName => "Munitions Freight"
	},

	13072	=> {
		typeID   => 13072,
		groupID  => 274,
		typeName => "Drone Freight"
	},

	13073	=> {
		typeID   => 13073,
		groupID  => 274,
		typeName => "Raw Material Freight"
	},

	13074	=> {
		typeID   => 13074,
		groupID  => 274,
		typeName => "Consumable Freight"
	},

	13075	=> {
		typeID   => 13075,
		groupID  => 274,
		typeName => "Hazardous Material Freight"
	},

	13104	=> {
		typeID   => 13104,
		groupID  => 671,
		typeName => "Caldari Navy Officer"
	},

	13105	=> {
		typeID   => 13105,
		groupID  => 683,
		typeName => "Republic Fleet Officer"
	},

	13106	=> {
		typeID   => 13106,
		groupID  => 319,
		typeName => "Scanner Post"
	},

	13107	=> {
		typeID   => 13107,
		groupID  => 668,
		typeName => "Imperial Navy Officer"
	},

	13112	=> {
		typeID   => 13112,
		groupID  => 677,
		typeName => "Federation Navy Officer"
	},

	13113	=> {
		typeID   => 13113,
		groupID  => 383,
		typeName => "Sansha Sentry Gun"
	},

	13114	=> {
		typeID   => 13114,
		groupID  => 383,
		typeName => "Angel Sentry Gun"
	},

	13115	=> {
		typeID   => 13115,
		groupID  => 383,
		typeName => "Serpentis Sentry Gun"
	},

	13116	=> {
		typeID   => 13116,
		groupID  => 383,
		typeName => "Blood Raider Sentry Gun"
	},

	13119	=> {
		typeID   => 13119,
		groupID  => 648,
		typeName => "Mjolnir Javelin Rocket"
	},

	13163	=> {
		typeID   => 13163,
		groupID  => 818,
		typeName => "Mercenary Elite Fighter"
	},

	13166	=> {
		typeID   => 13166,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Gunnery RF-903"
	},

	13200	=> {
		typeID   => 13200,
		groupID  => 319,
		typeName => "Large EM Forcefield"
	},

	13201	=> {
		typeID   => 13201,
		groupID  => 817,
		typeName => "Testgaur"
	},

	13202	=> {
		typeID   => 13202,
		groupID  => 27,
		typeName => "Megathron Federate Issue"
	},

	13203	=> {
		typeID   => 13203,
		groupID  => 107,
		typeName => "Megathron Federate Issue Blueprint"
	},

	13204	=> {
		typeID   => 13204,
		groupID  => 314,
		typeName => "Sacred Bricks"
	},

	13205	=> {
		typeID   => 13205,
		groupID  => 314,
		typeName => "Heart Stone"
	},

	13206	=> {
		typeID   => 13206,
		groupID  => 314,
		typeName => "Defiled Relics"
	},

	13209	=> {
		typeID   => 13209,
		groupID  => 744,
		typeName => "Armored Warfare Mindlink"
	},

	13210	=> {
		typeID   => 13210,
		groupID  => 314,
		typeName => "Cerebral Slice"
	},

	13211	=> {
		typeID   => 13211,
		groupID  => 314,
		typeName => "Epidermis Sliver"
	},

	13212	=> {
		typeID   => 13212,
		groupID  => 314,
		typeName => "Liver Bile"
	},

	13213	=> {
		typeID   => 13213,
		groupID  => 314,
		typeName => "Blood Drop"
	},

	13214	=> {
		typeID   => 13214,
		groupID  => 314,
		typeName => "Bone Splinter"
	},

	13215	=> {
		typeID   => 13215,
		groupID  => 314,
		typeName => "Complex Fullerene Shard"
	},

	13216	=> {
		typeID   => 13216,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' CPU Management EE-603"
	},

	13217	=> {
		typeID   => 13217,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Large Energy Turret LE-1003"
	},

	13218	=> {
		typeID   => 13218,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Large Hybrid Turret LH-1003"
	},

	13219	=> {
		typeID   => 13219,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Large Projectile Turret LP-1003"
	},

	13220	=> {
		typeID   => 13220,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Medium Energy Turret ME-803"
	},

	13221	=> {
		typeID   => 13221,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Medium Hybrid Turret MH-803"
	},

	13222	=> {
		typeID   => 13222,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Medium Projectile Turret MP-803"
	},

	13223	=> {
		typeID   => 13223,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Small Energy Turret SE-603"
	},

	13224	=> {
		typeID   => 13224,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Small Hybrid Turret SH-603"
	},

	13225	=> {
		typeID   => 13225,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Small Projectile Turret SP-603"
	},

	13226	=> {
		typeID   => 13226,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Cruise Missiles CM-603"
	},

	13227	=> {
		typeID   => 13227,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Defender Missiles DM-803"
	},

	13228	=> {
		typeID   => 13228,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' FOF Explosion Radius FR-1003"
	},

	13229	=> {
		typeID   => 13229,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Heavy Missiles HM-703"
	},

	13230	=> {
		typeID   => 13230,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Rockets RD-903"
	},

	13231	=> {
		typeID   => 13231,
		groupID  => 746,
		typeName => "Zainou 'Snapshot' Torpedoes TD-603"
	},

	13232	=> {
		typeID   => 13232,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Electronic Warfare EW-903"
	},

	13233	=> {
		typeID   => 13233,
		groupID  => 1228,
		typeName => "Zainou 'Gypsy' Long Range Targeting LT-803"
	},

	13234	=> {
		typeID   => 13234,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Propulsion Jamming PJ-803"
	},

	13235	=> {
		typeID   => 13235,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Sensor Linking SL-903"
	},

	13236	=> {
		typeID   => 13236,
		groupID  => 740,
		typeName => "Zainou 'Gypsy' Weapon Disruption WD-903"
	},

	13237	=> {
		typeID   => 13237,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Navigation NN-603"
	},

	13238	=> {
		typeID   => 13238,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Fuel Conservation FC-803"
	},

	13239	=> {
		typeID   => 13239,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Afterburner AB-606"
	},

	13240	=> {
		typeID   => 13240,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Evasive Maneuvering EM-703"
	},

	13241	=> {
		typeID   => 13241,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Operation WD-606"
	},

	13242	=> {
		typeID   => 13242,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Warp Drive Speed WS-610"
	},

	13243	=> {
		typeID   => 13243,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' High Speed Maneuvering HS-903"
	},

	13244	=> {
		typeID   => 13244,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Surgical Strike SS-903"
	},

	13245	=> {
		typeID   => 13245,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Trajectory Analysis TA-703"
	},

	13246	=> {
		typeID   => 13246,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Controlled Bursts CB-703"
	},

	13247	=> {
		typeID   => 13247,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Bombardment MB-703"
	},

	13248	=> {
		typeID   => 13248,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Missile Projection MP-703"
	},

	13249	=> {
		typeID   => 13249,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Rapid Launch RL-1003"
	},

	13250	=> {
		typeID   => 13250,
		groupID  => 746,
		typeName => "Zainou 'Deadeye' Target Navigation Prediction TN-903"
	},

	13251	=> {
		typeID   => 13251,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Pulse Weapons EP-703"
	},

	13252	=> {
		typeID   => 13252,
		groupID  => 742,
		typeName => "Zainou 'Gnome' Weapon Upgrades WU-1003"
	},

	13253	=> {
		typeID   => 13253,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Upgrades SU-603"
	},

	13254	=> {
		typeID   => 13254,
		groupID  => 741,
		typeName => "Zainou 'Gypsy' Electronics Upgrades EU-603"
	},

	13255	=> {
		typeID   => 13255,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Energy Grid Upgrades EU-703"
	},

	13256	=> {
		typeID   => 13256,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Hull Upgrades HG-1003"
	},

	13257	=> {
		typeID   => 13257,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Mechanic MC-803"
	},

	13258	=> {
		typeID   => 13258,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Systems RS-603"
	},

	13259	=> {
		typeID   => 13259,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Management EM-803"
	},

	13260	=> {
		typeID   => 13260,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Systems Operation EO-603"
	},

	13261	=> {
		typeID   => 13261,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Power Grid Management EG-603"
	},

	13262	=> {
		typeID   => 13262,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Emission Systems SE-803"
	},

	13263	=> {
		typeID   => 13263,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Operation SP-903"
	},

	13265	=> {
		typeID   => 13265,
		groupID  => 741,
		typeName => "Inherent Implants 'Squire' Capacitor Emission Systems ES-703"
	},

	13267	=> {
		typeID   => 13267,
		groupID  => 283,
		typeName => "Janitor"
	},

	13268	=> {
		typeID   => 13268,
		groupID  => 817,
		typeName => "Cathedral Carrier"
	},

	13278	=> {
		typeID   => 13278,
		groupID  => 1217,
		typeName => "Archaeology"
	},

	13279	=> {
		typeID   => 13279,
		groupID  => 1241,
		typeName => "Remote Sensing"
	},

	13283	=> {
		typeID   => 13283,
		groupID  => 745,
		typeName => "Limited Ocular Filter"
	},

	13284	=> {
		typeID   => 13284,
		groupID  => 745,
		typeName => "Limited Memory Augmentation"
	},

	13285	=> {
		typeID   => 13285,
		groupID  => 745,
		typeName => "Limited Neural Boost"
	},

	13286	=> {
		typeID   => 13286,
		groupID  => 745,
		typeName => "Limited Social Adaptation Chip"
	},

	13287	=> {
		typeID   => 13287,
		groupID  => 745,
		typeName => "Limited Cybernetic Subprocessor"
	},

	13288	=> {
		typeID   => 13288,
		groupID  => 314,
		typeName => "DNA Sample"
	},

	13320	=> {
		typeID   => 13320,
		groupID  => 506,
		typeName => "Cruise Missile Launcher I"
	},

	13321	=> {
		typeID   => 13321,
		groupID  => 136,
		typeName => "Cruise Missile Launcher I Blueprint"
	},

	13323	=> {
		typeID   => 13323,
		groupID  => 287,
		typeName => "Rogue Drone"
	},

	13328	=> {
		typeID   => 13328,
		groupID  => 314,
		typeName => "Star Charts"
	},

	13513	=> {
		typeID   => 13513,
		groupID  => 817,
		typeName => "Rogue Pirate"
	},

	13514	=> {
		typeID   => 13514,
		groupID  => 816,
		typeName => "Rogue Pirate Leader"
	},

	13515	=> {
		typeID   => 13515,
		groupID  => 789,
		typeName => "Domination Hijacker"
	},

	13516	=> {
		typeID   => 13516,
		groupID  => 789,
		typeName => "Domination Rogue"
	},

	13517	=> {
		typeID   => 13517,
		groupID  => 789,
		typeName => "Domination Outlaw"
	},

	13518	=> {
		typeID   => 13518,
		groupID  => 789,
		typeName => "Domination Thug"
	},

	13519	=> {
		typeID   => 13519,
		groupID  => 789,
		typeName => "Domination Ambusher"
	},

	13520	=> {
		typeID   => 13520,
		groupID  => 790,
		typeName => "Domination Depredator"
	},

	13521	=> {
		typeID   => 13521,
		groupID  => 789,
		typeName => "Domination Hunter"
	},

	13522	=> {
		typeID   => 13522,
		groupID  => 789,
		typeName => "Domination Impaler"
	},

	13523	=> {
		typeID   => 13523,
		groupID  => 790,
		typeName => "Domination Crusher"
	},

	13524	=> {
		typeID   => 13524,
		groupID  => 790,
		typeName => "Domination Smasher"
	},

	13525	=> {
		typeID   => 13525,
		groupID  => 789,
		typeName => "Domination Nomad"
	},

	13526	=> {
		typeID   => 13526,
		groupID  => 790,
		typeName => "Domination Predator"
	},

	13527	=> {
		typeID   => 13527,
		groupID  => 789,
		typeName => "Domination Raider"
	},

	13528	=> {
		typeID   => 13528,
		groupID  => 789,
		typeName => "Domination Ruffian"
	},

	13529	=> {
		typeID   => 13529,
		groupID  => 790,
		typeName => "Domination Breaker"
	},

	13530	=> {
		typeID   => 13530,
		groupID  => 790,
		typeName => "Domination Defeater"
	},

	13531	=> {
		typeID   => 13531,
		groupID  => 790,
		typeName => "Domination Marauder"
	},

	13532	=> {
		typeID   => 13532,
		groupID  => 790,
		typeName => "Domination Phalanx"
	},

	13533	=> {
		typeID   => 13533,
		groupID  => 790,
		typeName => "Domination Liquidator"
	},

	13534	=> {
		typeID   => 13534,
		groupID  => 790,
		typeName => "Domination Centurion"
	},

	13535	=> {
		typeID   => 13535,
		groupID  => 848,
		typeName => "Domination Commander"
	},

	13536	=> {
		typeID   => 13536,
		groupID  => 553,
		typeName => "Mizuro Cybon"
	},

	13537	=> {
		typeID   => 13537,
		groupID  => 848,
		typeName => "Domination General"
	},

	13538	=> {
		typeID   => 13538,
		groupID  => 553,
		typeName => "Hakim Stormare"
	},

	13539	=> {
		typeID   => 13539,
		groupID  => 848,
		typeName => "Domination War General"
	},

	13540	=> {
		typeID   => 13540,
		groupID  => 848,
		typeName => "Domination Saint"
	},

	13541	=> {
		typeID   => 13541,
		groupID  => 553,
		typeName => "Gotan Kreiss"
	},

	13542	=> {
		typeID   => 13542,
		groupID  => 848,
		typeName => "Domination Nephilim"
	},

	13543	=> {
		typeID   => 13543,
		groupID  => 848,
		typeName => "Domination Warlord"
	},

	13544	=> {
		typeID   => 13544,
		groupID  => 553,
		typeName => "Tobias Kruzhor"
	},

	13545	=> {
		typeID   => 13545,
		groupID  => 792,
		typeName => "Dark Blood Reaver"
	},

	13546	=> {
		typeID   => 13546,
		groupID  => 792,
		typeName => "Dark Blood Follower"
	},

	13547	=> {
		typeID   => 13547,
		groupID  => 791,
		typeName => "Dark Blood Arch Engraver"
	},

	13548	=> {
		typeID   => 13548,
		groupID  => 791,
		typeName => "Dark Blood Arch Priest"
	},

	13549	=> {
		typeID   => 13549,
		groupID  => 791,
		typeName => "Dark Blood Dark Priest"
	},

	13550	=> {
		typeID   => 13550,
		groupID  => 791,
		typeName => "Dark Blood Arch Reaver"
	},

	13551	=> {
		typeID   => 13551,
		groupID  => 791,
		typeName => "Dark Blood Arch Sage"
	},

	13552	=> {
		typeID   => 13552,
		groupID  => 791,
		typeName => "Dark Blood Shadow Sage"
	},

	13553	=> {
		typeID   => 13553,
		groupID  => 791,
		typeName => "Dark Blood Arch Templar"
	},

	13554	=> {
		typeID   => 13554,
		groupID  => 792,
		typeName => "Dark Blood Diviner"
	},

	13555	=> {
		typeID   => 13555,
		groupID  => 792,
		typeName => "Dark Blood Upholder"
	},

	13556	=> {
		typeID   => 13556,
		groupID  => 849,
		typeName => "Dark Blood Prophet"
	},

	13557	=> {
		typeID   => 13557,
		groupID  => 559,
		typeName => "Raysere Giant"
	},

	13558	=> {
		typeID   => 13558,
		groupID  => 792,
		typeName => "Dark Blood Collector"
	},

	13559	=> {
		typeID   => 13559,
		groupID  => 849,
		typeName => "Dark Blood Oracle"
	},

	13560	=> {
		typeID   => 13560,
		groupID  => 849,
		typeName => "Dark Blood Archbishop"
	},

	13561	=> {
		typeID   => 13561,
		groupID  => 559,
		typeName => "Ahremen Arkah"
	},

	13562	=> {
		typeID   => 13562,
		groupID  => 849,
		typeName => "Dark Blood Apostle"
	},

	13563	=> {
		typeID   => 13563,
		groupID  => 849,
		typeName => "Dark Blood Harbinger"
	},

	13564	=> {
		typeID   => 13564,
		groupID  => 559,
		typeName => "Draclira Merlonne"
	},

	13565	=> {
		typeID   => 13565,
		groupID  => 791,
		typeName => "Dark Blood Priest"
	},

	13566	=> {
		typeID   => 13566,
		groupID  => 792,
		typeName => "Dark Blood Raider"
	},

	13567	=> {
		typeID   => 13567,
		groupID  => 792,
		typeName => "Dark Blood Herald"
	},

	13568	=> {
		typeID   => 13568,
		groupID  => 792,
		typeName => "Dark Blood Seeker"
	},

	13569	=> {
		typeID   => 13569,
		groupID  => 791,
		typeName => "Dark Blood Revenant"
	},

	13570	=> {
		typeID   => 13570,
		groupID  => 791,
		typeName => "Dark Blood Sage"
	},

	13571	=> {
		typeID   => 13571,
		groupID  => 792,
		typeName => "Dark Blood Worshipper"
	},

	13572	=> {
		typeID   => 13572,
		groupID  => 849,
		typeName => "Dark Blood Archon"
	},

	13573	=> {
		typeID   => 13573,
		groupID  => 559,
		typeName => "Tairei Namazoth"
	},

	13574	=> {
		typeID   => 13574,
		groupID  => 792,
		typeName => "Dark Blood Engraver"
	},

	13575	=> {
		typeID   => 13575,
		groupID  => 798,
		typeName => "Dread Guristas Killer"
	},

	13576	=> {
		typeID   => 13576,
		groupID  => 800,
		typeName => "Dread Guristas Arrogator"
	},

	13577	=> {
		typeID   => 13577,
		groupID  => 798,
		typeName => "Dread Guristas Ascriber"
	},

	13578	=> {
		typeID   => 13578,
		groupID  => 850,
		typeName => "Dread Guristas Dismantler"
	},

	13579	=> {
		typeID   => 13579,
		groupID  => 850,
		typeName => "Dread Guristas Eliminator"
	},

	13580	=> {
		typeID   => 13580,
		groupID  => 564,
		typeName => "Vepas Minimala"
	},

	13581	=> {
		typeID   => 13581,
		groupID  => 800,
		typeName => "Dread Guristas Demolisher"
	},

	13582	=> {
		typeID   => 13582,
		groupID  => 800,
		typeName => "Dread Guristas Despoiler"
	},

	13583	=> {
		typeID   => 13583,
		groupID  => 850,
		typeName => "Dread Guristas Obliterator"
	},

	13584	=> {
		typeID   => 13584,
		groupID  => 564,
		typeName => "Thon Eney"
	},

	13585	=> {
		typeID   => 13585,
		groupID  => 800,
		typeName => "Dread Guristas Destructor"
	},

	13586	=> {
		typeID   => 13586,
		groupID  => 798,
		typeName => "Dread Guristas Inferno"
	},

	13587	=> {
		typeID   => 13587,
		groupID  => 798,
		typeName => "Dread Guristas Abolisher"
	},

	13588	=> {
		typeID   => 13588,
		groupID  => 850,
		typeName => "Dread Guristas Eradicator"
	},

	13589	=> {
		typeID   => 13589,
		groupID  => 564,
		typeName => "Kaikka Peunato"
	},

	13590	=> {
		typeID   => 13590,
		groupID  => 800,
		typeName => "Dread Guristas Imputor"
	},

	13591	=> {
		typeID   => 13591,
		groupID  => 798,
		typeName => "Dread Guristas Mortifier"
	},

	13592	=> {
		typeID   => 13592,
		groupID  => 798,
		typeName => "Dread Guristas Eraser"
	},

	13593	=> {
		typeID   => 13593,
		groupID  => 800,
		typeName => "Dread Guristas Infiltrator"
	},

	13594	=> {
		typeID   => 13594,
		groupID  => 800,
		typeName => "Dread Guristas Invader"
	},

	13595	=> {
		typeID   => 13595,
		groupID  => 798,
		typeName => "Dread Guristas Nullifier"
	},

	13596	=> {
		typeID   => 13596,
		groupID  => 798,
		typeName => "Dread Guristas Murderer"
	},

	13597	=> {
		typeID   => 13597,
		groupID  => 800,
		typeName => "Dread Guristas Plunderer"
	},

	13598	=> {
		typeID   => 13598,
		groupID  => 800,
		typeName => "Dread Guristas Saboteur"
	},

	13599	=> {
		typeID   => 13599,
		groupID  => 798,
		typeName => "Dread Guristas Annihilator"
	},

	13600	=> {
		typeID   => 13600,
		groupID  => 798,
		typeName => "Dread Guristas Silencer"
	},

	13601	=> {
		typeID   => 13601,
		groupID  => 850,
		typeName => "Dread Guristas Extinguisher"
	},

	13602	=> {
		typeID   => 13602,
		groupID  => 850,
		typeName => "Dread Guristas Exterminator"
	},

	13603	=> {
		typeID   => 13603,
		groupID  => 564,
		typeName => "Estamel Tharchon"
	},

	13604	=> {
		typeID   => 13604,
		groupID  => 800,
		typeName => "Dread Guristas Wrecker"
	},

	13605	=> {
		typeID   => 13605,
		groupID  => 808,
		typeName => "True Sansha's Beast"
	},

	13606	=> {
		typeID   => 13606,
		groupID  => 851,
		typeName => "True Sansha's Lord"
	},

	13609	=> {
		typeID   => 13609,
		groupID  => 569,
		typeName => "Brokara Ryver"
	},

	13610	=> {
		typeID   => 13610,
		groupID  => 810,
		typeName => "True Sansha's Butcher"
	},

	13611	=> {
		typeID   => 13611,
		groupID  => 808,
		typeName => "True Sansha's Slaughterer"
	},

	13612	=> {
		typeID   => 13612,
		groupID  => 810,
		typeName => "True Sansha's Enslaver"
	},

	13613	=> {
		typeID   => 13613,
		groupID  => 808,
		typeName => "True Sansha's Juggernaut"
	},

	13614	=> {
		typeID   => 13614,
		groupID  => 851,
		typeName => "True Sansha's Slave Lord"
	},

	13615	=> {
		typeID   => 13615,
		groupID  => 569,
		typeName => "Selynne Mardakar"
	},

	13616	=> {
		typeID   => 13616,
		groupID  => 810,
		typeName => "True Sansha's Manslayer"
	},

	13617	=> {
		typeID   => 13617,
		groupID  => 810,
		typeName => "True Sansha's Minion"
	},

	13618	=> {
		typeID   => 13618,
		groupID  => 808,
		typeName => "True Sansha's Torturer"
	},

	13619	=> {
		typeID   => 13619,
		groupID  => 808,
		typeName => "True Sansha's Hellhound"
	},

	13620	=> {
		typeID   => 13620,
		groupID  => 851,
		typeName => "True Sansha's Mutant Lord"
	},

	13621	=> {
		typeID   => 13621,
		groupID  => 851,
		typeName => "True Sansha's Plague Lord"
	},

	13622	=> {
		typeID   => 13622,
		groupID  => 569,
		typeName => "Vizan Ankonin"
	},

	13623	=> {
		typeID   => 13623,
		groupID  => 810,
		typeName => "True Sansha's Plague"
	},

	13624	=> {
		typeID   => 13624,
		groupID  => 808,
		typeName => "True Sansha's Ravager"
	},

	13625	=> {
		typeID   => 13625,
		groupID  => 810,
		typeName => "True Sansha's Ravener"
	},

	13626	=> {
		typeID   => 13626,
		groupID  => 808,
		typeName => "True Sansha's Ravisher"
	},

	13627	=> {
		typeID   => 13627,
		groupID  => 810,
		typeName => "True Sansha's Savage"
	},

	13628	=> {
		typeID   => 13628,
		groupID  => 810,
		typeName => "True Sansha's Scavenger"
	},

	13629	=> {
		typeID   => 13629,
		groupID  => 810,
		typeName => "True Sansha's Servant"
	},

	13630	=> {
		typeID   => 13630,
		groupID  => 808,
		typeName => "True Sansha's Mutilator"
	},

	13631	=> {
		typeID   => 13631,
		groupID  => 808,
		typeName => "True Sansha's Fiend"
	},

	13632	=> {
		typeID   => 13632,
		groupID  => 810,
		typeName => "True Sansha's Slavehunter"
	},

	13633	=> {
		typeID   => 13633,
		groupID  => 851,
		typeName => "True Sansha's Beast Lord"
	},

	13634	=> {
		typeID   => 13634,
		groupID  => 851,
		typeName => "True Sansha's Savage Lord"
	},

	13635	=> {
		typeID   => 13635,
		groupID  => 569,
		typeName => "Chelm Soran"
	},

	13636	=> {
		typeID   => 13636,
		groupID  => 808,
		typeName => "True Sansha's Execrator"
	},

	13637	=> {
		typeID   => 13637,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Watchman"
	},

	13638	=> {
		typeID   => 13638,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Patroller"
	},

	13639	=> {
		typeID   => 13639,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Scout"
	},

	13640	=> {
		typeID   => 13640,
		groupID  => 814,
		typeName => "Shadow Serpentis Safeguard"
	},

	13641	=> {
		typeID   => 13641,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Spy"
	},

	13642	=> {
		typeID   => 13642,
		groupID  => 814,
		typeName => "Shadow Serpentis Guard"
	},

	13643	=> {
		typeID   => 13643,
		groupID  => 814,
		typeName => "Shadow Serpentis Spy"
	},

	13644	=> {
		typeID   => 13644,
		groupID  => 814,
		typeName => "Shadow Serpentis Watchman"
	},

	13645	=> {
		typeID   => 13645,
		groupID  => 814,
		typeName => "Shadow Serpentis Scout"
	},

	13646	=> {
		typeID   => 13646,
		groupID  => 814,
		typeName => "Shadow Serpentis Agent"
	},

	13647	=> {
		typeID   => 13647,
		groupID  => 814,
		typeName => "Shadow Serpentis Defender"
	},

	13648	=> {
		typeID   => 13648,
		groupID  => 814,
		typeName => "Shadow Serpentis Patroller"
	},

	13649	=> {
		typeID   => 13649,
		groupID  => 814,
		typeName => "Shadow Serpentis Initiate"
	},

	13650	=> {
		typeID   => 13650,
		groupID  => 814,
		typeName => "Shadow Serpentis Protector"
	},

	13651	=> {
		typeID   => 13651,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Protector"
	},

	13652	=> {
		typeID   => 13652,
		groupID  => 852,
		typeName => "Shadow Serpentis Vice Admiral"
	},

	13653	=> {
		typeID   => 13653,
		groupID  => 852,
		typeName => "Shadow Serpentis Rear Admiral"
	},

	13654	=> {
		typeID   => 13654,
		groupID  => 574,
		typeName => "Cormack Vaaja"
	},

	13656	=> {
		typeID   => 13656,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Sentinel"
	},

	13658	=> {
		typeID   => 13658,
		groupID  => 852,
		typeName => "Shadow Serpentis Commodore"
	},

	13659	=> {
		typeID   => 13659,
		groupID  => 574,
		typeName => "Tuvan Orth"
	},

	13660	=> {
		typeID   => 13660,
		groupID  => 852,
		typeName => "Shadow Serpentis Baron"
	},

	13661	=> {
		typeID   => 13661,
		groupID  => 574,
		typeName => "Brynn Jerdola"
	},

	13663	=> {
		typeID   => 13663,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Safeguard"
	},

	13664	=> {
		typeID   => 13664,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Guard"
	},

	13665	=> {
		typeID   => 13665,
		groupID  => 852,
		typeName => "Shadow Serpentis Port Admiral"
	},

	13666	=> {
		typeID   => 13666,
		groupID  => 852,
		typeName => "Shadow Serpentis Flotilla Admiral"
	},

	13667	=> {
		typeID   => 13667,
		groupID  => 574,
		typeName => "Setele Schellan"
	},

	13668	=> {
		typeID   => 13668,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Defender"
	},

	13669	=> {
		typeID   => 13669,
		groupID  => 812,
		typeName => "Shadow Serpentis Chief Infantry"
	},

	13670	=> {
		typeID   => 13670,
		groupID  => 817,
		typeName => "Korrani Salemo"
	},

	13671	=> {
		typeID   => 13671,
		groupID  => 817,
		typeName => "Zerak Cheryn"
	},

	13672	=> {
		typeID   => 13672,
		groupID  => 817,
		typeName => "Lynk"
	},

	13673	=> {
		typeID   => 13673,
		groupID  => 817,
		typeName => "Kuran 'Scarface' Lonan"
	},

	13678	=> {
		typeID   => 13678,
		groupID  => 554,
		typeName => "Angel Carrier"
	},

	13679	=> {
		typeID   => 13679,
		groupID  => 554,
		typeName => "Angel Convoy"
	},

	13680	=> {
		typeID   => 13680,
		groupID  => 554,
		typeName => "Angel Trailer"
	},

	13681	=> {
		typeID   => 13681,
		groupID  => 554,
		typeName => "Angel Hauler"
	},

	13682	=> {
		typeID   => 13682,
		groupID  => 554,
		typeName => "Angel Bulker"
	},

	13683	=> {
		typeID   => 13683,
		groupID  => 554,
		typeName => "Angel Transporter"
	},

	13684	=> {
		typeID   => 13684,
		groupID  => 554,
		typeName => "Angel Trucker"
	},

	13685	=> {
		typeID   => 13685,
		groupID  => 554,
		typeName => "Angel Courier"
	},

	13686	=> {
		typeID   => 13686,
		groupID  => 554,
		typeName => "Angel Loader"
	},

	13687	=> {
		typeID   => 13687,
		groupID  => 554,
		typeName => "Angel Ferrier"
	},

	13688	=> {
		typeID   => 13688,
		groupID  => 554,
		typeName => "Angel Gatherer"
	},

	13689	=> {
		typeID   => 13689,
		groupID  => 554,
		typeName => "Angel Harvester"
	},

	13690	=> {
		typeID   => 13690,
		groupID  => 558,
		typeName => "Blood Carrier"
	},

	13691	=> {
		typeID   => 13691,
		groupID  => 558,
		typeName => "Blood Convoy"
	},

	13692	=> {
		typeID   => 13692,
		groupID  => 558,
		typeName => "Blood Trailer"
	},

	13693	=> {
		typeID   => 13693,
		groupID  => 558,
		typeName => "Blood Hauler"
	},

	13694	=> {
		typeID   => 13694,
		groupID  => 558,
		typeName => "Blood Bulker"
	},

	13695	=> {
		typeID   => 13695,
		groupID  => 558,
		typeName => "Blood Transporter"
	},

	13696	=> {
		typeID   => 13696,
		groupID  => 558,
		typeName => "Blood Trucker"
	},

	13697	=> {
		typeID   => 13697,
		groupID  => 558,
		typeName => "Blood Courier"
	},

	13698	=> {
		typeID   => 13698,
		groupID  => 558,
		typeName => "Blood Loader"
	},

	13699	=> {
		typeID   => 13699,
		groupID  => 558,
		typeName => "Blood Ferrier"
	},

	13700	=> {
		typeID   => 13700,
		groupID  => 558,
		typeName => "Blood Gatherer"
	},

	13701	=> {
		typeID   => 13701,
		groupID  => 558,
		typeName => "Blood Harvester"
	},

	13702	=> {
		typeID   => 13702,
		groupID  => 573,
		typeName => "Serpentis Carrier"
	},

	13703	=> {
		typeID   => 13703,
		groupID  => 573,
		typeName => "Serpentis Convoy"
	},

	13704	=> {
		typeID   => 13704,
		groupID  => 573,
		typeName => "Serpentis Trailer"
	},

	13705	=> {
		typeID   => 13705,
		groupID  => 573,
		typeName => "Serpentis Hauler"
	},

	13706	=> {
		typeID   => 13706,
		groupID  => 573,
		typeName => "Serpentis Bulker"
	},

	13707	=> {
		typeID   => 13707,
		groupID  => 573,
		typeName => "Serpentis Transporter"
	},

	13708	=> {
		typeID   => 13708,
		groupID  => 573,
		typeName => "Serpentis Trucker"
	},

	13709	=> {
		typeID   => 13709,
		groupID  => 573,
		typeName => "Serpentis Courier"
	},

	13710	=> {
		typeID   => 13710,
		groupID  => 573,
		typeName => "Serpentis Loader"
	},

	13711	=> {
		typeID   => 13711,
		groupID  => 573,
		typeName => "Serpentis Ferrier"
	},

	13712	=> {
		typeID   => 13712,
		groupID  => 573,
		typeName => "Serpentis Gatherer"
	},

	13713	=> {
		typeID   => 13713,
		groupID  => 573,
		typeName => "Serpentis Harvester"
	},

	13714	=> {
		typeID   => 13714,
		groupID  => 563,
		typeName => "Guristas Carrier"
	},

	13715	=> {
		typeID   => 13715,
		groupID  => 563,
		typeName => "Guristas Convoy"
	},

	13716	=> {
		typeID   => 13716,
		groupID  => 563,
		typeName => "Guristas Trailer"
	},

	13717	=> {
		typeID   => 13717,
		groupID  => 563,
		typeName => "Guristas Hauler"
	},

	13718	=> {
		typeID   => 13718,
		groupID  => 563,
		typeName => "Guristas Bulker"
	},

	13719	=> {
		typeID   => 13719,
		groupID  => 563,
		typeName => "Guristas Transporter"
	},

	13720	=> {
		typeID   => 13720,
		groupID  => 563,
		typeName => "Guristas Trucker"
	},

	13721	=> {
		typeID   => 13721,
		groupID  => 563,
		typeName => "Guristas Courier"
	},

	13722	=> {
		typeID   => 13722,
		groupID  => 563,
		typeName => "Guristas Loader"
	},

	13723	=> {
		typeID   => 13723,
		groupID  => 563,
		typeName => "Guristas Ferrier"
	},

	13724	=> {
		typeID   => 13724,
		groupID  => 563,
		typeName => "Guristas Gatherer"
	},

	13725	=> {
		typeID   => 13725,
		groupID  => 563,
		typeName => "Guristas Harvester"
	},

	13726	=> {
		typeID   => 13726,
		groupID  => 568,
		typeName => "Sansha's Carrier"
	},

	13727	=> {
		typeID   => 13727,
		groupID  => 568,
		typeName => "Sansha's Convoy"
	},

	13728	=> {
		typeID   => 13728,
		groupID  => 568,
		typeName => "Sansha's Trailer"
	},

	13729	=> {
		typeID   => 13729,
		groupID  => 568,
		typeName => "Sansha's Hauler"
	},

	13730	=> {
		typeID   => 13730,
		groupID  => 568,
		typeName => "Sansha's Bulker"
	},

	13731	=> {
		typeID   => 13731,
		groupID  => 568,
		typeName => "Sansha's Transporter"
	},

	13732	=> {
		typeID   => 13732,
		groupID  => 568,
		typeName => "Sansha's Trucker"
	},

	13733	=> {
		typeID   => 13733,
		groupID  => 568,
		typeName => "Sansha's Courier"
	},

	13734	=> {
		typeID   => 13734,
		groupID  => 568,
		typeName => "Sansha's Loader"
	},

	13735	=> {
		typeID   => 13735,
		groupID  => 568,
		typeName => "Sansha's Ferrier"
	},

	13736	=> {
		typeID   => 13736,
		groupID  => 568,
		typeName => "Sansha's Gatherer"
	},

	13737	=> {
		typeID   => 13737,
		groupID  => 568,
		typeName => "Sansha's Harvester"
	},

	13771	=> {
		typeID   => 13771,
		groupID  => 817,
		typeName => "Drazin Jaruk"
	},

	13772	=> {
		typeID   => 13772,
		groupID  => 818,
		typeName => "Drezins Capsule"
	},

	13773	=> {
		typeID   => 13773,
		groupID  => 55,
		typeName => "Domination 125mm Autocannon"
	},

	13774	=> {
		typeID   => 13774,
		groupID  => 55,
		typeName => "Domination 1200mm Artillery"
	},

	13775	=> {
		typeID   => 13775,
		groupID  => 55,
		typeName => "Domination 1400mm Howitzer Artillery"
	},

	13776	=> {
		typeID   => 13776,
		groupID  => 55,
		typeName => "Domination 150mm Autocannon"
	},

	13777	=> {
		typeID   => 13777,
		groupID  => 55,
		typeName => "Domination 200mm Autocannon"
	},

	13778	=> {
		typeID   => 13778,
		groupID  => 55,
		typeName => "Domination 220mm Autocannon"
	},

	13779	=> {
		typeID   => 13779,
		groupID  => 55,
		typeName => "Domination 250mm Artillery"
	},

	13780	=> {
		typeID   => 13780,
		groupID  => 397,
		typeName => "Equipment Assembly Array"
	},

	13781	=> {
		typeID   => 13781,
		groupID  => 55,
		typeName => "Domination 280mm Howitzer Artillery"
	},

	13782	=> {
		typeID   => 13782,
		groupID  => 55,
		typeName => "Domination 425mm Autocannon"
	},

	13783	=> {
		typeID   => 13783,
		groupID  => 55,
		typeName => "Domination 650mm Artillery"
	},

	13784	=> {
		typeID   => 13784,
		groupID  => 55,
		typeName => "Domination 720mm Howitzer Artillery"
	},

	13785	=> {
		typeID   => 13785,
		groupID  => 55,
		typeName => "Domination 800mm Repeating Cannon"
	},

	13786	=> {
		typeID   => 13786,
		groupID  => 55,
		typeName => "Domination Dual 180mm Autocannon"
	},

	13787	=> {
		typeID   => 13787,
		groupID  => 55,
		typeName => "Domination Dual 425mm Autocannon"
	},

	13788	=> {
		typeID   => 13788,
		groupID  => 55,
		typeName => "Domination Dual 650mm Repeating Cannon"
	},

	13791	=> {
		typeID   => 13791,
		groupID  => 53,
		typeName => "Dark Blood Dual Heavy Pulse Laser"
	},

	13793	=> {
		typeID   => 13793,
		groupID  => 53,
		typeName => "Dark Blood Dual Heavy Beam Laser"
	},

	13795	=> {
		typeID   => 13795,
		groupID  => 53,
		typeName => "Dark Blood Dual Light Beam Laser"
	},

	13797	=> {
		typeID   => 13797,
		groupID  => 53,
		typeName => "Dark Blood Dual Light Pulse Laser"
	},

	13799	=> {
		typeID   => 13799,
		groupID  => 53,
		typeName => "Dark Blood Focused Medium Beam Laser"
	},

	13801	=> {
		typeID   => 13801,
		groupID  => 53,
		typeName => "Dark Blood Focused Medium Pulse Laser"
	},

	13803	=> {
		typeID   => 13803,
		groupID  => 53,
		typeName => "Dark Blood Gatling Pulse Laser"
	},

	13805	=> {
		typeID   => 13805,
		groupID  => 53,
		typeName => "Dark Blood Heavy Beam Laser"
	},

	13807	=> {
		typeID   => 13807,
		groupID  => 53,
		typeName => "Dark Blood Heavy Pulse Laser"
	},

	13809	=> {
		typeID   => 13809,
		groupID  => 53,
		typeName => "Dark Blood Small Focused Beam Laser"
	},

	13811	=> {
		typeID   => 13811,
		groupID  => 53,
		typeName => "Dark Blood Small Focused Pulse Laser"
	},

	13813	=> {
		typeID   => 13813,
		groupID  => 53,
		typeName => "Dark Blood Mega Beam Laser"
	},

	13815	=> {
		typeID   => 13815,
		groupID  => 53,
		typeName => "Dark Blood Mega Pulse Laser"
	},

	13817	=> {
		typeID   => 13817,
		groupID  => 53,
		typeName => "Dark Blood Tachyon Beam Laser"
	},

	13819	=> {
		typeID   => 13819,
		groupID  => 53,
		typeName => "Dark Blood Quad Beam Laser"
	},

	13820	=> {
		typeID   => 13820,
		groupID  => 53,
		typeName => "True Sansha Dual Heavy Beam Laser"
	},

	13821	=> {
		typeID   => 13821,
		groupID  => 53,
		typeName => "True Sansha Dual Heavy Pulse Laser"
	},

	13822	=> {
		typeID   => 13822,
		groupID  => 53,
		typeName => "True Sansha Dual Light Beam Laser"
	},

	13823	=> {
		typeID   => 13823,
		groupID  => 53,
		typeName => "True Sansha Dual Light Pulse Laser"
	},

	13824	=> {
		typeID   => 13824,
		groupID  => 53,
		typeName => "True Sansha Focused Medium Beam Laser"
	},

	13825	=> {
		typeID   => 13825,
		groupID  => 53,
		typeName => "True Sansha Focused Medium Pulse Laser"
	},

	13826	=> {
		typeID   => 13826,
		groupID  => 53,
		typeName => "True Sansha Gatling Pulse Laser"
	},

	13827	=> {
		typeID   => 13827,
		groupID  => 53,
		typeName => "True Sansha Heavy Beam Laser"
	},

	13828	=> {
		typeID   => 13828,
		groupID  => 53,
		typeName => "True Sansha Heavy Pulse Laser"
	},

	13829	=> {
		typeID   => 13829,
		groupID  => 53,
		typeName => "True Sansha Small Focused Beam Laser"
	},

	13830	=> {
		typeID   => 13830,
		groupID  => 53,
		typeName => "True Sansha Small Focused Pulse Laser"
	},

	13831	=> {
		typeID   => 13831,
		groupID  => 53,
		typeName => "True Sansha Mega Beam Laser"
	},

	13832	=> {
		typeID   => 13832,
		groupID  => 53,
		typeName => "True Sansha Mega Pulse Laser"
	},

	13833	=> {
		typeID   => 13833,
		groupID  => 53,
		typeName => "True Sansha Quad Beam Laser"
	},

	13834	=> {
		typeID   => 13834,
		groupID  => 53,
		typeName => "True Sansha Tachyon Beam Laser"
	},

	13835	=> {
		typeID   => 13835,
		groupID  => 226,
		typeName => "Abandoned Drill - Ruined"
	},

	13836	=> {
		typeID   => 13836,
		groupID  => 226,
		typeName => "Walkway Debris"
	},

	13837	=> {
		typeID   => 13837,
		groupID  => 283,
		typeName => "Captives"
	},

	13856	=> {
		typeID   => 13856,
		groupID  => 654,
		typeName => "Nova Javelin Heavy Assault Missile"
	},

	13864	=> {
		typeID   => 13864,
		groupID  => 74,
		typeName => "Shadow Serpentis 125mm Railgun"
	},

	13865	=> {
		typeID   => 13865,
		groupID  => 74,
		typeName => "Dread Guristas 125mm Railgun"
	},

	13866	=> {
		typeID   => 13866,
		groupID  => 74,
		typeName => "Shadow Serpentis 150mm Railgun"
	},

	13867	=> {
		typeID   => 13867,
		groupID  => 74,
		typeName => "Dread Guristas 150mm Railgun"
	},

	13868	=> {
		typeID   => 13868,
		groupID  => 74,
		typeName => "Shadow Serpentis 200mm Railgun"
	},

	13870	=> {
		typeID   => 13870,
		groupID  => 74,
		typeName => "Dread Guristas 200mm Railgun"
	},

	13872	=> {
		typeID   => 13872,
		groupID  => 74,
		typeName => "Shadow Serpentis 250mm Railgun"
	},

	13873	=> {
		typeID   => 13873,
		groupID  => 74,
		typeName => "Dread Guristas 250mm Railgun"
	},

	13874	=> {
		typeID   => 13874,
		groupID  => 74,
		typeName => "Shadow Serpentis 350mm Railgun"
	},

	13876	=> {
		typeID   => 13876,
		groupID  => 74,
		typeName => "Dread Guristas 350mm Railgun"
	},

	13878	=> {
		typeID   => 13878,
		groupID  => 74,
		typeName => "Shadow Serpentis 425mm Railgun"
	},

	13879	=> {
		typeID   => 13879,
		groupID  => 74,
		typeName => "Dread Guristas 425mm Railgun"
	},

	13880	=> {
		typeID   => 13880,
		groupID  => 74,
		typeName => "Shadow Serpentis Dual 150mm Railgun"
	},

	13881	=> {
		typeID   => 13881,
		groupID  => 74,
		typeName => "Dread Guristas Dual 150mm Railgun"
	},

	13882	=> {
		typeID   => 13882,
		groupID  => 74,
		typeName => "Shadow Serpentis Dual 250mm Railgun"
	},

	13883	=> {
		typeID   => 13883,
		groupID  => 74,
		typeName => "Dread Guristas Dual 250mm Railgun"
	},

	13884	=> {
		typeID   => 13884,
		groupID  => 74,
		typeName => "Shadow Serpentis Heavy Electron Blaster"
	},

	13885	=> {
		typeID   => 13885,
		groupID  => 74,
		typeName => "Shadow Serpentis Heavy Ion Blaster"
	},

	13886	=> {
		typeID   => 13886,
		groupID  => 74,
		typeName => "Shadow Serpentis Light Electron Blaster"
	},

	13887	=> {
		typeID   => 13887,
		groupID  => 74,
		typeName => "Shadow Serpentis Light Ion Blaster"
	},

	13888	=> {
		typeID   => 13888,
		groupID  => 74,
		typeName => "Shadow Serpentis Light Neutron Blaster"
	},

	13889	=> {
		typeID   => 13889,
		groupID  => 74,
		typeName => "Shadow Serpentis Electron Blaster Cannon"
	},

	13890	=> {
		typeID   => 13890,
		groupID  => 74,
		typeName => "Shadow Serpentis Ion Blaster Cannon"
	},

	13891	=> {
		typeID   => 13891,
		groupID  => 74,
		typeName => "Shadow Serpentis Neutron Blaster Cannon"
	},

	13892	=> {
		typeID   => 13892,
		groupID  => 74,
		typeName => "Shadow Serpentis Heavy Neutron Blaster"
	},

	13893	=> {
		typeID   => 13893,
		groupID  => 74,
		typeName => "Dread Guristas 75mm Railgun"
	},

	13894	=> {
		typeID   => 13894,
		groupID  => 74,
		typeName => "Shadow Serpentis 75mm Railgun"
	},

	13895	=> {
		typeID   => 13895,
		groupID  => 818,
		typeName => "Darkonnen Veteran"
	},

	13896	=> {
		typeID   => 13896,
		groupID  => 817,
		typeName => "Darkonnen Gang Leader"
	},

	13897	=> {
		typeID   => 13897,
		groupID  => 817,
		typeName => "Darkonnen Overlord"
	},

	13898	=> {
		typeID   => 13898,
		groupID  => 818,
		typeName => "Maru Raider"
	},

	13899	=> {
		typeID   => 13899,
		groupID  => 817,
		typeName => "Maru Raid Leader"
	},

	13900	=> {
		typeID   => 13900,
		groupID  => 817,
		typeName => "Maru Harbinger"
	},

	13901	=> {
		typeID   => 13901,
		groupID  => 818,
		typeName => "Odamian Privateer"
	},

	13902	=> {
		typeID   => 13902,
		groupID  => 817,
		typeName => "Odamian Veteran"
	},

	13903	=> {
		typeID   => 13903,
		groupID  => 817,
		typeName => "Odamian Master"
	},

	13904	=> {
		typeID   => 13904,
		groupID  => 818,
		typeName => "Komni Smuggler"
	},

	13905	=> {
		typeID   => 13905,
		groupID  => 817,
		typeName => "Komni Assassin"
	},

	13906	=> {
		typeID   => 13906,
		groupID  => 817,
		typeName => "Komni Honcho"
	},

	13908	=> {
		typeID   => 13908,
		groupID  => 816,
		typeName => "Komni Envoy"
	},

	13909	=> {
		typeID   => 13909,
		groupID  => 816,
		typeName => "Darkonnen Envoy"
	},

	13910	=> {
		typeID   => 13910,
		groupID  => 816,
		typeName => "Maru Envoy"
	},

	13911	=> {
		typeID   => 13911,
		groupID  => 816,
		typeName => "Odamian Envoy"
	},

	13914	=> {
		typeID   => 13914,
		groupID  => 818,
		typeName => "Darkonnen Grunt"
	},

	13915	=> {
		typeID   => 13915,
		groupID  => 818,
		typeName => "Maru Grunt"
	},

	13916	=> {
		typeID   => 13916,
		groupID  => 818,
		typeName => "Odamian Guard"
	},

	13917	=> {
		typeID   => 13917,
		groupID  => 818,
		typeName => "Komni Grunt"
	},

	13918	=> {
		typeID   => 13918,
		groupID  => 314,
		typeName => "Korranis DNA"
	},

	13919	=> {
		typeID   => 13919,
		groupID  => 511,
		typeName => "Domination Rapid Light Missile Launcher"
	},

	13920	=> {
		typeID   => 13920,
		groupID  => 511,
		typeName => "Dread Guristas Rapid Light Missile Launcher"
	},

	13921	=> {
		typeID   => 13921,
		groupID  => 510,
		typeName => "Domination Heavy Missile Launcher"
	},

	13922	=> {
		typeID   => 13922,
		groupID  => 510,
		typeName => "Dread Guristas Heavy Missile Launcher"
	},

	13923	=> {
		typeID   => 13923,
		groupID  => 508,
		typeName => "Domination Torpedo Launcher"
	},

	13924	=> {
		typeID   => 13924,
		groupID  => 508,
		typeName => "Dread Guristas Torpedo Launcher"
	},

	13925	=> {
		typeID   => 13925,
		groupID  => 509,
		typeName => "Domination Light Missile Launcher"
	},

	13926	=> {
		typeID   => 13926,
		groupID  => 509,
		typeName => "Dread Guristas Light Missile Launcher"
	},

	13927	=> {
		typeID   => 13927,
		groupID  => 506,
		typeName => "Domination Cruise Missile Launcher"
	},

	13929	=> {
		typeID   => 13929,
		groupID  => 506,
		typeName => "Dread Guristas Cruise Missile Launcher"
	},

	13931	=> {
		typeID   => 13931,
		groupID  => 507,
		typeName => "Domination Rocket Launcher"
	},

	13933	=> {
		typeID   => 13933,
		groupID  => 507,
		typeName => "Dread Guristas Rocket Launcher"
	},

	13935	=> {
		typeID   => 13935,
		groupID  => 367,
		typeName => "Domination Ballistic Control System"
	},

	13937	=> {
		typeID   => 13937,
		groupID  => 367,
		typeName => "Dread Guristas Ballistic Control System"
	},

	13939	=> {
		typeID   => 13939,
		groupID  => 59,
		typeName => "Domination Gyrostabilizer"
	},

	13941	=> {
		typeID   => 13941,
		groupID  => 205,
		typeName => "Dark Blood Heat Sink"
	},

	13943	=> {
		typeID   => 13943,
		groupID  => 205,
		typeName => "True Sansha Heat Sink"
	},

	13945	=> {
		typeID   => 13945,
		groupID  => 302,
		typeName => "Shadow Serpentis Magnetic Field Stabilizer"
	},

	13947	=> {
		typeID   => 13947,
		groupID  => 40,
		typeName => "Dread Guristas Large Shield Booster"
	},

	13948	=> {
		typeID   => 13948,
		groupID  => 40,
		typeName => "Domination Large Shield Booster"
	},

	13949	=> {
		typeID   => 13949,
		groupID  => 40,
		typeName => "Dread Guristas Medium Shield Booster"
	},

	13950	=> {
		typeID   => 13950,
		groupID  => 40,
		typeName => "Domination Medium Shield Booster"
	},

	13951	=> {
		typeID   => 13951,
		groupID  => 40,
		typeName => "Dread Guristas Small Shield Booster"
	},

	13952	=> {
		typeID   => 13952,
		groupID  => 40,
		typeName => "Domination Small Shield Booster"
	},

	13953	=> {
		typeID   => 13953,
		groupID  => 40,
		typeName => "Dread Guristas X-Large Shield Booster"
	},

	13954	=> {
		typeID   => 13954,
		groupID  => 40,
		typeName => "Domination X-Large Shield Booster"
	},

	13955	=> {
		typeID   => 13955,
		groupID  => 62,
		typeName => "Domination Large Armor Repairer"
	},

	13956	=> {
		typeID   => 13956,
		groupID  => 62,
		typeName => "True Sansha Large Armor Repairer"
	},

	13957	=> {
		typeID   => 13957,
		groupID  => 62,
		typeName => "Dark Blood Large Armor Repairer"
	},

	13958	=> {
		typeID   => 13958,
		groupID  => 62,
		typeName => "Domination Medium Armor Repairer"
	},

	13959	=> {
		typeID   => 13959,
		groupID  => 62,
		typeName => "True Sansha Medium Armor Repairer"
	},

	13960	=> {
		typeID   => 13960,
		groupID  => 62,
		typeName => "Dark Blood Medium Armor Repairer"
	},

	13962	=> {
		typeID   => 13962,
		groupID  => 62,
		typeName => "Domination Small Armor Repairer"
	},

	13963	=> {
		typeID   => 13963,
		groupID  => 62,
		typeName => "True Sansha Small Armor Repairer"
	},

	13964	=> {
		typeID   => 13964,
		groupID  => 62,
		typeName => "Dark Blood Small Armor Repairer"
	},

	13965	=> {
		typeID   => 13965,
		groupID  => 77,
		typeName => "Dread Guristas EM Ward Field"
	},

	13966	=> {
		typeID   => 13966,
		groupID  => 77,
		typeName => "Dread Guristas Thermal Dissipation Field"
	},

	13967	=> {
		typeID   => 13967,
		groupID  => 77,
		typeName => "Dread Guristas Explosive Deflection Field"
	},

	13968	=> {
		typeID   => 13968,
		groupID  => 77,
		typeName => "Dread Guristas Kinetic Deflection Field"
	},

	13969	=> {
		typeID   => 13969,
		groupID  => 77,
		typeName => "Dread Guristas Adaptive Invulnerability Field"
	},

	13970	=> {
		typeID   => 13970,
		groupID  => 328,
		typeName => "True Sansha Armor EM Hardener"
	},

	13972	=> {
		typeID   => 13972,
		groupID  => 328,
		typeName => "Dark Blood Armor EM Hardener"
	},

	13974	=> {
		typeID   => 13974,
		groupID  => 328,
		typeName => "True Sansha Armor Explosive Hardener"
	},

	13976	=> {
		typeID   => 13976,
		groupID  => 328,
		typeName => "Dark Blood Armor Explosive Hardener"
	},

	13978	=> {
		typeID   => 13978,
		groupID  => 328,
		typeName => "True Sansha Armor Kinetic Hardener"
	},

	13980	=> {
		typeID   => 13980,
		groupID  => 328,
		typeName => "Dark Blood Armor Kinetic Hardener"
	},

	13982	=> {
		typeID   => 13982,
		groupID  => 328,
		typeName => "True Sansha Armor Thermal Hardener"
	},

	13984	=> {
		typeID   => 13984,
		groupID  => 328,
		typeName => "Dark Blood Armor Thermal Hardener"
	},

	13986	=> {
		typeID   => 13986,
		groupID  => 328,
		typeName => "Domination Armor EM Hardener"
	},

	13988	=> {
		typeID   => 13988,
		groupID  => 328,
		typeName => "Domination Armor Explosive Hardener"
	},

	13990	=> {
		typeID   => 13990,
		groupID  => 328,
		typeName => "Domination Armor Kinetic Hardener"
	},

	13992	=> {
		typeID   => 13992,
		groupID  => 328,
		typeName => "Domination Armor Thermal Hardener"
	},

	13994	=> {
		typeID   => 13994,
		groupID  => 77,
		typeName => "Domination EM Ward Field"
	},

	13995	=> {
		typeID   => 13995,
		groupID  => 77,
		typeName => "Domination Thermal Dissipation Field"
	},

	13996	=> {
		typeID   => 13996,
		groupID  => 77,
		typeName => "Domination Explosive Deflection Field"
	},

	13997	=> {
		typeID   => 13997,
		groupID  => 77,
		typeName => "Domination Kinetic Deflection Field"
	},

	13998	=> {
		typeID   => 13998,
		groupID  => 77,
		typeName => "Domination Adaptive Invulnerability Field"
	},

	13999	=> {
		typeID   => 13999,
		groupID  => 98,
		typeName => "Domination Adaptive Nano Plating"
	},

	14001	=> {
		typeID   => 14001,
		groupID  => 98,
		typeName => "True Sansha Adaptive Nano Plating"
	},

	14003	=> {
		typeID   => 14003,
		groupID  => 98,
		typeName => "Dark Blood Adaptive Nano Plating"
	},

	14005	=> {
		typeID   => 14005,
		groupID  => 98,
		typeName => "Domination Kinetic Plating"
	},

	14007	=> {
		typeID   => 14007,
		groupID  => 98,
		typeName => "True Sansha Kinetic Plating"
	},

	14009	=> {
		typeID   => 14009,
		groupID  => 98,
		typeName => "Dark Blood Kinetic Plating"
	},

	14011	=> {
		typeID   => 14011,
		groupID  => 98,
		typeName => "Domination Explosive Plating"
	},

	14013	=> {
		typeID   => 14013,
		groupID  => 98,
		typeName => "True Sansha Explosive Plating"
	},

	14015	=> {
		typeID   => 14015,
		groupID  => 98,
		typeName => "Dark Blood Explosive Plating"
	},

	14017	=> {
		typeID   => 14017,
		groupID  => 98,
		typeName => "Domination EM Plating"
	},

	14019	=> {
		typeID   => 14019,
		groupID  => 98,
		typeName => "True Sansha EM Plating"
	},

	14021	=> {
		typeID   => 14021,
		groupID  => 98,
		typeName => "Dark Blood EM Plating"
	},

	14023	=> {
		typeID   => 14023,
		groupID  => 98,
		typeName => "Domination Thermal Plating"
	},

	14025	=> {
		typeID   => 14025,
		groupID  => 98,
		typeName => "True Sansha Thermal Plating"
	},

	14027	=> {
		typeID   => 14027,
		groupID  => 98,
		typeName => "Dark Blood Thermal Plating"
	},

	14029	=> {
		typeID   => 14029,
		groupID  => 295,
		typeName => "Domination Explosive Deflection Amplifier"
	},

	14031	=> {
		typeID   => 14031,
		groupID  => 295,
		typeName => "Dread Guristas Explosive Deflection Amplifier"
	},

	14033	=> {
		typeID   => 14033,
		groupID  => 295,
		typeName => "Domination Thermal Dissipation Amplifier"
	},

	14035	=> {
		typeID   => 14035,
		groupID  => 295,
		typeName => "Dread Guristas Thermal Dissipation Amplifier"
	},

	14037	=> {
		typeID   => 14037,
		groupID  => 295,
		typeName => "Domination Kinetic Deflection Amplifier"
	},

	14039	=> {
		typeID   => 14039,
		groupID  => 295,
		typeName => "Dread Guristas Kinetic Deflection Amplifier"
	},

	14041	=> {
		typeID   => 14041,
		groupID  => 295,
		typeName => "Domination EM Ward Amplifier"
	},

	14043	=> {
		typeID   => 14043,
		groupID  => 295,
		typeName => "Dread Guristas EM Ward Amplifier"
	},

	14045	=> {
		typeID   => 14045,
		groupID  => 338,
		typeName => "Domination Shield Boost Amplifier"
	},

	14047	=> {
		typeID   => 14047,
		groupID  => 338,
		typeName => "Dread Guristas Shield Boost Amplifier"
	},

	14049	=> {
		typeID   => 14049,
		groupID  => 98,
		typeName => "Shadow Serpentis Adaptive Nano Plating"
	},

	14051	=> {
		typeID   => 14051,
		groupID  => 98,
		typeName => "Shadow Serpentis Kinetic Plating"
	},

	14053	=> {
		typeID   => 14053,
		groupID  => 98,
		typeName => "Shadow Serpentis Explosive Plating"
	},

	14055	=> {
		typeID   => 14055,
		groupID  => 98,
		typeName => "Shadow Serpentis EM Plating"
	},

	14057	=> {
		typeID   => 14057,
		groupID  => 98,
		typeName => "Shadow Serpentis Thermal Plating"
	},

	14059	=> {
		typeID   => 14059,
		groupID  => 328,
		typeName => "Shadow Serpentis Armor EM Hardener"
	},

	14061	=> {
		typeID   => 14061,
		groupID  => 328,
		typeName => "Shadow Serpentis Armor Explosive Hardener"
	},

	14063	=> {
		typeID   => 14063,
		groupID  => 328,
		typeName => "Shadow Serpentis Armor Kinetic Hardener"
	},

	14065	=> {
		typeID   => 14065,
		groupID  => 328,
		typeName => "Shadow Serpentis Armor Thermal Hardener"
	},

	14067	=> {
		typeID   => 14067,
		groupID  => 62,
		typeName => "Shadow Serpentis Large Armor Repairer"
	},

	14068	=> {
		typeID   => 14068,
		groupID  => 62,
		typeName => "Shadow Serpentis Medium Armor Repairer"
	},

	14069	=> {
		typeID   => 14069,
		groupID  => 62,
		typeName => "Shadow Serpentis Small Armor Repairer"
	},

	14070	=> {
		typeID   => 14070,
		groupID  => 326,
		typeName => "Dark Blood Energized Adaptive Nano Membrane"
	},

	14072	=> {
		typeID   => 14072,
		groupID  => 326,
		typeName => "True Sansha Energized Adaptive Nano Membrane"
	},

	14074	=> {
		typeID   => 14074,
		groupID  => 326,
		typeName => "Shadow Serpentis Energized Adaptive Nano Membrane"
	},

	14076	=> {
		typeID   => 14076,
		groupID  => 326,
		typeName => "Dark Blood Energized Kinetic Membrane"
	},

	14078	=> {
		typeID   => 14078,
		groupID  => 326,
		typeName => "True Sansha Energized Kinetic Membrane"
	},

	14080	=> {
		typeID   => 14080,
		groupID  => 326,
		typeName => "Shadow Serpentis Energized Kinetic Membrane"
	},

	14082	=> {
		typeID   => 14082,
		groupID  => 326,
		typeName => "Dark Blood Energized Explosive Membrane"
	},

	14084	=> {
		typeID   => 14084,
		groupID  => 326,
		typeName => "True Sansha Energized Explosive Membrane"
	},

	14086	=> {
		typeID   => 14086,
		groupID  => 326,
		typeName => "Shadow Serpentis Energized Explosive Membrane"
	},

	14088	=> {
		typeID   => 14088,
		groupID  => 326,
		typeName => "Dark Blood Energized EM Membrane"
	},

	14090	=> {
		typeID   => 14090,
		groupID  => 326,
		typeName => "True Sansha Energized EM Membrane"
	},

	14092	=> {
		typeID   => 14092,
		groupID  => 326,
		typeName => "Shadow Serpentis Energized EM Membrane"
	},

	14094	=> {
		typeID   => 14094,
		groupID  => 326,
		typeName => "Dark Blood Energized Thermal Membrane"
	},

	14096	=> {
		typeID   => 14096,
		groupID  => 326,
		typeName => "True Sansha Energized Thermal Membrane"
	},

	14098	=> {
		typeID   => 14098,
		groupID  => 326,
		typeName => "Shadow Serpentis Energized Thermal Membrane"
	},

	14100	=> {
		typeID   => 14100,
		groupID  => 211,
		typeName => "Domination Tracking Enhancer"
	},

	14102	=> {
		typeID   => 14102,
		groupID  => 46,
		typeName => "Domination 100MN Afterburner"
	},

	14104	=> {
		typeID   => 14104,
		groupID  => 46,
		typeName => "Shadow Serpentis 100MN Afterburner"
	},

	14106	=> {
		typeID   => 14106,
		groupID  => 46,
		typeName => "Domination 10MN Afterburner"
	},

	14108	=> {
		typeID   => 14108,
		groupID  => 46,
		typeName => "Shadow Serpentis 10MN Afterburner"
	},

	14110	=> {
		typeID   => 14110,
		groupID  => 46,
		typeName => "Domination 1MN Afterburner"
	},

	14112	=> {
		typeID   => 14112,
		groupID  => 46,
		typeName => "Shadow Serpentis 1MN Afterburner"
	},

	14114	=> {
		typeID   => 14114,
		groupID  => 46,
		typeName => "Domination 500MN Microwarpdrive"
	},

	14116	=> {
		typeID   => 14116,
		groupID  => 46,
		typeName => "Shadow Serpentis 500MN Microwarpdrive"
	},

	14118	=> {
		typeID   => 14118,
		groupID  => 46,
		typeName => "Domination 50MN Microwarpdrive"
	},

	14120	=> {
		typeID   => 14120,
		groupID  => 46,
		typeName => "Shadow Serpentis 50MN Microwarpdrive"
	},

	14122	=> {
		typeID   => 14122,
		groupID  => 46,
		typeName => "Domination 5MN Microwarpdrive"
	},

	14124	=> {
		typeID   => 14124,
		groupID  => 46,
		typeName => "Shadow Serpentis 5MN Microwarpdrive"
	},

	14126	=> {
		typeID   => 14126,
		groupID  => 764,
		typeName => "Domination Overdrive Injector"
	},

	14127	=> {
		typeID   => 14127,
		groupID  => 763,
		typeName => "Domination Nanofiber Structure"
	},

	14128	=> {
		typeID   => 14128,
		groupID  => 769,
		typeName => "Dark Blood Reactor Control Unit"
	},

	14130	=> {
		typeID   => 14130,
		groupID  => 769,
		typeName => "True Sansha Reactor Control Unit"
	},

	14132	=> {
		typeID   => 14132,
		groupID  => 769,
		typeName => "Shadow Serpentis Reactor Control Unit"
	},

	14134	=> {
		typeID   => 14134,
		groupID  => 766,
		typeName => "Dark Blood Power Diagnostic System"
	},

	14136	=> {
		typeID   => 14136,
		groupID  => 766,
		typeName => "True Sansha Power Diagnostic System"
	},

	14138	=> {
		typeID   => 14138,
		groupID  => 766,
		typeName => "Shadow Serpentis Power Diagnostic System"
	},

	14140	=> {
		typeID   => 14140,
		groupID  => 43,
		typeName => "True Sansha Cap Recharger"
	},

	14142	=> {
		typeID   => 14142,
		groupID  => 43,
		typeName => "Dark Blood Cap Recharger"
	},

	14144	=> {
		typeID   => 14144,
		groupID  => 767,
		typeName => "Dark Blood Capacitor Power Relay"
	},

	14146	=> {
		typeID   => 14146,
		groupID  => 767,
		typeName => "True Sansha Capacitor Power Relay"
	},

	14148	=> {
		typeID   => 14148,
		groupID  => 68,
		typeName => "Dark Blood Small Energy Nosferatu"
	},

	14150	=> {
		typeID   => 14150,
		groupID  => 68,
		typeName => "True Sansha Small Energy Nosferatu"
	},

	14152	=> {
		typeID   => 14152,
		groupID  => 68,
		typeName => "Dark Blood Heavy Energy Nosferatu"
	},

	14154	=> {
		typeID   => 14154,
		groupID  => 68,
		typeName => "True Sansha Heavy Energy Nosferatu"
	},

	14156	=> {
		typeID   => 14156,
		groupID  => 68,
		typeName => "Dark Blood Medium Energy Nosferatu"
	},

	14158	=> {
		typeID   => 14158,
		groupID  => 68,
		typeName => "True Sansha Medium Energy Nosferatu"
	},

	14160	=> {
		typeID   => 14160,
		groupID  => 71,
		typeName => "Dark Blood Small Energy Neutralizer"
	},

	14162	=> {
		typeID   => 14162,
		groupID  => 71,
		typeName => "True Sansha Small Energy Neutralizer"
	},

	14164	=> {
		typeID   => 14164,
		groupID  => 71,
		typeName => "Dark Blood Medium Energy Neutralizer"
	},

	14166	=> {
		typeID   => 14166,
		groupID  => 71,
		typeName => "True Sansha Medium Energy Neutralizer"
	},

	14168	=> {
		typeID   => 14168,
		groupID  => 71,
		typeName => "Dark Blood Heavy Energy Neutralizer"
	},

	14170	=> {
		typeID   => 14170,
		groupID  => 71,
		typeName => "True Sansha Heavy Energy Neutralizer"
	},

	14172	=> {
		typeID   => 14172,
		groupID  => 76,
		typeName => "Dark Blood Heavy Capacitor Booster"
	},

	14174	=> {
		typeID   => 14174,
		groupID  => 76,
		typeName => "True Sansha Heavy Capacitor Booster"
	},

	14176	=> {
		typeID   => 14176,
		groupID  => 76,
		typeName => "Dark Blood Medium Capacitor Booster"
	},

	14178	=> {
		typeID   => 14178,
		groupID  => 76,
		typeName => "True Sansha Medium Capacitor Booster"
	},

	14180	=> {
		typeID   => 14180,
		groupID  => 76,
		typeName => "Dark Blood Micro Capacitor Booster"
	},

	14182	=> {
		typeID   => 14182,
		groupID  => 76,
		typeName => "True Sansha Micro Capacitor Booster"
	},

	14184	=> {
		typeID   => 14184,
		groupID  => 76,
		typeName => "Dark Blood Small Capacitor Booster"
	},

	14186	=> {
		typeID   => 14186,
		groupID  => 76,
		typeName => "True Sansha Small Capacitor Booster"
	},

	14188	=> {
		typeID   => 14188,
		groupID  => 72,
		typeName => "Dark Blood Large EMP Smartbomb"
	},

	14190	=> {
		typeID   => 14190,
		groupID  => 72,
		typeName => "True Sansha Large EMP Smartbomb"
	},

	14192	=> {
		typeID   => 14192,
		groupID  => 72,
		typeName => "Dark Blood Medium EMP Smartbomb"
	},

	14194	=> {
		typeID   => 14194,
		groupID  => 72,
		typeName => "True Sansha Medium EMP Smartbomb"
	},

	14196	=> {
		typeID   => 14196,
		groupID  => 72,
		typeName => "Dark Blood Micro EMP Smartbomb"
	},

	14198	=> {
		typeID   => 14198,
		groupID  => 72,
		typeName => "True Sansha Micro EMP Smartbomb"
	},

	14200	=> {
		typeID   => 14200,
		groupID  => 72,
		typeName => "Dark Blood Small EMP Smartbomb"
	},

	14202	=> {
		typeID   => 14202,
		groupID  => 72,
		typeName => "True Sansha Small EMP Smartbomb"
	},

	14204	=> {
		typeID   => 14204,
		groupID  => 72,
		typeName => "Dread Guristas Large Graviton Smartbomb"
	},

	14206	=> {
		typeID   => 14206,
		groupID  => 72,
		typeName => "Shadow Serpentis Large Plasma Smartbomb"
	},

	14208	=> {
		typeID   => 14208,
		groupID  => 72,
		typeName => "Domination Large Proton Smartbomb"
	},

	14210	=> {
		typeID   => 14210,
		groupID  => 72,
		typeName => "Dread Guristas Medium Graviton Smartbomb"
	},

	14212	=> {
		typeID   => 14212,
		groupID  => 72,
		typeName => "Dread Guristas Micro Graviton Smartbomb"
	},

	14214	=> {
		typeID   => 14214,
		groupID  => 72,
		typeName => "Dread Guristas Small Graviton Smartbomb"
	},

	14218	=> {
		typeID   => 14218,
		groupID  => 72,
		typeName => "Shadow Serpentis Micro Plasma Smartbomb"
	},

	14220	=> {
		typeID   => 14220,
		groupID  => 72,
		typeName => "Shadow Serpentis Medium Plasma Smartbomb"
	},

	14222	=> {
		typeID   => 14222,
		groupID  => 72,
		typeName => "Domination Medium Proton Smartbomb"
	},

	14224	=> {
		typeID   => 14224,
		groupID  => 72,
		typeName => "Domination Micro Proton Smartbomb"
	},

	14226	=> {
		typeID   => 14226,
		groupID  => 72,
		typeName => "Domination Small Proton Smartbomb"
	},

	14228	=> {
		typeID   => 14228,
		groupID  => 72,
		typeName => "Shadow Serpentis Small Plasma Smartbomb"
	},

	14230	=> {
		typeID   => 14230,
		groupID  => 285,
		typeName => "Dread Guristas Co-Processor"
	},

	14232	=> {
		typeID   => 14232,
		groupID  => 285,
		typeName => "Shadow Serpentis Co-Processor"
	},

	14234	=> {
		typeID   => 14234,
		groupID  => 330,
		typeName => "Dread Guristas Cloaking Device"
	},

	14236	=> {
		typeID   => 14236,
		groupID  => 212,
		typeName => "Shadow Serpentis Sensor Booster"
	},

	14238	=> {
		typeID   => 14238,
		groupID  => 213,
		typeName => "Shadow Serpentis Tracking Computer"
	},

	14240	=> {
		typeID   => 14240,
		groupID  => 209,
		typeName => "Shadow Serpentis Remote Tracking Computer"
	},

	14242	=> {
		typeID   => 14242,
		groupID  => 52,
		typeName => "Dark Blood Warp Disruptor"
	},

	14244	=> {
		typeID   => 14244,
		groupID  => 52,
		typeName => "Domination Warp Disruptor"
	},

	14246	=> {
		typeID   => 14246,
		groupID  => 52,
		typeName => "Dread Guristas Warp Disruptor"
	},

	14248	=> {
		typeID   => 14248,
		groupID  => 52,
		typeName => "True Sansha Warp Disruptor"
	},

	14250	=> {
		typeID   => 14250,
		groupID  => 52,
		typeName => "Shadow Serpentis Warp Disruptor"
	},

	14252	=> {
		typeID   => 14252,
		groupID  => 52,
		typeName => "Dark Blood Warp Scrambler"
	},

	14254	=> {
		typeID   => 14254,
		groupID  => 52,
		typeName => "Domination Warp Scrambler"
	},

	14256	=> {
		typeID   => 14256,
		groupID  => 52,
		typeName => "Dread Guristas Warp Scrambler"
	},

	14258	=> {
		typeID   => 14258,
		groupID  => 52,
		typeName => "True Sansha Warp Scrambler"
	},

	14260	=> {
		typeID   => 14260,
		groupID  => 52,
		typeName => "Shadow Serpentis Warp Scrambler"
	},

	14262	=> {
		typeID   => 14262,
		groupID  => 65,
		typeName => "Dark Blood Stasis Webifier"
	},

	14264	=> {
		typeID   => 14264,
		groupID  => 65,
		typeName => "Domination Stasis Webifier"
	},

	14266	=> {
		typeID   => 14266,
		groupID  => 65,
		typeName => "Dread Guristas Stasis Webifier"
	},

	14268	=> {
		typeID   => 14268,
		groupID  => 65,
		typeName => "True Sansha Stasis Webifier"
	},

	14270	=> {
		typeID   => 14270,
		groupID  => 65,
		typeName => "Shadow Serpentis Stasis Webifier"
	},

	14272	=> {
		typeID   => 14272,
		groupID  => 74,
		typeName => "200mm Carbide Railgun I"
	},

	14274	=> {
		typeID   => 14274,
		groupID  => 74,
		typeName => "200mm 'Scout' Accelerator Cannon"
	},

	14276	=> {
		typeID   => 14276,
		groupID  => 74,
		typeName => "200mm Compressed Coil Gun I"
	},

	14278	=> {
		typeID   => 14278,
		groupID  => 74,
		typeName => "200mm Prototype Gauss Gun"
	},

	14280	=> {
		typeID   => 14280,
		groupID  => 74,
		typeName => "350mm Carbide Railgun I"
	},

	14282	=> {
		typeID   => 14282,
		groupID  => 74,
		typeName => "350mm 'Scout' Accelerator Cannon"
	},

	14284	=> {
		typeID   => 14284,
		groupID  => 74,
		typeName => "350mm Compressed Coil Gun I"
	},

	14286	=> {
		typeID   => 14286,
		groupID  => 74,
		typeName => "350mm Prototype Gauss Gun"
	},

	14292	=> {
		typeID   => 14292,
		groupID  => 314,
		typeName => "Kruul's DNA"
	},

	14293	=> {
		typeID   => 14293,
		groupID  => 314,
		typeName => "X-Rated Holoreel"
	},

	14294	=> {
		typeID   => 14294,
		groupID  => 818,
		typeName => "Kruul's Capsule"
	},

	14295	=> {
		typeID   => 14295,
		groupID  => 745,
		typeName => "Limited Ocular Filter - Beta"
	},

	14296	=> {
		typeID   => 14296,
		groupID  => 745,
		typeName => "Limited Neural Boost - Beta"
	},

	14297	=> {
		typeID   => 14297,
		groupID  => 745,
		typeName => "Limited Memory Augmentation - Beta"
	},

	14298	=> {
		typeID   => 14298,
		groupID  => 745,
		typeName => "Limited Cybernetic Subprocessor - Beta"
	},

	14299	=> {
		typeID   => 14299,
		groupID  => 745,
		typeName => "Limited Social Adaptation Chip - Beta"
	},

	14343	=> {
		typeID   => 14343,
		groupID  => 404,
		typeName => "Silo"
	},

	14344	=> {
		typeID   => 14344,
		groupID  => 613,
		typeName => "Renegade Guristas Pirate"
	},

	14345	=> {
		typeID   => 14345,
		groupID  => 595,
		typeName => "Renegade Angel Goon"
	},

	14346	=> {
		typeID   => 14346,
		groupID  => 604,
		typeName => "Renegade Blood Raider"
	},

	14347	=> {
		typeID   => 14347,
		groupID  => 631,
		typeName => "Renegade Serpentis Assassin"
	},

	14348	=> {
		typeID   => 14348,
		groupID  => 622,
		typeName => "Renegade Sanshas Slaver"
	},

	14349	=> {
		typeID   => 14349,
		groupID  => 668,
		typeName => "Sarum Maller"
	},

	14350	=> {
		typeID   => 14350,
		groupID  => 816,
		typeName => "Commander Karzo Sarum"
	},

	14351	=> {
		typeID   => 14351,
		groupID  => 665,
		typeName => "Imperial Navy Soldier"
	},

	14352	=> {
		typeID   => 14352,
		groupID  => 665,
		typeName => "Ammatar Navy Soldier"
	},

	14353	=> {
		typeID   => 14353,
		groupID  => 677,
		typeName => "Federation Navy Soldier"
	},

	14354	=> {
		typeID   => 14354,
		groupID  => 683,
		typeName => "Republic Fleet Soldier"
	},

	14355	=> {
		typeID   => 14355,
		groupID  => 671,
		typeName => "Caldari Navy Soldier"
	},

	14356	=> {
		typeID   => 14356,
		groupID  => 667,
		typeName => "Ammatar Navy Apocalypse"
	},

	14358	=> {
		typeID   => 14358,
		groupID  => 314,
		typeName => "Zemnar"
	},

	14359	=> {
		typeID   => 14359,
		groupID  => 671,
		typeName => "Caldari Navy Condor"
	},

	14360	=> {
		typeID   => 14360,
		groupID  => 683,
		typeName => "Republic Fleet Slasher"
	},

	14361	=> {
		typeID   => 14361,
		groupID  => 677,
		typeName => "Federation Navy Atron"
	},

	14362	=> {
		typeID   => 14362,
		groupID  => 665,
		typeName => "Imperial Navy Executioner"
	},

	14363	=> {
		typeID   => 14363,
		groupID  => 665,
		typeName => "Ammatar Navy Executioner"
	},

	14364	=> {
		typeID   => 14364,
		groupID  => 665,
		typeName => "Ammatar Navy Officer"
	},

	14375	=> {
		typeID   => 14375,
		groupID  => 74,
		typeName => "Tuvan's Modified Electron Blaster Cannon"
	},

	14377	=> {
		typeID   => 14377,
		groupID  => 74,
		typeName => "Cormack's Modified Electron Blaster Cannon"
	},

	14379	=> {
		typeID   => 14379,
		groupID  => 74,
		typeName => "Cormack's Modified Ion Blaster Cannon"
	},

	14381	=> {
		typeID   => 14381,
		groupID  => 74,
		typeName => "Tuvan's Modified Ion Blaster Cannon"
	},

	14383	=> {
		typeID   => 14383,
		groupID  => 74,
		typeName => "Tuvan's Modified Neutron Blaster Cannon"
	},

	14385	=> {
		typeID   => 14385,
		groupID  => 74,
		typeName => "Cormack's Modified Neutron Blaster Cannon"
	},

	14387	=> {
		typeID   => 14387,
		groupID  => 74,
		typeName => "Brynn's Modified 350mm Railgun"
	},

	14389	=> {
		typeID   => 14389,
		groupID  => 74,
		typeName => "Setele's Modified 350mm Railgun"
	},

	14391	=> {
		typeID   => 14391,
		groupID  => 74,
		typeName => "Kaikka's Modified 350mm Railgun"
	},

	14393	=> {
		typeID   => 14393,
		groupID  => 74,
		typeName => "Vepas' Modified 350mm Railgun"
	},

	14395	=> {
		typeID   => 14395,
		groupID  => 74,
		typeName => "Estamel's Modified 350mm Railgun"
	},

	14397	=> {
		typeID   => 14397,
		groupID  => 74,
		typeName => "Brynn's Modified 425mm Railgun"
	},

	14399	=> {
		typeID   => 14399,
		groupID  => 74,
		typeName => "Setele's Modified 425mm Railgun"
	},

	14401	=> {
		typeID   => 14401,
		groupID  => 74,
		typeName => "Kaikka's Modified 425mm Railgun"
	},

	14403	=> {
		typeID   => 14403,
		groupID  => 74,
		typeName => "Vepas' Modified 425mm Railgun"
	},

	14405	=> {
		typeID   => 14405,
		groupID  => 74,
		typeName => "Estamel's Modified 425mm Railgun"
	},

	14407	=> {
		typeID   => 14407,
		groupID  => 74,
		typeName => "Brynn's Modified Dual 250mm Railgun"
	},

	14409	=> {
		typeID   => 14409,
		groupID  => 74,
		typeName => "Setele's Modified Dual 250mm Railgun"
	},

	14411	=> {
		typeID   => 14411,
		groupID  => 74,
		typeName => "Kaikka's Modified Dual 250mm Railgun"
	},

	14413	=> {
		typeID   => 14413,
		groupID  => 74,
		typeName => "Vepas' Modified Dual 250mm Railgun"
	},

	14415	=> {
		typeID   => 14415,
		groupID  => 74,
		typeName => "Estamel's Modified Dual 250mm Railgun"
	},

	14417	=> {
		typeID   => 14417,
		groupID  => 53,
		typeName => "Selynne's Modified Dual Heavy Beam Laser"
	},

	14419	=> {
		typeID   => 14419,
		groupID  => 53,
		typeName => "Chelm's Modified Dual Heavy Beam Laser"
	},

	14421	=> {
		typeID   => 14421,
		groupID  => 53,
		typeName => "Raysere's Modified Dual Heavy Beam Laser"
	},

	14423	=> {
		typeID   => 14423,
		groupID  => 53,
		typeName => "Draclira's Modified Dual Heavy Beam Laser"
	},

	14425	=> {
		typeID   => 14425,
		groupID  => 53,
		typeName => "Tairei's Modified Dual Heavy Pulse Laser"
	},

	14427	=> {
		typeID   => 14427,
		groupID  => 53,
		typeName => "Ahremen's Modified Dual Heavy Pulse Laser"
	},

	14429	=> {
		typeID   => 14429,
		groupID  => 53,
		typeName => "Brokara's Modified Dual Heavy Pulse Laser"
	},

	14431	=> {
		typeID   => 14431,
		groupID  => 53,
		typeName => "Vizan's Modified Dual Heavy Pulse Laser"
	},

	14433	=> {
		typeID   => 14433,
		groupID  => 53,
		typeName => "Selynne's Modified Mega Beam Laser"
	},

	14435	=> {
		typeID   => 14435,
		groupID  => 53,
		typeName => "Chelm's Modified Mega Beam Laser"
	},

	14437	=> {
		typeID   => 14437,
		groupID  => 53,
		typeName => "Raysere's Modified Mega Beam Laser"
	},

	14439	=> {
		typeID   => 14439,
		groupID  => 53,
		typeName => "Draclira's Modified Mega Beam Laser"
	},

	14441	=> {
		typeID   => 14441,
		groupID  => 53,
		typeName => "Tairei's Modified Mega Pulse Laser"
	},

	14443	=> {
		typeID   => 14443,
		groupID  => 53,
		typeName => "Ahremen's Modified Mega Pulse Laser"
	},

	14445	=> {
		typeID   => 14445,
		groupID  => 53,
		typeName => "Brokara's Modified Mega Pulse Laser"
	},

	14447	=> {
		typeID   => 14447,
		groupID  => 53,
		typeName => "Vizan's Modified Mega Pulse Laser"
	},

	14449	=> {
		typeID   => 14449,
		groupID  => 53,
		typeName => "Selynne's Modified Tachyon Beam Laser"
	},

	14451	=> {
		typeID   => 14451,
		groupID  => 53,
		typeName => "Chelm's Modified Tachyon Beam Laser"
	},

	14453	=> {
		typeID   => 14453,
		groupID  => 53,
		typeName => "Raysere's Modified Tachyon Beam Laser"
	},

	14455	=> {
		typeID   => 14455,
		groupID  => 53,
		typeName => "Draclira's Modified Tachyon Beam Laser"
	},

	14457	=> {
		typeID   => 14457,
		groupID  => 55,
		typeName => "Mizuro's Modified 800mm Repeating Cannon"
	},

	14459	=> {
		typeID   => 14459,
		groupID  => 55,
		typeName => "Gotan's Modified 800mm Repeating Cannon"
	},

	14461	=> {
		typeID   => 14461,
		groupID  => 55,
		typeName => "Hakim's Modified 1200mm Artillery Cannon"
	},

	14463	=> {
		typeID   => 14463,
		groupID  => 55,
		typeName => "Tobias' Modified 1200mm Artillery Cannon"
	},

	14465	=> {
		typeID   => 14465,
		groupID  => 55,
		typeName => "Hakim's Modified 1400mm Howitzer Artillery"
	},

	14467	=> {
		typeID   => 14467,
		groupID  => 55,
		typeName => "Tobias' Modified 1400mm Howitzer Artillery"
	},

	14469	=> {
		typeID   => 14469,
		groupID  => 55,
		typeName => "Mizuro's Modified Dual 425mm AutoCannon"
	},

	14471	=> {
		typeID   => 14471,
		groupID  => 55,
		typeName => "Gotan's Modified Dual 425mm AutoCannon"
	},

	14473	=> {
		typeID   => 14473,
		groupID  => 55,
		typeName => "Mizuro's Modified Dual 650mm Repeating Cannon"
	},

	14475	=> {
		typeID   => 14475,
		groupID  => 55,
		typeName => "Gotan's Modified Dual 650mm Repeating Cannon"
	},

	14477	=> {
		typeID   => 14477,
		groupID  => 226,
		typeName => "Ruined Neon Sign"
	},

	14478	=> {
		typeID   => 14478,
		groupID  => 671,
		typeName => "Caldari Navy Griffin"
	},

	14479	=> {
		typeID   => 14479,
		groupID  => 665,
		typeName => "Imperial Navy Crucifer"
	},

	14480	=> {
		typeID   => 14480,
		groupID  => 683,
		typeName => "Republic Fleet Vigil"
	},

	14481	=> {
		typeID   => 14481,
		groupID  => 677,
		typeName => "Federation Navy Maulus"
	},

	14482	=> {
		typeID   => 14482,
		groupID  => 665,
		typeName => "Ammatar Navy Inquisitor"
	},

	14483	=> {
		typeID   => 14483,
		groupID  => 314,
		typeName => "Drezins DNA"
	},

	14484	=> {
		typeID   => 14484,
		groupID  => 46,
		typeName => "Mizuro's Modified 100MN Afterburner"
	},

	14486	=> {
		typeID   => 14486,
		groupID  => 46,
		typeName => "Hakim's Modified 100MN Afterburner"
	},

	14488	=> {
		typeID   => 14488,
		groupID  => 46,
		typeName => "Gotan's Modified 100MN Afterburner"
	},

	14490	=> {
		typeID   => 14490,
		groupID  => 46,
		typeName => "Tobias' Modified 100MN Afterburner"
	},

	14492	=> {
		typeID   => 14492,
		groupID  => 46,
		typeName => "Mizuro's Modified 500MN Microwarpdrive"
	},

	14494	=> {
		typeID   => 14494,
		groupID  => 46,
		typeName => "Hakim's Modified 500MN Microwarpdrive"
	},

	14496	=> {
		typeID   => 14496,
		groupID  => 46,
		typeName => "Gotan's Modified 500MN Microwarpdrive"
	},

	14498	=> {
		typeID   => 14498,
		groupID  => 46,
		typeName => "Tobias' Modified 500MN Microwarpdrive"
	},

	14500	=> {
		typeID   => 14500,
		groupID  => 46,
		typeName => "Brynn's Modified 100MN Afterburner"
	},

	14502	=> {
		typeID   => 14502,
		groupID  => 46,
		typeName => "Tuvan's Modified 100MN Afterburner"
	},

	14504	=> {
		typeID   => 14504,
		groupID  => 46,
		typeName => "Setele's Modified 100MN Afterburner"
	},

	14506	=> {
		typeID   => 14506,
		groupID  => 46,
		typeName => "Cormack's Modified 100MN Afterburner"
	},

	14508	=> {
		typeID   => 14508,
		groupID  => 46,
		typeName => "Brynn's Modified 500MN Microwarpdrive"
	},

	14510	=> {
		typeID   => 14510,
		groupID  => 46,
		typeName => "Tuvan's Modified 500MN Microwarpdrive"
	},

	14512	=> {
		typeID   => 14512,
		groupID  => 46,
		typeName => "Setele's Modified 500MN Microwarpdrive"
	},

	14514	=> {
		typeID   => 14514,
		groupID  => 46,
		typeName => "Cormack's Modified 500MN Microwarpdrive"
	},

	14516	=> {
		typeID   => 14516,
		groupID  => 506,
		typeName => "Mizuro's Modified Cruise Missile Launcher"
	},

	14518	=> {
		typeID   => 14518,
		groupID  => 506,
		typeName => "Hakim's Modified Cruise Missile Launcher"
	},

	14520	=> {
		typeID   => 14520,
		groupID  => 506,
		typeName => "Gotan's Modified Cruise Missile Launcher"
	},

	14522	=> {
		typeID   => 14522,
		groupID  => 506,
		typeName => "Tobias' Modified Cruise Missile Launcher"
	},

	14524	=> {
		typeID   => 14524,
		groupID  => 508,
		typeName => "Mizuro's Modified Torpedo Launcher"
	},

	14525	=> {
		typeID   => 14525,
		groupID  => 508,
		typeName => "Hakim's Modified Torpedo Launcher"
	},

	14526	=> {
		typeID   => 14526,
		groupID  => 508,
		typeName => "Gotan's Modified Torpedo Launcher"
	},

	14527	=> {
		typeID   => 14527,
		groupID  => 508,
		typeName => "Tobias's Modified Torpedo Launcher"
	},

	14528	=> {
		typeID   => 14528,
		groupID  => 367,
		typeName => "Hakim's Modified Ballistic Control System"
	},

	14530	=> {
		typeID   => 14530,
		groupID  => 367,
		typeName => "Mizuro's Modified Ballistic Control System"
	},

	14532	=> {
		typeID   => 14532,
		groupID  => 367,
		typeName => "Gotan's Modified Ballistic Control System"
	},

	14534	=> {
		typeID   => 14534,
		groupID  => 367,
		typeName => "Tobias' Modified Ballistic Control System"
	},

	14536	=> {
		typeID   => 14536,
		groupID  => 59,
		typeName => "Mizuro's Modified Gyrostabilizer"
	},

	14538	=> {
		typeID   => 14538,
		groupID  => 59,
		typeName => "Hakim's Modified Gyrostabilizer"
	},

	14540	=> {
		typeID   => 14540,
		groupID  => 59,
		typeName => "Gotan's Modified Gyrostabilizer"
	},

	14542	=> {
		typeID   => 14542,
		groupID  => 59,
		typeName => "Tobias' Modified Gyrostabilizer"
	},

	14544	=> {
		typeID   => 14544,
		groupID  => 72,
		typeName => "Mizuro's Modified Large Proton Smartbomb"
	},

	14546	=> {
		typeID   => 14546,
		groupID  => 72,
		typeName => "Hakim's Modified Large Proton Smartbomb"
	},

	14548	=> {
		typeID   => 14548,
		groupID  => 72,
		typeName => "Gotan's Modified Large Proton Smartbomb"
	},

	14550	=> {
		typeID   => 14550,
		groupID  => 72,
		typeName => "Tobias' Modified Large Proton Smartbomb"
	},

	14552	=> {
		typeID   => 14552,
		groupID  => 62,
		typeName => "Mizuro's Modified Large Armor Repairer"
	},

	14554	=> {
		typeID   => 14554,
		groupID  => 62,
		typeName => "Gotan's Modified Large Armor Repairer"
	},

	14556	=> {
		typeID   => 14556,
		groupID  => 98,
		typeName => "Mizuro's Modified Adaptive Nano Plating"
	},

	14560	=> {
		typeID   => 14560,
		groupID  => 98,
		typeName => "Gotan's Modified Adaptive Nano Plating"
	},

	14564	=> {
		typeID   => 14564,
		groupID  => 98,
		typeName => "Mizuro's Modified Kinetic Plating"
	},

	14568	=> {
		typeID   => 14568,
		groupID  => 98,
		typeName => "Gotan's Modified Kinetic Plating"
	},

	14572	=> {
		typeID   => 14572,
		groupID  => 98,
		typeName => "Mizuro's Modified Explosive Plating"
	},

	14576	=> {
		typeID   => 14576,
		groupID  => 98,
		typeName => "Gotan's Modified Explosive Plating"
	},

	14580	=> {
		typeID   => 14580,
		groupID  => 98,
		typeName => "Mizuro's Modified EM Plating"
	},

	14584	=> {
		typeID   => 14584,
		groupID  => 98,
		typeName => "Gotan's Modified EM Plating"
	},

	14588	=> {
		typeID   => 14588,
		groupID  => 98,
		typeName => "Mizuro's Modified Thermal Plating"
	},

	14592	=> {
		typeID   => 14592,
		groupID  => 98,
		typeName => "Gotan's Modified Thermal Plating"
	},

	14597	=> {
		typeID   => 14597,
		groupID  => 40,
		typeName => "Hakim's Modified Large Shield Booster"
	},

	14599	=> {
		typeID   => 14599,
		groupID  => 40,
		typeName => "Tobias' Modified Large Shield Booster"
	},

	14601	=> {
		typeID   => 14601,
		groupID  => 40,
		typeName => "Hakim's Modified X-Large Shield Booster"
	},

	14603	=> {
		typeID   => 14603,
		groupID  => 40,
		typeName => "Tobias' Modified X-Large Shield Booster"
	},

	14606	=> {
		typeID   => 14606,
		groupID  => 295,
		typeName => "Hakim's Modified Explosive Deflection Amplifier"
	},

	14610	=> {
		typeID   => 14610,
		groupID  => 295,
		typeName => "Tobias' Modified Explosive Deflection Amplifier"
	},

	14614	=> {
		typeID   => 14614,
		groupID  => 295,
		typeName => "Hakim's Modified Thermal Dissipation Amplifier"
	},

	14618	=> {
		typeID   => 14618,
		groupID  => 295,
		typeName => "Tobias' Modified Thermal Dissipation Amplifier"
	},

	14622	=> {
		typeID   => 14622,
		groupID  => 295,
		typeName => "Hakim's Modified Kinetic Deflection Amplifier"
	},

	14626	=> {
		typeID   => 14626,
		groupID  => 295,
		typeName => "Tobias' Modified Kinetic Deflection Amplifier"
	},

	14630	=> {
		typeID   => 14630,
		groupID  => 295,
		typeName => "Hakim's Modified EM Ward Amplifier"
	},

	14634	=> {
		typeID   => 14634,
		groupID  => 295,
		typeName => "Tobias' Modified EM Ward Amplifier"
	},

	14636	=> {
		typeID   => 14636,
		groupID  => 338,
		typeName => "Hakim's Modified Shield Boost Amplifier"
	},

	14638	=> {
		typeID   => 14638,
		groupID  => 338,
		typeName => "Tobias' Modified Shield Boost Amplifier"
	},

	14640	=> {
		typeID   => 14640,
		groupID  => 211,
		typeName => "Mizuro's Modified Tracking Enhancer"
	},

	14642	=> {
		typeID   => 14642,
		groupID  => 211,
		typeName => "Hakim's Modified Tracking Enhancer"
	},

	14644	=> {
		typeID   => 14644,
		groupID  => 211,
		typeName => "Gotan's Modified Tracking Enhancer"
	},

	14646	=> {
		typeID   => 14646,
		groupID  => 211,
		typeName => "Tobias' Modified Tracking Enhancer"
	},

	14648	=> {
		typeID   => 14648,
		groupID  => 65,
		typeName => "Mizuro's Modified Stasis Webifier"
	},

	14650	=> {
		typeID   => 14650,
		groupID  => 65,
		typeName => "Hakim's Modified Stasis Webifier"
	},

	14652	=> {
		typeID   => 14652,
		groupID  => 65,
		typeName => "Gotan's Modified Stasis Webifier"
	},

	14654	=> {
		typeID   => 14654,
		groupID  => 65,
		typeName => "Tobias' Modified Stasis Webifier"
	},

	14656	=> {
		typeID   => 14656,
		groupID  => 52,
		typeName => "Mizuro's Modified Heavy Warp Disruptor"
	},

	14658	=> {
		typeID   => 14658,
		groupID  => 52,
		typeName => "Hakim's Modified Heavy Warp Disruptor"
	},

	14660	=> {
		typeID   => 14660,
		groupID  => 52,
		typeName => "Gotan's Modified Heavy Warp Disruptor"
	},

	14662	=> {
		typeID   => 14662,
		groupID  => 52,
		typeName => "Tobias' Modified Heavy Warp Disruptor"
	},

	14664	=> {
		typeID   => 14664,
		groupID  => 52,
		typeName => "Mizuro's Modified Heavy Warp Scrambler"
	},

	14666	=> {
		typeID   => 14666,
		groupID  => 52,
		typeName => "Hakim's Modified Heavy Warp Scrambler"
	},

	14668	=> {
		typeID   => 14668,
		groupID  => 52,
		typeName => "Gotan's Modified Heavy Warp Scrambler"
	},

	14670	=> {
		typeID   => 14670,
		groupID  => 52,
		typeName => "Tobias' Modified Heavy Warp Scrambler"
	},

	14672	=> {
		typeID   => 14672,
		groupID  => 506,
		typeName => "Kaikka's Modified Cruise Missile Launcher"
	},

	14674	=> {
		typeID   => 14674,
		groupID  => 506,
		typeName => "Thon's Modified Cruise Missile Launcher"
	},

	14676	=> {
		typeID   => 14676,
		groupID  => 506,
		typeName => "Vepas' Modified Cruise Missile Launcher"
	},

	14678	=> {
		typeID   => 14678,
		groupID  => 506,
		typeName => "Estamel's Modified Cruise Missile Launcher"
	},

	14680	=> {
		typeID   => 14680,
		groupID  => 508,
		typeName => "Kaikka's Modified Torpedo Launcher"
	},

	14681	=> {
		typeID   => 14681,
		groupID  => 508,
		typeName => "Thon's Modified Torpedo Launcher"
	},

	14682	=> {
		typeID   => 14682,
		groupID  => 508,
		typeName => "Vepas's Modified Torpedo Launcher"
	},

	14683	=> {
		typeID   => 14683,
		groupID  => 508,
		typeName => "Estamel's Modified Torpedo Launcher"
	},

	14684	=> {
		typeID   => 14684,
		groupID  => 367,
		typeName => "Kaikka's Modified Ballistic Control System"
	},

	14686	=> {
		typeID   => 14686,
		groupID  => 367,
		typeName => "Thon's Modified Ballistic Control System"
	},

	14688	=> {
		typeID   => 14688,
		groupID  => 367,
		typeName => "Vepas' Modified Ballistic Control System"
	},

	14690	=> {
		typeID   => 14690,
		groupID  => 367,
		typeName => "Estamel's Modified Ballistic Control System"
	},

	14692	=> {
		typeID   => 14692,
		groupID  => 72,
		typeName => "Kaikka's Modified Large Graviton Smartbomb"
	},

	14694	=> {
		typeID   => 14694,
		groupID  => 72,
		typeName => "Thon's Modified Large Graviton Smartbomb"
	},

	14696	=> {
		typeID   => 14696,
		groupID  => 72,
		typeName => "Vepas' Modified Large Graviton Smartbomb"
	},

	14698	=> {
		typeID   => 14698,
		groupID  => 72,
		typeName => "Estamel's Modified Large Graviton Smartbomb"
	},

	14700	=> {
		typeID   => 14700,
		groupID  => 40,
		typeName => "Kaikka's Modified Large Shield Booster"
	},

	14701	=> {
		typeID   => 14701,
		groupID  => 40,
		typeName => "Thon's Modified Large Shield Booster"
	},

	14702	=> {
		typeID   => 14702,
		groupID  => 40,
		typeName => "Vepas' Modified Large Shield Booster"
	},

	14703	=> {
		typeID   => 14703,
		groupID  => 40,
		typeName => "Estamel's Modified Large Shield Booster"
	},

	14704	=> {
		typeID   => 14704,
		groupID  => 40,
		typeName => "Kaikka's Modified X-Large Shield Booster"
	},

	14705	=> {
		typeID   => 14705,
		groupID  => 40,
		typeName => "Thon's Modified X-Large Shield Booster"
	},

	14706	=> {
		typeID   => 14706,
		groupID  => 40,
		typeName => "Vepas' Modified X-Large Shield Booster"
	},

	14707	=> {
		typeID   => 14707,
		groupID  => 40,
		typeName => "Estamel's Modified X-Large Shield Booster"
	},

	14708	=> {
		typeID   => 14708,
		groupID  => 338,
		typeName => "Kaikka's Modified Shield Boost Amplifier"
	},

	14710	=> {
		typeID   => 14710,
		groupID  => 338,
		typeName => "Thon's Modified Shield Boost Amplifier"
	},

	14712	=> {
		typeID   => 14712,
		groupID  => 338,
		typeName => "Vepas' Modified Shield Boost Amplifier"
	},

	14714	=> {
		typeID   => 14714,
		groupID  => 338,
		typeName => "Estamel's Modified Shield Boost Amplifier"
	},

	14716	=> {
		typeID   => 14716,
		groupID  => 295,
		typeName => "Kaikka's Modified Explosive Deflection Amplifier"
	},

	14718	=> {
		typeID   => 14718,
		groupID  => 295,
		typeName => "Thon's Modified Explosive Deflection Amplifier"
	},

	14720	=> {
		typeID   => 14720,
		groupID  => 295,
		typeName => "Vepas' Modified Explosive Deflection Amplifier"
	},

	14722	=> {
		typeID   => 14722,
		groupID  => 295,
		typeName => "Estamel's Modified Explosive Deflection Amplifier"
	},

	14724	=> {
		typeID   => 14724,
		groupID  => 295,
		typeName => "Kaikka's Modified Thermal Dissipation Amplifier"
	},

	14726	=> {
		typeID   => 14726,
		groupID  => 295,
		typeName => "Thon's Modified Thermal Dissipation Amplifier"
	},

	14728	=> {
		typeID   => 14728,
		groupID  => 295,
		typeName => "Vepas' Modified Thermal Dissipation Amplifier"
	},

	14730	=> {
		typeID   => 14730,
		groupID  => 295,
		typeName => "Estamel's Modified Thermal Dissipation Amplifier"
	},

	14732	=> {
		typeID   => 14732,
		groupID  => 295,
		typeName => "Kaikka's Modified Kinetic Deflection Amplifier"
	},

	14734	=> {
		typeID   => 14734,
		groupID  => 295,
		typeName => "Thon's Modified Kinetic Deflection Amplifier"
	},

	14736	=> {
		typeID   => 14736,
		groupID  => 295,
		typeName => "Vepas' Modified Kinetic Deflection Amplifier"
	},

	14738	=> {
		typeID   => 14738,
		groupID  => 295,
		typeName => "Estamel's Modified Kinetic Deflection Amplifier"
	},

	14740	=> {
		typeID   => 14740,
		groupID  => 295,
		typeName => "Kaikka's Modified EM Ward Amplifier"
	},

	14742	=> {
		typeID   => 14742,
		groupID  => 295,
		typeName => "Thon's Modified EM Ward Amplifier"
	},

	14744	=> {
		typeID   => 14744,
		groupID  => 295,
		typeName => "Vepas' Modified EM Ward Amplifier"
	},

	14746	=> {
		typeID   => 14746,
		groupID  => 295,
		typeName => "Estamel's Modified EM Ward Amplifier"
	},

	14748	=> {
		typeID   => 14748,
		groupID  => 77,
		typeName => "Kaikka's Modified Kinetic Deflection Field"
	},

	14749	=> {
		typeID   => 14749,
		groupID  => 77,
		typeName => "Thon's Modified Kinetic Deflection Field"
	},

	14750	=> {
		typeID   => 14750,
		groupID  => 77,
		typeName => "Vepas's Modified Kinetic Deflection Field"
	},

	14751	=> {
		typeID   => 14751,
		groupID  => 77,
		typeName => "Estamel's Modified Kinetic Deflection Field"
	},

	14752	=> {
		typeID   => 14752,
		groupID  => 77,
		typeName => "Kaikka's Modified EM Ward Field"
	},

	14753	=> {
		typeID   => 14753,
		groupID  => 77,
		typeName => "Thon's Modified EM Ward Field"
	},

	14754	=> {
		typeID   => 14754,
		groupID  => 77,
		typeName => "Vepas's Modified EM Ward Field"
	},

	14755	=> {
		typeID   => 14755,
		groupID  => 77,
		typeName => "Estamel's Modified EM Ward Field"
	},

	14756	=> {
		typeID   => 14756,
		groupID  => 77,
		typeName => "Kaikka's Modified Explosive Deflection Field"
	},

	14757	=> {
		typeID   => 14757,
		groupID  => 77,
		typeName => "Thon's Modified Explosive Deflection Field"
	},

	14758	=> {
		typeID   => 14758,
		groupID  => 77,
		typeName => "Vepas's Modified Explosive Deflection Field"
	},

	14759	=> {
		typeID   => 14759,
		groupID  => 77,
		typeName => "Estamel's Modified Explosive Deflection Field"
	},

	14760	=> {
		typeID   => 14760,
		groupID  => 77,
		typeName => "Kaikka's Modified Thermal Dissipation Field"
	},

	14761	=> {
		typeID   => 14761,
		groupID  => 77,
		typeName => "Thon's Modified Thermal Dissipation Field"
	},

	14762	=> {
		typeID   => 14762,
		groupID  => 77,
		typeName => "Vepas's Modified Thermal Dissipation Field"
	},

	14763	=> {
		typeID   => 14763,
		groupID  => 77,
		typeName => "Estamel's Modified Thermal Dissipation Field"
	},

	14764	=> {
		typeID   => 14764,
		groupID  => 77,
		typeName => "Kaikka's Modified Adaptive Invulnerability Field"
	},

	14765	=> {
		typeID   => 14765,
		groupID  => 77,
		typeName => "Thon's Modified Adaptive Invulnerability Field"
	},

	14766	=> {
		typeID   => 14766,
		groupID  => 77,
		typeName => "Vepas's Modified Adaptive Invulnerability Field"
	},

	14767	=> {
		typeID   => 14767,
		groupID  => 77,
		typeName => "Estamel's Modified Adaptive Invulnerability Field"
	},

	14768	=> {
		typeID   => 14768,
		groupID  => 285,
		typeName => "Kaikka's Modified Co-Processor"
	},

	14770	=> {
		typeID   => 14770,
		groupID  => 285,
		typeName => "Thon's Modified Co-Processor"
	},

	14772	=> {
		typeID   => 14772,
		groupID  => 285,
		typeName => "Vepas' Modified Co-Processor"
	},

	14774	=> {
		typeID   => 14774,
		groupID  => 285,
		typeName => "Estamel's Modified Co-Processor"
	},

	14776	=> {
		typeID   => 14776,
		groupID  => 330,
		typeName => "Kaikka's Modified Cloaking Device"
	},

	14778	=> {
		typeID   => 14778,
		groupID  => 330,
		typeName => "Thon's Modified Cloaking Device"
	},

	14780	=> {
		typeID   => 14780,
		groupID  => 330,
		typeName => "Vepas' Modified Cloaking Device"
	},

	14782	=> {
		typeID   => 14782,
		groupID  => 330,
		typeName => "Estamel's Modified Cloaking Device"
	},

	14784	=> {
		typeID   => 14784,
		groupID  => 72,
		typeName => "Brokara's Modified Large EMP Smartbomb"
	},

	14786	=> {
		typeID   => 14786,
		groupID  => 72,
		typeName => "Tairei's Modified Large EMP Smartbomb"
	},

	14788	=> {
		typeID   => 14788,
		groupID  => 72,
		typeName => "Selynne's Modified Large EMP Smartbomb"
	},

	14790	=> {
		typeID   => 14790,
		groupID  => 72,
		typeName => "Raysere's Modified Large EMP Smartbomb"
	},

	14792	=> {
		typeID   => 14792,
		groupID  => 72,
		typeName => "Vizan's Modified Large EMP Smartbomb"
	},

	14794	=> {
		typeID   => 14794,
		groupID  => 72,
		typeName => "Ahremen's Modified Large EMP Smartbomb"
	},

	14796	=> {
		typeID   => 14796,
		groupID  => 72,
		typeName => "Chelm's Modified Large EMP Smartbomb"
	},

	14798	=> {
		typeID   => 14798,
		groupID  => 72,
		typeName => "Draclira's Modified Large EMP Smartbomb"
	},

	14800	=> {
		typeID   => 14800,
		groupID  => 205,
		typeName => "Brokara's Modified Heat Sink"
	},

	14802	=> {
		typeID   => 14802,
		groupID  => 205,
		typeName => "Tairei's Modified Heat Sink"
	},

	14804	=> {
		typeID   => 14804,
		groupID  => 205,
		typeName => "Selynne's Modified Heat Sink"
	},

	14806	=> {
		typeID   => 14806,
		groupID  => 205,
		typeName => "Raysere's Modified Heat Sink"
	},

	14808	=> {
		typeID   => 14808,
		groupID  => 205,
		typeName => "Vizan's Modified Heat Sink"
	},

	14810	=> {
		typeID   => 14810,
		groupID  => 205,
		typeName => "Ahremen's Modified Heat Sink"
	},

	14812	=> {
		typeID   => 14812,
		groupID  => 205,
		typeName => "Chelm's Modified Heat Sink"
	},

	14814	=> {
		typeID   => 14814,
		groupID  => 205,
		typeName => "Draclira's Modified Heat Sink"
	},

	14816	=> {
		typeID   => 14816,
		groupID  => 68,
		typeName => "Brokara's Modified Heavy Energy Nosferatu"
	},

	14818	=> {
		typeID   => 14818,
		groupID  => 68,
		typeName => "Tairei's Modified Heavy Energy Nosferatu"
	},

	14820	=> {
		typeID   => 14820,
		groupID  => 68,
		typeName => "Selynne's Modified Heavy Energy Nosferatu"
	},

	14822	=> {
		typeID   => 14822,
		groupID  => 68,
		typeName => "Raysere's Modified Heavy Energy Nosferatu"
	},

	14824	=> {
		typeID   => 14824,
		groupID  => 68,
		typeName => "Vizan's Modified Heavy Energy Nosferatu"
	},

	14826	=> {
		typeID   => 14826,
		groupID  => 68,
		typeName => "Ahremen's Modified Heavy Energy Nosferatu"
	},

	14828	=> {
		typeID   => 14828,
		groupID  => 68,
		typeName => "Chelm's Modified Heavy Energy Nosferatu"
	},

	14830	=> {
		typeID   => 14830,
		groupID  => 68,
		typeName => "Draclira's Modified Heavy Energy Nosferatu"
	},

	14832	=> {
		typeID   => 14832,
		groupID  => 71,
		typeName => "Brokara's Modified Heavy Energy Neutralizer"
	},

	14834	=> {
		typeID   => 14834,
		groupID  => 71,
		typeName => "Tairei's Modified Heavy Energy Neutralizer"
	},

	14836	=> {
		typeID   => 14836,
		groupID  => 71,
		typeName => "Selynne's Modified Heavy Energy Neutralizer"
	},

	14838	=> {
		typeID   => 14838,
		groupID  => 71,
		typeName => "Raysere's Modified Heavy Energy Neutralizer"
	},

	14840	=> {
		typeID   => 14840,
		groupID  => 71,
		typeName => "Vizan's Modified Heavy Energy Neutralizer"
	},

	14842	=> {
		typeID   => 14842,
		groupID  => 71,
		typeName => "Ahremen's Modified Heavy Energy Neutralizer"
	},

	14844	=> {
		typeID   => 14844,
		groupID  => 71,
		typeName => "Chelm's Modified Heavy Energy Neutralizer"
	},

	14846	=> {
		typeID   => 14846,
		groupID  => 71,
		typeName => "Draclira's Modified Heavy Energy Neutralizer"
	},

	14848	=> {
		typeID   => 14848,
		groupID  => 62,
		typeName => "Brokara's Modified Large Armor Repairer"
	},

	14849	=> {
		typeID   => 14849,
		groupID  => 62,
		typeName => "Tairei's Modified Large Armor Repairer"
	},

	14850	=> {
		typeID   => 14850,
		groupID  => 62,
		typeName => "Selynne's Modified Large Armor Repairer"
	},

	14851	=> {
		typeID   => 14851,
		groupID  => 62,
		typeName => "Raysere's Modified Large Armor Repairer"
	},

	14852	=> {
		typeID   => 14852,
		groupID  => 62,
		typeName => "Vizan's Modified Large Armor Repairer"
	},

	14853	=> {
		typeID   => 14853,
		groupID  => 62,
		typeName => "Ahremen's Modified Large Armor Repairer"
	},

	14854	=> {
		typeID   => 14854,
		groupID  => 62,
		typeName => "Chelm's Modified Large Armor Repairer"
	},

	14855	=> {
		typeID   => 14855,
		groupID  => 62,
		typeName => "Draclira's Modified Large Armor Repairer"
	},

	14856	=> {
		typeID   => 14856,
		groupID  => 98,
		typeName => "Brokara's Modified Adaptive Nano Plating"
	},

	14858	=> {
		typeID   => 14858,
		groupID  => 98,
		typeName => "Tairei's Modified Adaptive Nano Plating"
	},

	14860	=> {
		typeID   => 14860,
		groupID  => 98,
		typeName => "Selynne's Modified Adaptive Nano Plating"
	},

	14862	=> {
		typeID   => 14862,
		groupID  => 98,
		typeName => "Raysere's Modified Adaptive Nano Plating"
	},

	14864	=> {
		typeID   => 14864,
		groupID  => 98,
		typeName => "Vizan's Modified Adaptive Nano Plating"
	},

	14866	=> {
		typeID   => 14866,
		groupID  => 98,
		typeName => "Ahremen's Modified Adaptive Nano Plating"
	},

	14868	=> {
		typeID   => 14868,
		groupID  => 98,
		typeName => "Chelm's Modified Adaptive Nano Plating"
	},

	14870	=> {
		typeID   => 14870,
		groupID  => 98,
		typeName => "Draclira's Modified Adaptive Nano Plating"
	},

	14872	=> {
		typeID   => 14872,
		groupID  => 98,
		typeName => "Brokara's Modified Kinetic Plating"
	},

	14874	=> {
		typeID   => 14874,
		groupID  => 98,
		typeName => "Tairei's Modified Kinetic Plating"
	},

	14876	=> {
		typeID   => 14876,
		groupID  => 98,
		typeName => "Selynne's Modified Kinetic Plating"
	},

	14878	=> {
		typeID   => 14878,
		groupID  => 98,
		typeName => "Raysere's Modified Kinetic Plating"
	},

	14880	=> {
		typeID   => 14880,
		groupID  => 98,
		typeName => "Vizan's Modified Kinetic Plating"
	},

	14882	=> {
		typeID   => 14882,
		groupID  => 98,
		typeName => "Ahremen's Modified Kinetic Plating"
	},

	14884	=> {
		typeID   => 14884,
		groupID  => 98,
		typeName => "Chelm's Modified Kinetic Plating"
	},

	14886	=> {
		typeID   => 14886,
		groupID  => 98,
		typeName => "Draclira's Modified Kinetic Plating"
	},

	14888	=> {
		typeID   => 14888,
		groupID  => 98,
		typeName => "Brokara's Modified Explosive Plating"
	},

	14890	=> {
		typeID   => 14890,
		groupID  => 98,
		typeName => "Tairei's Modified Explosive Plating"
	},

	14892	=> {
		typeID   => 14892,
		groupID  => 98,
		typeName => "Selynne's Modified Explosive Plating"
	},

	14894	=> {
		typeID   => 14894,
		groupID  => 98,
		typeName => "Raysere's Modified Explosive Plating"
	},

	14896	=> {
		typeID   => 14896,
		groupID  => 98,
		typeName => "Vizan's Modified Explosive Plating"
	},

	14898	=> {
		typeID   => 14898,
		groupID  => 98,
		typeName => "Ahremen's Modified Explosive Plating"
	},

	14900	=> {
		typeID   => 14900,
		groupID  => 98,
		typeName => "Chelm's Modified Explosive Plating"
	},

	14902	=> {
		typeID   => 14902,
		groupID  => 98,
		typeName => "Draclira's Modified Explosive Plating"
	},

	14904	=> {
		typeID   => 14904,
		groupID  => 98,
		typeName => "Brokara's Modified EM Plating"
	},

	14906	=> {
		typeID   => 14906,
		groupID  => 98,
		typeName => "Tairei's Modified EM Plating"
	},

	14908	=> {
		typeID   => 14908,
		groupID  => 98,
		typeName => "Selynne's Modified EM Plating"
	},

	14910	=> {
		typeID   => 14910,
		groupID  => 98,
		typeName => "Raysere's Modified EM Plating"
	},

	14912	=> {
		typeID   => 14912,
		groupID  => 98,
		typeName => "Vizan's Modified EM Plating"
	},

	14914	=> {
		typeID   => 14914,
		groupID  => 98,
		typeName => "Ahremen's Modified EM Plating"
	},

	14916	=> {
		typeID   => 14916,
		groupID  => 98,
		typeName => "Chelm's Modified EM Plating"
	},

	14918	=> {
		typeID   => 14918,
		groupID  => 98,
		typeName => "Draclira's Modified EM Plating"
	},

	14920	=> {
		typeID   => 14920,
		groupID  => 98,
		typeName => "Brokara's Modified Thermal Plating"
	},

	14922	=> {
		typeID   => 14922,
		groupID  => 98,
		typeName => "Tairei's Modified Thermal Plating"
	},

	14924	=> {
		typeID   => 14924,
		groupID  => 98,
		typeName => "Selynne's Modified Thermal Plating"
	},

	14926	=> {
		typeID   => 14926,
		groupID  => 98,
		typeName => "Raysere's Modified Thermal Plating"
	},

	14928	=> {
		typeID   => 14928,
		groupID  => 98,
		typeName => "Vizan's Modified Thermal Plating"
	},

	14930	=> {
		typeID   => 14930,
		groupID  => 98,
		typeName => "Ahremen's Modified Thermal Plating"
	},

	14932	=> {
		typeID   => 14932,
		groupID  => 98,
		typeName => "Chelm's Modified Thermal Plating"
	},

	14934	=> {
		typeID   => 14934,
		groupID  => 98,
		typeName => "Draclira's Modified Thermal Plating"
	},

	14936	=> {
		typeID   => 14936,
		groupID  => 326,
		typeName => "Brokara's Modified Energized Adaptive Nano Membrane"
	},

	14938	=> {
		typeID   => 14938,
		groupID  => 326,
		typeName => "Tairei's Modified Energized Adaptive Nano Membrane"
	},

	14940	=> {
		typeID   => 14940,
		groupID  => 326,
		typeName => "Selynne's Modified Energized Adaptive Nano Membrane"
	},

	14942	=> {
		typeID   => 14942,
		groupID  => 326,
		typeName => "Raysere's Modified Energized Adaptive Nano Membrane"
	},

	14944	=> {
		typeID   => 14944,
		groupID  => 326,
		typeName => "Vizan's Modified Energized Adaptive Nano Membrane"
	},

	14946	=> {
		typeID   => 14946,
		groupID  => 326,
		typeName => "Ahremen's Modified Energized Adaptive Nano Membrane"
	},

	14948	=> {
		typeID   => 14948,
		groupID  => 326,
		typeName => "Chelm's Modified Energized Adaptive Nano Membrane"
	},

	14950	=> {
		typeID   => 14950,
		groupID  => 326,
		typeName => "Draclira's Modified Energized Adaptive Nano Membrane"
	},

	14952	=> {
		typeID   => 14952,
		groupID  => 326,
		typeName => "Brokara's Modified Energized Thermal Membrane"
	},

	14954	=> {
		typeID   => 14954,
		groupID  => 326,
		typeName => "Tairei's Modified Energized Thermal Membrane"
	},

	14956	=> {
		typeID   => 14956,
		groupID  => 326,
		typeName => "Selynne's Modified Energized Thermal Membrane"
	},

	14958	=> {
		typeID   => 14958,
		groupID  => 326,
		typeName => "Raysere's Modified Energized Thermal Membrane"
	},

	14960	=> {
		typeID   => 14960,
		groupID  => 326,
		typeName => "Vizan's Modified Energized Thermal Membrane"
	},

	14962	=> {
		typeID   => 14962,
		groupID  => 326,
		typeName => "Ahremen's Modified Energized Thermal Membrane"
	},

	14964	=> {
		typeID   => 14964,
		groupID  => 326,
		typeName => "Chelm's Modified Energized Thermal Membrane"
	},

	14966	=> {
		typeID   => 14966,
		groupID  => 326,
		typeName => "Draclira's Modified Energized Thermal Membrane"
	},

	14968	=> {
		typeID   => 14968,
		groupID  => 326,
		typeName => "Brokara's Modified Energized EM Membrane"
	},

	14970	=> {
		typeID   => 14970,
		groupID  => 326,
		typeName => "Tairei's Modified Energized EM Membrane"
	},

	14972	=> {
		typeID   => 14972,
		groupID  => 326,
		typeName => "Selynne's Modified Energized EM Membrane"
	},

	14974	=> {
		typeID   => 14974,
		groupID  => 326,
		typeName => "Raysere's Modified Energized EM Membrane"
	},

	14976	=> {
		typeID   => 14976,
		groupID  => 326,
		typeName => "Vizan's Modified Energized EM Membrane"
	},

	14978	=> {
		typeID   => 14978,
		groupID  => 326,
		typeName => "Ahremen's Modified Energized EM Membrane"
	},

	14980	=> {
		typeID   => 14980,
		groupID  => 326,
		typeName => "Chelm's Modified Energized EM Membrane"
	},

	14982	=> {
		typeID   => 14982,
		groupID  => 326,
		typeName => "Draclira's Modified Energized EM Membrane"
	},

	14984	=> {
		typeID   => 14984,
		groupID  => 326,
		typeName => "Brokara's Modified Energized Explosive Membrane"
	},

	14986	=> {
		typeID   => 14986,
		groupID  => 326,
		typeName => "Tairei's Modified Energized Explosive Membrane"
	},

	14988	=> {
		typeID   => 14988,
		groupID  => 326,
		typeName => "Selynne's Modified Energized Explosive Membrane"
	},

	14990	=> {
		typeID   => 14990,
		groupID  => 326,
		typeName => "Raysere's Modified Energized Explosive Membrane"
	},

	14992	=> {
		typeID   => 14992,
		groupID  => 326,
		typeName => "Vizan's Modified Energized Explosive Membrane"
	},

	14994	=> {
		typeID   => 14994,
		groupID  => 326,
		typeName => "Ahremen's Modified Energized Explosive Membrane"
	},

	14996	=> {
		typeID   => 14996,
		groupID  => 326,
		typeName => "Chelm's Modified Energized Explosive Membrane"
	},

	14998	=> {
		typeID   => 14998,
		groupID  => 326,
		typeName => "Draclira's Modified Energized Explosive Membrane"
	},

	15000	=> {
		typeID   => 15000,
		groupID  => 326,
		typeName => "Brokara's Modified Energized Kinetic Membrane"
	},

	15002	=> {
		typeID   => 15002,
		groupID  => 326,
		typeName => "Tairei's Modified Energized Kinetic Membrane"
	},

	15004	=> {
		typeID   => 15004,
		groupID  => 326,
		typeName => "Selynne's Modified Energized Kinetic Membrane"
	},

	15006	=> {
		typeID   => 15006,
		groupID  => 326,
		typeName => "Raysere's Modified Energized Kinetic Membrane"
	},

	15008	=> {
		typeID   => 15008,
		groupID  => 326,
		typeName => "Vizan's Modified Energized Kinetic Membrane"
	},

	15010	=> {
		typeID   => 15010,
		groupID  => 326,
		typeName => "Ahremen's Modified Energized Kinetic Membrane"
	},

	15012	=> {
		typeID   => 15012,
		groupID  => 326,
		typeName => "Chelm's Modified Energized Kinetic Membrane"
	},

	15014	=> {
		typeID   => 15014,
		groupID  => 326,
		typeName => "Draclira's Modified Energized Kinetic Membrane"
	},

	15016	=> {
		typeID   => 15016,
		groupID  => 328,
		typeName => "Brokara's Modified Armor EM Hardener"
	},

	15018	=> {
		typeID   => 15018,
		groupID  => 328,
		typeName => "Tairei's Modified Armor EM Hardener"
	},

	15020	=> {
		typeID   => 15020,
		groupID  => 328,
		typeName => "Selynne's Modified Armor EM Hardener"
	},

	15022	=> {
		typeID   => 15022,
		groupID  => 328,
		typeName => "Raysere's Modified Armor EM Hardener"
	},

	15024	=> {
		typeID   => 15024,
		groupID  => 328,
		typeName => "Vizan's Modified Armor EM Hardener"
	},

	15026	=> {
		typeID   => 15026,
		groupID  => 328,
		typeName => "Ahremen's Modified Armor EM Hardener"
	},

	15028	=> {
		typeID   => 15028,
		groupID  => 328,
		typeName => "Chelm's Modified Armor EM Hardener"
	},

	15030	=> {
		typeID   => 15030,
		groupID  => 328,
		typeName => "Draclira's Modified Armor EM Hardener"
	},

	15032	=> {
		typeID   => 15032,
		groupID  => 328,
		typeName => "Brokara's Modified Armor Thermal Hardener"
	},

	15034	=> {
		typeID   => 15034,
		groupID  => 328,
		typeName => "Tairei's Modified Armor Thermal Hardener"
	},

	15036	=> {
		typeID   => 15036,
		groupID  => 328,
		typeName => "Selynne's Modified Armor Thermal Hardener"
	},

	15038	=> {
		typeID   => 15038,
		groupID  => 328,
		typeName => "Raysere's Modified Armor Thermal Hardener"
	},

	15040	=> {
		typeID   => 15040,
		groupID  => 328,
		typeName => "Vizan's Modified Armor Thermal Hardener"
	},

	15042	=> {
		typeID   => 15042,
		groupID  => 328,
		typeName => "Ahremen's Modified Armor Thermal Hardener"
	},

	15044	=> {
		typeID   => 15044,
		groupID  => 328,
		typeName => "Chelm's Modified Armor Thermal Hardener"
	},

	15046	=> {
		typeID   => 15046,
		groupID  => 328,
		typeName => "Draclira's Modified Armor Thermal Hardener"
	},

	15048	=> {
		typeID   => 15048,
		groupID  => 328,
		typeName => "Brokara's Modified Armor Kinetic Hardener"
	},

	15050	=> {
		typeID   => 15050,
		groupID  => 328,
		typeName => "Tairei's Modified Armor Kinetic Hardener"
	},

	15052	=> {
		typeID   => 15052,
		groupID  => 328,
		typeName => "Selynne's Modified Armor Kinetic Hardener"
	},

	15054	=> {
		typeID   => 15054,
		groupID  => 328,
		typeName => "Raysere's Modified Armor Kinetic Hardener"
	},

	15056	=> {
		typeID   => 15056,
		groupID  => 328,
		typeName => "Vizan's Modified Armor Kinetic Hardener"
	},

	15058	=> {
		typeID   => 15058,
		groupID  => 328,
		typeName => "Ahremen's Modified Armor Kinetic Hardener"
	},

	15060	=> {
		typeID   => 15060,
		groupID  => 328,
		typeName => "Chelm's Modified Armor Kinetic Hardener"
	},

	15062	=> {
		typeID   => 15062,
		groupID  => 328,
		typeName => "Draclira's Modified Armor Kinetic Hardener"
	},

	15064	=> {
		typeID   => 15064,
		groupID  => 328,
		typeName => "Brokara's Modified Armor Explosive Hardener"
	},

	15066	=> {
		typeID   => 15066,
		groupID  => 328,
		typeName => "Tairei's Modified Armor Explosive Hardener"
	},

	15068	=> {
		typeID   => 15068,
		groupID  => 328,
		typeName => "Selynne's Modified Armor Explosive Hardener"
	},

	15070	=> {
		typeID   => 15070,
		groupID  => 328,
		typeName => "Raysere's Modified Armor Explosive Hardener"
	},

	15072	=> {
		typeID   => 15072,
		groupID  => 328,
		typeName => "Vizan's Modified Armor Explosive Hardener"
	},

	15074	=> {
		typeID   => 15074,
		groupID  => 328,
		typeName => "Ahremen's Modified Armor Explosive Hardener"
	},

	15076	=> {
		typeID   => 15076,
		groupID  => 328,
		typeName => "Chelm's Modified Armor Explosive Hardener"
	},

	15078	=> {
		typeID   => 15078,
		groupID  => 328,
		typeName => "Draclira's Modified Armor Explosive Hardener"
	},

	15080	=> {
		typeID   => 15080,
		groupID  => 767,
		typeName => "Brokara's Modified Capacitor Power Relay"
	},

	15082	=> {
		typeID   => 15082,
		groupID  => 767,
		typeName => "Tairei's Modified Capacitor Power Relay"
	},

	15084	=> {
		typeID   => 15084,
		groupID  => 767,
		typeName => "Selynne's Modified Capacitor Power Relay"
	},

	15086	=> {
		typeID   => 15086,
		groupID  => 767,
		typeName => "Raysere's Modified Capacitor Power Relay"
	},

	15088	=> {
		typeID   => 15088,
		groupID  => 767,
		typeName => "Vizan's Modified Capacitor Power Relay"
	},

	15090	=> {
		typeID   => 15090,
		groupID  => 767,
		typeName => "Ahremen's Modified Capacitor Power Relay"
	},

	15092	=> {
		typeID   => 15092,
		groupID  => 767,
		typeName => "Chelm's Modified Capacitor Power Relay"
	},

	15094	=> {
		typeID   => 15094,
		groupID  => 767,
		typeName => "Draclira's Modified Capacitor Power Relay"
	},

	15096	=> {
		typeID   => 15096,
		groupID  => 766,
		typeName => "Brokara's Modified Power Diagnostic System"
	},

	15098	=> {
		typeID   => 15098,
		groupID  => 766,
		typeName => "Tairei's Modified Power Diagnostic System"
	},

	15100	=> {
		typeID   => 15100,
		groupID  => 766,
		typeName => "Selynne's Modified Power Diagnostic System"
	},

	15102	=> {
		typeID   => 15102,
		groupID  => 766,
		typeName => "Raysere's Modified Power Diagnostic System"
	},

	15104	=> {
		typeID   => 15104,
		groupID  => 766,
		typeName => "Vizan's Modified Power Diagnostic System"
	},

	15106	=> {
		typeID   => 15106,
		groupID  => 766,
		typeName => "Ahremen's Modified Power Diagnostic System"
	},

	15108	=> {
		typeID   => 15108,
		groupID  => 766,
		typeName => "Chelm's Modified Power Diagnostic System"
	},

	15110	=> {
		typeID   => 15110,
		groupID  => 766,
		typeName => "Draclira's Modified Power Diagnostic System"
	},

	15112	=> {
		typeID   => 15112,
		groupID  => 769,
		typeName => "Brokara's Modified Reactor Control Unit"
	},

	15114	=> {
		typeID   => 15114,
		groupID  => 769,
		typeName => "Tairei's Modified Reactor Control Unit"
	},

	15116	=> {
		typeID   => 15116,
		groupID  => 769,
		typeName => "Selynne's Modified Reactor Control Unit"
	},

	15118	=> {
		typeID   => 15118,
		groupID  => 769,
		typeName => "Raysere's Modified Reactor Control Unit"
	},

	15120	=> {
		typeID   => 15120,
		groupID  => 769,
		typeName => "Vizan's Modified Reactor Control Unit"
	},

	15122	=> {
		typeID   => 15122,
		groupID  => 769,
		typeName => "Ahremen's Modified Reactor Control Unit"
	},

	15124	=> {
		typeID   => 15124,
		groupID  => 769,
		typeName => "Chelm's Modified Reactor Control Unit"
	},

	15126	=> {
		typeID   => 15126,
		groupID  => 769,
		typeName => "Draclira's Modified Reactor Control Unit"
	},

	15128	=> {
		typeID   => 15128,
		groupID  => 76,
		typeName => "Brokara's Modified Heavy Capacitor Booster"
	},

	15130	=> {
		typeID   => 15130,
		groupID  => 76,
		typeName => "Tairei's Modified Heavy Capacitor Booster"
	},

	15132	=> {
		typeID   => 15132,
		groupID  => 76,
		typeName => "Selynne's Modified Heavy Capacitor Booster"
	},

	15134	=> {
		typeID   => 15134,
		groupID  => 76,
		typeName => "Raysere's Modified Heavy Capacitor Booster"
	},

	15136	=> {
		typeID   => 15136,
		groupID  => 76,
		typeName => "Vizan's Modified Heavy Capacitor Booster"
	},

	15138	=> {
		typeID   => 15138,
		groupID  => 76,
		typeName => "Ahremen's Modified Heavy Capacitor Booster"
	},

	15140	=> {
		typeID   => 15140,
		groupID  => 76,
		typeName => "Chelm's Modified Heavy Capacitor Booster"
	},

	15142	=> {
		typeID   => 15142,
		groupID  => 76,
		typeName => "Draclira's Modified Heavy Capacitor Booster"
	},

	15144	=> {
		typeID   => 15144,
		groupID  => 302,
		typeName => "Brynn's Modified Magnetic Field Stabilizer"
	},

	15146	=> {
		typeID   => 15146,
		groupID  => 302,
		typeName => "Tuvan's Modified Magnetic Field Stabilizer"
	},

	15148	=> {
		typeID   => 15148,
		groupID  => 302,
		typeName => "Setele's Modified Magnetic Field Stabilizer"
	},

	15150	=> {
		typeID   => 15150,
		groupID  => 302,
		typeName => "Cormack's Modified Magnetic Field Stabilizer"
	},

	15152	=> {
		typeID   => 15152,
		groupID  => 72,
		typeName => "Brynn's Modified Large Plasma Smartbomb"
	},

	15154	=> {
		typeID   => 15154,
		groupID  => 72,
		typeName => "Tuvan's Modified Large Plasma Smartbomb"
	},

	15156	=> {
		typeID   => 15156,
		groupID  => 72,
		typeName => "Setele's Modified Large Plasma Smartbomb"
	},

	15158	=> {
		typeID   => 15158,
		groupID  => 72,
		typeName => "Cormack's Modified Large Plasma Smartbomb"
	},

	15160	=> {
		typeID   => 15160,
		groupID  => 62,
		typeName => "Brynn's Modified Large Armor Repairer"
	},

	15161	=> {
		typeID   => 15161,
		groupID  => 62,
		typeName => "Tuvan's Modified Large Armor Repairer"
	},

	15162	=> {
		typeID   => 15162,
		groupID  => 62,
		typeName => "Setele's Modified Large Armor Repairer"
	},

	15163	=> {
		typeID   => 15163,
		groupID  => 62,
		typeName => "Cormack's Modified Large Armor Repairer"
	},

	15164	=> {
		typeID   => 15164,
		groupID  => 98,
		typeName => "Brynn's Modified Adaptive Nano Plating"
	},

	15166	=> {
		typeID   => 15166,
		groupID  => 98,
		typeName => "Tuvan's Modified Adaptive Nano Plating"
	},

	15168	=> {
		typeID   => 15168,
		groupID  => 98,
		typeName => "Setele's Modified Adaptive Nano Plating"
	},

	15170	=> {
		typeID   => 15170,
		groupID  => 98,
		typeName => "Cormack's Modified Adaptive Nano Plating"
	},

	15172	=> {
		typeID   => 15172,
		groupID  => 98,
		typeName => "Brynn's Modified Thermal Plating"
	},

	15174	=> {
		typeID   => 15174,
		groupID  => 98,
		typeName => "Tuvan's Modified Thermal Plating"
	},

	15176	=> {
		typeID   => 15176,
		groupID  => 98,
		typeName => "Setele's Modified Thermal Plating"
	},

	15178	=> {
		typeID   => 15178,
		groupID  => 98,
		typeName => "Cormack's Modified Thermal Plating"
	},

	15180	=> {
		typeID   => 15180,
		groupID  => 98,
		typeName => "Brynn's Modified EM Plating"
	},

	15182	=> {
		typeID   => 15182,
		groupID  => 98,
		typeName => "Tuvan's Modified EM Plating"
	},

	15184	=> {
		typeID   => 15184,
		groupID  => 98,
		typeName => "Setele's Modified EM Plating"
	},

	15186	=> {
		typeID   => 15186,
		groupID  => 98,
		typeName => "Cormack's Modified EM Plating"
	},

	15188	=> {
		typeID   => 15188,
		groupID  => 98,
		typeName => "Brynn's Modified Explosive Plating"
	},

	15190	=> {
		typeID   => 15190,
		groupID  => 98,
		typeName => "Tuvan's Modified Explosive Plating"
	},

	15192	=> {
		typeID   => 15192,
		groupID  => 98,
		typeName => "Setele's Modified Explosive Plating"
	},

	15194	=> {
		typeID   => 15194,
		groupID  => 98,
		typeName => "Cormack's Modified Explosive Plating"
	},

	15196	=> {
		typeID   => 15196,
		groupID  => 98,
		typeName => "Brynn's Modified Kinetic Plating"
	},

	15198	=> {
		typeID   => 15198,
		groupID  => 98,
		typeName => "Tuvan's Modified Kinetic Plating"
	},

	15200	=> {
		typeID   => 15200,
		groupID  => 98,
		typeName => "Setele's Modified Kinetic Plating"
	},

	15202	=> {
		typeID   => 15202,
		groupID  => 98,
		typeName => "Cormack's Modified Kinetic Plating"
	},

	15204	=> {
		typeID   => 15204,
		groupID  => 326,
		typeName => "Brynn's Modified Energized Adaptive Nano Membrane"
	},

	15206	=> {
		typeID   => 15206,
		groupID  => 326,
		typeName => "Tuvan's Modified Energized Adaptive Nano Membrane"
	},

	15208	=> {
		typeID   => 15208,
		groupID  => 326,
		typeName => "Setele's Modified Energized Adaptive Nano Membrane"
	},

	15210	=> {
		typeID   => 15210,
		groupID  => 326,
		typeName => "Cormack's Modified Energized Adaptive Nano Membrane"
	},

	15212	=> {
		typeID   => 15212,
		groupID  => 326,
		typeName => "Brynn's Modified Energized Thermal Membrane"
	},

	15214	=> {
		typeID   => 15214,
		groupID  => 326,
		typeName => "Tuvan's Modified Energized Thermal Membrane"
	},

	15216	=> {
		typeID   => 15216,
		groupID  => 326,
		typeName => "Setele's Modified Energized Thermal Membrane"
	},

	15218	=> {
		typeID   => 15218,
		groupID  => 326,
		typeName => "Cormack's Modified Energized Thermal Membrane"
	},

	15220	=> {
		typeID   => 15220,
		groupID  => 326,
		typeName => "Brynn's Modified Energized EM Membrane"
	},

	15222	=> {
		typeID   => 15222,
		groupID  => 326,
		typeName => "Tuvan's Modified Energized EM Membrane"
	},

	15224	=> {
		typeID   => 15224,
		groupID  => 326,
		typeName => "Setele's Modified Energized EM Membrane"
	},

	15226	=> {
		typeID   => 15226,
		groupID  => 326,
		typeName => "Cormack's Modified Energized EM Membrane"
	},

	15228	=> {
		typeID   => 15228,
		groupID  => 326,
		typeName => "Brynn's Modified Energized Explosive Membrane"
	},

	15230	=> {
		typeID   => 15230,
		groupID  => 326,
		typeName => "Tuvan's Modified Energized Explosive Membrane"
	},

	15232	=> {
		typeID   => 15232,
		groupID  => 326,
		typeName => "Setele's Modified Energized Explosive Membrane"
	},

	15234	=> {
		typeID   => 15234,
		groupID  => 326,
		typeName => "Cormack's Modified Energized Explosive Membrane"
	},

	15236	=> {
		typeID   => 15236,
		groupID  => 326,
		typeName => "Brynn's Modified Energized Kinetic Membrane"
	},

	15238	=> {
		typeID   => 15238,
		groupID  => 326,
		typeName => "Tuvan's Modified Energized Kinetic Membrane"
	},

	15240	=> {
		typeID   => 15240,
		groupID  => 326,
		typeName => "Setele's Modified Energized Kinetic Membrane"
	},

	15242	=> {
		typeID   => 15242,
		groupID  => 326,
		typeName => "Cormack's Modified Energized Kinetic Membrane"
	},

	15244	=> {
		typeID   => 15244,
		groupID  => 328,
		typeName => "Brynn's Modified Armor EM Hardener"
	},

	15246	=> {
		typeID   => 15246,
		groupID  => 328,
		typeName => "Tuvan's Modified Armor EM Hardener"
	},

	15248	=> {
		typeID   => 15248,
		groupID  => 328,
		typeName => "Setele's Modified Armor EM Hardener"
	},

	15250	=> {
		typeID   => 15250,
		groupID  => 328,
		typeName => "Cormack's Modified Armor EM Hardener"
	},

	15252	=> {
		typeID   => 15252,
		groupID  => 328,
		typeName => "Brynn's Modified Armor Thermal Hardener"
	},

	15254	=> {
		typeID   => 15254,
		groupID  => 328,
		typeName => "Tuvan's Modified Armor Thermal Hardener"
	},

	15256	=> {
		typeID   => 15256,
		groupID  => 328,
		typeName => "Setele's Modified Armor Thermal Hardener"
	},

	15258	=> {
		typeID   => 15258,
		groupID  => 328,
		typeName => "Cormack's Modified Armor Thermal Hardener"
	},

	15260	=> {
		typeID   => 15260,
		groupID  => 328,
		typeName => "Brynn's Modified Armor Kinetic Hardener"
	},

	15262	=> {
		typeID   => 15262,
		groupID  => 328,
		typeName => "Tuvan's Modified Armor Kinetic Hardener"
	},

	15264	=> {
		typeID   => 15264,
		groupID  => 328,
		typeName => "Setele's Modified Armor Kinetic Hardener"
	},

	15266	=> {
		typeID   => 15266,
		groupID  => 328,
		typeName => "Cormack's Modified Armor Kinetic Hardener"
	},

	15268	=> {
		typeID   => 15268,
		groupID  => 328,
		typeName => "Brynn's Modified Armor Explosive Hardener"
	},

	15270	=> {
		typeID   => 15270,
		groupID  => 328,
		typeName => "Tuvan's Modified Armor Explosive Hardener"
	},

	15272	=> {
		typeID   => 15272,
		groupID  => 328,
		typeName => "Setele's Modified Armor Explosive Hardener"
	},

	15274	=> {
		typeID   => 15274,
		groupID  => 328,
		typeName => "Cormack's Modified Armor Explosive Hardener"
	},

	15276	=> {
		typeID   => 15276,
		groupID  => 212,
		typeName => "Brynn's Modified Sensor Booster"
	},

	15278	=> {
		typeID   => 15278,
		groupID  => 212,
		typeName => "Tuvan's Modified Sensor Booster"
	},

	15280	=> {
		typeID   => 15280,
		groupID  => 212,
		typeName => "Setele's Modified Sensor Booster"
	},

	15282	=> {
		typeID   => 15282,
		groupID  => 212,
		typeName => "Cormack's Modified Sensor Booster"
	},

	15284	=> {
		typeID   => 15284,
		groupID  => 213,
		typeName => "Brynn's Modified Tracking Computer"
	},

	15286	=> {
		typeID   => 15286,
		groupID  => 213,
		typeName => "Tuvan's Modified Tracking Computer"
	},

	15288	=> {
		typeID   => 15288,
		groupID  => 213,
		typeName => "Setele's Modified Tracking Computer"
	},

	15290	=> {
		typeID   => 15290,
		groupID  => 213,
		typeName => "Cormack's Modified Tracking Computer"
	},

	15292	=> {
		typeID   => 15292,
		groupID  => 766,
		typeName => "Brynn's Modified Power Diagnostic System"
	},

	15294	=> {
		typeID   => 15294,
		groupID  => 766,
		typeName => "Tuvan's Modified Power Diagnostic System"
	},

	15296	=> {
		typeID   => 15296,
		groupID  => 766,
		typeName => "Setele's Modified Power Diagnostic System"
	},

	15298	=> {
		typeID   => 15298,
		groupID  => 766,
		typeName => "Cormack's Modified Power Diagnostic System"
	},

	15300	=> {
		typeID   => 15300,
		groupID  => 769,
		typeName => "Brynn's Modified Reactor Control Unit"
	},

	15302	=> {
		typeID   => 15302,
		groupID  => 769,
		typeName => "Tuvan's Modified Reactor Control Unit"
	},

	15304	=> {
		typeID   => 15304,
		groupID  => 769,
		typeName => "Setele's Modified Reactor Control Unit"
	},

	15306	=> {
		typeID   => 15306,
		groupID  => 769,
		typeName => "Cormack's Modified Reactor Control Unit"
	},

	15308	=> {
		typeID   => 15308,
		groupID  => 285,
		typeName => "Brynn's Modified Co-Processor"
	},

	15310	=> {
		typeID   => 15310,
		groupID  => 285,
		typeName => "Tuvan's Modified Co-Processor"
	},

	15312	=> {
		typeID   => 15312,
		groupID  => 285,
		typeName => "Setele's Modified Co-Processor"
	},

	15314	=> {
		typeID   => 15314,
		groupID  => 285,
		typeName => "Cormack's Modified Co-Processor"
	},

	15316	=> {
		typeID   => 15316,
		groupID  => 314,
		typeName => "Galeptos Medicine"
	},

	15317	=> {
		typeID   => 15317,
		groupID  => 1034,
		typeName => "Genetically Enhanced Livestock"
	},

	15318	=> {
		typeID   => 15318,
		groupID  => 314,
		typeName => "Top-Secret Design Documents"
	},

	15319	=> {
		typeID   => 15319,
		groupID  => 314,
		typeName => "Large Special Delivery"
	},

	15320	=> {
		typeID   => 15320,
		groupID  => 673,
		typeName => "Caldari Navy Moa"
	},

	15322	=> {
		typeID   => 15322,
		groupID  => 668,
		typeName => "Imperial Navy Maller"
	},

	15323	=> {
		typeID   => 15323,
		groupID  => 668,
		typeName => "Ammatar Navy Maller"
	},

	15324	=> {
		typeID   => 15324,
		groupID  => 705,
		typeName => "Republic Fleet Rupture"
	},

	15325	=> {
		typeID   => 15325,
		groupID  => 678,
		typeName => "Federation Navy Thorax"
	},

	15326	=> {
		typeID   => 15326,
		groupID  => 674,
		typeName => "Caldari Navy Scorpion"
	},

	15327	=> {
		typeID   => 15327,
		groupID  => 706,
		typeName => "Republic Fleet Typhoon"
	},

	15328	=> {
		typeID   => 15328,
		groupID  => 667,
		typeName => "Imperial Navy Armageddon"
	},

	15329	=> {
		typeID   => 15329,
		groupID  => 667,
		typeName => "Ammatar Navy Armageddon"
	},

	15330	=> {
		typeID   => 15330,
		groupID  => 680,
		typeName => "Federation Navy Dominix"
	},

	15331	=> {
		typeID   => 15331,
		groupID  => 526,
		typeName => "Metal Scraps"
	},

	15333	=> {
		typeID   => 15333,
		groupID  => 817,
		typeName => "Pirate Transport Ship"
	},

	15334	=> {
		typeID   => 15334,
		groupID  => 817,
		typeName => "Smuggler Freight"
	},

	15335	=> {
		typeID   => 15335,
		groupID  => 667,
		typeName => "Imperial Navy Fleet Commander"
	},

	15336	=> {
		typeID   => 15336,
		groupID  => 667,
		typeName => "Ammatar Navy Fleet Commander"
	},

	15337	=> {
		typeID   => 15337,
		groupID  => 680,
		typeName => "Federation Navy Fleet Commander"
	},

	15338	=> {
		typeID   => 15338,
		groupID  => 674,
		typeName => "Caldari Navy Fleet Commander"
	},

	15341	=> {
		typeID   => 15341,
		groupID  => 706,
		typeName => "Republic Fleet Command Ship"
	},

	15342	=> {
		typeID   => 15342,
		groupID  => 683,
		typeName => "Republic Fleet Squad Leader"
	},

	15343	=> {
		typeID   => 15343,
		groupID  => 705,
		typeName => "Republic Fleet Raid Leader"
	},

	15344	=> {
		typeID   => 15344,
		groupID  => 665,
		typeName => "Imperial Navy Squad Leader"
	},

	15345	=> {
		typeID   => 15345,
		groupID  => 677,
		typeName => "Federation Navy Squad Leader"
	},

	15346	=> {
		typeID   => 15346,
		groupID  => 671,
		typeName => "Caldari Navy Squad Leader"
	},

	15347	=> {
		typeID   => 15347,
		groupID  => 665,
		typeName => "Ammatar Navy Squad Leader"
	},

	15349	=> {
		typeID   => 15349,
		groupID  => 673,
		typeName => "Caldari Navy Raid Leader"
	},

	15350	=> {
		typeID   => 15350,
		groupID  => 668,
		typeName => "Imperial Navy Raid Leader"
	},

	15351	=> {
		typeID   => 15351,
		groupID  => 680,
		typeName => "Federation Navy Raid Leader"
	},

	15352	=> {
		typeID   => 15352,
		groupID  => 668,
		typeName => "Ammatar Navy Raid Leader"
	},

	15353	=> {
		typeID   => 15353,
		groupID  => 314,
		typeName => "Research Tools"
	},

	15354	=> {
		typeID   => 15354,
		groupID  => 818,
		typeName => "DED Scout Drone"
	},

	15355	=> {
		typeID   => 15355,
		groupID  => 680,
		typeName => "Gallentean Luxury Yacht"
	},

	15390	=> {
		typeID   => 15390,
		groupID  => 817,
		typeName => "Hari Kaimo"
	},

	15391	=> {
		typeID   => 15391,
		groupID  => 817,
		typeName => "Pierre Turon"
	},

	15392	=> {
		typeID   => 15392,
		groupID  => 818,
		typeName => "Zack Mead"
	},

	15393	=> {
		typeID   => 15393,
		groupID  => 816,
		typeName => "Jared Kalem"
	},

	15394	=> {
		typeID   => 15394,
		groupID  => 816,
		typeName => "Taisu Magdesh"
	},

	15395	=> {
		typeID   => 15395,
		groupID  => 337,
		typeName => "Construction Freight"
	},

	15396	=> {
		typeID   => 15396,
		groupID  => 821,
		typeName => "General Luther Veron"
	},

	15397	=> {
		typeID   => 15397,
		groupID  => 205,
		typeName => "Luther Veron's Modified Heat Sink"
	},

	15399	=> {
		typeID   => 15399,
		groupID  => 53,
		typeName => "Luther Veron's Modified Dual Heavy Beam Laser"
	},

	15401	=> {
		typeID   => 15401,
		groupID  => 53,
		typeName => "Luther Veron's Modified Mega Beam Laser"
	},

	15403	=> {
		typeID   => 15403,
		groupID  => 53,
		typeName => "Luther Veron's Modified Tachyon Beam Laser"
	},

	15405	=> {
		typeID   => 15405,
		groupID  => 72,
		typeName => "Luther Veron's Modified Large EMP Smartbomb"
	},

	15407	=> {
		typeID   => 15407,
		groupID  => 77,
		typeName => "Luther Veron's Modified Adaptive Invulnerability Field"
	},

	15408	=> {
		typeID   => 15408,
		groupID  => 38,
		typeName => "Luther Veron's Modified Shield Extender"
	},

	15410	=> {
		typeID   => 15410,
		groupID  => 314,
		typeName => "Neophite"
	},

	15411	=> {
		typeID   => 15411,
		groupID  => 667,
		typeName => "Amarr Luxury Yacht"
	},

	15412	=> {
		typeID   => 15412,
		groupID  => 818,
		typeName => "Andres Sikvatsen"
	},

	15413	=> {
		typeID   => 15413,
		groupID  => 821,
		typeName => "Commander Terachi TashMurkon"
	},

	15414	=> {
		typeID   => 15414,
		groupID  => 821,
		typeName => "Warlord Shaqil Dragat"
	},

	15415	=> {
		typeID   => 15415,
		groupID  => 821,
		typeName => "Fleet Commander Naiyon Tai"
	},

	15416	=> {
		typeID   => 15416,
		groupID  => 302,
		typeName => "Naiyon's Modified Magnetic Field Stabilizer"
	},

	15418	=> {
		typeID   => 15418,
		groupID  => 77,
		typeName => "Naiyon's Modified Adaptive Invulnerability Field"
	},

	15419	=> {
		typeID   => 15419,
		groupID  => 65,
		typeName => "Naiyon's Modified Stasis Webifier"
	},

	15421	=> {
		typeID   => 15421,
		groupID  => 74,
		typeName => "Naiyon's Modified 425mm Railgun"
	},

	15423	=> {
		typeID   => 15423,
		groupID  => 74,
		typeName => "Naiyon's Modified 350mm Railgun"
	},

	15425	=> {
		typeID   => 15425,
		groupID  => 285,
		typeName => "Naiyon's Modified Co-Processor"
	},

	15427	=> {
		typeID   => 15427,
		groupID  => 53,
		typeName => "Makur's Modified Dual Heavy Beam Laser"
	},

	15429	=> {
		typeID   => 15429,
		groupID  => 53,
		typeName => "Makur's Modified Mega Beam Laser"
	},

	15431	=> {
		typeID   => 15431,
		groupID  => 52,
		typeName => "Makur's Modified Warp Disruptor"
	},

	15433	=> {
		typeID   => 15433,
		groupID  => 52,
		typeName => "Makur's Modified Warp Scrambler"
	},

	15435	=> {
		typeID   => 15435,
		groupID  => 205,
		typeName => "Makur's Modified Heat Sink"
	},

	15437	=> {
		typeID   => 15437,
		groupID  => 767,
		typeName => "Makur's Modified Capacitor Power Relay"
	},

	15439	=> {
		typeID   => 15439,
		groupID  => 766,
		typeName => "Makur's Modified Power Diagnostic System"
	},

	15443	=> {
		typeID   => 15443,
		groupID  => 55,
		typeName => "Shaqil's Modified 1200mm Artillery Cannon"
	},

	15445	=> {
		typeID   => 15445,
		groupID  => 55,
		typeName => "Shaqil's Modified 1400mm Howitzer Artillery"
	},

	15447	=> {
		typeID   => 15447,
		groupID  => 59,
		typeName => "Shaqil's Modified Gyrostabilizer"
	},

	15449	=> {
		typeID   => 15449,
		groupID  => 506,
		typeName => "Shaqil's Modified Cruise Missile Launcher"
	},

	15451	=> {
		typeID   => 15451,
		groupID  => 68,
		typeName => "Shaqil's Modified Heavy Energy Nosferatu"
	},

	15453	=> {
		typeID   => 15453,
		groupID  => 326,
		typeName => "Shaqil's Modified Energized Thermal Membrane"
	},

	15455	=> {
		typeID   => 15455,
		groupID  => 326,
		typeName => "Shaqil's Modified Energized Adaptive Nano Membrane"
	},

	15457	=> {
		typeID   => 15457,
		groupID  => 303,
		typeName => "Standard X-Instinct Booster"
	},

	15458	=> {
		typeID   => 15458,
		groupID  => 303,
		typeName => "Improved X-Instinct Booster"
	},

	15459	=> {
		typeID   => 15459,
		groupID  => 303,
		typeName => "Strong X-Instinct Booster"
	},

	15460	=> {
		typeID   => 15460,
		groupID  => 303,
		typeName => "Standard Frentix Booster"
	},

	15461	=> {
		typeID   => 15461,
		groupID  => 303,
		typeName => "Improved Frentix Booster"
	},

	15462	=> {
		typeID   => 15462,
		groupID  => 303,
		typeName => "Strong Frentix Booster"
	},

	15463	=> {
		typeID   => 15463,
		groupID  => 303,
		typeName => "Standard Mindflood Booster"
	},

	15464	=> {
		typeID   => 15464,
		groupID  => 303,
		typeName => "Improved Mindflood Booster"
	},

	15465	=> {
		typeID   => 15465,
		groupID  => 303,
		typeName => "Strong Mindflood Booster"
	},

	15466	=> {
		typeID   => 15466,
		groupID  => 303,
		typeName => "Standard Drop Booster"
	},

	15477	=> {
		typeID   => 15477,
		groupID  => 303,
		typeName => "Improved Drop Booster"
	},

	15478	=> {
		typeID   => 15478,
		groupID  => 303,
		typeName => "Strong Drop Booster"
	},

	15479	=> {
		typeID   => 15479,
		groupID  => 303,
		typeName => "Standard Exile Booster"
	},

	15480	=> {
		typeID   => 15480,
		groupID  => 303,
		typeName => "Improved Exile Booster"
	},

	15508	=> {
		typeID   => 15508,
		groupID  => 100,
		typeName => "Vespa I"
	},

	15509	=> {
		typeID   => 15509,
		groupID  => 176,
		typeName => "Vespa I Blueprint"
	},

	15510	=> {
		typeID   => 15510,
		groupID  => 100,
		typeName => "Valkyrie I"
	},

	15511	=> {
		typeID   => 15511,
		groupID  => 176,
		typeName => "Valkyrie I Blueprint"
	},

	15577	=> {
		typeID   => 15577,
		groupID  => 665,
		typeName => "Imperial Navy Elite Soldier"
	},

	15578	=> {
		typeID   => 15578,
		groupID  => 665,
		typeName => "Ammatar Navy Elite Soldier"
	},

	15579	=> {
		typeID   => 15579,
		groupID  => 671,
		typeName => "Caldari Navy Elite Soldier"
	},

	15580	=> {
		typeID   => 15580,
		groupID  => 677,
		typeName => "Federation Navy Elite Soldier"
	},

	15581	=> {
		typeID   => 15581,
		groupID  => 683,
		typeName => "Republic Fleet Elite Soldier"
	},

	15582	=> {
		typeID   => 15582,
		groupID  => 817,
		typeName => "Captain Yeni Sarum"
	},

	15583	=> {
		typeID   => 15583,
		groupID  => 817,
		typeName => "Captain Jerek Zuomi"
	},

	15584	=> {
		typeID   => 15584,
		groupID  => 817,
		typeName => "Captain Mizuma Gomi"
	},

	15585	=> {
		typeID   => 15585,
		groupID  => 817,
		typeName => "Captain Jerome Leman"
	},

	15586	=> {
		typeID   => 15586,
		groupID  => 817,
		typeName => "Captain Kali Midez"
	},

	15587	=> {
		typeID   => 15587,
		groupID  => 409,
		typeName => "Federation Navy Midshipman Insignia I"
	},

	15588	=> {
		typeID   => 15588,
		groupID  => 409,
		typeName => "Federation Navy Midshipman Insignia II"
	},

	15589	=> {
		typeID   => 15589,
		groupID  => 409,
		typeName => "Federation Navy Midshipman Insignia III"
	},

	15590	=> {
		typeID   => 15590,
		groupID  => 409,
		typeName => "Federation Navy Sergeant Insignia I"
	},

	15591	=> {
		typeID   => 15591,
		groupID  => 409,
		typeName => "Federation Navy Sergeant Major Insignia I"
	},

	15592	=> {
		typeID   => 15592,
		groupID  => 409,
		typeName => "Federation Navy Fleet Captain Insignia I"
	},

	15593	=> {
		typeID   => 15593,
		groupID  => 409,
		typeName => "Federation Navy Fleet Major Insignia I"
	},

	15594	=> {
		typeID   => 15594,
		groupID  => 409,
		typeName => "Federation Navy Fleet Colonel Insignia I"
	},

	15596	=> {
		typeID   => 15596,
		groupID  => 409,
		typeName => "Caldari Navy Midshipman Insignia I"
	},

	15597	=> {
		typeID   => 15597,
		groupID  => 409,
		typeName => "Caldari Navy Midshipman Insignia II"
	},

	15598	=> {
		typeID   => 15598,
		groupID  => 409,
		typeName => "Caldari Navy Midshipman Insignia III"
	},

	15599	=> {
		typeID   => 15599,
		groupID  => 409,
		typeName => "Caldari Navy Captain Insignia I"
	},

	15600	=> {
		typeID   => 15600,
		groupID  => 409,
		typeName => "Caldari Navy Captain Insignia II"
	},

	15601	=> {
		typeID   => 15601,
		groupID  => 409,
		typeName => "Caldari Navy Captain Insignia III"
	},

	15602	=> {
		typeID   => 15602,
		groupID  => 409,
		typeName => "Caldari Navy Commodore Insignia I"
	},

	15604	=> {
		typeID   => 15604,
		groupID  => 409,
		typeName => "Caldari Navy Admiral Insignia I"
	},

	15605	=> {
		typeID   => 15605,
		groupID  => 409,
		typeName => "Caldari Navy Vice Admiral Insignia I"
	},

	15607	=> {
		typeID   => 15607,
		groupID  => 409,
		typeName => "Imperial Navy Midshipman Insignia I"
	},

	15608	=> {
		typeID   => 15608,
		groupID  => 409,
		typeName => "Imperial Navy Midshipman Insignia II"
	},

	15609	=> {
		typeID   => 15609,
		groupID  => 409,
		typeName => "Imperial Navy Midshipman Insignia III"
	},

	15610	=> {
		typeID   => 15610,
		groupID  => 409,
		typeName => "Imperial Navy Sergeant Insignia I"
	},

	15611	=> {
		typeID   => 15611,
		groupID  => 409,
		typeName => "Imperial Navy Sergeant Major Insignia I"
	},

	15612	=> {
		typeID   => 15612,
		groupID  => 409,
		typeName => "Imperial Navy Captain Insignia I"
	},

	15613	=> {
		typeID   => 15613,
		groupID  => 409,
		typeName => "Imperial Navy Major Insignia I"
	},

	15614	=> {
		typeID   => 15614,
		groupID  => 409,
		typeName => "Imperial Navy Colonel Insignia I"
	},

	15615	=> {
		typeID   => 15615,
		groupID  => 409,
		typeName => "Imperial Navy General Insignia I"
	},

	15617	=> {
		typeID   => 15617,
		groupID  => 409,
		typeName => "Ammatar Navy Midshipman Insignia I"
	},

	15618	=> {
		typeID   => 15618,
		groupID  => 409,
		typeName => "Ammatar Navy Midshipman Insignia II"
	},

	15619	=> {
		typeID   => 15619,
		groupID  => 409,
		typeName => "Ammatar Navy Midshipman Insignia III"
	},

	15620	=> {
		typeID   => 15620,
		groupID  => 409,
		typeName => "Ammatar Navy Sergeant Insignia I"
	},

	15621	=> {
		typeID   => 15621,
		groupID  => 409,
		typeName => "Ammatar Navy Sergeant Major Insignia I"
	},

	15622	=> {
		typeID   => 15622,
		groupID  => 409,
		typeName => "Ammatar Navy Captain Insignia I"
	},

	15623	=> {
		typeID   => 15623,
		groupID  => 409,
		typeName => "Ammatar Navy Major Insignia I"
	},

	15625	=> {
		typeID   => 15625,
		groupID  => 409,
		typeName => "Republic Fleet Midshipman Insignia I"
	},

	15626	=> {
		typeID   => 15626,
		groupID  => 409,
		typeName => "Republic Fleet Midshipman Insignia II"
	},

	15627	=> {
		typeID   => 15627,
		groupID  => 409,
		typeName => "Republic Fleet Midshipman Insignia III"
	},

	15628	=> {
		typeID   => 15628,
		groupID  => 409,
		typeName => "Republic Fleet Private Insignia I"
	},

	15629	=> {
		typeID   => 15629,
		groupID  => 409,
		typeName => "Republic Fleet Private Insignia II"
	},

	15630	=> {
		typeID   => 15630,
		groupID  => 409,
		typeName => "Republic Fleet Captain Insignia I"
	},

	15631	=> {
		typeID   => 15631,
		groupID  => 409,
		typeName => "Republic Fleet High Captain Insignia I"
	},

	15632	=> {
		typeID   => 15632,
		groupID  => 409,
		typeName => "Republic Fleet Commander Insignia I"
	},

	15634	=> {
		typeID   => 15634,
		groupID  => 409,
		typeName => "Imperial Navy Squad Leader Insignia"
	},

	15635	=> {
		typeID   => 15635,
		groupID  => 409,
		typeName => "Imperial Navy Raid Leader Insignia"
	},

	15636	=> {
		typeID   => 15636,
		groupID  => 409,
		typeName => "Imperial Navy Sergeant Elite Insignia"
	},

	15637	=> {
		typeID   => 15637,
		groupID  => 409,
		typeName => "Yeni Sarum's Insignia"
	},

	15638	=> {
		typeID   => 15638,
		groupID  => 409,
		typeName => "Terachi Tash-Murkon's Insignia"
	},

	15639	=> {
		typeID   => 15639,
		groupID  => 409,
		typeName => "Karzo Sarum's Insignia"
	},

	15640	=> {
		typeID   => 15640,
		groupID  => 409,
		typeName => "Ammatar Navy Squad Leader Insignia"
	},

	15641	=> {
		typeID   => 15641,
		groupID  => 409,
		typeName => "Ammatar Navy Raid Leader Insignia"
	},

	15642	=> {
		typeID   => 15642,
		groupID  => 409,
		typeName => "Ammatar Navy Sergeant Elite Insignia"
	},

	15643	=> {
		typeID   => 15643,
		groupID  => 409,
		typeName => "Ammatar Navy Fleet Commander Insignia"
	},

	15644	=> {
		typeID   => 15644,
		groupID  => 409,
		typeName => "Zerim Kurzon's Insignia"
	},

	15645	=> {
		typeID   => 15645,
		groupID  => 409,
		typeName => "Jerek Zuomi's Insignia"
	},

	15646	=> {
		typeID   => 15646,
		groupID  => 409,
		typeName => "Federation Navy Command Sergeant Major Insignia I"
	},

	15647	=> {
		typeID   => 15647,
		groupID  => 409,
		typeName => "Federation Navy Squad Leader Insignia"
	},

	15648	=> {
		typeID   => 15648,
		groupID  => 409,
		typeName => "Federation Navy Raid Leader Insignia"
	},

	15649	=> {
		typeID   => 15649,
		groupID  => 409,
		typeName => "Federation Navy Sergeant Elite Insignia"
	},

	15650	=> {
		typeID   => 15650,
		groupID  => 409,
		typeName => "Federation Navy Fleet Commander Insignia"
	},

	15651	=> {
		typeID   => 15651,
		groupID  => 409,
		typeName => "Jerome Leman's Insignia"
	},

	15652	=> {
		typeID   => 15652,
		groupID  => 409,
		typeName => "Luther Veron's Insignia"
	},

	15653	=> {
		typeID   => 15653,
		groupID  => 409,
		typeName => "Caldari Navy Captain Elite Insignia"
	},

	15654	=> {
		typeID   => 15654,
		groupID  => 409,
		typeName => "Caldari Navy Squad Leader Insignia"
	},

	15655	=> {
		typeID   => 15655,
		groupID  => 409,
		typeName => "Caldari Navy Raid Leader Insignia"
	},

	15656	=> {
		typeID   => 15656,
		groupID  => 409,
		typeName => "Caldari Navy Commodore Insignia II"
	},

	15657	=> {
		typeID   => 15657,
		groupID  => 409,
		typeName => "Caldari Navy Fleet Commander Insignia"
	},

	15658	=> {
		typeID   => 15658,
		groupID  => 409,
		typeName => "Naiyon Tai's Insignia"
	},

	15659	=> {
		typeID   => 15659,
		groupID  => 409,
		typeName => "Mizuma Gomi's Insignia"
	},

	15660	=> {
		typeID   => 15660,
		groupID  => 409,
		typeName => "Republic Fleet Private Insignia III"
	},

	15661	=> {
		typeID   => 15661,
		groupID  => 409,
		typeName => "Republic Fleet Commander Insignia II"
	},

	15662	=> {
		typeID   => 15662,
		groupID  => 409,
		typeName => "Republic Fleet Squad Leader Insignia"
	},

	15663	=> {
		typeID   => 15663,
		groupID  => 409,
		typeName => "Republic Fleet Raid Leader Insignia"
	},

	15664	=> {
		typeID   => 15664,
		groupID  => 409,
		typeName => "Republic Fleet Navy Commander Insignia"
	},

	15666	=> {
		typeID   => 15666,
		groupID  => 409,
		typeName => "Republic Fleet Private Elite Insignia"
	},

	15667	=> {
		typeID   => 15667,
		groupID  => 409,
		typeName => "Kali Midez's Insignia"
	},

	15668	=> {
		typeID   => 15668,
		groupID  => 409,
		typeName => "Shaqil Dragat's Insignia"
	},

	15669	=> {
		typeID   => 15669,
		groupID  => 409,
		typeName => "Imperial Navy General Insignia II"
	},

	15670	=> {
		typeID   => 15670,
		groupID  => 409,
		typeName => "Imperial Navy Fleet Commander Insignia"
	},

	15671	=> {
		typeID   => 15671,
		groupID  => 409,
		typeName => "Ammatar Navy Colonel Insignia II"
	},

	15672	=> {
		typeID   => 15672,
		groupID  => 409,
		typeName => "Ammatar Navy Major Insignia II"
	},

	15673	=> {
		typeID   => 15673,
		groupID  => 409,
		typeName => "Federation Navy Fleet Colonel Insignia II"
	},

	15674	=> {
		typeID   => 15674,
		groupID  => 409,
		typeName => "Minmatar Freedom Fighter Insignia I"
	},

	15675	=> {
		typeID   => 15675,
		groupID  => 285,
		typeName => "Caldari Navy Co-Processor"
	},

	15676	=> {
		typeID   => 15676,
		groupID  => 346,
		typeName => "Caldari Navy Co-Processor Blueprint"
	},

	15677	=> {
		typeID   => 15677,
		groupID  => 285,
		typeName => "Federation Navy Co-Processor"
	},

	15678	=> {
		typeID   => 15678,
		groupID  => 346,
		typeName => "Federation Navy Co-Processor Blueprint"
	},

	15681	=> {
		typeID   => 15681,
		groupID  => 367,
		typeName => "Caldari Navy Ballistic Control System"
	},

	15682	=> {
		typeID   => 15682,
		groupID  => 400,
		typeName => "Caldari Navy Ballistic Control System Blueprint"
	},

	15683	=> {
		typeID   => 15683,
		groupID  => 367,
		typeName => "Republic Fleet Ballistic Control System"
	},

	15684	=> {
		typeID   => 15684,
		groupID  => 400,
		typeName => "Republic Fleet Ballistic Control System Blueprint"
	},

	15685	=> {
		typeID   => 15685,
		groupID  => 98,
		typeName => "Imperial Navy Thermal Plating"
	},

	15686	=> {
		typeID   => 15686,
		groupID  => 163,
		typeName => "Imperial Navy Thermal Plating Blueprint"
	},

	15687	=> {
		typeID   => 15687,
		groupID  => 98,
		typeName => "Imperial Navy EM Plating"
	},

	15688	=> {
		typeID   => 15688,
		groupID  => 163,
		typeName => "Imperial Navy EM Plating Blueprint"
	},

	15689	=> {
		typeID   => 15689,
		groupID  => 98,
		typeName => "Imperial Navy Explosive Plating"
	},

	15690	=> {
		typeID   => 15690,
		groupID  => 163,
		typeName => "Imperial Navy Explosive Plating Blueprint"
	},

	15691	=> {
		typeID   => 15691,
		groupID  => 98,
		typeName => "Imperial Navy Kinetic Plating"
	},

	15692	=> {
		typeID   => 15692,
		groupID  => 163,
		typeName => "Imperial Navy Kinetic Plating Blueprint"
	},

	15693	=> {
		typeID   => 15693,
		groupID  => 98,
		typeName => "Imperial Navy Adaptive Nano Plating"
	},

	15694	=> {
		typeID   => 15694,
		groupID  => 163,
		typeName => "Imperial Navy Adaptive Nano Plating Blueprint"
	},

	15695	=> {
		typeID   => 15695,
		groupID  => 98,
		typeName => "Republic Fleet Thermal Plating"
	},

	15696	=> {
		typeID   => 15696,
		groupID  => 163,
		typeName => "Republic Fleet Thermal Plating Blueprint"
	},

	15697	=> {
		typeID   => 15697,
		groupID  => 98,
		typeName => "Republic Fleet EM Plating"
	},

	15698	=> {
		typeID   => 15698,
		groupID  => 163,
		typeName => "Republic Fleet EM Plating Blueprint"
	},

	15699	=> {
		typeID   => 15699,
		groupID  => 98,
		typeName => "Republic Fleet Explosive Plating"
	},

	15700	=> {
		typeID   => 15700,
		groupID  => 163,
		typeName => "Republic Fleet Explosive Plating Blueprint"
	},

	15701	=> {
		typeID   => 15701,
		groupID  => 98,
		typeName => "Republic Fleet Kinetic Plating"
	},

	15702	=> {
		typeID   => 15702,
		groupID  => 163,
		typeName => "Republic Fleet Kinetic Plating Blueprint"
	},

	15703	=> {
		typeID   => 15703,
		groupID  => 98,
		typeName => "Republic Fleet Adaptive Nano Plating"
	},

	15704	=> {
		typeID   => 15704,
		groupID  => 163,
		typeName => "Republic Fleet Adaptive Nano Plating Blueprint"
	},

	15705	=> {
		typeID   => 15705,
		groupID  => 328,
		typeName => "Imperial Navy Armor Thermal Hardener"
	},

	15706	=> {
		typeID   => 15706,
		groupID  => 348,
		typeName => "Imperial Navy Armor Thermal Hardener Blueprint"
	},

	15707	=> {
		typeID   => 15707,
		groupID  => 328,
		typeName => "Imperial Navy Armor Kinetic Hardener"
	},

	15708	=> {
		typeID   => 15708,
		groupID  => 348,
		typeName => "Imperial Navy Armor Kinetic Hardener Blueprint"
	},

	15709	=> {
		typeID   => 15709,
		groupID  => 328,
		typeName => "Imperial Navy Armor Explosive Hardener"
	},

	15710	=> {
		typeID   => 15710,
		groupID  => 348,
		typeName => "Imperial Navy Armor Explosive Hardener Blueprint"
	},

	15711	=> {
		typeID   => 15711,
		groupID  => 328,
		typeName => "Imperial Navy Armor EM Hardener"
	},

	15712	=> {
		typeID   => 15712,
		groupID  => 348,
		typeName => "Imperial Navy Armor EM Hardener Blueprint"
	},

	15713	=> {
		typeID   => 15713,
		groupID  => 328,
		typeName => "Republic Fleet Armor Thermal Hardener"
	},

	15714	=> {
		typeID   => 15714,
		groupID  => 348,
		typeName => "Republic Fleet Armor Thermal Hardener Blueprint"
	},

	15715	=> {
		typeID   => 15715,
		groupID  => 328,
		typeName => "Republic Fleet Armor Kinetic Hardener"
	},

	15716	=> {
		typeID   => 15716,
		groupID  => 348,
		typeName => "Republic Fleet Armor Kinetic Hardener Blueprint"
	},

	15717	=> {
		typeID   => 15717,
		groupID  => 328,
		typeName => "Republic Fleet Armor Explosive Hardener"
	},

	15718	=> {
		typeID   => 15718,
		groupID  => 348,
		typeName => "Republic Fleet Armor Explosive Hardener Blueprint"
	},

	15719	=> {
		typeID   => 15719,
		groupID  => 328,
		typeName => "Republic Fleet Armor EM Hardener"
	},

	15720	=> {
		typeID   => 15720,
		groupID  => 348,
		typeName => "Republic Fleet Armor EM Hardener Blueprint"
	},

	15721	=> {
		typeID   => 15721,
		groupID  => 326,
		typeName => "Imperial Navy Energized Thermal Membrane"
	},

	15722	=> {
		typeID   => 15722,
		groupID  => 163,
		typeName => "Imperial Navy Energized Thermal Membrane Blueprint"
	},

	15723	=> {
		typeID   => 15723,
		groupID  => 326,
		typeName => "Imperial Navy Energized EM Membrane"
	},

	15724	=> {
		typeID   => 15724,
		groupID  => 163,
		typeName => "Imperial Navy Energized EM Membrane Blueprint"
	},

	15725	=> {
		typeID   => 15725,
		groupID  => 326,
		typeName => "Imperial Navy Energized Explosive Membrane"
	},

	15726	=> {
		typeID   => 15726,
		groupID  => 163,
		typeName => "Imperial Navy Energized Explosive Membrane Blueprint"
	},

	15727	=> {
		typeID   => 15727,
		groupID  => 326,
		typeName => "Imperial Navy Energized Kinetic Membrane"
	},

	15728	=> {
		typeID   => 15728,
		groupID  => 163,
		typeName => "Imperial Navy Energized Kinetic Membrane Blueprint"
	},

	15729	=> {
		typeID   => 15729,
		groupID  => 326,
		typeName => "Imperial Navy Energized Adaptive Nano Membrane"
	},

	15730	=> {
		typeID   => 15730,
		groupID  => 163,
		typeName => "Imperial Navy Energized Adaptive Nano Membrane Blueprint"
	},

	15731	=> {
		typeID   => 15731,
		groupID  => 326,
		typeName => "Federation Navy Energized Thermal Membrane"
	},

	15732	=> {
		typeID   => 15732,
		groupID  => 163,
		typeName => "Federation Navy Energized Thermal Membrane Blueprint"
	},

	15733	=> {
		typeID   => 15733,
		groupID  => 326,
		typeName => "Federation Navy Energized EM Membrane"
	},

	15734	=> {
		typeID   => 15734,
		groupID  => 163,
		typeName => "Federation Navy Energized EM Membrane Blueprint"
	},

	15735	=> {
		typeID   => 15735,
		groupID  => 326,
		typeName => "Federation Navy Energized Explosive Membrane"
	},

	15736	=> {
		typeID   => 15736,
		groupID  => 163,
		typeName => "Federation Navy Energized Explosive Membrane Blueprint"
	},

	15737	=> {
		typeID   => 15737,
		groupID  => 326,
		typeName => "Federation Navy Energized Kinetic Membrane"
	},

	15738	=> {
		typeID   => 15738,
		groupID  => 163,
		typeName => "Federation Navy Energized Kinetic Membrane Blueprint"
	},

	15739	=> {
		typeID   => 15739,
		groupID  => 326,
		typeName => "Federation Navy Energized Adaptive Nano Membrane"
	},

	15740	=> {
		typeID   => 15740,
		groupID  => 163,
		typeName => "Federation Navy Energized Adaptive Nano Membrane Blueprint"
	},

	15741	=> {
		typeID   => 15741,
		groupID  => 62,
		typeName => "Ammatar Navy Small Armor Repairer"
	},

	15742	=> {
		typeID   => 15742,
		groupID  => 62,
		typeName => "Ammatar Navy Medium Armor Repairer"
	},

	15743	=> {
		typeID   => 15743,
		groupID  => 62,
		typeName => "Ammatar Navy Large Armor Repairer"
	},

	15744	=> {
		typeID   => 15744,
		groupID  => 62,
		typeName => "Federation Navy Small Armor Repairer"
	},

	15745	=> {
		typeID   => 15745,
		groupID  => 62,
		typeName => "Federation Navy Medium Armor Repairer"
	},

	15746	=> {
		typeID   => 15746,
		groupID  => 62,
		typeName => "Federation Navy Large Armor Repairer"
	},

	15747	=> {
		typeID   => 15747,
		groupID  => 46,
		typeName => "Republic Fleet 5MN Microwarpdrive"
	},

	15748	=> {
		typeID   => 15748,
		groupID  => 126,
		typeName => "Republic Fleet 5MN Microwarpdrive Blueprint"
	},

	15749	=> {
		typeID   => 15749,
		groupID  => 46,
		typeName => "Republic Fleet 1MN Afterburner"
	},

	15750	=> {
		typeID   => 15750,
		groupID  => 126,
		typeName => "Republic Fleet 1MN Afterburner Blueprint"
	},

	15751	=> {
		typeID   => 15751,
		groupID  => 46,
		typeName => "Republic Fleet 50MN Microwarpdrive"
	},

	15752	=> {
		typeID   => 15752,
		groupID  => 126,
		typeName => "Republic Fleet 50MN Microwarpdrive Blueprint"
	},

	15753	=> {
		typeID   => 15753,
		groupID  => 46,
		typeName => "Republic Fleet 10MN Afterburner"
	},

	15754	=> {
		typeID   => 15754,
		groupID  => 126,
		typeName => "Republic Fleet 10MN Afterburner Blueprint"
	},

	15755	=> {
		typeID   => 15755,
		groupID  => 46,
		typeName => "Republic Fleet 500MN Microwarpdrive"
	},

	15756	=> {
		typeID   => 15756,
		groupID  => 126,
		typeName => "Republic Fleet 500MN Microwarpdrive Blueprint"
	},

	15757	=> {
		typeID   => 15757,
		groupID  => 46,
		typeName => "Republic Fleet 100MN Afterburner"
	},

	15758	=> {
		typeID   => 15758,
		groupID  => 126,
		typeName => "Republic Fleet 100MN Afterburner Blueprint"
	},

	15759	=> {
		typeID   => 15759,
		groupID  => 46,
		typeName => "Federation Navy 5MN Microwarpdrive"
	},

	15760	=> {
		typeID   => 15760,
		groupID  => 126,
		typeName => "Federation Navy 5MN Microwarpdrive Blueprint"
	},

	15761	=> {
		typeID   => 15761,
		groupID  => 46,
		typeName => "Federation Navy 1MN Afterburner"
	},

	15762	=> {
		typeID   => 15762,
		groupID  => 126,
		typeName => "Federation Navy 1MN Afterburner Blueprint"
	},

	15764	=> {
		typeID   => 15764,
		groupID  => 46,
		typeName => "Federation Navy 50MN Microwarpdrive"
	},

	15765	=> {
		typeID   => 15765,
		groupID  => 126,
		typeName => "Federation Navy 50MN Microwarpdrive Blueprint"
	},

	15766	=> {
		typeID   => 15766,
		groupID  => 46,
		typeName => "Federation Navy 10MN Afterburner"
	},

	15767	=> {
		typeID   => 15767,
		groupID  => 126,
		typeName => "Federation Navy 10MN Afterburner Blueprint"
	},

	15768	=> {
		typeID   => 15768,
		groupID  => 46,
		typeName => "Federation Navy 500MN Microwarpdrive"
	},

	15769	=> {
		typeID   => 15769,
		groupID  => 126,
		typeName => "Federation Navy 500MN Microwarpdrive Blueprint"
	},

	15770	=> {
		typeID   => 15770,
		groupID  => 46,
		typeName => "Federation Navy 100MN Afterburner"
	},

	15771	=> {
		typeID   => 15771,
		groupID  => 126,
		typeName => "Federation Navy 100MN Afterburner Blueprint"
	},

	15772	=> {
		typeID   => 15772,
		groupID  => 76,
		typeName => "Ammatar Navy Small Capacitor Booster"
	},

	15773	=> {
		typeID   => 15773,
		groupID  => 156,
		typeName => "Ammatar Navy Small Capacitor Booster Blueprint"
	},

	15774	=> {
		typeID   => 15774,
		groupID  => 76,
		typeName => "Ammatar Navy Micro Capacitor Booster"
	},

	15776	=> {
		typeID   => 15776,
		groupID  => 76,
		typeName => "Ammatar Navy Medium Capacitor Booster"
	},

	15777	=> {
		typeID   => 15777,
		groupID  => 156,
		typeName => "Ammatar Navy Medium Capacitor Booster Blueprint"
	},

	15778	=> {
		typeID   => 15778,
		groupID  => 76,
		typeName => "Ammatar Navy Heavy Capacitor Booster"
	},

	15779	=> {
		typeID   => 15779,
		groupID  => 156,
		typeName => "Ammatar Navy Heavy Capacitor Booster Blueprint"
	},

	15780	=> {
		typeID   => 15780,
		groupID  => 76,
		typeName => "Imperial Navy Small Capacitor Booster"
	},

	15781	=> {
		typeID   => 15781,
		groupID  => 156,
		typeName => "Imperial Navy Small Capacitor Booster Blueprint"
	},

	15782	=> {
		typeID   => 15782,
		groupID  => 76,
		typeName => "Imperial Navy Micro Capacitor Booster"
	},

	15783	=> {
		typeID   => 15783,
		groupID  => 156,
		typeName => "Imperial Navy Micro Capacitor Booster Blueprint"
	},

	15784	=> {
		typeID   => 15784,
		groupID  => 76,
		typeName => "Imperial Navy Medium Capacitor Booster"
	},

	15785	=> {
		typeID   => 15785,
		groupID  => 156,
		typeName => "Imperial Navy Medium Capacitor Booster Blueprint"
	},

	15786	=> {
		typeID   => 15786,
		groupID  => 76,
		typeName => "Imperial Navy Heavy Capacitor Booster"
	},

	15787	=> {
		typeID   => 15787,
		groupID  => 156,
		typeName => "Imperial Navy Heavy Capacitor Booster Blueprint"
	},

	15788	=> {
		typeID   => 15788,
		groupID  => 43,
		typeName => "Ammatar Navy Cap Recharger"
	},

	15789	=> {
		typeID   => 15789,
		groupID  => 123,
		typeName => "Ammatar Navy Cap Recharger Blueprint"
	},

	15790	=> {
		typeID   => 15790,
		groupID  => 330,
		typeName => "Caldari Navy Cloaking Device"
	},

	15791	=> {
		typeID   => 15791,
		groupID  => 401,
		typeName => "Caldari Navy Cloaking Device Blueprint"
	},

	15792	=> {
		typeID   => 15792,
		groupID  => 213,
		typeName => "Federation Navy Tracking Computer"
	},

	15793	=> {
		typeID   => 15793,
		groupID  => 224,
		typeName => "Federation Navy Tracking Computer Blueprint"
	},

	15794	=> {
		typeID   => 15794,
		groupID  => 71,
		typeName => "Ammatar Navy Small Energy Neutralizer"
	},

	15795	=> {
		typeID   => 15795,
		groupID  => 151,
		typeName => "Ammatar Navy Small Energy Neutralizer Blueprint"
	},

	15796	=> {
		typeID   => 15796,
		groupID  => 71,
		typeName => "Ammatar Navy Medium Energy Neutralizer"
	},

	15797	=> {
		typeID   => 15797,
		groupID  => 151,
		typeName => "Ammatar Navy Medium Energy Neutralizer Blueprint"
	},

	15798	=> {
		typeID   => 15798,
		groupID  => 71,
		typeName => "Ammatar Navy Heavy Energy Neutralizer"
	},

	15799	=> {
		typeID   => 15799,
		groupID  => 151,
		typeName => "Ammatar Navy Heavy Energy Neutralizer Blueprint"
	},

	15800	=> {
		typeID   => 15800,
		groupID  => 71,
		typeName => "Imperial Navy Small Energy Neutralizer"
	},

	15801	=> {
		typeID   => 15801,
		groupID  => 151,
		typeName => "Imperial Navy Small Energy Neutralizer Blueprint"
	},

	15802	=> {
		typeID   => 15802,
		groupID  => 71,
		typeName => "Imperial Navy Medium Energy Neutralizer"
	},

	15803	=> {
		typeID   => 15803,
		groupID  => 151,
		typeName => "Imperial Navy Medium Energy Neutralizer Blueprint"
	},

	15804	=> {
		typeID   => 15804,
		groupID  => 71,
		typeName => "Imperial Navy Heavy Energy Neutralizer"
	},

	15805	=> {
		typeID   => 15805,
		groupID  => 151,
		typeName => "Imperial Navy Heavy Energy Neutralizer Blueprint"
	},

	15806	=> {
		typeID   => 15806,
		groupID  => 59,
		typeName => "Republic Fleet Gyrostabilizer"
	},

	15807	=> {
		typeID   => 15807,
		groupID  => 139,
		typeName => "Republic Fleet Gyrostabilizer Blueprint"
	},

	15808	=> {
		typeID   => 15808,
		groupID  => 205,
		typeName => "Ammatar Navy Heat Sink"
	},

	15809	=> {
		typeID   => 15809,
		groupID  => 218,
		typeName => "Ammatar Navy Heat Sink Blueprint"
	},

	15810	=> {
		typeID   => 15810,
		groupID  => 205,
		typeName => "Imperial Navy Heat Sink"
	},

	15811	=> {
		typeID   => 15811,
		groupID  => 218,
		typeName => "Imperial Navy Heat Sink Blueprint"
	},

	15812	=> {
		typeID   => 15812,
		groupID  => 764,
		typeName => "Republic Fleet Overdrive Injector"
	},

	15813	=> {
		typeID   => 15813,
		groupID  => 763,
		typeName => "Republic Fleet Nanofiber Structure"
	},

	15814	=> {
		typeID   => 15814,
		groupID  => 74,
		typeName => "Caldari Navy Dual 250mm Railgun"
	},

	15815	=> {
		typeID   => 15815,
		groupID  => 74,
		typeName => "Caldari Navy Dual 150mm Railgun"
	},

	15816	=> {
		typeID   => 15816,
		groupID  => 74,
		typeName => "Caldari Navy 75mm Railgun"
	},

	15817	=> {
		typeID   => 15817,
		groupID  => 74,
		typeName => "Caldari Navy 425mm Railgun"
	},

	15818	=> {
		typeID   => 15818,
		groupID  => 74,
		typeName => "Caldari Navy 350mm Railgun"
	},

	15819	=> {
		typeID   => 15819,
		groupID  => 154,
		typeName => "Caldari Navy 350mm Railgun Blueprint"
	},

	15820	=> {
		typeID   => 15820,
		groupID  => 74,
		typeName => "Caldari Navy 250mm Railgun"
	},

	15821	=> {
		typeID   => 15821,
		groupID  => 74,
		typeName => "Caldari Navy 200mm Railgun"
	},

	15822	=> {
		typeID   => 15822,
		groupID  => 154,
		typeName => "Caldari Navy 200mm Railgun Blueprint"
	},

	15823	=> {
		typeID   => 15823,
		groupID  => 74,
		typeName => "Caldari Navy 150mm Railgun"
	},

	15824	=> {
		typeID   => 15824,
		groupID  => 74,
		typeName => "Caldari Navy 125mm Railgun"
	},

	15825	=> {
		typeID   => 15825,
		groupID  => 74,
		typeName => "Federation Navy Neutron Blaster Cannon"
	},

	15826	=> {
		typeID   => 15826,
		groupID  => 74,
		typeName => "Federation Navy Light Neutron Blaster"
	},

	15827	=> {
		typeID   => 15827,
		groupID  => 74,
		typeName => "Federation Navy Light Ion Blaster"
	},

	15828	=> {
		typeID   => 15828,
		groupID  => 74,
		typeName => "Federation Navy Light Electron Blaster"
	},

	15829	=> {
		typeID   => 15829,
		groupID  => 74,
		typeName => "Federation Navy Ion Blaster Cannon"
	},

	15830	=> {
		typeID   => 15830,
		groupID  => 74,
		typeName => "Federation Navy Heavy Neutron Blaster"
	},

	15831	=> {
		typeID   => 15831,
		groupID  => 74,
		typeName => "Federation Navy Heavy Ion Blaster"
	},

	15832	=> {
		typeID   => 15832,
		groupID  => 74,
		typeName => "Federation Navy Heavy Electron Blaster"
	},

	15833	=> {
		typeID   => 15833,
		groupID  => 74,
		typeName => "Federation Navy Electron Blaster Cannon"
	},

	15834	=> {
		typeID   => 15834,
		groupID  => 74,
		typeName => "Federation Navy Dual 250mm Railgun"
	},

	15835	=> {
		typeID   => 15835,
		groupID  => 74,
		typeName => "Federation Navy Dual 150mm Railgun"
	},

	15836	=> {
		typeID   => 15836,
		groupID  => 74,
		typeName => "Federation Navy 75mm Railgun"
	},

	15837	=> {
		typeID   => 15837,
		groupID  => 74,
		typeName => "Federation Navy 425mm Railgun"
	},

	15838	=> {
		typeID   => 15838,
		groupID  => 74,
		typeName => "Federation Navy 350mm Railgun"
	},

	15839	=> {
		typeID   => 15839,
		groupID  => 154,
		typeName => "Federation Navy 350mm Railgun Blueprint"
	},

	15840	=> {
		typeID   => 15840,
		groupID  => 74,
		typeName => "Federation Navy 250mm Railgun"
	},

	15841	=> {
		typeID   => 15841,
		groupID  => 74,
		typeName => "Federation Navy 200mm Railgun"
	},

	15842	=> {
		typeID   => 15842,
		groupID  => 154,
		typeName => "Federation Navy 200mm Railgun Blueprint"
	},

	15843	=> {
		typeID   => 15843,
		groupID  => 74,
		typeName => "Federation Navy 150mm Railgun"
	},

	15844	=> {
		typeID   => 15844,
		groupID  => 74,
		typeName => "Federation Navy 125mm Railgun"
	},

	15845	=> {
		typeID   => 15845,
		groupID  => 53,
		typeName => "Ammatar Navy Tachyon Beam Laser"
	},

	15846	=> {
		typeID   => 15846,
		groupID  => 53,
		typeName => "Ammatar Navy Quad Beam Laser"
	},

	15847	=> {
		typeID   => 15847,
		groupID  => 53,
		typeName => "Ammatar Navy Mega Pulse Laser"
	},

	15848	=> {
		typeID   => 15848,
		groupID  => 53,
		typeName => "Ammatar Navy Mega Beam Laser"
	},

	15849	=> {
		typeID   => 15849,
		groupID  => 53,
		typeName => "Ammatar Navy Small Focused Pulse Laser"
	},

	15850	=> {
		typeID   => 15850,
		groupID  => 53,
		typeName => "Ammatar Navy Small Focused Beam Laser"
	},

	15851	=> {
		typeID   => 15851,
		groupID  => 53,
		typeName => "Ammatar Navy Heavy Pulse Laser"
	},

	15852	=> {
		typeID   => 15852,
		groupID  => 53,
		typeName => "Ammatar Navy Heavy Beam Laser"
	},

	15853	=> {
		typeID   => 15853,
		groupID  => 53,
		typeName => "Ammatar Navy Gatling Pulse Laser"
	},

	15854	=> {
		typeID   => 15854,
		groupID  => 53,
		typeName => "Ammatar Navy Focused Medium Pulse Laser"
	},

	15855	=> {
		typeID   => 15855,
		groupID  => 53,
		typeName => "Ammatar Navy Focused Medium Beam Laser"
	},

	15856	=> {
		typeID   => 15856,
		groupID  => 53,
		typeName => "Ammatar Navy Dual Light Pulse Laser"
	},

	15857	=> {
		typeID   => 15857,
		groupID  => 53,
		typeName => "Ammatar Navy Dual Light Beam Laser"
	},

	15858	=> {
		typeID   => 15858,
		groupID  => 53,
		typeName => "Ammatar Navy Dual Heavy Pulse Laser"
	},

	15859	=> {
		typeID   => 15859,
		groupID  => 53,
		typeName => "Ammatar Navy Dual Heavy Beam Laser"
	},

	15860	=> {
		typeID   => 15860,
		groupID  => 53,
		typeName => "Imperial Navy Tachyon Beam Laser"
	},

	15861	=> {
		typeID   => 15861,
		groupID  => 53,
		typeName => "Imperial Navy Quad Beam Laser"
	},

	15862	=> {
		typeID   => 15862,
		groupID  => 53,
		typeName => "Imperial Navy Mega Pulse Laser"
	},

	15863	=> {
		typeID   => 15863,
		groupID  => 53,
		typeName => "Imperial Navy Mega Beam Laser"
	},

	15864	=> {
		typeID   => 15864,
		groupID  => 53,
		typeName => "Imperial Navy Small Focused Pulse Laser"
	},

	15865	=> {
		typeID   => 15865,
		groupID  => 53,
		typeName => "Imperial Navy Small Focused Beam Laser"
	},

	15866	=> {
		typeID   => 15866,
		groupID  => 53,
		typeName => "Imperial Navy Heavy Pulse Laser"
	},

	15867	=> {
		typeID   => 15867,
		groupID  => 53,
		typeName => "Imperial Navy Heavy Beam Laser"
	},

	15868	=> {
		typeID   => 15868,
		groupID  => 53,
		typeName => "Imperial Navy Gatling Pulse Laser"
	},

	15869	=> {
		typeID   => 15869,
		groupID  => 53,
		typeName => "Imperial Navy Focused Medium Pulse Laser"
	},

	15870	=> {
		typeID   => 15870,
		groupID  => 53,
		typeName => "Imperial Navy Focused Medium Beam Laser"
	},

	15871	=> {
		typeID   => 15871,
		groupID  => 53,
		typeName => "Imperial Navy Dual Light Pulse Laser"
	},

	15872	=> {
		typeID   => 15872,
		groupID  => 53,
		typeName => "Imperial Navy Dual Light Beam Laser"
	},

	15873	=> {
		typeID   => 15873,
		groupID  => 53,
		typeName => "Imperial Navy Dual Heavy Pulse Laser"
	},

	15874	=> {
		typeID   => 15874,
		groupID  => 53,
		typeName => "Imperial Navy Dual Heavy Beam Laser"
	},

	15875	=> {
		typeID   => 15875,
		groupID  => 68,
		typeName => "Ammatar Navy Small Energy Nosferatu"
	},

	15876	=> {
		typeID   => 15876,
		groupID  => 148,
		typeName => "Ammatar Navy Small Energy Nosferatu Blueprint"
	},

	15877	=> {
		typeID   => 15877,
		groupID  => 68,
		typeName => "Ammatar Navy Medium Energy Nosferatu"
	},

	15878	=> {
		typeID   => 15878,
		groupID  => 148,
		typeName => "Ammatar Navy Medium Energy Nosferatu Blueprint"
	},

	15879	=> {
		typeID   => 15879,
		groupID  => 68,
		typeName => "Ammatar Navy Heavy Energy Nosferatu"
	},

	15880	=> {
		typeID   => 15880,
		groupID  => 148,
		typeName => "Ammatar Navy Heavy Energy Nosferatu Blueprint"
	},

	15881	=> {
		typeID   => 15881,
		groupID  => 68,
		typeName => "Imperial Navy Small Energy Nosferatu"
	},

	15882	=> {
		typeID   => 15882,
		groupID  => 148,
		typeName => "Imperial Navy Small Energy Nosferatu Blueprint"
	},

	15883	=> {
		typeID   => 15883,
		groupID  => 68,
		typeName => "Imperial Navy Medium Energy Nosferatu"
	},

	15884	=> {
		typeID   => 15884,
		groupID  => 148,
		typeName => "Imperial Navy Medium Energy Nosferatu Blueprint"
	},

	15885	=> {
		typeID   => 15885,
		groupID  => 68,
		typeName => "Imperial Navy Heavy Energy Nosferatu"
	},

	15886	=> {
		typeID   => 15886,
		groupID  => 148,
		typeName => "Imperial Navy Heavy Energy Nosferatu Blueprint"
	},

	15887	=> {
		typeID   => 15887,
		groupID  => 52,
		typeName => "Caldari Navy Warp Scrambler"
	},

	15888	=> {
		typeID   => 15888,
		groupID  => 132,
		typeName => "Caldari Navy Warp Scrambler Blueprint"
	},

	15889	=> {
		typeID   => 15889,
		groupID  => 52,
		typeName => "Caldari Navy Warp Disruptor"
	},

	15890	=> {
		typeID   => 15890,
		groupID  => 132,
		typeName => "Caldari Navy Warp Disruptor Blueprint"
	},

	15891	=> {
		typeID   => 15891,
		groupID  => 52,
		typeName => "Republic Fleet Warp Disruptor"
	},

	15892	=> {
		typeID   => 15892,
		groupID  => 132,
		typeName => "Republic Fleet Warp Disruptor Blueprint"
	},

	15893	=> {
		typeID   => 15893,
		groupID  => 52,
		typeName => "Republic Fleet Warp Scrambler"
	},

	15894	=> {
		typeID   => 15894,
		groupID  => 132,
		typeName => "Republic Fleet Warp Scrambler Blueprint"
	},

	15895	=> {
		typeID   => 15895,
		groupID  => 302,
		typeName => "Federation Navy Magnetic Field Stabilizer"
	},

	15896	=> {
		typeID   => 15896,
		groupID  => 139,
		typeName => "Federation Navy Magnetic Field Stabilizer Blueprint"
	},

	15897	=> {
		typeID   => 15897,
		groupID  => 40,
		typeName => "Caldari Navy X-Large Shield Booster"
	},

	15898	=> {
		typeID   => 15898,
		groupID  => 40,
		typeName => "Caldari Navy Small Shield Booster"
	},

	15899	=> {
		typeID   => 15899,
		groupID  => 40,
		typeName => "Caldari Navy Medium Shield Booster"
	},

	15900	=> {
		typeID   => 15900,
		groupID  => 40,
		typeName => "Caldari Navy Large Shield Booster"
	},

	15901	=> {
		typeID   => 15901,
		groupID  => 40,
		typeName => "Republic Fleet X-Large Shield Booster"
	},

	15902	=> {
		typeID   => 15902,
		groupID  => 40,
		typeName => "Republic Fleet Small Shield Booster"
	},

	15903	=> {
		typeID   => 15903,
		groupID  => 40,
		typeName => "Republic Fleet Medium Shield Booster"
	},

	15904	=> {
		typeID   => 15904,
		groupID  => 40,
		typeName => "Republic Fleet Large Shield Booster"
	},

	15905	=> {
		typeID   => 15905,
		groupID  => 338,
		typeName => "Caldari Navy Shield Boost Amplifier"
	},

	15906	=> {
		typeID   => 15906,
		groupID  => 360,
		typeName => "Caldari Navy Shield Boost Amplifier Blueprint"
	},

	15907	=> {
		typeID   => 15907,
		groupID  => 338,
		typeName => "Republic Fleet Shield Boost Amplifier"
	},

	15908	=> {
		typeID   => 15908,
		groupID  => 360,
		typeName => "Republic Fleet Shield Boost Amplifier Blueprint"
	},

	15909	=> {
		typeID   => 15909,
		groupID  => 295,
		typeName => "Caldari Navy EM Ward Amplifier"
	},

	15910	=> {
		typeID   => 15910,
		groupID  => 296,
		typeName => "Caldari Navy EM Ward Amplifier Blueprint"
	},

	15911	=> {
		typeID   => 15911,
		groupID  => 295,
		typeName => "Caldari Navy Kinetic Deflection Amplifier"
	},

	15912	=> {
		typeID   => 15912,
		groupID  => 296,
		typeName => "Caldari Navy Kinetic Deflection Amplifier Blueprint"
	},

	15913	=> {
		typeID   => 15913,
		groupID  => 295,
		typeName => "Caldari Navy Thermal Dissipation Amplifier"
	},

	15914	=> {
		typeID   => 15914,
		groupID  => 296,
		typeName => "Caldari Navy Thermal Dissipation Amplifier Blueprint"
	},

	15915	=> {
		typeID   => 15915,
		groupID  => 295,
		typeName => "Caldari Navy Explosive Deflection Amplifier"
	},

	15916	=> {
		typeID   => 15916,
		groupID  => 296,
		typeName => "Caldari Navy Explosive Deflection Amplifier Blueprint"
	},

	15917	=> {
		typeID   => 15917,
		groupID  => 295,
		typeName => "Republic Fleet EM Ward Amplifier"
	},

	15918	=> {
		typeID   => 15918,
		groupID  => 296,
		typeName => "Republic Fleet EM Ward Amplifier Blueprint"
	},

	15919	=> {
		typeID   => 15919,
		groupID  => 295,
		typeName => "Republic Fleet Kinetic Deflection Amplifier"
	},

	15920	=> {
		typeID   => 15920,
		groupID  => 296,
		typeName => "Republic Fleet Kinetic Deflection Amplifier Blueprint"
	},

	15921	=> {
		typeID   => 15921,
		groupID  => 295,
		typeName => "Republic Fleet Thermal Dissipation Amplifier"
	},

	15922	=> {
		typeID   => 15922,
		groupID  => 296,
		typeName => "Republic Fleet Thermal Dissipation Amplifier Blueprint"
	},

	15923	=> {
		typeID   => 15923,
		groupID  => 295,
		typeName => "Republic Fleet Explosive Deflection Amplifier"
	},

	15924	=> {
		typeID   => 15924,
		groupID  => 296,
		typeName => "Republic Fleet Explosive Deflection Amplifier Blueprint"
	},

	15925	=> {
		typeID   => 15925,
		groupID  => 72,
		typeName => "Caldari Navy Small Graviton Smartbomb"
	},

	15926	=> {
		typeID   => 15926,
		groupID  => 152,
		typeName => "Caldari Navy Small Graviton Smartbomb Blueprint"
	},

	15927	=> {
		typeID   => 15927,
		groupID  => 72,
		typeName => "Caldari Navy Micro Graviton Smartbomb"
	},

	15928	=> {
		typeID   => 15928,
		groupID  => 152,
		typeName => "Caldari Navy Micro Graviton Smartbomb Blueprint"
	},

	15929	=> {
		typeID   => 15929,
		groupID  => 72,
		typeName => "Caldari Navy Medium Graviton Smartbomb"
	},

	15930	=> {
		typeID   => 15930,
		groupID  => 152,
		typeName => "Caldari Navy Medium Graviton Smartbomb Blueprint"
	},

	15931	=> {
		typeID   => 15931,
		groupID  => 72,
		typeName => "Caldari Navy Large Graviton Smartbomb"
	},

	15932	=> {
		typeID   => 15932,
		groupID  => 152,
		typeName => "Caldari Navy Large Graviton Smartbomb Blueprint"
	},

	15933	=> {
		typeID   => 15933,
		groupID  => 72,
		typeName => "Republic Fleet Micro Proton Smartbomb"
	},

	15935	=> {
		typeID   => 15935,
		groupID  => 72,
		typeName => "Republic Fleet Small Proton Smartbomb"
	},

	15936	=> {
		typeID   => 15936,
		groupID  => 152,
		typeName => "Republic Fleet Small Proton Smartbomb Blueprint"
	},

	15937	=> {
		typeID   => 15937,
		groupID  => 72,
		typeName => "Republic Fleet Medium Proton Smartbomb"
	},

	15938	=> {
		typeID   => 15938,
		groupID  => 152,
		typeName => "Republic Fleet Medium Proton Smartbomb Blueprint"
	},

	15939	=> {
		typeID   => 15939,
		groupID  => 72,
		typeName => "Republic Fleet Large Proton Smartbomb"
	},

	15940	=> {
		typeID   => 15940,
		groupID  => 152,
		typeName => "Republic Fleet Large Proton Smartbomb Blueprint"
	},

	15941	=> {
		typeID   => 15941,
		groupID  => 72,
		typeName => "Ammatar Navy Small EMP Smartbomb"
	},

	15942	=> {
		typeID   => 15942,
		groupID  => 152,
		typeName => "Ammatar Navy Small EMP Smartbomb Blueprint"
	},

	15943	=> {
		typeID   => 15943,
		groupID  => 72,
		typeName => "Ammatar Navy Micro EMP Smartbomb"
	},

	15945	=> {
		typeID   => 15945,
		groupID  => 72,
		typeName => "Ammatar Navy Medium EMP Smartbomb"
	},

	15946	=> {
		typeID   => 15946,
		groupID  => 152,
		typeName => "Ammatar Navy Medium EMP Smartbomb Blueprint"
	},

	15947	=> {
		typeID   => 15947,
		groupID  => 72,
		typeName => "Ammatar Navy Large EMP Smartbomb"
	},

	15948	=> {
		typeID   => 15948,
		groupID  => 152,
		typeName => "Ammatar Navy Large EMP Smartbomb Blueprint"
	},

	15949	=> {
		typeID   => 15949,
		groupID  => 72,
		typeName => "Federation Navy Small Plasma Smartbomb"
	},

	15950	=> {
		typeID   => 15950,
		groupID  => 152,
		typeName => "Federation Navy Small Plasma Smartbomb Blueprint"
	},

	15951	=> {
		typeID   => 15951,
		groupID  => 72,
		typeName => "Federation Navy Micro Plasma Smartbomb"
	},

	15953	=> {
		typeID   => 15953,
		groupID  => 72,
		typeName => "Federation Navy Medium Plasma Smartbomb"
	},

	15954	=> {
		typeID   => 15954,
		groupID  => 152,
		typeName => "Federation Navy Medium Plasma Smartbomb Blueprint"
	},

	15955	=> {
		typeID   => 15955,
		groupID  => 72,
		typeName => "Federation Navy Large Plasma Smartbomb"
	},

	15956	=> {
		typeID   => 15956,
		groupID  => 152,
		typeName => "Federation Navy Large Plasma Smartbomb Blueprint"
	},

	15957	=> {
		typeID   => 15957,
		groupID  => 72,
		typeName => "Imperial Navy Small EMP Smartbomb"
	},

	15958	=> {
		typeID   => 15958,
		groupID  => 152,
		typeName => "Imperial Navy Small EMP Smartbomb Blueprint"
	},

	15959	=> {
		typeID   => 15959,
		groupID  => 72,
		typeName => "Imperial Navy Micro EMP Smartbomb"
	},

	15960	=> {
		typeID   => 15960,
		groupID  => 152,
		typeName => "Imperial Navy Micro EMP Smartbomb Blueprint"
	},

	15961	=> {
		typeID   => 15961,
		groupID  => 72,
		typeName => "Imperial Navy Medium EMP Smartbomb"
	},

	15962	=> {
		typeID   => 15962,
		groupID  => 152,
		typeName => "Imperial Navy Medium EMP Smartbomb Blueprint"
	},

	15963	=> {
		typeID   => 15963,
		groupID  => 72,
		typeName => "Imperial Navy Large EMP Smartbomb"
	},

	15964	=> {
		typeID   => 15964,
		groupID  => 152,
		typeName => "Imperial Navy Large EMP Smartbomb Blueprint"
	},

	15965	=> {
		typeID   => 15965,
		groupID  => 211,
		typeName => "Republic Fleet Tracking Enhancer"
	},

	15966	=> {
		typeID   => 15966,
		groupID  => 344,
		typeName => "Republic Fleet Tracking Enhancer Blueprint"
	},

	15967	=> {
		typeID   => 15967,
		groupID  => 209,
		typeName => "Federation Navy Remote Tracking Computer"
	},

	15968	=> {
		typeID   => 15968,
		groupID  => 345,
		typeName => "Federation Navy Remote Tracking Computer  Blueprint"
	},

	15969	=> {
		typeID   => 15969,
		groupID  => 671,
		typeName => "Caldari Navy Gamma I Support Frigate"
	},

	15970	=> {
		typeID   => 15970,
		groupID  => 671,
		typeName => "Caldari Navy Gamma II Support Frigate"
	},

	15971	=> {
		typeID   => 15971,
		groupID  => 671,
		typeName => "Caldari Navy Delta I Support Frigate"
	},

	15972	=> {
		typeID   => 15972,
		groupID  => 671,
		typeName => "Caldari Navy Delta II Support Frigate"
	},

	15973	=> {
		typeID   => 15973,
		groupID  => 683,
		typeName => "Republic Fleet C-2 Support Frigate"
	},

	15974	=> {
		typeID   => 15974,
		groupID  => 683,
		typeName => "Republic Fleet D-2 Support Frigate"
	},

	15975	=> {
		typeID   => 15975,
		groupID  => 683,
		typeName => "Republic Fleet C-1 Support Frigate"
	},

	15976	=> {
		typeID   => 15976,
		groupID  => 683,
		typeName => "Republic Fleet D-1 Support Frigate"
	},

	15977	=> {
		typeID   => 15977,
		groupID  => 665,
		typeName => "Ammatar Navy Gamma II Support Frigate"
	},

	15978	=> {
		typeID   => 15978,
		groupID  => 665,
		typeName => "Ammatar Navy Gamma I Support Frigate"
	},

	15979	=> {
		typeID   => 15979,
		groupID  => 409,
		typeName => "Ammatar Slave Trader Insignia"
	},

	15980	=> {
		typeID   => 15980,
		groupID  => 409,
		typeName => "Amarr Empire Slave Trader Insignia"
	},

	15981	=> {
		typeID   => 15981,
		groupID  => 409,
		typeName => "Khanid Slave Trader Insignia"
	},

	15982	=> {
		typeID   => 15982,
		groupID  => 665,
		typeName => "Ammatar Navy Delta I Support Frigate"
	},

	15983	=> {
		typeID   => 15983,
		groupID  => 665,
		typeName => "Ammatar Navy Delta II Support Frigate"
	},

	15984	=> {
		typeID   => 15984,
		groupID  => 665,
		typeName => "Imperial Navy Gamma II Support Frigate"
	},

	15985	=> {
		typeID   => 15985,
		groupID  => 665,
		typeName => "Imperial Navy Gamma I Support Frigate"
	},

	15986	=> {
		typeID   => 15986,
		groupID  => 665,
		typeName => "Imperial Navy Delta II Support Frigate"
	},

	15987	=> {
		typeID   => 15987,
		groupID  => 665,
		typeName => "Imperial Navy Delta I Support Frigate"
	},

	15988	=> {
		typeID   => 15988,
		groupID  => 677,
		typeName => "Federation Navy Gamma II Support Frigate"
	},

	15989	=> {
		typeID   => 15989,
		groupID  => 677,
		typeName => "Federation Navy Delta II Support Frigate"
	},

	15990	=> {
		typeID   => 15990,
		groupID  => 677,
		typeName => "Federation Navy Gamma I Support Frigate"
	},

	15991	=> {
		typeID   => 15991,
		groupID  => 677,
		typeName => "Federation Navy Delta I Support Frigate"
	},

	15992	=> {
		typeID   => 15992,
		groupID  => 409,
		typeName => "Imperial Navy Sergeant Insignia II"
	},

	15993	=> {
		typeID   => 15993,
		groupID  => 409,
		typeName => "Ammatar Navy Sergeant Insignia II"
	},

	15994	=> {
		typeID   => 15994,
		groupID  => 409,
		typeName => "Federation Navy Sergeant Insignia II"
	},

	15996	=> {
		typeID   => 15996,
		groupID  => 409,
		typeName => "Caldari Navy Captain Insignia IV"
	},

	15997	=> {
		typeID   => 15997,
		groupID  => 409,
		typeName => "Republic Fleet Private Insignia IV"
	},

	15998	=> {
		typeID   => 15998,
		groupID  => 409,
		typeName => "Republic Fleet Private Insignia V"
	},

	15999	=> {
		typeID   => 15999,
		groupID  => 409,
		typeName => "Caldari Navy Captain Insignia V"
	},

	16000	=> {
		typeID   => 16000,
		groupID  => 409,
		typeName => "Imperial Navy Sergeant Insignia III"
	},

	16001	=> {
		typeID   => 16001,
		groupID  => 409,
		typeName => "Ammatar Navy Sergeant Insignia III"
	},

	16002	=> {
		typeID   => 16002,
		groupID  => 409,
		typeName => "Federation Navy Sergeant Insignia III"
	},

	16003	=> {
		typeID   => 16003,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Navigation NN-605"
	},

	16004	=> {
		typeID   => 16004,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Evasive Maneuvering EM-705"
	},

	16005	=> {
		typeID   => 16005,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Fuel Conservation FC-805"
	},

	16006	=> {
		typeID   => 16006,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' High Speed Maneuvering HS-905"
	},

	16008	=> {
		typeID   => 16008,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Acceleration Control AC-603"
	},

	16009	=> {
		typeID   => 16009,
		groupID  => 747,
		typeName => "Eifyr and Co. 'Rogue' Acceleration Control AC-605"
	},

	16010	=> {
		typeID   => 16010,
		groupID  => 818,
		typeName => "Mercenary Wingman"
	},

	16019	=> {
		typeID   => 16019,
		groupID  => 699,
		typeName => "Mordus Rookie"
	},

	16020	=> {
		typeID   => 16020,
		groupID  => 699,
		typeName => "Mordus Sabre"
	},

	16021	=> {
		typeID   => 16021,
		groupID  => 699,
		typeName => "Mordus Rapier"
	},

	16022	=> {
		typeID   => 16022,
		groupID  => 699,
		typeName => "Mordus Gladius"
	},

	16023	=> {
		typeID   => 16023,
		groupID  => 699,
		typeName => "Mordus Katana"
	},

	16024	=> {
		typeID   => 16024,
		groupID  => 699,
		typeName => "Mordus Squad Leader"
	},

	16025	=> {
		typeID   => 16025,
		groupID  => 384,
		typeName => "Decapitator Light Missile"
	},

	16027	=> {
		typeID   => 16027,
		groupID  => 701,
		typeName => "Mordus Bobcat"
	},

	16028	=> {
		typeID   => 16028,
		groupID  => 701,
		typeName => "Mordus Cheetah"
	},

	16029	=> {
		typeID   => 16029,
		groupID  => 135,
		typeName => "800mm Repeating Cannon II Blueprint"
	},

	16030	=> {
		typeID   => 16030,
		groupID  => 701,
		typeName => "Mordus Puma"
	},

	16031	=> {
		typeID   => 16031,
		groupID  => 701,
		typeName => "Mordus Leopard"
	},

	16032	=> {
		typeID   => 16032,
		groupID  => 135,
		typeName => "150mm Light AutoCannon II Blueprint"
	},

	16033	=> {
		typeID   => 16033,
		groupID  => 701,
		typeName => "Mordus Lion"
	},

	16034	=> {
		typeID   => 16034,
		groupID  => 703,
		typeName => "Mordus Phanti"
	},

	16035	=> {
		typeID   => 16035,
		groupID  => 703,
		typeName => "Mordus Sequestor"
	},

	16036	=> {
		typeID   => 16036,
		groupID  => 703,
		typeName => "Mordus Gigamar"
	},

	16037	=> {
		typeID   => 16037,
		groupID  => 703,
		typeName => "Mordus Mammoth"
	},

	16038	=> {
		typeID   => 16038,
		groupID  => 701,
		typeName => "Mordus Raid Leader"
	},

	16039	=> {
		typeID   => 16039,
		groupID  => 703,
		typeName => "Mordus Fleet Commander"
	},

	16040	=> {
		typeID   => 16040,
		groupID  => 699,
		typeName => "Mordus Bounty Hunter"
	},

	16041	=> {
		typeID   => 16041,
		groupID  => 314,
		typeName => "Colossal Sealed Cargo Containers"
	},

	16042	=> {
		typeID   => 16042,
		groupID  => 314,
		typeName => "Medium Sized Sealed Cargo Containers"
	},

	16043	=> {
		typeID   => 16043,
		groupID  => 314,
		typeName => "Giant Sealed Cargo Containers"
	},

	16044	=> {
		typeID   => 16044,
		groupID  => 314,
		typeName => "Small Sealed Cargo Containers"
	},

	16045	=> {
		typeID   => 16045,
		groupID  => 314,
		typeName => "Large Sealed Cargo Containers"
	},

	16046	=> {
		typeID   => 16046,
		groupID  => 55,
		typeName => "Republic Fleet 125mm Autocannon"
	},

	16047	=> {
		typeID   => 16047,
		groupID  => 55,
		typeName => "Republic Fleet 1200mm Artillery"
	},

	16048	=> {
		typeID   => 16048,
		groupID  => 55,
		typeName => "Republic Fleet 1400mm Howitzer Artillery"
	},

	16049	=> {
		typeID   => 16049,
		groupID  => 55,
		typeName => "Republic Fleet 150mm Autocannon"
	},

	16050	=> {
		typeID   => 16050,
		groupID  => 55,
		typeName => "Republic Fleet 200mm Autocannon"
	},

	16051	=> {
		typeID   => 16051,
		groupID  => 55,
		typeName => "Republic Fleet 220mm Autocannon"
	},

	16052	=> {
		typeID   => 16052,
		groupID  => 55,
		typeName => "Republic Fleet 250mm Artillery"
	},

	16053	=> {
		typeID   => 16053,
		groupID  => 55,
		typeName => "Republic Fleet 280mm Howitzer Artillery"
	},

	16054	=> {
		typeID   => 16054,
		groupID  => 55,
		typeName => "Republic Fleet 425mm Autocannon"
	},

	16055	=> {
		typeID   => 16055,
		groupID  => 55,
		typeName => "Republic Fleet 650mm Artillery"
	},

	16056	=> {
		typeID   => 16056,
		groupID  => 55,
		typeName => "Republic Fleet 720mm Howitzer Artillery"
	},

	16057	=> {
		typeID   => 16057,
		groupID  => 55,
		typeName => "Republic Fleet 800mm Repeating Cannon"
	},

	16058	=> {
		typeID   => 16058,
		groupID  => 55,
		typeName => "Republic Fleet Dual 180mm Autocannon"
	},

	16059	=> {
		typeID   => 16059,
		groupID  => 55,
		typeName => "Republic Fleet Dual 425mm Autocannon"
	},

	16060	=> {
		typeID   => 16060,
		groupID  => 55,
		typeName => "Republic Fleet Dual 650mm Repeating Cannon"
	},

	16061	=> {
		typeID   => 16061,
		groupID  => 511,
		typeName => "Caldari Navy Rapid Light Missile Launcher"
	},

	16062	=> {
		typeID   => 16062,
		groupID  => 506,
		typeName => "Caldari Navy Cruise Missile Launcher"
	},

	16063	=> {
		typeID   => 16063,
		groupID  => 136,
		typeName => "Caldari Navy Cruise Missile Launcher Blueprint"
	},

	16064	=> {
		typeID   => 16064,
		groupID  => 510,
		typeName => "Caldari Navy Heavy Missile Launcher"
	},

	16065	=> {
		typeID   => 16065,
		groupID  => 507,
		typeName => "Caldari Navy Rocket Launcher"
	},

	16066	=> {
		typeID   => 16066,
		groupID  => 136,
		typeName => "Caldari Navy Rocket Launcher Blueprint"
	},

	16067	=> {
		typeID   => 16067,
		groupID  => 508,
		typeName => "Caldari Navy Torpedo Launcher"
	},

	16068	=> {
		typeID   => 16068,
		groupID  => 509,
		typeName => "Caldari Navy Light Missile Launcher"
	},

	16069	=> {
		typeID   => 16069,
		groupID  => 1210,
		typeName => "Remote Armor Repair Systems"
	},

	16087	=> {
		typeID   => 16087,
		groupID  => 818,
		typeName => "EoM Imp"
	},

	16088	=> {
		typeID   => 16088,
		groupID  => 818,
		typeName => "EoM Fiend"
	},

	16089	=> {
		typeID   => 16089,
		groupID  => 818,
		typeName => "EoM Incubus"
	},

	16090	=> {
		typeID   => 16090,
		groupID  => 818,
		typeName => "EoM Succubus"
	},

	16091	=> {
		typeID   => 16091,
		groupID  => 818,
		typeName => "EoM Demon"
	},

	16092	=> {
		typeID   => 16092,
		groupID  => 818,
		typeName => "EoM Saboteur"
	},

	16093	=> {
		typeID   => 16093,
		groupID  => 817,
		typeName => "EoM Priest"
	},

	16094	=> {
		typeID   => 16094,
		groupID  => 817,
		typeName => "EoM Prophet"
	},

	16095	=> {
		typeID   => 16095,
		groupID  => 817,
		typeName => "EoM Black Priest"
	},

	16096	=> {
		typeID   => 16096,
		groupID  => 817,
		typeName => "EoM Crusader"
	},

	16097	=> {
		typeID   => 16097,
		groupID  => 817,
		typeName => "EoM Death Knight"
	},

	16098	=> {
		typeID   => 16098,
		groupID  => 816,
		typeName => "EoM Hydra"
	},

	16099	=> {
		typeID   => 16099,
		groupID  => 816,
		typeName => "EoM Death Lord"
	},

	16100	=> {
		typeID   => 16100,
		groupID  => 816,
		typeName => "EoM Ogre"
	},

	16101	=> {
		typeID   => 16101,
		groupID  => 816,
		typeName => "EoM Behemoth"
	},

	16102	=> {
		typeID   => 16102,
		groupID  => 337,
		typeName => "Ore Supply Freight"
	},

	16103	=> {
		typeID   => 16103,
		groupID  => 411,
		typeName => "Force Field"
	},

	16104	=> {
		typeID   => 16104,
		groupID  => 337,
		typeName => "CONCORD Surveillance Drone"
	},

	16105	=> {
		typeID   => 16105,
		groupID  => 693,
		typeName => "DED Soldier 3rd Class"
	},

	16106	=> {
		typeID   => 16106,
		groupID  => 693,
		typeName => "DED Soldier 2nd Class"
	},

	16107	=> {
		typeID   => 16107,
		groupID  => 693,
		typeName => "DED Soldier 1st Class"
	},

	16108	=> {
		typeID   => 16108,
		groupID  => 693,
		typeName => "DED Special Ops Piranha"
	},

	16109	=> {
		typeID   => 16109,
		groupID  => 693,
		typeName => "DED Special Ops Panther"
	},

	16110	=> {
		typeID   => 16110,
		groupID  => 695,
		typeName => "DED Officer 3rd Class"
	},

	16111	=> {
		typeID   => 16111,
		groupID  => 695,
		typeName => "DED Officer 2nd Class"
	},

	16112	=> {
		typeID   => 16112,
		groupID  => 695,
		typeName => "DED Officer 1st Class"
	},

	16114	=> {
		typeID   => 16114,
		groupID  => 695,
		typeName => "DED Captain"
	},

	16115	=> {
		typeID   => 16115,
		groupID  => 695,
		typeName => "DED Special Ops Raptor"
	},

	16116	=> {
		typeID   => 16116,
		groupID  => 697,
		typeName => "DED Army Colonel"
	},

	16117	=> {
		typeID   => 16117,
		groupID  => 697,
		typeName => "DED Army General"
	},

	16118	=> {
		typeID   => 16118,
		groupID  => 409,
		typeName => "CONCORD Officer Emblem"
	},

	16119	=> {
		typeID   => 16119,
		groupID  => 409,
		typeName => "CONCORD Soldier Emblem"
	},

	16120	=> {
		typeID   => 16120,
		groupID  => 409,
		typeName => "CONCORD Piranha Emblem"
	},

	16121	=> {
		typeID   => 16121,
		groupID  => 409,
		typeName => "CONCORD Panther Emblem"
	},

	16122	=> {
		typeID   => 16122,
		groupID  => 409,
		typeName => "CONCORD Captain Emblem"
	},

	16123	=> {
		typeID   => 16123,
		groupID  => 409,
		typeName => "CONCORD Raptor Emblem"
	},

	16124	=> {
		typeID   => 16124,
		groupID  => 409,
		typeName => "CONCORD Colonel Emblem"
	},

	16125	=> {
		typeID   => 16125,
		groupID  => 409,
		typeName => "CONCORD General Emblem"
	},

	16126	=> {
		typeID   => 16126,
		groupID  => 330,
		typeName => "CONCORD Modified Cloaking Device"
	},

	16128	=> {
		typeID   => 16128,
		groupID  => 53,
		typeName => "CONCORD Medium Pulse Laser"
	},

	16129	=> {
		typeID   => 16129,
		groupID  => 53,
		typeName => "CONCORD Dual Heavy Pulse Laser"
	},

	16131	=> {
		typeID   => 16131,
		groupID  => 53,
		typeName => "CONCORD Heavy Pulse Laser"
	},

	16132	=> {
		typeID   => 16132,
		groupID  => 74,
		typeName => "CONCORD 150mm Railgun"
	},

	16133	=> {
		typeID   => 16133,
		groupID  => 74,
		typeName => "CONCORD 250mm Railgun"
	},

	16134	=> {
		typeID   => 16134,
		groupID  => 74,
		typeName => "CONCORD 350mm Railgun"
	},

	16136	=> {
		typeID   => 16136,
		groupID  => 509,
		typeName => "CONCORD Light Missile Launcher"
	},

	16137	=> {
		typeID   => 16137,
		groupID  => 510,
		typeName => "CONCORD Heavy Missile Launcher"
	},

	16138	=> {
		typeID   => 16138,
		groupID  => 506,
		typeName => "CONCORD Cruise Missile Launcher"
	},

	16140	=> {
		typeID   => 16140,
		groupID  => 52,
		typeName => "CONCORD Modified Warp Scrambler"
	},

	16142	=> {
		typeID   => 16142,
		groupID  => 38,
		typeName => "CONCORD Micro Shield Extender"
	},

	16144	=> {
		typeID   => 16144,
		groupID  => 38,
		typeName => "CONCORD Medium Shield Extender"
	},

	16146	=> {
		typeID   => 16146,
		groupID  => 38,
		typeName => "CONCORD Large Shield Extender"
	},

	16148	=> {
		typeID   => 16148,
		groupID  => 55,
		typeName => "CONCORD 1200mm Artillery"
	},

	16149	=> {
		typeID   => 16149,
		groupID  => 55,
		typeName => "CONCORD 650mm Artillery"
	},

	16150	=> {
		typeID   => 16150,
		groupID  => 55,
		typeName => "CONCORD 200mm Autocannon"
	},

	16151	=> {
		typeID   => 16151,
		groupID  => 328,
		typeName => "CONCORD Armor EM Hardener"
	},

	16153	=> {
		typeID   => 16153,
		groupID  => 328,
		typeName => "CONCORD Armor Explosive Hardener"
	},

	16155	=> {
		typeID   => 16155,
		groupID  => 328,
		typeName => "CONCORD Armor Kinetic Hardener"
	},

	16157	=> {
		typeID   => 16157,
		groupID  => 328,
		typeName => "CONCORD Armor Thermal Hardener"
	},

	16159	=> {
		typeID   => 16159,
		groupID  => 32,
		typeName => "Alliance"
	},

	16160	=> {
		typeID   => 16160,
		groupID  => 927,
		typeName => "Gallente Personnel Transport"
	},

	16161	=> {
		typeID   => 16161,
		groupID  => 668,
		typeName => "Amarr Personnel Transport"
	},

	16162	=> {
		typeID   => 16162,
		groupID  => 673,
		typeName => "Caldari Personnel Transport"
	},

	16163	=> {
		typeID   => 16163,
		groupID  => 705,
		typeName => "Minmatar Personnel Transport"
	},

	16164	=> {
		typeID   => 16164,
		groupID  => 668,
		typeName => "Ammatar Personnel Transport"
	},

	16165	=> {
		typeID   => 16165,
		groupID  => 595,
		typeName => "Angel Cartel Personnel Transport"
	},

	16166	=> {
		typeID   => 16166,
		groupID  => 604,
		typeName => "Blood Raider Personnel Transport"
	},

	16167	=> {
		typeID   => 16167,
		groupID  => 622,
		typeName => "Sanshas Personnel Transport"
	},

	16168	=> {
		typeID   => 16168,
		groupID  => 631,
		typeName => "Serpentis Personnel Transport"
	},

	16169	=> {
		typeID   => 16169,
		groupID  => 613,
		typeName => "Guristas Personnel Transport"
	},

	16170	=> {
		typeID   => 16170,
		groupID  => 691,
		typeName => "Khanid Personnel Transport"
	},

	16171	=> {
		typeID   => 16171,
		groupID  => 687,
		typeName => "Khanid Rookie"
	},

	16172	=> {
		typeID   => 16172,
		groupID  => 687,
		typeName => "Khanid Sparrow"
	},

	16173	=> {
		typeID   => 16173,
		groupID  => 689,
		typeName => "Khanid Hawk"
	},

	16174	=> {
		typeID   => 16174,
		groupID  => 689,
		typeName => "Khanid Eagle"
	},

	16175	=> {
		typeID   => 16175,
		groupID  => 689,
		typeName => "Khanid Warbird"
	},

	16176	=> {
		typeID   => 16176,
		groupID  => 691,
		typeName => "Khanid High Commander"
	},

	16177	=> {
		typeID   => 16177,
		groupID  => 691,
		typeName => "Khanid Kazmaar"
	},

	16178	=> {
		typeID   => 16178,
		groupID  => 687,
		typeName => "Khanid Scout"
	},

	16179	=> {
		typeID   => 16179,
		groupID  => 409,
		typeName => "Khanid Rookie Insignia"
	},

	16180	=> {
		typeID   => 16180,
		groupID  => 409,
		typeName => "Khanid Fighter Insignia"
	},

	16181	=> {
		typeID   => 16181,
		groupID  => 409,
		typeName => "Khanid Elite Fighter Insignia"
	},

	16182	=> {
		typeID   => 16182,
		groupID  => 409,
		typeName => "Khanid Scout Insignia"
	},

	16183	=> {
		typeID   => 16183,
		groupID  => 409,
		typeName => "Khanid Sparrow Insignia"
	},

	16184	=> {
		typeID   => 16184,
		groupID  => 409,
		typeName => "Khanid Officer Insignia"
	},

	16185	=> {
		typeID   => 16185,
		groupID  => 409,
		typeName => "Khanid Hawk Insignia"
	},

	16186	=> {
		typeID   => 16186,
		groupID  => 409,
		typeName => "Khanid Eagle Insignia"
	},

	16187	=> {
		typeID   => 16187,
		groupID  => 409,
		typeName => "Khanid Warbird Insignia"
	},

	16188	=> {
		typeID   => 16188,
		groupID  => 409,
		typeName => "Khanid High Commander Insignia"
	},

	16189	=> {
		typeID   => 16189,
		groupID  => 409,
		typeName => "Khanid Royal Insignia"
	},

	16190	=> {
		typeID   => 16190,
		groupID  => 818,
		typeName => "Rogue Agent"
	},

	16191	=> {
		typeID   => 16191,
		groupID  => 818,
		typeName => "Kaphyr"
	},

	16192	=> {
		typeID   => 16192,
		groupID  => 818,
		typeName => "Claudius"
	},

	16193	=> {
		typeID   => 16193,
		groupID  => 818,
		typeName => "Lemonn"
	},

	16194	=> {
		typeID   => 16194,
		groupID  => 283,
		typeName => "Mercenary Pilot"
	},

	16195	=> {
		typeID   => 16195,
		groupID  => 818,
		typeName => "Jade Lebache"
	},

	16196	=> {
		typeID   => 16196,
		groupID  => 818,
		typeName => "Yuki Tamaru"
	},

	16197	=> {
		typeID   => 16197,
		groupID  => 818,
		typeName => "Sami Kurzon"
	},

	16198	=> {
		typeID   => 16198,
		groupID  => 817,
		typeName => "Kaltoh Kurzon"
	},

	16199	=> {
		typeID   => 16199,
		groupID  => 817,
		typeName => "Gaabu Moniq"
	},

	16200	=> {
		typeID   => 16200,
		groupID  => 816,
		typeName => "Jerek Shapuir"
	},

	16201	=> {
		typeID   => 16201,
		groupID  => 816,
		typeName => "Ioan Lafonte"
	},

	16202	=> {
		typeID   => 16202,
		groupID  => 816,
		typeName => "Tauron"
	},

	16203	=> {
		typeID   => 16203,
		groupID  => 816,
		typeName => "Kyokan"
	},

	16206	=> {
		typeID   => 16206,
		groupID  => 100,
		typeName => "Hellhound I"
	},

	16208	=> {
		typeID   => 16208,
		groupID  => 818,
		typeName => "Ex-Secret Agent"
	},

	16209	=> {
		typeID   => 16209,
		groupID  => 817,
		typeName => "Ex-Elite Secret Agent"
	},

	16210	=> {
		typeID   => 16210,
		groupID  => 805,
		typeName => "Spider Drone I"
	},

	16211	=> {
		typeID   => 16211,
		groupID  => 805,
		typeName => "Spider Drone II"
	},

	16212	=> {
		typeID   => 16212,
		groupID  => 687,
		typeName => "Khanid Wingman"
	},

	16213	=> {
		typeID   => 16213,
		groupID  => 365,
		typeName => "Caldari Control Tower"
	},

	16214	=> {
		typeID   => 16214,
		groupID  => 365,
		typeName => "Minmatar Control Tower"
	},

	16215	=> {
		typeID   => 16215,
		groupID  => 319,
		typeName => "Small Armory"
	},

	16216	=> {
		typeID   => 16216,
		groupID  => 413,
		typeName => "Research Laboratory"
	},

	16217	=> {
		typeID   => 16217,
		groupID  => 414,
		typeName => "Small Auxiliary Power Array"
	},

	16219	=> {
		typeID   => 16219,
		groupID  => 364,
		typeName => "Small Storage Array"
	},

	16220	=> {
		typeID   => 16220,
		groupID  => 397,
		typeName => "Rapid Equipment Assembly Array"
	},

	16221	=> {
		typeID   => 16221,
		groupID  => 416,
		typeName => "Moon Harvesting Array"
	},

	16222	=> {
		typeID   => 16222,
		groupID  => 417,
		typeName => "Light Missile Battery"
	},

	16223	=> {
		typeID   => 16223,
		groupID  => 418,
		typeName => "Shield Generation Array"
	},

	16226	=> {
		typeID   => 16226,
		groupID  => 816,
		typeName => "Kurzon Destroyer"
	},

	16227	=> {
		typeID   => 16227,
		groupID  => 419,
		typeName => "Ferox"
	},

	16228	=> {
		typeID   => 16228,
		groupID  => 489,
		typeName => "Ferox Blueprint"
	},

	16229	=> {
		typeID   => 16229,
		groupID  => 419,
		typeName => "Brutix"
	},

	16230	=> {
		typeID   => 16230,
		groupID  => 489,
		typeName => "Brutix Blueprint"
	},

	16231	=> {
		typeID   => 16231,
		groupID  => 419,
		typeName => "Cyclone"
	},

	16232	=> {
		typeID   => 16232,
		groupID  => 489,
		typeName => "Cyclone Blueprint"
	},

	16233	=> {
		typeID   => 16233,
		groupID  => 419,
		typeName => "Prophecy"
	},

	16234	=> {
		typeID   => 16234,
		groupID  => 489,
		typeName => "Prophecy Blueprint"
	},

	16236	=> {
		typeID   => 16236,
		groupID  => 420,
		typeName => "Coercer"
	},

	16237	=> {
		typeID   => 16237,
		groupID  => 487,
		typeName => "Coercer Blueprint"
	},

	16238	=> {
		typeID   => 16238,
		groupID  => 420,
		typeName => "Cormorant"
	},

	16239	=> {
		typeID   => 16239,
		groupID  => 487,
		typeName => "Cormorant Blueprint"
	},

	16240	=> {
		typeID   => 16240,
		groupID  => 420,
		typeName => "Catalyst"
	},

	16241	=> {
		typeID   => 16241,
		groupID  => 487,
		typeName => "Catalyst Blueprint"
	},

	16242	=> {
		typeID   => 16242,
		groupID  => 420,
		typeName => "Thrasher"
	},

	16243	=> {
		typeID   => 16243,
		groupID  => 487,
		typeName => "Thrasher Blueprint"
	},

	16244	=> {
		typeID   => 16244,
		groupID  => 665,
		typeName => "Sarum Spider"
	},

	16245	=> {
		typeID   => 16245,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Upgrades SU-605"
	},

	16246	=> {
		typeID   => 16246,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Management SM-705"
	},

	16247	=> {
		typeID   => 16247,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Emission Systems SE-805"
	},

	16248	=> {
		typeID   => 16248,
		groupID  => 749,
		typeName => "Zainou 'Gnome' Shield Operation SP-905"
	},

	16249	=> {
		typeID   => 16249,
		groupID  => 742,
		typeName => "Zainou 'Gnome' Weapon Upgrades WU-1005"
	},

	16250	=> {
		typeID   => 16250,
		groupID  => 817,
		typeName => "Maylan Falek"
	},

	16251	=> {
		typeID   => 16251,
		groupID  => 817,
		typeName => "Freedom Patriot"
	},

	16252	=> {
		typeID   => 16252,
		groupID  => 816,
		typeName => "Freedom Liberty"
	},

	16253	=> {
		typeID   => 16253,
		groupID  => 283,
		typeName => "Minmatar Emissary"
	},

	16254	=> {
		typeID   => 16254,
		groupID  => 817,
		typeName => "Kuzak Obliterator"
	},

	16256	=> {
		typeID   => 16256,
		groupID  => 817,
		typeName => "Nugoeihuvi Agent"
	},

	16258	=> {
		typeID   => 16258,
		groupID  => 422,
		typeName => "Argon Gas"
	},

	16259	=> {
		typeID   => 16259,
		groupID  => 422,
		typeName => "Xenon"
	},

	16260	=> {
		typeID   => 16260,
		groupID  => 422,
		typeName => "Gaseous Neon Isotopes"
	},

	16261	=> {
		typeID   => 16261,
		groupID  => 422,
		typeName => "Gaseous Krypton Isotopes"
	},

	16262	=> {
		typeID   => 16262,
		groupID  => 465,
		typeName => "Clear Icicle"
	},

	16263	=> {
		typeID   => 16263,
		groupID  => 465,
		typeName => "Glacial Mass"
	},

	16264	=> {
		typeID   => 16264,
		groupID  => 465,
		typeName => "Blue Ice"
	},

	16265	=> {
		typeID   => 16265,
		groupID  => 465,
		typeName => "White Glaze"
	},

	16266	=> {
		typeID   => 16266,
		groupID  => 465,
		typeName => "Glare Crust"
	},

	16267	=> {
		typeID   => 16267,
		groupID  => 465,
		typeName => "Dark Glitter"
	},

	16268	=> {
		typeID   => 16268,
		groupID  => 465,
		typeName => "Gelidus"
	},

	16269	=> {
		typeID   => 16269,
		groupID  => 465,
		typeName => "Krystallos"
	},

	16272	=> {
		typeID   => 16272,
		groupID  => 423,
		typeName => "Heavy Water"
	},

	16273	=> {
		typeID   => 16273,
		groupID  => 423,
		typeName => "Liquid Ozone"
	},

	16274	=> {
		typeID   => 16274,
		groupID  => 423,
		typeName => "Helium Isotopes"
	},

	16275	=> {
		typeID   => 16275,
		groupID  => 423,
		typeName => "Strontium Clathrates"
	},

	16278	=> {
		typeID   => 16278,
		groupID  => 464,
		typeName => "Ice Harvester I"
	},

	16279	=> {
		typeID   => 16279,
		groupID  => 490,
		typeName => "Ice Harvester I Blueprint"
	},

	16281	=> {
		typeID   => 16281,
		groupID  => 1218,
		typeName => "Ice Harvesting"
	},

	16282	=> {
		typeID   => 16282,
		groupID  => 425,
		typeName => "Low Cost Mercenary Assault Unit"
	},

	16286	=> {
		typeID   => 16286,
		groupID  => 365,
		typeName => "QA Control Tower"
	},

	16287	=> {
		typeID   => 16287,
		groupID  => 818,
		typeName => "Tazmyr's Capsule"
	},

	16288	=> {
		typeID   => 16288,
		groupID  => 818,
		typeName => "Tazmyr"
	},

	16297	=> {
		typeID   => 16297,
		groupID  => 315,
		typeName => "'Accord' Core Compensation"
	},

	16299	=> {
		typeID   => 16299,
		groupID  => 315,
		typeName => "'Repose' Core Compensation"
	},

	16301	=> {
		typeID   => 16301,
		groupID  => 315,
		typeName => "'Stoic' Core Equalizer I"
	},

	16303	=> {
		typeID   => 16303,
		groupID  => 315,
		typeName => "'Halcyon' Core Equalizer I"
	},

	16305	=> {
		typeID   => 16305,
		groupID  => 98,
		typeName => "Upgraded Adaptive Nano Plating I"
	},

	16307	=> {
		typeID   => 16307,
		groupID  => 98,
		typeName => "Limited Adaptive Nano Plating I"
	},

	16309	=> {
		typeID   => 16309,
		groupID  => 98,
		typeName => "'Collateral' Adaptive Nano Plating I"
	},

	16311	=> {
		typeID   => 16311,
		groupID  => 98,
		typeName => "'Refuge' Adaptive Nano Plating I"
	},

	16313	=> {
		typeID   => 16313,
		groupID  => 98,
		typeName => "Upgraded Kinetic Plating I"
	},

	16315	=> {
		typeID   => 16315,
		groupID  => 98,
		typeName => "Limited Kinetic Plating I"
	},

	16317	=> {
		typeID   => 16317,
		groupID  => 98,
		typeName => "Experimental Kinetic Plating I"
	},

	16319	=> {
		typeID   => 16319,
		groupID  => 98,
		typeName => "'Aegis' Explosive Plating I"
	},

	16321	=> {
		typeID   => 16321,
		groupID  => 98,
		typeName => "Upgraded Explosive Plating I"
	},

	16323	=> {
		typeID   => 16323,
		groupID  => 98,
		typeName => "Limited Explosive Plating I"
	},

	16325	=> {
		typeID   => 16325,
		groupID  => 98,
		typeName => "Experimental Explosive Plating I"
	},

	16327	=> {
		typeID   => 16327,
		groupID  => 98,
		typeName => "'Element' Kinetic Plating I"
	},

	16329	=> {
		typeID   => 16329,
		groupID  => 98,
		typeName => "Upgraded EM Plating I"
	},

	16331	=> {
		typeID   => 16331,
		groupID  => 98,
		typeName => "Limited EM Plating I"
	},

	16333	=> {
		typeID   => 16333,
		groupID  => 98,
		typeName => "'Contour' EM Plating I"
	},

	16335	=> {
		typeID   => 16335,
		groupID  => 98,
		typeName => "'Spiegel' EM Plating I"
	},

	16337	=> {
		typeID   => 16337,
		groupID  => 98,
		typeName => "Upgraded Thermal Plating I"
	},

	16339	=> {
		typeID   => 16339,
		groupID  => 98,
		typeName => "Limited Thermal Plating I"
	},

	16341	=> {
		typeID   => 16341,
		groupID  => 98,
		typeName => "Experimental Thermal Plating I"
	},

	16343	=> {
		typeID   => 16343,
		groupID  => 98,
		typeName => "Prototype Thermal Plating I"
	},

	16345	=> {
		typeID   => 16345,
		groupID  => 98,
		typeName => "Upgraded Layered Plating I"
	},

	16347	=> {
		typeID   => 16347,
		groupID  => 98,
		typeName => "Limited Layered Plating I"
	},

	16349	=> {
		typeID   => 16349,
		groupID  => 98,
		typeName => "'Scarab' Layered Plating I"
	},

	16351	=> {
		typeID   => 16351,
		groupID  => 98,
		typeName => "'Grail' Layered Plating I"
	},

	16353	=> {
		typeID   => 16353,
		groupID  => 328,
		typeName => "Upgraded Armor EM Hardener I"
	},

	16355	=> {
		typeID   => 16355,
		groupID  => 328,
		typeName => "Limited Armor EM Hardener I"
	},

	16357	=> {
		typeID   => 16357,
		groupID  => 328,
		typeName => "Experimental Armor EM Hardener I"
	},

	16359	=> {
		typeID   => 16359,
		groupID  => 328,
		typeName => "Prototype Armor EM Hardener I"
	},

	16361	=> {
		typeID   => 16361,
		groupID  => 328,
		typeName => "Upgraded Armor Explosive Hardener I"
	},

	16363	=> {
		typeID   => 16363,
		groupID  => 328,
		typeName => "Limited Armor Explosive Hardener I"
	},

	16365	=> {
		typeID   => 16365,
		groupID  => 328,
		typeName => "Experimental Armor Explosive Hardener I"
	},

	16367	=> {
		typeID   => 16367,
		groupID  => 328,
		typeName => "Prototype Armor Explosive Hardener I"
	},

	16369	=> {
		typeID   => 16369,
		groupID  => 328,
		typeName => "Upgraded Armor Kinetic Hardener I"
	},

	16371	=> {
		typeID   => 16371,
		groupID  => 328,
		typeName => "Limited Armor Kinetic Hardener I"
	},

	16373	=> {
		typeID   => 16373,
		groupID  => 328,
		typeName => "Experimental Armor Kinetic Hardener I"
	},

	16375	=> {
		typeID   => 16375,
		groupID  => 328,
		typeName => "Prototype Armor Kinetic Hardener I"
	},

	16377	=> {
		typeID   => 16377,
		groupID  => 328,
		typeName => "Upgraded Armor Thermal Hardener I"
	},

	16379	=> {
		typeID   => 16379,
		groupID  => 328,
		typeName => "Limited Armor Thermal Hardener I"
	},

	16381	=> {
		typeID   => 16381,
		groupID  => 328,
		typeName => "Experimental Armor Thermal Hardener I"
	},

	16383	=> {
		typeID   => 16383,
		groupID  => 328,
		typeName => "Prototype Armor Thermal Hardener I"
	},

	16385	=> {
		typeID   => 16385,
		groupID  => 326,
		typeName => "Upgraded Energized Adaptive Nano Membrane I"
	},

	16387	=> {
		typeID   => 16387,
		groupID  => 326,
		typeName => "Limited Energized Adaptive Nano Membrane I"
	},

	16389	=> {
		typeID   => 16389,
		groupID  => 326,
		typeName => "Experimental Energized Adaptive Nano Membrane I"
	},

	16391	=> {
		typeID   => 16391,
		groupID  => 326,
		typeName => "Prototype Energized Adaptive Nano Membrane I"
	},

	16393	=> {
		typeID   => 16393,
		groupID  => 326,
		typeName => "Upgraded Energized Kinetic Membrane I"
	},

	16395	=> {
		typeID   => 16395,
		groupID  => 326,
		typeName => "Limited Energized Kinetic Membrane I"
	},

	16397	=> {
		typeID   => 16397,
		groupID  => 326,
		typeName => "Experimental Energized Kinetic Membrane I"
	},

	16399	=> {
		typeID   => 16399,
		groupID  => 326,
		typeName => "Prototype Energized Kinetic Membrane I"
	},

	16401	=> {
		typeID   => 16401,
		groupID  => 326,
		typeName => "Upgraded Energized Explosive Membrane I"
	},

	16403	=> {
		typeID   => 16403,
		groupID  => 326,
		typeName => "Limited Energized Explosive Membrane I"
	},

	16405	=> {
		typeID   => 16405,
		groupID  => 326,
		typeName => "Experimental Energized Explosive Membrane I"
	},

	16407	=> {
		typeID   => 16407,
		groupID  => 326,
		typeName => "Prototype Energized Explosive Membrane I"
	},

	16409	=> {
		typeID   => 16409,
		groupID  => 326,
		typeName => "Upgraded Energized EM Membrane I"
	},

	16411	=> {
		typeID   => 16411,
		groupID  => 326,
		typeName => "Limited Energized EM Membrane I"
	},

	16413	=> {
		typeID   => 16413,
		groupID  => 326,
		typeName => "Experimental Energized EM Membrane I"
	},

	16415	=> {
		typeID   => 16415,
		groupID  => 326,
		typeName => "Prototype Energized EM Membrane I"
	},

	16417	=> {
		typeID   => 16417,
		groupID  => 326,
		typeName => "Upgraded Energized Armor Layering Membrane I"
	},

	16419	=> {
		typeID   => 16419,
		groupID  => 326,
		typeName => "Limited Energized Armor Layering Membrane I"
	},

	16421	=> {
		typeID   => 16421,
		groupID  => 326,
		typeName => "Experimental Energized Armor Layering Membrane I"
	},

	16423	=> {
		typeID   => 16423,
		groupID  => 326,
		typeName => "Prototype Energized Armor Layering Membrane I"
	},

	16425	=> {
		typeID   => 16425,
		groupID  => 326,
		typeName => "Upgraded Energized Thermal Membrane I"
	},

	16427	=> {
		typeID   => 16427,
		groupID  => 326,
		typeName => "Limited Energized Thermal Membrane I"
	},

	16429	=> {
		typeID   => 16429,
		groupID  => 326,
		typeName => "Experimental Energized Thermal Membrane I"
	},

	16431	=> {
		typeID   => 16431,
		groupID  => 326,
		typeName => "Prototype Energized Thermal Membrane I"
	},

	16433	=> {
		typeID   => 16433,
		groupID  => 325,
		typeName => "Small I-ax Enduring Remote Armor Repairer"
	},

	16435	=> {
		typeID   => 16435,
		groupID  => 325,
		typeName => "Small Coaxial Compact Remote Armor Repairer"
	},

	16437	=> {
		typeID   => 16437,
		groupID  => 325,
		typeName => "Small 'Arup' Remote Armor Repairer"
	},

	16439	=> {
		typeID   => 16439,
		groupID  => 325,
		typeName => "Small Solace Scoped Remote Armor Repairer"
	},

	16441	=> {
		typeID   => 16441,
		groupID  => 325,
		typeName => "Medium I-ax Enduring Remote Armor Repairer"
	},

	16443	=> {
		typeID   => 16443,
		groupID  => 325,
		typeName => "Medium Coaxial Compact Remote Armor Repairer"
	},

	16445	=> {
		typeID   => 16445,
		groupID  => 325,
		typeName => "Medium 'Arup' Remote Armor Repairer"
	},

	16447	=> {
		typeID   => 16447,
		groupID  => 325,
		typeName => "Medium Solace Scoped Remote Armor Repairer"
	},

	16449	=> {
		typeID   => 16449,
		groupID  => 325,
		typeName => "Large I-ax Enduring Remote Armor Repairer"
	},

	16451	=> {
		typeID   => 16451,
		groupID  => 325,
		typeName => "Large Coaxial Compact Remote Armor Repairer"
	},

	16453	=> {
		typeID   => 16453,
		groupID  => 325,
		typeName => "Large 'Arup' Remote Armor Repairer"
	},

	16455	=> {
		typeID   => 16455,
		groupID  => 325,
		typeName => "Large Solace Scoped Remote Armor Repairer"
	},

	16457	=> {
		typeID   => 16457,
		groupID  => 367,
		typeName => "Crosslink Compact Ballistic Control System"
	},

	16459	=> {
		typeID   => 16459,
		groupID  => 367,
		typeName => "Muon Coil Bolt Array I"
	},

	16461	=> {
		typeID   => 16461,
		groupID  => 367,
		typeName => "Multiphasic Bolt Array I"
	},

	16463	=> {
		typeID   => 16463,
		groupID  => 367,
		typeName => "'Pandemonium' Ballistic Enhancement"
	},

	16465	=> {
		typeID   => 16465,
		groupID  => 71,
		typeName => "Medium Rudimentary Energy Destabilizer I"
	},

	16467	=> {
		typeID   => 16467,
		groupID  => 71,
		typeName => "Medium Gremlin Compact Energy Neutralizer"
	},

	16469	=> {
		typeID   => 16469,
		groupID  => 71,
		typeName => "Medium Infectious Scoped Energy Neutralizer"
	},

	16471	=> {
		typeID   => 16471,
		groupID  => 71,
		typeName => "Medium Unstable Power Fluctuator I"
	},

	16473	=> {
		typeID   => 16473,
		groupID  => 71,
		typeName => "Heavy Rudimentary Energy Destabilizer I"
	},

	16475	=> {
		typeID   => 16475,
		groupID  => 71,
		typeName => "Heavy Gremlin Compact Energy Neutralizer"
	},

	16477	=> {
		typeID   => 16477,
		groupID  => 71,
		typeName => "Heavy Infectious Scoped Energy Neutralizer"
	},

	16479	=> {
		typeID   => 16479,
		groupID  => 71,
		typeName => "Heavy Unstable Power Fluctuator I"
	},

	16481	=> {
		typeID   => 16481,
		groupID  => 67,
		typeName => "Large Asymmetric Remote Capacitor Transmitter"
	},

	16483	=> {
		typeID   => 16483,
		groupID  => 67,
		typeName => "Large Murky Remote Capacitor Transmitter"
	},

	16485	=> {
		typeID   => 16485,
		groupID  => 67,
		typeName => "Large Partial E95c Remote Capacitor Transmitter"
	},

	16487	=> {
		typeID   => 16487,
		groupID  => 67,
		typeName => "Large 'Regard' Remote Capacitor Transmitter"
	},

	16489	=> {
		typeID   => 16489,
		groupID  => 67,
		typeName => "Medium Asymmetric Remote Capacitor Transmitter"
	},

	16491	=> {
		typeID   => 16491,
		groupID  => 67,
		typeName => "Medium Murky Remote Capacitor Transmitter"
	},

	16493	=> {
		typeID   => 16493,
		groupID  => 67,
		typeName => "Medium Partial E95b Remote Capacitor Transmitter"
	},

	16495	=> {
		typeID   => 16495,
		groupID  => 67,
		typeName => "Medium 'Regard' Remote Capacitor Transmitter"
	},

	16497	=> {
		typeID   => 16497,
		groupID  => 68,
		typeName => "Heavy Ghoul Compact Energy Nosferatu"
	},

	16499	=> {
		typeID   => 16499,
		groupID  => 68,
		typeName => "Heavy Knave Scoped Energy Nosferatu"
	},

	16501	=> {
		typeID   => 16501,
		groupID  => 68,
		typeName => "E500 Prototype Energy Vampire"
	},

	16503	=> {
		typeID   => 16503,
		groupID  => 68,
		typeName => "Heavy Diminishing Power System Drain I"
	},

	16505	=> {
		typeID   => 16505,
		groupID  => 68,
		typeName => "Medium Ghoul Compact Energy Nosferatu"
	},

	16507	=> {
		typeID   => 16507,
		groupID  => 68,
		typeName => "Medium Knave Scoped Energy Nosferatu"
	},

	16509	=> {
		typeID   => 16509,
		groupID  => 68,
		typeName => "E50 Prototype Energy Vampire"
	},

	16511	=> {
		typeID   => 16511,
		groupID  => 68,
		typeName => "Medium Diminishing Power System Drain I"
	},

	16513	=> {
		typeID   => 16513,
		groupID  => 506,
		typeName => "'Malkuth' Cruise Launcher I"
	},

	16515	=> {
		typeID   => 16515,
		groupID  => 506,
		typeName => "'Limos' Cruise Launcher I"
	},

	16517	=> {
		typeID   => 16517,
		groupID  => 506,
		typeName => "XT-9000 Cruise Launcher"
	},

	16519	=> {
		typeID   => 16519,
		groupID  => 506,
		typeName => "'Arbalest' Cruise Launcher I"
	},

	16521	=> {
		typeID   => 16521,
		groupID  => 507,
		typeName => "'Malkuth' Rocket Launcher I"
	},

	16523	=> {
		typeID   => 16523,
		groupID  => 507,
		typeName => "'Limos' Rocket Launcher I"
	},

	16525	=> {
		typeID   => 16525,
		groupID  => 507,
		typeName => "OE-5200 Rocket Launcher"
	},

	16527	=> {
		typeID   => 16527,
		groupID  => 507,
		typeName => "'Arbalest' Rocket Launcher I"
	},

	16529	=> {
		typeID   => 16529,
		groupID  => 338,
		typeName => "Ionic Field Accelerator I"
	},

	16531	=> {
		typeID   => 16531,
		groupID  => 338,
		typeName => "5a Prototype Shield Support I"
	},

	16533	=> {
		typeID   => 16533,
		groupID  => 338,
		typeName => "'Stalwart' Particle Field Magnifier"
	},

	16535	=> {
		typeID   => 16535,
		groupID  => 338,
		typeName => "'Copasetic' Particle Field Acceleration"
	},

	16537	=> {
		typeID   => 16537,
		groupID  => 339,
		typeName => "Vigor Compact Micro Auxiliary Power Core"
	},

	16539	=> {
		typeID   => 16539,
		groupID  => 339,
		typeName => "Micro B88 Core Augmentation"
	},

	16541	=> {
		typeID   => 16541,
		groupID  => 339,
		typeName => "Micro K-Exhaust Core Augmentation"
	},

	16543	=> {
		typeID   => 16543,
		groupID  => 339,
		typeName => "Micro 'Vigor' Core Augmentation"
	},

	16545	=> {
		typeID   => 16545,
		groupID  => 817,
		typeName => "Pleasure Cruiser"
	},

	16546	=> {
		typeID   => 16546,
		groupID  => 267,
		typeName => "Bureaucratic Connections"
	},

	16547	=> {
		typeID   => 16547,
		groupID  => 267,
		typeName => "Financial Connections"
	},

	16548	=> {
		typeID   => 16548,
		groupID  => 267,
		typeName => "Political Connections"
	},

	16549	=> {
		typeID   => 16549,
		groupID  => 267,
		typeName => "Military Connections"
	},

	16550	=> {
		typeID   => 16550,
		groupID  => 267,
		typeName => "Labor Connections"
	},

	16551	=> {
		typeID   => 16551,
		groupID  => 267,
		typeName => "Trade Connections"
	},

	16552	=> {
		typeID   => 16552,
		groupID  => 267,
		typeName => "High Tech Connections"
	},

	16553	=> {
		typeID   => 16553,
		groupID  => 818,
		typeName => "Wallekon Nezmar"
	},

	16554	=> {
		typeID   => 16554,
		groupID  => 818,
		typeName => "Velzion Drekin"
	},

	16555	=> {
		typeID   => 16555,
		groupID  => 817,
		typeName => "Terrens Glokuir"
	},

	16556	=> {
		typeID   => 16556,
		groupID  => 817,
		typeName => "Karbim Dula"
	},

	16557	=> {
		typeID   => 16557,
		groupID  => 818,
		typeName => "Guerin Marduke"
	},

	16558	=> {
		typeID   => 16558,
		groupID  => 818,
		typeName => "Jhelom Marek"
	},

	16559	=> {
		typeID   => 16559,
		groupID  => 817,
		typeName => "Malad Dorsin"
	},

	16560	=> {
		typeID   => 16560,
		groupID  => 817,
		typeName => "Umeni Kurr"
	},

	16561	=> {
		typeID   => 16561,
		groupID  => 550,
		typeName => "Angel Viper"
	},

	16562	=> {
		typeID   => 16562,
		groupID  => 550,
		typeName => "Angel Webifier"
	},

	16563	=> {
		typeID   => 16563,
		groupID  => 606,
		typeName => "Blood Wraith"
	},

	16564	=> {
		typeID   => 16564,
		groupID  => 606,
		typeName => "Blood Disciple"
	},

	16565	=> {
		typeID   => 16565,
		groupID  => 615,
		typeName => "Guristas Kyoukan"
	},

	16566	=> {
		typeID   => 16566,
		groupID  => 615,
		typeName => "Guristas Webifier"
	},

	16567	=> {
		typeID   => 16567,
		groupID  => 624,
		typeName => "Sansha's Demon"
	},

	16568	=> {
		typeID   => 16568,
		groupID  => 624,
		typeName => "Sansha's Berserker"
	},

	16569	=> {
		typeID   => 16569,
		groupID  => 633,
		typeName => "Guardian Veteran"
	},

	16570	=> {
		typeID   => 16570,
		groupID  => 818,
		typeName => "Jenai Taen"
	},

	16571	=> {
		typeID   => 16571,
		groupID  => 818,
		typeName => "Ralek Schult"
	},

	16572	=> {
		typeID   => 16572,
		groupID  => 817,
		typeName => "Thoriam Delvar"
	},

	16573	=> {
		typeID   => 16573,
		groupID  => 817,
		typeName => "Zenin Mirae"
	},

	16574	=> {
		typeID   => 16574,
		groupID  => 817,
		typeName => "Borain Doleni"
	},

	16575	=> {
		typeID   => 16575,
		groupID  => 817,
		typeName => "Tsejani Kulvin"
	},

	16576	=> {
		typeID   => 16576,
		groupID  => 818,
		typeName => "Oggenon Shafi"
	},

	16577	=> {
		typeID   => 16577,
		groupID  => 818,
		typeName => "Thomas Pulver"
	},

	16578	=> {
		typeID   => 16578,
		groupID  => 818,
		typeName => "Zidan Kloveni"
	},

	16579	=> {
		typeID   => 16579,
		groupID  => 818,
		typeName => "Tudor Brem"
	},

	16580	=> {
		typeID   => 16580,
		groupID  => 817,
		typeName => "Maccen Aman"
	},

	16581	=> {
		typeID   => 16581,
		groupID  => 817,
		typeName => "Keizo Veron"
	},

	16582	=> {
		typeID   => 16582,
		groupID  => 818,
		typeName => "Kyani Torrin"
	},

	16583	=> {
		typeID   => 16583,
		groupID  => 818,
		typeName => "Aiko Temura"
	},

	16584	=> {
		typeID   => 16584,
		groupID  => 817,
		typeName => "Juddi Temu"
	},

	16585	=> {
		typeID   => 16585,
		groupID  => 817,
		typeName => "Kimo Sekuta"
	},

	16586	=> {
		typeID   => 16586,
		groupID  => 818,
		typeName => "Ivan Minelli"
	},

	16587	=> {
		typeID   => 16587,
		groupID  => 818,
		typeName => "Torstan Kreoman"
	},

	16588	=> {
		typeID   => 16588,
		groupID  => 817,
		typeName => "Jaques Klemont"
	},

	16590	=> {
		typeID   => 16590,
		groupID  => 817,
		typeName => "Tobi Lafonte"
	},

	16591	=> {
		typeID   => 16591,
		groupID  => 257,
		typeName => "Heavy Assault Cruisers"
	},

	16593	=> {
		typeID   => 16593,
		groupID  => 283,
		typeName => "Angel Cartel Prisoners"
	},

	16594	=> {
		typeID   => 16594,
		groupID  => 274,
		typeName => "Procurement"
	},

	16595	=> {
		typeID   => 16595,
		groupID  => 274,
		typeName => "Daytrading"
	},

	16596	=> {
		typeID   => 16596,
		groupID  => 274,
		typeName => "Wholesale"
	},

	16597	=> {
		typeID   => 16597,
		groupID  => 274,
		typeName => "Margin Trading"
	},

	16598	=> {
		typeID   => 16598,
		groupID  => 274,
		typeName => "Marketing"
	},

	16599	=> {
		typeID   => 16599,
		groupID  => 43,
		typeName => "Brokara's Modified Cap Recharger"
	},

	16601	=> {
		typeID   => 16601,
		groupID  => 43,
		typeName => "Selynne's Modified Cap Recharger"
	},

	16603	=> {
		typeID   => 16603,
		groupID  => 43,
		typeName => "Vizan's Modified Cap Recharger"
	},

	16605	=> {
		typeID   => 16605,
		groupID  => 43,
		typeName => "Chelm's Modified Cap Recharger"
	},

	16607	=> {
		typeID   => 16607,
		groupID  => 818,
		typeName => "Horak Mane"
	},

	16608	=> {
		typeID   => 16608,
		groupID  => 818,
		typeName => "Lori Tzen"
	},

	16609	=> {
		typeID   => 16609,
		groupID  => 817,
		typeName => "Jabar Kurr"
	},

	16610	=> {
		typeID   => 16610,
		groupID  => 818,
		typeName => "Xulan Anieu"
	},

	16611	=> {
		typeID   => 16611,
		groupID  => 817,
		typeName => "Tehmi Anieu"
	},

	16612	=> {
		typeID   => 16612,
		groupID  => 817,
		typeName => "Zerone Anieu"
	},

	16613	=> {
		typeID   => 16613,
		groupID  => 816,
		typeName => "Korien Anieu"
	},

	16614	=> {
		typeID   => 16614,
		groupID  => 314,
		typeName => "Message from the Governor"
	},

	16615	=> {
		typeID   => 16615,
		groupID  => 697,
		typeName => "CONCORD Starship"
	},

	16616	=> {
		typeID   => 16616,
		groupID  => 697,
		typeName => "CONCORD ship"
	},

	16617	=> {
		typeID   => 16617,
		groupID  => 409,
		typeName => "CONCORD Star Emblem"
	},

	16618	=> {
		typeID   => 16618,
		groupID  => 818,
		typeName => "Veri Monnani"
	},

	16619	=> {
		typeID   => 16619,
		groupID  => 818,
		typeName => "Guemo Kajinn"
	},

	16620	=> {
		typeID   => 16620,
		groupID  => 817,
		typeName => "Telhia Hurst"
	},

	16621	=> {
		typeID   => 16621,
		groupID  => 816,
		typeName => "Hyan Vezzon"
	},

	16622	=> {
		typeID   => 16622,
		groupID  => 274,
		typeName => "Accounting"
	},

	16623	=> {
		typeID   => 16623,
		groupID  => 283,
		typeName => "The Chief of Security"
	},

	16626	=> {
		typeID   => 16626,
		groupID  => 817,
		typeName => "Militia Guardian"
	},

	16627	=> {
		typeID   => 16627,
		groupID  => 818,
		typeName => "Militia Protector"
	},

	16628	=> {
		typeID   => 16628,
		groupID  => 818,
		typeName => "Militia Leader"
	},

	16630	=> {
		typeID   => 16630,
		groupID  => 283,
		typeName => "The Militia Leader"
	},

	16631	=> {
		typeID   => 16631,
		groupID  => 426,
		typeName => "Small Artillery Battery"
	},

	16633	=> {
		typeID   => 16633,
		groupID  => 427,
		typeName => "Hydrocarbons"
	},

	16634	=> {
		typeID   => 16634,
		groupID  => 427,
		typeName => "Atmospheric Gases"
	},

	16635	=> {
		typeID   => 16635,
		groupID  => 427,
		typeName => "Evaporite Deposits"
	},

	16636	=> {
		typeID   => 16636,
		groupID  => 427,
		typeName => "Silicates"
	},

	16637	=> {
		typeID   => 16637,
		groupID  => 427,
		typeName => "Tungsten"
	},

	16638	=> {
		typeID   => 16638,
		groupID  => 427,
		typeName => "Titanium"
	},

	16639	=> {
		typeID   => 16639,
		groupID  => 427,
		typeName => "Scandium"
	},

	16640	=> {
		typeID   => 16640,
		groupID  => 427,
		typeName => "Cobalt"
	},

	16641	=> {
		typeID   => 16641,
		groupID  => 427,
		typeName => "Chromium"
	},

	16642	=> {
		typeID   => 16642,
		groupID  => 427,
		typeName => "Vanadium"
	},

	16643	=> {
		typeID   => 16643,
		groupID  => 427,
		typeName => "Cadmium"
	},

	16644	=> {
		typeID   => 16644,
		groupID  => 427,
		typeName => "Platinum"
	},

	16646	=> {
		typeID   => 16646,
		groupID  => 427,
		typeName => "Mercury"
	},

	16647	=> {
		typeID   => 16647,
		groupID  => 427,
		typeName => "Caesium"
	},

	16648	=> {
		typeID   => 16648,
		groupID  => 427,
		typeName => "Hafnium"
	},

	16649	=> {
		typeID   => 16649,
		groupID  => 427,
		typeName => "Technetium"
	},

	16650	=> {
		typeID   => 16650,
		groupID  => 427,
		typeName => "Dysprosium"
	},

	16651	=> {
		typeID   => 16651,
		groupID  => 427,
		typeName => "Neodymium"
	},

	16652	=> {
		typeID   => 16652,
		groupID  => 427,
		typeName => "Promethium"
	},

	16653	=> {
		typeID   => 16653,
		groupID  => 427,
		typeName => "Thulium"
	},

	16654	=> {
		typeID   => 16654,
		groupID  => 428,
		typeName => "Titanium Chromide"
	},

	16655	=> {
		typeID   => 16655,
		groupID  => 428,
		typeName => "Crystallite Alloy"
	},

	16656	=> {
		typeID   => 16656,
		groupID  => 428,
		typeName => "Fernite Alloy"
	},

	16657	=> {
		typeID   => 16657,
		groupID  => 428,
		typeName => "Rolled Tungsten Alloy"
	},

	16658	=> {
		typeID   => 16658,
		groupID  => 428,
		typeName => "Silicon Diborite"
	},

	16659	=> {
		typeID   => 16659,
		groupID  => 428,
		typeName => "Carbon Polymers"
	},

	16660	=> {
		typeID   => 16660,
		groupID  => 428,
		typeName => "Ceramic Powder"
	},

	16661	=> {
		typeID   => 16661,
		groupID  => 428,
		typeName => "Sulfuric Acid"
	},

	16662	=> {
		typeID   => 16662,
		groupID  => 428,
		typeName => "Platinum Technite"
	},

	16663	=> {
		typeID   => 16663,
		groupID  => 428,
		typeName => "Caesarium Cadmide"
	},

	16664	=> {
		typeID   => 16664,
		groupID  => 428,
		typeName => "Solerium"
	},

	16665	=> {
		typeID   => 16665,
		groupID  => 428,
		typeName => "Hexite"
	},

	16666	=> {
		typeID   => 16666,
		groupID  => 428,
		typeName => "Hyperflurite"
	},

	16667	=> {
		typeID   => 16667,
		groupID  => 428,
		typeName => "Neo Mercurite"
	},

	16668	=> {
		typeID   => 16668,
		groupID  => 428,
		typeName => "Dysporite"
	},

	16669	=> {
		typeID   => 16669,
		groupID  => 428,
		typeName => "Ferrofluid"
	},

	16670	=> {
		typeID   => 16670,
		groupID  => 429,
		typeName => "Crystalline Carbonide"
	},

	16671	=> {
		typeID   => 16671,
		groupID  => 429,
		typeName => "Titanium Carbide"
	},

	16672	=> {
		typeID   => 16672,
		groupID  => 429,
		typeName => "Tungsten Carbide"
	},

	16673	=> {
		typeID   => 16673,
		groupID  => 429,
		typeName => "Fernite Carbide"
	},

	16678	=> {
		typeID   => 16678,
		groupID  => 429,
		typeName => "Sylramic Fibers"
	},

	16679	=> {
		typeID   => 16679,
		groupID  => 429,
		typeName => "Fullerides"
	},

	16680	=> {
		typeID   => 16680,
		groupID  => 429,
		typeName => "Phenolic Composites"
	},

	16681	=> {
		typeID   => 16681,
		groupID  => 429,
		typeName => "Nanotransistors"
	},

	16682	=> {
		typeID   => 16682,
		groupID  => 429,
		typeName => "Hypersynaptic Fibers"
	},

	16683	=> {
		typeID   => 16683,
		groupID  => 429,
		typeName => "Ferrogel"
	},

	16686	=> {
		typeID   => 16686,
		groupID  => 314,
		typeName => "Manufacturing Tools"
	},

	16688	=> {
		typeID   => 16688,
		groupID  => 426,
		typeName => "Medium Artillery Battery"
	},

	16689	=> {
		typeID   => 16689,
		groupID  => 426,
		typeName => "Large Artillery Battery"
	},

	16690	=> {
		typeID   => 16690,
		groupID  => 449,
		typeName => "Small Railgun Battery"
	},

	16691	=> {
		typeID   => 16691,
		groupID  => 449,
		typeName => "Medium Railgun Battery"
	},

	16692	=> {
		typeID   => 16692,
		groupID  => 449,
		typeName => "Large Railgun Battery"
	},

	16693	=> {
		typeID   => 16693,
		groupID  => 287,
		typeName => "Enhanced Training Drone"
	},

	16694	=> {
		typeID   => 16694,
		groupID  => 430,
		typeName => "Large Beam Laser Battery"
	},

	16695	=> {
		typeID   => 16695,
		groupID  => 417,
		typeName => "Heavy Missile Battery"
	},

	16696	=> {
		typeID   => 16696,
		groupID  => 417,
		typeName => "Cruise Missile Battery"
	},

	16697	=> {
		typeID   => 16697,
		groupID  => 417,
		typeName => "Torpedo Battery"
	},

	16698	=> {
		typeID   => 16698,
		groupID  => 818,
		typeName => "Vivian Menure"
	},

	16699	=> {
		typeID   => 16699,
		groupID  => 818,
		typeName => "Uenia Khann"
	},

	16700	=> {
		typeID   => 16700,
		groupID  => 818,
		typeName => "Mullok Bloodsworn"
	},

	16701	=> {
		typeID   => 16701,
		groupID  => 818,
		typeName => "Javvyn Bloodsworn"
	},

	16702	=> {
		typeID   => 16702,
		groupID  => 818,
		typeName => "Terror Bloodsworn"
	},

	16703	=> {
		typeID   => 16703,
		groupID  => 699,
		typeName => "Mordur Bloodsworn"
	},

	16712	=> {
		typeID   => 16712,
		groupID  => 314,
		typeName => "Novice Medal"
	},

	16713	=> {
		typeID   => 16713,
		groupID  => 314,
		typeName => "Intermediate Medal"
	},

	16714	=> {
		typeID   => 16714,
		groupID  => 314,
		typeName => "Legends Medal"
	},

	16715	=> {
		typeID   => 16715,
		groupID  => 23,
		typeName => "Clone Grade Pi"
	},

	16718	=> {
		typeID   => 16718,
		groupID  => 23,
		typeName => "Clone Grade Rho"
	},

	16720	=> {
		typeID   => 16720,
		groupID  => 306,
		typeName => "Ammo_Container"
	},

	16721	=> {
		typeID   => 16721,
		groupID  => 306,
		typeName => "Armor_Container"
	},

	16722	=> {
		typeID   => 16722,
		groupID  => 306,
		typeName => "Electronic_Container"
	},

	16723	=> {
		typeID   => 16723,
		groupID  => 306,
		typeName => "Mineral Container"
	},

	16724	=> {
		typeID   => 16724,
		groupID  => 306,
		typeName => "Rogue Drone Container"
	},

	16725	=> {
		typeID   => 16725,
		groupID  => 306,
		typeName => "weapon_container"
	},

	16726	=> {
		typeID   => 16726,
		groupID  => 319,
		typeName => "Amarr Cathedral"
	},

	16727	=> {
		typeID   => 16727,
		groupID  => 319,
		typeName => "Blood Raider Cathedral"
	},

	16728	=> {
		typeID   => 16728,
		groupID  => 319,
		typeName => "Asteroid Installation"
	},

	16729	=> {
		typeID   => 16729,
		groupID  => 319,
		typeName => "Cargo Rig"
	},

	16730	=> {
		typeID   => 16730,
		groupID  => 319,
		typeName => "Amarr Chapel"
	},

	16731	=> {
		typeID   => 16731,
		groupID  => 319,
		typeName => "Blood Raider Chapel"
	},

	16732	=> {
		typeID   => 16732,
		groupID  => 319,
		typeName => "Drone Structure II"
	},

	16733	=> {
		typeID   => 16733,
		groupID  => 319,
		typeName => "Drone Structure I"
	},

	16734	=> {
		typeID   => 16734,
		groupID  => 319,
		typeName => "Partially constructed Megathron"
	},

	16735	=> {
		typeID   => 16735,
		groupID  => 319,
		typeName => "Landing Pad"
	},

	16736	=> {
		typeID   => 16736,
		groupID  => 319,
		typeName => "Infested station ruins"
	},

	16737	=> {
		typeID   => 16737,
		groupID  => 319,
		typeName => "Ruined Stargate"
	},

	16738	=> {
		typeID   => 16738,
		groupID  => 319,
		typeName => "Solar Harvester"
	},

	16739	=> {
		typeID   => 16739,
		groupID  => 383,
		typeName => "Tower Sentry Amarr III"
	},

	16740	=> {
		typeID   => 16740,
		groupID  => 383,
		typeName => "Tower Sentry Angel III"
	},

	16741	=> {
		typeID   => 16741,
		groupID  => 383,
		typeName => "Tower Sentry Bloodraider III"
	},

	16742	=> {
		typeID   => 16742,
		groupID  => 383,
		typeName => "Tower Sentry Caldari III"
	},

	16743	=> {
		typeID   => 16743,
		groupID  => 383,
		typeName => "Tower Sentry Gallente III"
	},

	16744	=> {
		typeID   => 16744,
		groupID  => 383,
		typeName => "Tower Sentry Guristas III"
	},

	16745	=> {
		typeID   => 16745,
		groupID  => 383,
		typeName => "Tower Sentry Minmatar III"
	},

	16746	=> {
		typeID   => 16746,
		groupID  => 383,
		typeName => "Tower Sentry Sansha III"
	},

	16747	=> {
		typeID   => 16747,
		groupID  => 383,
		typeName => "Tower Sentry Serpentis III"
	},

	16748	=> {
		typeID   => 16748,
		groupID  => 319,
		typeName => "Occupied Amarr Bunker"
	},

	16749	=> {
		typeID   => 16749,
		groupID  => 319,
		typeName => "Amarr Elevator"
	},

	16750	=> {
		typeID   => 16750,
		groupID  => 319,
		typeName => "Amarr Junction"
	},

	16751	=> {
		typeID   => 16751,
		groupID  => 319,
		typeName => "Amarr Lookout"
	},

	16752	=> {
		typeID   => 16752,
		groupID  => 319,
		typeName => "Amarr Wall"
	},

	16753	=> {
		typeID   => 16753,
		groupID  => 319,
		typeName => "Amarr Barricade"
	},

	16754	=> {
		typeID   => 16754,
		groupID  => 319,
		typeName => "Amarr Fence"
	},

	16755	=> {
		typeID   => 16755,
		groupID  => 319,
		typeName => "Amarr Barrier"
	},

	16756	=> {
		typeID   => 16756,
		groupID  => 319,
		typeName => "Amarr Battery"
	},

	16757	=> {
		typeID   => 16757,
		groupID  => 319,
		typeName => "Angel Bunker"
	},

	16758	=> {
		typeID   => 16758,
		groupID  => 319,
		typeName => "Angel Elevator"
	},

	16759	=> {
		typeID   => 16759,
		groupID  => 319,
		typeName => "Angel Junction"
	},

	16760	=> {
		typeID   => 16760,
		groupID  => 319,
		typeName => "Angel Lookout"
	},

	16761	=> {
		typeID   => 16761,
		groupID  => 319,
		typeName => "Angel Battery"
	},

	16762	=> {
		typeID   => 16762,
		groupID  => 319,
		typeName => "Angel Wall"
	},

	16763	=> {
		typeID   => 16763,
		groupID  => 319,
		typeName => "Angel Barricade"
	},

	16764	=> {
		typeID   => 16764,
		groupID  => 319,
		typeName => "Angel Fence"
	},

	16765	=> {
		typeID   => 16765,
		groupID  => 319,
		typeName => "Angel Barrier"
	},

	16766	=> {
		typeID   => 16766,
		groupID  => 319,
		typeName => "Blood Raider Bunker"
	},

	16767	=> {
		typeID   => 16767,
		groupID  => 319,
		typeName => "Blood Raider Elevator"
	},

	16768	=> {
		typeID   => 16768,
		groupID  => 319,
		typeName => "Blood Raider Junction"
	},

	16769	=> {
		typeID   => 16769,
		groupID  => 319,
		typeName => "Blood Raider Lookout"
	},

	16770	=> {
		typeID   => 16770,
		groupID  => 319,
		typeName => "Blood Raider Battery"
	},

	16771	=> {
		typeID   => 16771,
		groupID  => 319,
		typeName => "Blood Raider Wall"
	},

	16772	=> {
		typeID   => 16772,
		groupID  => 319,
		typeName => "Blood Raider Barricade"
	},

	16773	=> {
		typeID   => 16773,
		groupID  => 319,
		typeName => "Blood Raider Fence"
	},

	16774	=> {
		typeID   => 16774,
		groupID  => 319,
		typeName => "Blood Raider Barrier"
	},

	16775	=> {
		typeID   => 16775,
		groupID  => 319,
		typeName => "Caldari Elevator"
	},

	16776	=> {
		typeID   => 16776,
		groupID  => 319,
		typeName => "Caldari Junction"
	},

	16777	=> {
		typeID   => 16777,
		groupID  => 319,
		typeName => "Caldari Lookout"
	},

	16778	=> {
		typeID   => 16778,
		groupID  => 319,
		typeName => "Caldari Battery"
	},

	16779	=> {
		typeID   => 16779,
		groupID  => 319,
		typeName => "Caldari Wall"
	},

	16780	=> {
		typeID   => 16780,
		groupID  => 319,
		typeName => "Caldari Barricade"
	},

	16781	=> {
		typeID   => 16781,
		groupID  => 319,
		typeName => "Caldari Fence"
	},

	16782	=> {
		typeID   => 16782,
		groupID  => 319,
		typeName => "Caldari Barrier"
	},

	16784	=> {
		typeID   => 16784,
		groupID  => 319,
		typeName => "Gallente Bunker"
	},

	16785	=> {
		typeID   => 16785,
		groupID  => 319,
		typeName => "Gallente Elevator"
	},

	16786	=> {
		typeID   => 16786,
		groupID  => 319,
		typeName => "Gallente Junction"
	},

	16787	=> {
		typeID   => 16787,
		groupID  => 319,
		typeName => "Gallente Lookout"
	},

	16788	=> {
		typeID   => 16788,
		groupID  => 319,
		typeName => "Gallente Battery"
	},

	16789	=> {
		typeID   => 16789,
		groupID  => 319,
		typeName => "Gallente Wall"
	},

	16790	=> {
		typeID   => 16790,
		groupID  => 319,
		typeName => "Gallente Barricade"
	},

	16791	=> {
		typeID   => 16791,
		groupID  => 319,
		typeName => "Gallente Fence"
	},

	16792	=> {
		typeID   => 16792,
		groupID  => 319,
		typeName => "Gallente Barrier"
	},

	16793	=> {
		typeID   => 16793,
		groupID  => 319,
		typeName => "Guristas Great Wall"
	},

	16794	=> {
		typeID   => 16794,
		groupID  => 319,
		typeName => "Guristas Battery"
	},

	16796	=> {
		typeID   => 16796,
		groupID  => 319,
		typeName => "Guristas Bunker"
	},

	16797	=> {
		typeID   => 16797,
		groupID  => 319,
		typeName => "Guristas Elevator"
	},

	16798	=> {
		typeID   => 16798,
		groupID  => 319,
		typeName => "Guristas Junction"
	},

	16799	=> {
		typeID   => 16799,
		groupID  => 319,
		typeName => "Guristas Lookout"
	},

	16800	=> {
		typeID   => 16800,
		groupID  => 319,
		typeName => "Guristas Wall"
	},

	16801	=> {
		typeID   => 16801,
		groupID  => 319,
		typeName => "Guristas Barricade"
	},

	16802	=> {
		typeID   => 16802,
		groupID  => 319,
		typeName => "Guristas Fence"
	},

	16803	=> {
		typeID   => 16803,
		groupID  => 319,
		typeName => "Guristas Barrier"
	},

	16804	=> {
		typeID   => 16804,
		groupID  => 319,
		typeName => "Minmatar Barrier"
	},

	16805	=> {
		typeID   => 16805,
		groupID  => 319,
		typeName => "Minmatar Bunker"
	},

	16806	=> {
		typeID   => 16806,
		groupID  => 319,
		typeName => "Minmatar Elevator"
	},

	16807	=> {
		typeID   => 16807,
		groupID  => 319,
		typeName => "Minmatar Junction"
	},

	16808	=> {
		typeID   => 16808,
		groupID  => 319,
		typeName => "Minmatar Lookout"
	},

	16809	=> {
		typeID   => 16809,
		groupID  => 319,
		typeName => "Minmatar Battery"
	},

	16810	=> {
		typeID   => 16810,
		groupID  => 319,
		typeName => "Minmatar Wall"
	},

	16811	=> {
		typeID   => 16811,
		groupID  => 319,
		typeName => "Minmatar Barricade"
	},

	16812	=> {
		typeID   => 16812,
		groupID  => 319,
		typeName => "Minmatar Fence"
	},

	16813	=> {
		typeID   => 16813,
		groupID  => 319,
		typeName => "Sansha Fence"
	},

	16814	=> {
		typeID   => 16814,
		groupID  => 319,
		typeName => "Sansha Bunker"
	},

	16815	=> {
		typeID   => 16815,
		groupID  => 319,
		typeName => "Sansha Elevator"
	},

	16816	=> {
		typeID   => 16816,
		groupID  => 319,
		typeName => "Sansha Junction"
	},

	16817	=> {
		typeID   => 16817,
		groupID  => 319,
		typeName => "Sansha Lookout"
	},

	16818	=> {
		typeID   => 16818,
		groupID  => 319,
		typeName => "Sansha Battery"
	},

	16819	=> {
		typeID   => 16819,
		groupID  => 319,
		typeName => "Sansha Wall"
	},

	16820	=> {
		typeID   => 16820,
		groupID  => 319,
		typeName => "Sansha Barricade"
	},

	16821	=> {
		typeID   => 16821,
		groupID  => 319,
		typeName => "Sansha Barrier"
	},

	16822	=> {
		typeID   => 16822,
		groupID  => 319,
		typeName => "Serpentis Bunker"
	},

	16823	=> {
		typeID   => 16823,
		groupID  => 319,
		typeName => "Serpentis Elevator"
	},

	16824	=> {
		typeID   => 16824,
		groupID  => 319,
		typeName => "Serpentis Junction"
	},

	16825	=> {
		typeID   => 16825,
		groupID  => 319,
		typeName => "Serpentis Lookout"
	},

	16826	=> {
		typeID   => 16826,
		groupID  => 319,
		typeName => "Serpentis Battery"
	},

	16827	=> {
		typeID   => 16827,
		groupID  => 319,
		typeName => "Serpentis Wall"
	},

	16828	=> {
		typeID   => 16828,
		groupID  => 319,
		typeName => "Serpentis Barricade"
	},

	16829	=> {
		typeID   => 16829,
		groupID  => 319,
		typeName => "Serpentis Fence"
	},

	16830	=> {
		typeID   => 16830,
		groupID  => 319,
		typeName => "Serpentis Barrier"
	},

	16831	=> {
		typeID   => 16831,
		groupID  => 319,
		typeName => "Radio Telescope"
	},

	16832	=> {
		typeID   => 16832,
		groupID  => 314,
		typeName => "Sansha Data Sheets"
	},

	16836	=> {
		typeID   => 16836,
		groupID  => 319,
		typeName => "Amarr Deadspace Refiner"
	},

	16837	=> {
		typeID   => 16837,
		groupID  => 319,
		typeName => "Amarr Deadspace Repair Unit"
	},

	16838	=> {
		typeID   => 16838,
		groupID  => 319,
		typeName => "Amarr Deadspace Tactical Unit"
	},

	16839	=> {
		typeID   => 16839,
		groupID  => 319,
		typeName => "Asteroid Factory"
	},

	16840	=> {
		typeID   => 16840,
		groupID  => 319,
		typeName => "Asteroid Colony"
	},

	16841	=> {
		typeID   => 16841,
		groupID  => 319,
		typeName => "Asteroid Construct"
	},

	16842	=> {
		typeID   => 16842,
		groupID  => 319,
		typeName => "Asteroid Prime Colony"
	},

	16843	=> {
		typeID   => 16843,
		groupID  => 319,
		typeName => "Asteroid Structure"
	},

	16844	=> {
		typeID   => 16844,
		groupID  => 319,
		typeName => "Asteroid Secondary Colony"
	},

	16845	=> {
		typeID   => 16845,
		groupID  => 319,
		typeName => "Meat Popsicle"
	},

	16846	=> {
		typeID   => 16846,
		groupID  => 319,
		typeName => "Asteroid Colony Tower"
	},

	16847	=> {
		typeID   => 16847,
		groupID  => 319,
		typeName => "Asteroid Micro-Colony"
	},

	16848	=> {
		typeID   => 16848,
		groupID  => 319,
		typeName => "Empty Station Battery"
	},

	16849	=> {
		typeID   => 16849,
		groupID  => 319,
		typeName => "Deadspace Particle Accelerator"
	},

	16850	=> {
		typeID   => 16850,
		groupID  => 319,
		typeName => "Caldari Deadspace Refining Outpost"
	},

	16851	=> {
		typeID   => 16851,
		groupID  => 319,
		typeName => "Caldari Deadspace Repair Outpost"
	},

	16852	=> {
		typeID   => 16852,
		groupID  => 319,
		typeName => "Caldari Deadspace Tactical Outpost"
	},

	16853	=> {
		typeID   => 16853,
		groupID  => 319,
		typeName => "Circle Construct"
	},

	16854	=> {
		typeID   => 16854,
		groupID  => 319,
		typeName => "Pulsating Sensor"
	},

	16855	=> {
		typeID   => 16855,
		groupID  => 319,
		typeName => "Gallentean Deadspace Outpost"
	},

	16856	=> {
		typeID   => 16856,
		groupID  => 319,
		typeName => "Pressure Silo"
	},

	16857	=> {
		typeID   => 16857,
		groupID  => 319,
		typeName => "Minmatar Deadspace Refining Outpost"
	},

	16858	=> {
		typeID   => 16858,
		groupID  => 319,
		typeName => "Minmatar Deadspace Repair Outpost"
	},

	16859	=> {
		typeID   => 16859,
		groupID  => 319,
		typeName => "Minmatar Deadspace Tactical Outpost"
	},

	16860	=> {
		typeID   => 16860,
		groupID  => 319,
		typeName => "Freight Pad"
	},

	16861	=> {
		typeID   => 16861,
		groupID  => 319,
		typeName => "Subspace Frequency Generator"
	},

	16862	=> {
		typeID   => 16862,
		groupID  => 319,
		typeName => "Blasted Neon Sign"
	},

	16864	=> {
		typeID   => 16864,
		groupID  => 319,
		typeName => "Low-Tech Deadspace Energy Harvester"
	},

	16865	=> {
		typeID   => 16865,
		groupID  => 319,
		typeName => "Rapid Pulse Sentry"
	},

	16866	=> {
		typeID   => 16866,
		groupID  => 319,
		typeName => "Magnetic Retainment Field"
	},

	16867	=> {
		typeID   => 16867,
		groupID  => 430,
		typeName => "Ultra Fast Mobile Laser Sentry"
	},

	16868	=> {
		typeID   => 16868,
		groupID  => 661,
		typeName => "Standard Blue Pill Booster Reaction"
	},

	16869	=> {
		typeID   => 16869,
		groupID  => 438,
		typeName => "Complex Reactor Array"
	},

	16870	=> {
		typeID   => 16870,
		groupID  => 818,
		typeName => "Captain Numek Kradin"
	},

	16871	=> {
		typeID   => 16871,
		groupID  => 816,
		typeName => "General Krayek Tsunomi"
	},

	16873	=> {
		typeID   => 16873,
		groupID  => 817,
		typeName => "Captain Jym Muntoya"
	},

	16874	=> {
		typeID   => 16874,
		groupID  => 597,
		typeName => "Gistii Ambusher"
	},

	16875	=> {
		typeID   => 16875,
		groupID  => 595,
		typeName => "Gistum Depredator"
	},

	16876	=> {
		typeID   => 16876,
		groupID  => 597,
		typeName => "Gistii Fugitive"
	},

	16877	=> {
		typeID   => 16877,
		groupID  => 597,
		typeName => "Gistii Hijacker"
	},

	16878	=> {
		typeID   => 16878,
		groupID  => 597,
		typeName => "Gistii Hunter"
	},

	16879	=> {
		typeID   => 16879,
		groupID  => 597,
		typeName => "Gistii Impaler"
	},

	16880	=> {
		typeID   => 16880,
		groupID  => 595,
		typeName => "Gistum Crusher"
	},

	16881	=> {
		typeID   => 16881,
		groupID  => 595,
		typeName => "Gistum Smasher"
	},

	16882	=> {
		typeID   => 16882,
		groupID  => 597,
		typeName => "Gistii Nomad"
	},

	16883	=> {
		typeID   => 16883,
		groupID  => 597,
		typeName => "Gistii Outlaw"
	},

	16884	=> {
		typeID   => 16884,
		groupID  => 595,
		typeName => "Gistum Predator"
	},

	16885	=> {
		typeID   => 16885,
		groupID  => 597,
		typeName => "Gistii Raider"
	},

	16886	=> {
		typeID   => 16886,
		groupID  => 597,
		typeName => "Gistii Rogue"
	},

	16887	=> {
		typeID   => 16887,
		groupID  => 597,
		typeName => "Gistii Ruffian"
	},

	16888	=> {
		typeID   => 16888,
		groupID  => 597,
		typeName => "Gistii Thug"
	},

	16889	=> {
		typeID   => 16889,
		groupID  => 595,
		typeName => "Gistum Breaker"
	},

	16890	=> {
		typeID   => 16890,
		groupID  => 597,
		typeName => "Arch Gistii Hijacker"
	},

	16891	=> {
		typeID   => 16891,
		groupID  => 595,
		typeName => "Gistum Marauder"
	},

	16892	=> {
		typeID   => 16892,
		groupID  => 594,
		typeName => "Gist Commander"
	},

	16893	=> {
		typeID   => 16893,
		groupID  => 594,
		typeName => "Gist General"
	},

	16894	=> {
		typeID   => 16894,
		groupID  => 597,
		typeName => "Arch Gistii Thug"
	},

	16895	=> {
		typeID   => 16895,
		groupID  => 597,
		typeName => "Arch Gistii Outlaw"
	},

	16896	=> {
		typeID   => 16896,
		groupID  => 595,
		typeName => "Gistum Liquidator"
	},

	16897	=> {
		typeID   => 16897,
		groupID  => 597,
		typeName => "Arch Gistii Rogue"
	},

	16898	=> {
		typeID   => 16898,
		groupID  => 595,
		typeName => "Gistum Defeater"
	},

	16899	=> {
		typeID   => 16899,
		groupID  => 594,
		typeName => "Gist Warlord"
	},

	16900	=> {
		typeID   => 16900,
		groupID  => 594,
		typeName => "Gist War General"
	},

	16901	=> {
		typeID   => 16901,
		groupID  => 597,
		typeName => "Gistii Domination Hijacker"
	},

	16902	=> {
		typeID   => 16902,
		groupID  => 597,
		typeName => "Gistii Domination Rogue"
	},

	16903	=> {
		typeID   => 16903,
		groupID  => 597,
		typeName => "Gistii Domination Outlaw"
	},

	16904	=> {
		typeID   => 16904,
		groupID  => 597,
		typeName => "Gistii Domination Thug"
	},

	16905	=> {
		typeID   => 16905,
		groupID  => 597,
		typeName => "Gistii Domination Ambusher"
	},

	16906	=> {
		typeID   => 16906,
		groupID  => 595,
		typeName => "Gistum Domination Depredator"
	},

	16907	=> {
		typeID   => 16907,
		groupID  => 597,
		typeName => "Gistii Domination Hunter"
	},

	16908	=> {
		typeID   => 16908,
		groupID  => 597,
		typeName => "Gistii Domination Impaler"
	},

	16909	=> {
		typeID   => 16909,
		groupID  => 595,
		typeName => "Gistum Domination Crusher"
	},

	16910	=> {
		typeID   => 16910,
		groupID  => 595,
		typeName => "Gistum Domination Smasher"
	},

	16911	=> {
		typeID   => 16911,
		groupID  => 597,
		typeName => "Gistii Domination Nomad"
	},

	16912	=> {
		typeID   => 16912,
		groupID  => 595,
		typeName => "Gistum Domination Predator"
	},

	16913	=> {
		typeID   => 16913,
		groupID  => 597,
		typeName => "Gistii Domination Raider"
	},

	16914	=> {
		typeID   => 16914,
		groupID  => 597,
		typeName => "Gistii Domination Ruffian"
	},

	16915	=> {
		typeID   => 16915,
		groupID  => 595,
		typeName => "Gistum Domination Breaker"
	},

	16916	=> {
		typeID   => 16916,
		groupID  => 595,
		typeName => "Gistum Domination Defeater"
	},

	16917	=> {
		typeID   => 16917,
		groupID  => 595,
		typeName => "Gistum Domination Marauder"
	},

	16918	=> {
		typeID   => 16918,
		groupID  => 595,
		typeName => "Gistum Domination Phalanx"
	},

	16919	=> {
		typeID   => 16919,
		groupID  => 595,
		typeName => "Gistum Domination Liquidator"
	},

	16920	=> {
		typeID   => 16920,
		groupID  => 595,
		typeName => "Gistum Domination Centurion"
	},

	16921	=> {
		typeID   => 16921,
		groupID  => 594,
		typeName => "Gist Domination Commander"
	},

	16922	=> {
		typeID   => 16922,
		groupID  => 594,
		typeName => "Gist Domination General"
	},

	16923	=> {
		typeID   => 16923,
		groupID  => 594,
		typeName => "Gist Domination War General"
	},

	16924	=> {
		typeID   => 16924,
		groupID  => 594,
		typeName => "Gist Domination Saint"
	},

	16925	=> {
		typeID   => 16925,
		groupID  => 594,
		typeName => "Gist Domination Nephilim"
	},

	16926	=> {
		typeID   => 16926,
		groupID  => 594,
		typeName => "Gist Domination Warlord"
	},

	16927	=> {
		typeID   => 16927,
		groupID  => 604,
		typeName => "Corpum Arch Engraver"
	},

	16928	=> {
		typeID   => 16928,
		groupID  => 604,
		typeName => "Corpum Arch Priest"
	},

	16929	=> {
		typeID   => 16929,
		groupID  => 604,
		typeName => "Corpum Arch Reaver"
	},

	16930	=> {
		typeID   => 16930,
		groupID  => 604,
		typeName => "Corpum Arch Sage"
	},

	16931	=> {
		typeID   => 16931,
		groupID  => 604,
		typeName => "Corpum Arch Templar"
	},

	16932	=> {
		typeID   => 16932,
		groupID  => 606,
		typeName => "Corpii Diviner"
	},

	16933	=> {
		typeID   => 16933,
		groupID  => 606,
		typeName => "Corpii Upholder"
	},

	16934	=> {
		typeID   => 16934,
		groupID  => 603,
		typeName => "Corpus Prophet"
	},

	16935	=> {
		typeID   => 16935,
		groupID  => 606,
		typeName => "Corpii Collector"
	},

	16936	=> {
		typeID   => 16936,
		groupID  => 606,
		typeName => "Corpii Follower"
	},

	16937	=> {
		typeID   => 16937,
		groupID  => 606,
		typeName => "Corpii Fugitive"
	},

	16938	=> {
		typeID   => 16938,
		groupID  => 603,
		typeName => "Corpus Oracle"
	},

	16939	=> {
		typeID   => 16939,
		groupID  => 606,
		typeName => "Elder Corpii Herald"
	},

	16940	=> {
		typeID   => 16940,
		groupID  => 606,
		typeName => "Corpii Reaver"
	},

	16941	=> {
		typeID   => 16941,
		groupID  => 603,
		typeName => "Corpus Apostle"
	},

	16942	=> {
		typeID   => 16942,
		groupID  => 606,
		typeName => "Elder Corpii Upholder"
	},

	16943	=> {
		typeID   => 16943,
		groupID  => 606,
		typeName => "Elder Corpii Follower"
	},

	16944	=> {
		typeID   => 16944,
		groupID  => 604,
		typeName => "Corpum Priest"
	},

	16945	=> {
		typeID   => 16945,
		groupID  => 606,
		typeName => "Corpii Raider"
	},

	16946	=> {
		typeID   => 16946,
		groupID  => 606,
		typeName => "Corpii Herald"
	},

	16947	=> {
		typeID   => 16947,
		groupID  => 606,
		typeName => "Corpii Seeker"
	},

	16948	=> {
		typeID   => 16948,
		groupID  => 604,
		typeName => "Corpum Revenant"
	},

	16949	=> {
		typeID   => 16949,
		groupID  => 604,
		typeName => "Corpum Sage"
	},

	16950	=> {
		typeID   => 16950,
		groupID  => 606,
		typeName => "Corpii Worshipper"
	},

	16951	=> {
		typeID   => 16951,
		groupID  => 606,
		typeName => "Elder Corpii Worshiper"
	},

	16952	=> {
		typeID   => 16952,
		groupID  => 603,
		typeName => "Corpus Archon"
	},

	16953	=> {
		typeID   => 16953,
		groupID  => 606,
		typeName => "Corpii Engraver"
	},

	16954	=> {
		typeID   => 16954,
		groupID  => 606,
		typeName => "Dark Corpii Reaver"
	},

	16955	=> {
		typeID   => 16955,
		groupID  => 606,
		typeName => "Dark Corpii Follower"
	},

	16956	=> {
		typeID   => 16956,
		groupID  => 604,
		typeName => "Dark Corpum Arch Engraver"
	},

	16957	=> {
		typeID   => 16957,
		groupID  => 604,
		typeName => "Dark Corpum Arch Priest"
	},

	16958	=> {
		typeID   => 16958,
		groupID  => 604,
		typeName => "Dark Corpum Dark Priest"
	},

	16959	=> {
		typeID   => 16959,
		groupID  => 604,
		typeName => "Dark Corpum Arch Reaver"
	},

	16960	=> {
		typeID   => 16960,
		groupID  => 604,
		typeName => "Dark Corpum Arch Sage"
	},

	16961	=> {
		typeID   => 16961,
		groupID  => 604,
		typeName => "Dark Corpum Shadow Sage"
	},

	16962	=> {
		typeID   => 16962,
		groupID  => 604,
		typeName => "Dark Corpum Arch Templar"
	},

	16963	=> {
		typeID   => 16963,
		groupID  => 606,
		typeName => "Dark Corpii Diviner"
	},

	16964	=> {
		typeID   => 16964,
		groupID  => 606,
		typeName => "Dark Corpii Upholder"
	},

	16965	=> {
		typeID   => 16965,
		groupID  => 603,
		typeName => "Dark Corpus Prophet"
	},

	16966	=> {
		typeID   => 16966,
		groupID  => 606,
		typeName => "Dark Corpii Collector"
	},

	16967	=> {
		typeID   => 16967,
		groupID  => 603,
		typeName => "Dark Corpus Oracle"
	},

	16968	=> {
		typeID   => 16968,
		groupID  => 603,
		typeName => "Dark Corpus Archbishop"
	},

	16969	=> {
		typeID   => 16969,
		groupID  => 603,
		typeName => "Dark Corpus Apostle"
	},

	16970	=> {
		typeID   => 16970,
		groupID  => 603,
		typeName => "Dark Corpus Harbinger"
	},

	16971	=> {
		typeID   => 16971,
		groupID  => 604,
		typeName => "Dark Corpum Priest"
	},

	16972	=> {
		typeID   => 16972,
		groupID  => 606,
		typeName => "Dark Corpii Raider"
	},

	16973	=> {
		typeID   => 16973,
		groupID  => 606,
		typeName => "Dark Corpii Herald"
	},

	16974	=> {
		typeID   => 16974,
		groupID  => 606,
		typeName => "Dark Corpii Seeker"
	},

	16975	=> {
		typeID   => 16975,
		groupID  => 604,
		typeName => "Dark Corpum Revenant"
	},

	16976	=> {
		typeID   => 16976,
		groupID  => 604,
		typeName => "Dark Corpum Sage"
	},

	16977	=> {
		typeID   => 16977,
		groupID  => 606,
		typeName => "Dark Corpii Worshipper"
	},

	16978	=> {
		typeID   => 16978,
		groupID  => 603,
		typeName => "Dark Corpus Archon"
	},

	16979	=> {
		typeID   => 16979,
		groupID  => 606,
		typeName => "Dark Corpii Engraver"
	},

	16980	=> {
		typeID   => 16980,
		groupID  => 613,
		typeName => "Pithum Killer"
	},

	16981	=> {
		typeID   => 16981,
		groupID  => 615,
		typeName => "Pithi Arrogator"
	},

	16982	=> {
		typeID   => 16982,
		groupID  => 613,
		typeName => "Pithum Ascriber"
	},

	16983	=> {
		typeID   => 16983,
		groupID  => 615,
		typeName => "Dire Pithi Infiltrator"
	},

	16984	=> {
		typeID   => 16984,
		groupID  => 612,
		typeName => "Pith Dismantler"
	},

	16985	=> {
		typeID   => 16985,
		groupID  => 615,
		typeName => "Dire Pithi Invader"
	},

	16986	=> {
		typeID   => 16986,
		groupID  => 615,
		typeName => "Pithi Demolisher"
	},

	16987	=> {
		typeID   => 16987,
		groupID  => 615,
		typeName => "Pithi Despoiler"
	},

	16988	=> {
		typeID   => 16988,
		groupID  => 612,
		typeName => "Pith Obliterator"
	},

	16989	=> {
		typeID   => 16989,
		groupID  => 615,
		typeName => "Pithi Destructor"
	},

	16990	=> {
		typeID   => 16990,
		groupID  => 615,
		typeName => "Dire Pithi Imputor"
	},

	16991	=> {
		typeID   => 16991,
		groupID  => 613,
		typeName => "Pithum Inferno"
	},

	16992	=> {
		typeID   => 16992,
		groupID  => 612,
		typeName => "Pith Eradicator"
	},

	16993	=> {
		typeID   => 16993,
		groupID  => 615,
		typeName => "Pithi Fugitive"
	},

	16994	=> {
		typeID   => 16994,
		groupID  => 615,
		typeName => "Pithi Imputor"
	},

	16995	=> {
		typeID   => 16995,
		groupID  => 613,
		typeName => "Pithum Mortifier"
	},

	16996	=> {
		typeID   => 16996,
		groupID  => 615,
		typeName => "Pithi Infiltrator"
	},

	16997	=> {
		typeID   => 16997,
		groupID  => 615,
		typeName => "Pithi Invader"
	},

	16998	=> {
		typeID   => 16998,
		groupID  => 613,
		typeName => "Pithum Nullifier"
	},

	16999	=> {
		typeID   => 16999,
		groupID  => 615,
		typeName => "Dire Pithi Arrogator"
	},

	17000	=> {
		typeID   => 17000,
		groupID  => 613,
		typeName => "Pithum Murderer"
	},

	17001	=> {
		typeID   => 17001,
		groupID  => 615,
		typeName => "Pithi Plunderer"
	},

	17002	=> {
		typeID   => 17002,
		groupID  => 615,
		typeName => "Pithi Saboteur"
	},

	17003	=> {
		typeID   => 17003,
		groupID  => 613,
		typeName => "Pithum Annihilator"
	},

	17004	=> {
		typeID   => 17004,
		groupID  => 613,
		typeName => "Pithum Silencer"
	},

	17005	=> {
		typeID   => 17005,
		groupID  => 612,
		typeName => "Pith Extinguisher"
	},

	17006	=> {
		typeID   => 17006,
		groupID  => 615,
		typeName => "Pithi Wrecker"
	},

	17007	=> {
		typeID   => 17007,
		groupID  => 613,
		typeName => "Dread Pithum Killer"
	},

	17008	=> {
		typeID   => 17008,
		groupID  => 615,
		typeName => "Dread Pithi Arrogator"
	},

	17009	=> {
		typeID   => 17009,
		groupID  => 613,
		typeName => "Dread Pithum Ascriber"
	},

	17010	=> {
		typeID   => 17010,
		groupID  => 612,
		typeName => "Dread Pith Dismantler"
	},

	17011	=> {
		typeID   => 17011,
		groupID  => 612,
		typeName => "Dread Pith Eliminator"
	},

	17012	=> {
		typeID   => 17012,
		groupID  => 615,
		typeName => "Dread Pithi Demolisher"
	},

	17013	=> {
		typeID   => 17013,
		groupID  => 615,
		typeName => "Dread Pithi Despoiler"
	},

	17014	=> {
		typeID   => 17014,
		groupID  => 612,
		typeName => "Dread Pith Obliterator"
	},

	17015	=> {
		typeID   => 17015,
		groupID  => 615,
		typeName => "Dread Pithi Destructor"
	},

	17016	=> {
		typeID   => 17016,
		groupID  => 613,
		typeName => "Dread Pithum Inferno"
	},

	17017	=> {
		typeID   => 17017,
		groupID  => 613,
		typeName => "Dread Pithum Abolisher"
	},

	17018	=> {
		typeID   => 17018,
		groupID  => 612,
		typeName => "Dread Pith Eradicator"
	},

	17019	=> {
		typeID   => 17019,
		groupID  => 615,
		typeName => "Dread Pithi Imputor"
	},

	17020	=> {
		typeID   => 17020,
		groupID  => 613,
		typeName => "Dread Pithum Mortifier"
	},

	17021	=> {
		typeID   => 17021,
		groupID  => 613,
		typeName => "Dread Pithum Eraser"
	},

	17022	=> {
		typeID   => 17022,
		groupID  => 615,
		typeName => "Dread Pithi Infiltrator"
	},

	17023	=> {
		typeID   => 17023,
		groupID  => 615,
		typeName => "Dread Pithi Invader"
	},

	17024	=> {
		typeID   => 17024,
		groupID  => 613,
		typeName => "Dread Pithum Nullifier"
	},

	17025	=> {
		typeID   => 17025,
		groupID  => 613,
		typeName => "Dread Pithum Murderer"
	},

	17026	=> {
		typeID   => 17026,
		groupID  => 615,
		typeName => "Dread Pithi Plunderer"
	},

	17027	=> {
		typeID   => 17027,
		groupID  => 615,
		typeName => "Dread Pithi Saboteur"
	},

	17028	=> {
		typeID   => 17028,
		groupID  => 613,
		typeName => "Dread Pithum Annihilator"
	},

	17029	=> {
		typeID   => 17029,
		groupID  => 613,
		typeName => "Dread Pithum Silencer"
	},

	17030	=> {
		typeID   => 17030,
		groupID  => 612,
		typeName => "Dread Pith Extinguisher"
	},

	17031	=> {
		typeID   => 17031,
		groupID  => 612,
		typeName => "Dread Pith Exterminator"
	},

	17032	=> {
		typeID   => 17032,
		groupID  => 615,
		typeName => "Dread Pithi Wrecker"
	},

	17033	=> {
		typeID   => 17033,
		groupID  => 631,
		typeName => "Corelum Chief Protector"
	},

	17034	=> {
		typeID   => 17034,
		groupID  => 630,
		typeName => "Core Rear Admiral"
	},

	17035	=> {
		typeID   => 17035,
		groupID  => 633,
		typeName => "Coreli Guardian Scout"
	},

	17036	=> {
		typeID   => 17036,
		groupID  => 630,
		typeName => "Core Port Admiral"
	},

	17037	=> {
		typeID   => 17037,
		groupID  => 630,
		typeName => "Core Commodore"
	},

	17038	=> {
		typeID   => 17038,
		groupID  => 630,
		typeName => "Core Baron"
	},

	17039	=> {
		typeID   => 17039,
		groupID  => 631,
		typeName => "Corelum Chief Guard"
	},

	17040	=> {
		typeID   => 17040,
		groupID  => 633,
		typeName => "Coreli Guardian Initiate"
	},

	17041	=> {
		typeID   => 17041,
		groupID  => 633,
		typeName => "Coreli Guardian Spy"
	},

	17042	=> {
		typeID   => 17042,
		groupID  => 631,
		typeName => "Corelum Chief Safeguard"
	},

	17043	=> {
		typeID   => 17043,
		groupID  => 633,
		typeName => "Coreli Guardian Agent"
	},

	17044	=> {
		typeID   => 17044,
		groupID  => 631,
		typeName => "Corelum Chief Defender"
	},

	17045	=> {
		typeID   => 17045,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Guard"
	},

	17046	=> {
		typeID   => 17046,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Sentinel"
	},

	17047	=> {
		typeID   => 17047,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Protector"
	},

	17048	=> {
		typeID   => 17048,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Infantry"
	},

	17049	=> {
		typeID   => 17049,
		groupID  => 630,
		typeName => "Shadow Core Port Admiral"
	},

	17050	=> {
		typeID   => 17050,
		groupID  => 630,
		typeName => "Shadow Core Vice Admiral"
	},

	17051	=> {
		typeID   => 17051,
		groupID  => 630,
		typeName => "Shadow Core Commodore"
	},

	17052	=> {
		typeID   => 17052,
		groupID  => 630,
		typeName => "Shadow Core Baron"
	},

	17053	=> {
		typeID   => 17053,
		groupID  => 630,
		typeName => "Shadow Core Flotilla Admiral"
	},

	17054	=> {
		typeID   => 17054,
		groupID  => 630,
		typeName => "Shadow Core Rear Admiral"
	},

	17055	=> {
		typeID   => 17055,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Safeguard"
	},

	17056	=> {
		typeID   => 17056,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Defender"
	},

	17057	=> {
		typeID   => 17057,
		groupID  => 622,
		typeName => "Centum Beast"
	},

	17058	=> {
		typeID   => 17058,
		groupID  => 621,
		typeName => "Centus Lord"
	},

	17059	=> {
		typeID   => 17059,
		groupID  => 624,
		typeName => "Centii Butcher"
	},

	17060	=> {
		typeID   => 17060,
		groupID  => 624,
		typeName => "Centii Loyal Minion"
	},

	17061	=> {
		typeID   => 17061,
		groupID  => 624,
		typeName => "Centii Loyal Ravener"
	},

	17062	=> {
		typeID   => 17062,
		groupID  => 622,
		typeName => "Centum Slaughterer"
	},

	17063	=> {
		typeID   => 17063,
		groupID  => 624,
		typeName => "Centii Enslaver"
	},

	17064	=> {
		typeID   => 17064,
		groupID  => 624,
		typeName => "Centii Fugitive"
	},

	17065	=> {
		typeID   => 17065,
		groupID  => 622,
		typeName => "Centum Juggernaut"
	},

	17066	=> {
		typeID   => 17066,
		groupID  => 621,
		typeName => "Centus Slave Lord"
	},

	17067	=> {
		typeID   => 17067,
		groupID  => 624,
		typeName => "Centii Manslayer"
	},

	17068	=> {
		typeID   => 17068,
		groupID  => 624,
		typeName => "Centii Minion"
	},

	17069	=> {
		typeID   => 17069,
		groupID  => 624,
		typeName => "Centii Loyal Servant"
	},

	17070	=> {
		typeID   => 17070,
		groupID  => 622,
		typeName => "Centum Torturer"
	},

	17071	=> {
		typeID   => 17071,
		groupID  => 621,
		typeName => "Centus Mutant Lord"
	},

	17072	=> {
		typeID   => 17072,
		groupID  => 624,
		typeName => "Centii Plague"
	},

	17073	=> {
		typeID   => 17073,
		groupID  => 622,
		typeName => "Centum Ravager"
	},

	17074	=> {
		typeID   => 17074,
		groupID  => 624,
		typeName => "Centii Ravener"
	},

	17075	=> {
		typeID   => 17075,
		groupID  => 622,
		typeName => "Centum Ravisher"
	},

	17076	=> {
		typeID   => 17076,
		groupID  => 624,
		typeName => "Centii Savage"
	},

	17077	=> {
		typeID   => 17077,
		groupID  => 624,
		typeName => "Centii Scavenger"
	},

	17078	=> {
		typeID   => 17078,
		groupID  => 624,
		typeName => "Centii Servant"
	},

	17079	=> {
		typeID   => 17079,
		groupID  => 624,
		typeName => "Centii Loyal Scavenger"
	},

	17080	=> {
		typeID   => 17080,
		groupID  => 622,
		typeName => "Centum Mutilator"
	},

	17081	=> {
		typeID   => 17081,
		groupID  => 624,
		typeName => "Centii Slavehunter"
	},

	17082	=> {
		typeID   => 17082,
		groupID  => 621,
		typeName => "Centus Savage Lord"
	},

	17083	=> {
		typeID   => 17083,
		groupID  => 622,
		typeName => "Centum Execrator"
	},

	17084	=> {
		typeID   => 17084,
		groupID  => 622,
		typeName => "True Centum Beast"
	},

	17085	=> {
		typeID   => 17085,
		groupID  => 621,
		typeName => "True Centus Lord"
	},

	17086	=> {
		typeID   => 17086,
		groupID  => 624,
		typeName => "True Centii Butcher"
	},

	17087	=> {
		typeID   => 17087,
		groupID  => 622,
		typeName => "True Centum Slaughterer"
	},

	17088	=> {
		typeID   => 17088,
		groupID  => 624,
		typeName => "True Centii Enslaver"
	},

	17089	=> {
		typeID   => 17089,
		groupID  => 622,
		typeName => "True Centum Juggernaut"
	},

	17090	=> {
		typeID   => 17090,
		groupID  => 621,
		typeName => "True Centus Slave Lord"
	},

	17091	=> {
		typeID   => 17091,
		groupID  => 624,
		typeName => "True Centii Manslayer"
	},

	17092	=> {
		typeID   => 17092,
		groupID  => 624,
		typeName => "True Centii Minion"
	},

	17093	=> {
		typeID   => 17093,
		groupID  => 622,
		typeName => "True Centum Torturer"
	},

	17094	=> {
		typeID   => 17094,
		groupID  => 622,
		typeName => "True Centum Hellhound"
	},

	17095	=> {
		typeID   => 17095,
		groupID  => 621,
		typeName => "True Centus Mutant Lord"
	},

	17096	=> {
		typeID   => 17096,
		groupID  => 621,
		typeName => "True Centus Plague Lord"
	},

	17097	=> {
		typeID   => 17097,
		groupID  => 624,
		typeName => "True Centii Plague"
	},

	17098	=> {
		typeID   => 17098,
		groupID  => 622,
		typeName => "True Centum Ravager"
	},

	17099	=> {
		typeID   => 17099,
		groupID  => 624,
		typeName => "True Centii Ravener"
	},

	17100	=> {
		typeID   => 17100,
		groupID  => 622,
		typeName => "True Centum Ravisher"
	},

	17101	=> {
		typeID   => 17101,
		groupID  => 624,
		typeName => "True Centii Savage"
	},

	17102	=> {
		typeID   => 17102,
		groupID  => 624,
		typeName => "True Centii Scavenger"
	},

	17103	=> {
		typeID   => 17103,
		groupID  => 624,
		typeName => "True Centii Servant"
	},

	17104	=> {
		typeID   => 17104,
		groupID  => 622,
		typeName => "True Centum Mutilator"
	},

	17105	=> {
		typeID   => 17105,
		groupID  => 622,
		typeName => "True Centum Fiend"
	},

	17106	=> {
		typeID   => 17106,
		groupID  => 624,
		typeName => "True Centii Slavehunter"
	},

	17107	=> {
		typeID   => 17107,
		groupID  => 621,
		typeName => "True Centus Beast Lord"
	},

	17108	=> {
		typeID   => 17108,
		groupID  => 621,
		typeName => "True Centus Savage Lord"
	},

	17109	=> {
		typeID   => 17109,
		groupID  => 622,
		typeName => "True Centum Execrator"
	},

	17110	=> {
		typeID   => 17110,
		groupID  => 631,
		typeName => "Corelum Chief Watchman"
	},

	17111	=> {
		typeID   => 17111,
		groupID  => 631,
		typeName => "Corelum Chief Patroller"
	},

	17112	=> {
		typeID   => 17112,
		groupID  => 631,
		typeName => "Corelum Chief Scout"
	},

	17113	=> {
		typeID   => 17113,
		groupID  => 633,
		typeName => "Coreli Safeguard"
	},

	17114	=> {
		typeID   => 17114,
		groupID  => 631,
		typeName => "Corelum Chief Spy"
	},

	17115	=> {
		typeID   => 17115,
		groupID  => 633,
		typeName => "Coreli Fugitive"
	},

	17116	=> {
		typeID   => 17116,
		groupID  => 633,
		typeName => "Coreli Watchman"
	},

	17117	=> {
		typeID   => 17117,
		groupID  => 633,
		typeName => "Coreli Scout"
	},

	17118	=> {
		typeID   => 17118,
		groupID  => 633,
		typeName => "Coreli Agent"
	},

	17119	=> {
		typeID   => 17119,
		groupID  => 633,
		typeName => "Coreli Defender"
	},

	17120	=> {
		typeID   => 17120,
		groupID  => 633,
		typeName => "Coreli Patroller"
	},

	17121	=> {
		typeID   => 17121,
		groupID  => 633,
		typeName => "Coreli Initiate"
	},

	17122	=> {
		typeID   => 17122,
		groupID  => 633,
		typeName => "Coreli Protector"
	},

	17123	=> {
		typeID   => 17123,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Watchman"
	},

	17124	=> {
		typeID   => 17124,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Patroller"
	},

	17125	=> {
		typeID   => 17125,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Scout"
	},

	17126	=> {
		typeID   => 17126,
		groupID  => 633,
		typeName => "Shadow Coreli Safeguard"
	},

	17127	=> {
		typeID   => 17127,
		groupID  => 631,
		typeName => "Shadow Corelum Chief Spy"
	},

	17128	=> {
		typeID   => 17128,
		groupID  => 633,
		typeName => "Shadow Coreli Watchman"
	},

	17129	=> {
		typeID   => 17129,
		groupID  => 633,
		typeName => "Shadow Coreli Scout"
	},

	17130	=> {
		typeID   => 17130,
		groupID  => 633,
		typeName => "Shadow Coreli Agent"
	},

	17131	=> {
		typeID   => 17131,
		groupID  => 633,
		typeName => "Shadow Coreli Defender"
	},

	17132	=> {
		typeID   => 17132,
		groupID  => 633,
		typeName => "Shadow Coreli Patroller"
	},

	17133	=> {
		typeID   => 17133,
		groupID  => 633,
		typeName => "Shadow Coreli Initiate"
	},

	17134	=> {
		typeID   => 17134,
		groupID  => 633,
		typeName => "Shadow Coreli Protector"
	},

	17135	=> {
		typeID   => 17135,
		groupID  => 494,
		typeName => "Stargate under construction and repair"
	},

	17136	=> {
		typeID   => 17136,
		groupID  => 1040,
		typeName => "Ukomi Superconductors"
	},

	17138	=> {
		typeID   => 17138,
		groupID  => 319,
		typeName => "Augmented Angel Battlestation"
	},

	17140	=> {
		typeID   => 17140,
		groupID  => 319,
		typeName => "Security Outpost"
	},

	17141	=> {
		typeID   => 17141,
		groupID  => 821,
		typeName => "Tritan - The Underground Overseer"
	},

	17142	=> {
		typeID   => 17142,
		groupID  => 821,
		typeName => "The Battlestation Admiral"
	},

	17143	=> {
		typeID   => 17143,
		groupID  => 314,
		typeName => "Gallentean Planetary Vehicles"
	},

	17144	=> {
		typeID   => 17144,
		groupID  => 383,
		typeName => "Tower Sentry Bloodraider II"
	},

	17145	=> {
		typeID   => 17145,
		groupID  => 383,
		typeName => "Tower Sentry Bloodraider I"
	},

	17146	=> {
		typeID   => 17146,
		groupID  => 383,
		typeName => "Tower Sentry Angel II"
	},

	17147	=> {
		typeID   => 17147,
		groupID  => 383,
		typeName => "Tower Sentry Angel I"
	},

	17148	=> {
		typeID   => 17148,
		groupID  => 383,
		typeName => "Tower Sentry Caldari II"
	},

	17149	=> {
		typeID   => 17149,
		groupID  => 383,
		typeName => "Tower Sentry Caldari I"
	},

	17150	=> {
		typeID   => 17150,
		groupID  => 383,
		typeName => "Tower Sentry Gallente II"
	},

	17151	=> {
		typeID   => 17151,
		groupID  => 383,
		typeName => "Tower Sentry Gallente I"
	},

	17152	=> {
		typeID   => 17152,
		groupID  => 383,
		typeName => "Tower Sentry Guristas I"
	},

	17153	=> {
		typeID   => 17153,
		groupID  => 383,
		typeName => "Tower Sentry Guristas II"
	},

	17154	=> {
		typeID   => 17154,
		groupID  => 383,
		typeName => "Tower Sentry Minmatar II"
	},

	17155	=> {
		typeID   => 17155,
		groupID  => 383,
		typeName => "Tower Sentry Minmatar I"
	},

	17156	=> {
		typeID   => 17156,
		groupID  => 383,
		typeName => "Tower Sentry Sansha II"
	},

	17157	=> {
		typeID   => 17157,
		groupID  => 383,
		typeName => "Tower Sentry Sansha I"
	},

	17158	=> {
		typeID   => 17158,
		groupID  => 383,
		typeName => "Tower Sentry Serpentis II"
	},

	17159	=> {
		typeID   => 17159,
		groupID  => 383,
		typeName => "Tower Sentry Serpentis I"
	},

	17160	=> {
		typeID   => 17160,
		groupID  => 383,
		typeName => "Tower Sentry Amarr I"
	},

	17161	=> {
		typeID   => 17161,
		groupID  => 383,
		typeName => "Tower Sentry Amarr II"
	},

	17162	=> {
		typeID   => 17162,
		groupID  => 821,
		typeName => "The Stronghold General"
	},

	17163	=> {
		typeID   => 17163,
		groupID  => 383,
		typeName => "Serpentis Stasis Tower"
	},

	17164	=> {
		typeID   => 17164,
		groupID  => 383,
		typeName => "Tower Missile Battery Serpentis I"
	},

	17165	=> {
		typeID   => 17165,
		groupID  => 820,
		typeName => "Control Headquarters"
	},

	17166	=> {
		typeID   => 17166,
		groupID  => 820,
		typeName => "Security Coordinator"
	},

	17167	=> {
		typeID   => 17167,
		groupID  => 430,
		typeName => "Small Beam Laser Battery"
	},

	17168	=> {
		typeID   => 17168,
		groupID  => 430,
		typeName => "Medium Beam Laser Battery"
	},

	17172	=> {
		typeID   => 17172,
		groupID  => 414,
		typeName => "Medium Auxiliary Power Array"
	},

	17173	=> {
		typeID   => 17173,
		groupID  => 414,
		typeName => "Large Auxiliary Power Array"
	},

	17174	=> {
		typeID   => 17174,
		groupID  => 439,
		typeName => "Ion Field Projection Battery"
	},

	17175	=> {
		typeID   => 17175,
		groupID  => 439,
		typeName => "Phase Inversion Battery"
	},

	17176	=> {
		typeID   => 17176,
		groupID  => 439,
		typeName => "Spatial Destabilization Battery"
	},

	17177	=> {
		typeID   => 17177,
		groupID  => 439,
		typeName => "White Noise Generation Battery"
	},

	17178	=> {
		typeID   => 17178,
		groupID  => 441,
		typeName => "Stasis Webification Battery"
	},

	17179	=> {
		typeID   => 17179,
		groupID  => 494,
		typeName => "UNUSED_Gist_Battlestation_LCS_ID31_DL1_DCP1"
	},

	17180	=> {
		typeID   => 17180,
		groupID  => 440,
		typeName => "Sensor Dampening Battery"
	},

	17181	=> {
		typeID   => 17181,
		groupID  => 443,
		typeName => "Warp Disruption Battery"
	},

	17182	=> {
		typeID   => 17182,
		groupID  => 443,
		typeName => "Warp Scrambling Battery"
	},

	17184	=> {
		typeID   => 17184,
		groupID  => 444,
		typeName => "Ballistic Deflection Array"
	},

	17185	=> {
		typeID   => 17185,
		groupID  => 444,
		typeName => "Explosion Dampening Array"
	},

	17186	=> {
		typeID   => 17186,
		groupID  => 444,
		typeName => "Heat Dissipation Array"
	},

	17187	=> {
		typeID   => 17187,
		groupID  => 444,
		typeName => "Photon Scattering Array"
	},

	17188	=> {
		typeID   => 17188,
		groupID  => 445,
		typeName => "Force Field Array"
	},

	17190	=> {
		typeID   => 17190,
		groupID  => 370,
		typeName => "Angel Bronze Tag"
	},

	17192	=> {
		typeID   => 17192,
		groupID  => 370,
		typeName => "Angel Diamond Tag"
	},

	17194	=> {
		typeID   => 17194,
		groupID  => 370,
		typeName => "Angel Gold Tag"
	},

	17196	=> {
		typeID   => 17196,
		groupID  => 370,
		typeName => "Angel Platinum Tag"
	},

	17199	=> {
		typeID   => 17199,
		groupID  => 370,
		typeName => "Angel Electrum Tag"
	},

	17200	=> {
		typeID   => 17200,
		groupID  => 370,
		typeName => "Blood Copper Tag"
	},

	17201	=> {
		typeID   => 17201,
		groupID  => 370,
		typeName => "Blood Diamond Tag"
	},

	17202	=> {
		typeID   => 17202,
		groupID  => 370,
		typeName => "Blood Palladium Tag"
	},

	17203	=> {
		typeID   => 17203,
		groupID  => 370,
		typeName => "Blood Electrum Tag"
	},

	17204	=> {
		typeID   => 17204,
		groupID  => 370,
		typeName => "Blood Brass Tag"
	},

	17205	=> {
		typeID   => 17205,
		groupID  => 370,
		typeName => "Guristas Copper Tag"
	},

	17206	=> {
		typeID   => 17206,
		groupID  => 370,
		typeName => "Guristas Diamond Tag"
	},

	17207	=> {
		typeID   => 17207,
		groupID  => 370,
		typeName => "Guristas Brass Tag"
	},

	17208	=> {
		typeID   => 17208,
		groupID  => 370,
		typeName => "Guristas Palladium Tag"
	},

	17209	=> {
		typeID   => 17209,
		groupID  => 370,
		typeName => "Guristas Electrum Tag"
	},

	17210	=> {
		typeID   => 17210,
		groupID  => 370,
		typeName => "Sansha Copper Tag"
	},

	17211	=> {
		typeID   => 17211,
		groupID  => 370,
		typeName => "Sansha Diamond Tag"
	},

	17212	=> {
		typeID   => 17212,
		groupID  => 370,
		typeName => "Sansha Brass Tag"
	},

	17213	=> {
		typeID   => 17213,
		groupID  => 370,
		typeName => "Sansha Palladium Tag"
	},

	17214	=> {
		typeID   => 17214,
		groupID  => 370,
		typeName => "Sansha Electrum Tag"
	},

	17215	=> {
		typeID   => 17215,
		groupID  => 370,
		typeName => "Serpentis Copper Tag"
	},

	17216	=> {
		typeID   => 17216,
		groupID  => 370,
		typeName => "Serpentis Diamond Tag"
	},

	17217	=> {
		typeID   => 17217,
		groupID  => 370,
		typeName => "Serpentis Brass Tag"
	},

	17218	=> {
		typeID   => 17218,
		groupID  => 370,
		typeName => "Serpentis Palladium Tag"
	},

	17219	=> {
		typeID   => 17219,
		groupID  => 370,
		typeName => "Serpentis Electrum Tag"
	},

	17220	=> {
		typeID   => 17220,
		groupID  => 370,
		typeName => "Domination Brass Tag"
	},

	17221	=> {
		typeID   => 17221,
		groupID  => 370,
		typeName => "Domination Bronze Tag"
	},

	17222	=> {
		typeID   => 17222,
		groupID  => 370,
		typeName => "Domination Copper Tag"
	},

	17223	=> {
		typeID   => 17223,
		groupID  => 370,
		typeName => "Domination Crystal Tag"
	},

	17224	=> {
		typeID   => 17224,
		groupID  => 370,
		typeName => "Domination Diamond Tag"
	},

	17225	=> {
		typeID   => 17225,
		groupID  => 370,
		typeName => "Domination Electrum Tag"
	},

	17226	=> {
		typeID   => 17226,
		groupID  => 370,
		typeName => "Domination Gold Tag"
	},

	17227	=> {
		typeID   => 17227,
		groupID  => 370,
		typeName => "Domination Palladium Tag"
	},

	17229	=> {
		typeID   => 17229,
		groupID  => 370,
		typeName => "Domination Platinum Tag"
	},

	17230	=> {
		typeID   => 17230,
		groupID  => 370,
		typeName => "Domination Silver Tag"
	},

	17231	=> {
		typeID   => 17231,
		groupID  => 370,
		typeName => "Dark Blood Brass Tag"
	},

	17232	=> {
		typeID   => 17232,
		groupID  => 370,
		typeName => "Dark Blood Bronze Tag"
	},

	17233	=> {
		typeID   => 17233,
		groupID  => 370,
		typeName => "Dark Blood Copper Tag"
	},

	17234	=> {
		typeID   => 17234,
		groupID  => 370,
		typeName => "Dark Blood Crystal Tag"
	},

	17235	=> {
		typeID   => 17235,
		groupID  => 370,
		typeName => "Dark Blood Diamond Tag"
	},

	17236	=> {
		typeID   => 17236,
		groupID  => 370,
		typeName => "Dark Blood Electrum Tag"
	},

	17237	=> {
		typeID   => 17237,
		groupID  => 370,
		typeName => "Dark Blood Palladium Tag"
	},

	17238	=> {
		typeID   => 17238,
		groupID  => 370,
		typeName => "Dark Blood Gold Tag"
	},

	17239	=> {
		typeID   => 17239,
		groupID  => 370,
		typeName => "Dark Blood Silver Tag"
	},

	17240	=> {
		typeID   => 17240,
		groupID  => 370,
		typeName => "Dark Blood Platinum Tag"
	},

	17241	=> {
		typeID   => 17241,
		groupID  => 370,
		typeName => "Dread Guristas Brass Tag"
	},

	17242	=> {
		typeID   => 17242,
		groupID  => 370,
		typeName => "Dread Guristas Bronze Tag"
	},

	17243	=> {
		typeID   => 17243,
		groupID  => 370,
		typeName => "Dread Guristas Copper Tag"
	},

	17244	=> {
		typeID   => 17244,
		groupID  => 370,
		typeName => "Dread Guristas Crystal Tag"
	},

	17245	=> {
		typeID   => 17245,
		groupID  => 370,
		typeName => "Dread Guristas Diamond Tag"
	},

	17247	=> {
		typeID   => 17247,
		groupID  => 370,
		typeName => "Dread Guristas Electrum Tag"
	},

	17248	=> {
		typeID   => 17248,
		groupID  => 370,
		typeName => "Dread Guristas Gold Tag"
	},

	17249	=> {
		typeID   => 17249,
		groupID  => 370,
		typeName => "Dread Guristas Palladium Tag"
	},

	17250	=> {
		typeID   => 17250,
		groupID  => 370,
		typeName => "Dread Guristas Platinum Tag"
	},

	17251	=> {
		typeID   => 17251,
		groupID  => 370,
		typeName => "Dread Guristas Silver Tag"
	},

	17252	=> {
		typeID   => 17252,
		groupID  => 370,
		typeName => "True Sansha Brass Tag"
	},

	17253	=> {
		typeID   => 17253,
		groupID  => 370,
		typeName => "True Sansha Bronze Tag"
	},

	17254	=> {
		typeID   => 17254,
		groupID  => 370,
		typeName => "True Sansha Copper Tag"
	},

	17255	=> {
		typeID   => 17255,
		groupID  => 370,
		typeName => "True Sansha Crystal Tag"
	},

	17256	=> {
		typeID   => 17256,
		groupID  => 370,
		typeName => "True Sansha Diamond Tag"
	},

	17257	=> {
		typeID   => 17257,
		groupID  => 370,
		typeName => "True Sansha Electrum Tag"
	},

	17258	=> {
		typeID   => 17258,
		groupID  => 370,
		typeName => "True Sansha Gold Tag"
	},

	17259	=> {
		typeID   => 17259,
		groupID  => 370,
		typeName => "True Sansha Palladium Tag"
	},

	17260	=> {
		typeID   => 17260,
		groupID  => 370,
		typeName => "True Sansha Platinum Tag"
	},

	17261	=> {
		typeID   => 17261,
		groupID  => 370,
		typeName => "True Sansha Silver Tag"
	},

	17262	=> {
		typeID   => 17262,
		groupID  => 370,
		typeName => "Shadow Serpentis Brass Tag"
	},

	17263	=> {
		typeID   => 17263,
		groupID  => 370,
		typeName => "Shadow Serpentis Bronze Tag"
	},

	17264	=> {
		typeID   => 17264,
		groupID  => 370,
		typeName => "Shadow Serpentis Copper Tag"
	},

	17266	=> {
		typeID   => 17266,
		groupID  => 370,
		typeName => "Shadow Serpentis Crystal Tag"
	},

	17267	=> {
		typeID   => 17267,
		groupID  => 370,
		typeName => "Shadow Serpentis Diamond Tag"
	},

	17268	=> {
		typeID   => 17268,
		groupID  => 370,
		typeName => "Shadow Serpentis Electrum Tag"
	},

	17269	=> {
		typeID   => 17269,
		groupID  => 370,
		typeName => "Shadow Serpentis Palladium Tag"
	},

	17270	=> {
		typeID   => 17270,
		groupID  => 370,
		typeName => "Shadow Serpentis Gold Tag"
	},

	17271	=> {
		typeID   => 17271,
		groupID  => 370,
		typeName => "Shadow Serpentis Platinum Tag"
	},

	17272	=> {
		typeID   => 17272,
		groupID  => 370,
		typeName => "Shadow Serpentis Silver Tag"
	},

	17273	=> {
		typeID   => 17273,
		groupID  => 494,
		typeName => "Biodome Gardens"
	},

	17274	=> {
		typeID   => 17274,
		groupID  => 496,
		typeName => "Stuffed Container"
	},

	17275	=> {
		typeID   => 17275,
		groupID  => 494,
		typeName => "Oofus's Repair Shop"
	},

	17276	=> {
		typeID   => 17276,
		groupID  => 496,
		typeName => "Container with blast marks"
	},

	17277	=> {
		typeID   => 17277,
		groupID  => 496,
		typeName => "Electronically Sealed Container"
	},

	17278	=> {
		typeID   => 17278,
		groupID  => 633,
		typeName => "Coreli Guard"
	},

	17279	=> {
		typeID   => 17279,
		groupID  => 633,
		typeName => "Coreli Spy"
	},

	17280	=> {
		typeID   => 17280,
		groupID  => 633,
		typeName => "Shadow Coreli Guard"
	},

	17281	=> {
		typeID   => 17281,
		groupID  => 633,
		typeName => "Shadow Coreli Spy"
	},

	17283	=> {
		typeID   => 17283,
		groupID  => 819,
		typeName => "Sansha Black Ops Squad Leader"
	},

	17284	=> {
		typeID   => 17284,
		groupID  => 820,
		typeName => "Guristas Scout Officer"
	},

	17285	=> {
		typeID   => 17285,
		groupID  => 819,
		typeName => "Centus Black Ops Commander"
	},

	17286	=> {
		typeID   => 17286,
		groupID  => 446,
		typeName => "Amarr Customs Captain"
	},

	17287	=> {
		typeID   => 17287,
		groupID  => 370,
		typeName => "Chelm Soran's Tag"
	},

	17288	=> {
		typeID   => 17288,
		groupID  => 370,
		typeName => "Vizan Ankonin's Tag"
	},

	17289	=> {
		typeID   => 17289,
		groupID  => 370,
		typeName => "Selynne Mardakar's Tag"
	},

	17290	=> {
		typeID   => 17290,
		groupID  => 370,
		typeName => "Brokara Ryver's Tag"
	},

	17291	=> {
		typeID   => 17291,
		groupID  => 370,
		typeName => "Cormack Vaaja's Tag"
	},

	17292	=> {
		typeID   => 17292,
		groupID  => 370,
		typeName => "Setele Schellan's Tag"
	},

	17293	=> {
		typeID   => 17293,
		groupID  => 370,
		typeName => "Tuvan Orth's Tag"
	},

	17294	=> {
		typeID   => 17294,
		groupID  => 370,
		typeName => "Brynn Jerdola's Tag"
	},

	17295	=> {
		typeID   => 17295,
		groupID  => 370,
		typeName => "Estamel Tharchon's Tag"
	},

	17296	=> {
		typeID   => 17296,
		groupID  => 370,
		typeName => "Vepas Minimala's Tag"
	},

	17297	=> {
		typeID   => 17297,
		groupID  => 370,
		typeName => "Thon Eney's Tag"
	},

	17298	=> {
		typeID   => 17298,
		groupID  => 370,
		typeName => "Kaikka Peunato's Tag"
	},

	17299	=> {
		typeID   => 17299,
		groupID  => 370,
		typeName => "Draclira Merlonne's Tag"
	},

	17300	=> {
		typeID   => 17300,
		groupID  => 370,
		typeName => "Ahremen Arkah's Tag"
	},

	17301	=> {
		typeID   => 17301,
		groupID  => 370,
		typeName => "Raysere Giant's Tag"
	},

	17302	=> {
		typeID   => 17302,
		groupID  => 370,
		typeName => "Tairei Namazoth's Tag"
	},

	17303	=> {
		typeID   => 17303,
		groupID  => 370,
		typeName => "Tobias Kruzhor's Tag"
	},

	17304	=> {
		typeID   => 17304,
		groupID  => 370,
		typeName => "Gotan Kreiss's Tag"
	},

	17305	=> {
		typeID   => 17305,
		groupID  => 370,
		typeName => "Hakim Stormare's Tag"
	},

	17306	=> {
		typeID   => 17306,
		groupID  => 370,
		typeName => "Mizuro Cybon's Tag"
	},

	17317	=> {
		typeID   => 17317,
		groupID  => 429,
		typeName => "Fermionic Condensates"
	},

	17322	=> {
		typeID   => 17322,
		groupID  => 447,
		typeName => "Thermonuclear Trigger Unit Blueprint"
	},

	17323	=> {
		typeID   => 17323,
		groupID  => 447,
		typeName => "Crystalline Carbonide Armor Plate Blueprint"
	},

	17324	=> {
		typeID   => 17324,
		groupID  => 447,
		typeName => "Plasma Thruster Blueprint"
	},

	17325	=> {
		typeID   => 17325,
		groupID  => 447,
		typeName => "Nanomechanical Microprocessor Blueprint"
	},

	17326	=> {
		typeID   => 17326,
		groupID  => 447,
		typeName => "Nuclear Pulse Generator Blueprint"
	},

	17327	=> {
		typeID   => 17327,
		groupID  => 447,
		typeName => "Scalar Capacitor Unit Blueprint"
	},

	17328	=> {
		typeID   => 17328,
		groupID  => 447,
		typeName => "Titanium Diborite Armor Plate Blueprint"
	},

	17329	=> {
		typeID   => 17329,
		groupID  => 447,
		typeName => "Ion Thruster Blueprint"
	},

	17330	=> {
		typeID   => 17330,
		groupID  => 447,
		typeName => "Nanoelectrical Microprocessor Blueprint"
	},

	17331	=> {
		typeID   => 17331,
		groupID  => 447,
		typeName => "Fusion Reactor Unit Blueprint"
	},

	17332	=> {
		typeID   => 17332,
		groupID  => 447,
		typeName => "Graviton Pulse Generator Blueprint"
	},

	17333	=> {
		typeID   => 17333,
		groupID  => 447,
		typeName => "Ladar Sensor Cluster Blueprint"
	},

	17334	=> {
		typeID   => 17334,
		groupID  => 447,
		typeName => "Tesseract Capacitor Unit Blueprint"
	},

	17335	=> {
		typeID   => 17335,
		groupID  => 447,
		typeName => "EM Pulse Generator Blueprint"
	},

	17336	=> {
		typeID   => 17336,
		groupID  => 447,
		typeName => "Radar Sensor Cluster Blueprint"
	},

	17337	=> {
		typeID   => 17337,
		groupID  => 447,
		typeName => "Oscillator Capacitor Unit Blueprint"
	},

	17338	=> {
		typeID   => 17338,
		groupID  => 447,
		typeName => "Antimatter Reactor Unit Blueprint"
	},

	17339	=> {
		typeID   => 17339,
		groupID  => 447,
		typeName => "Plasma Pulse Generator Blueprint"
	},

	17340	=> {
		typeID   => 17340,
		groupID  => 447,
		typeName => "Gravimetric Sensor Cluster Blueprint"
	},

	17341	=> {
		typeID   => 17341,
		groupID  => 447,
		typeName => "Pulse Shield Emitter Blueprint"
	},

	17342	=> {
		typeID   => 17342,
		groupID  => 447,
		typeName => "Nuclear Reactor Unit Blueprint"
	},

	17344	=> {
		typeID   => 17344,
		groupID  => 447,
		typeName => "Particle Accelerator Unit Blueprint"
	},

	17345	=> {
		typeID   => 17345,
		groupID  => 447,
		typeName => "Magnetometric Sensor Cluster Blueprint"
	},

	17346	=> {
		typeID   => 17346,
		groupID  => 447,
		typeName => "Deflection Shield Emitter Blueprint"
	},

	17347	=> {
		typeID   => 17347,
		groupID  => 447,
		typeName => "Electrolytic Capacitor Unit Blueprint"
	},

	17348	=> {
		typeID   => 17348,
		groupID  => 447,
		typeName => "Laser Focusing Crystals Blueprint"
	},

	17349	=> {
		typeID   => 17349,
		groupID  => 447,
		typeName => "Fusion Thruster Blueprint"
	},

	17350	=> {
		typeID   => 17350,
		groupID  => 447,
		typeName => "Tungsten Carbide Armor Plate Blueprint"
	},

	17351	=> {
		typeID   => 17351,
		groupID  => 447,
		typeName => "Quantum Microprocessor Blueprint"
	},

	17352	=> {
		typeID   => 17352,
		groupID  => 447,
		typeName => "Sustained Shield Emitter Blueprint"
	},

	17353	=> {
		typeID   => 17353,
		groupID  => 447,
		typeName => "Graviton Reactor Unit Blueprint"
	},

	17354	=> {
		typeID   => 17354,
		groupID  => 447,
		typeName => "Superconductor Rails Blueprint"
	},

	17355	=> {
		typeID   => 17355,
		groupID  => 447,
		typeName => "Fernite Carbide Composite Armor Plate Blueprint"
	},

	17356	=> {
		typeID   => 17356,
		groupID  => 447,
		typeName => "Magpulse Thruster Blueprint"
	},

	17357	=> {
		typeID   => 17357,
		groupID  => 447,
		typeName => "Photon Microprocessor Blueprint"
	},

	17359	=> {
		typeID   => 17359,
		groupID  => 447,
		typeName => "Linear Shield Emitter Blueprint"
	},

	17360	=> {
		typeID   => 17360,
		groupID  => 25,
		typeName => "Immovable Enigma"
	},

	17363	=> {
		typeID   => 17363,
		groupID  => 448,
		typeName => "Small Audit Log Secure Container"
	},

	17364	=> {
		typeID   => 17364,
		groupID  => 448,
		typeName => "Medium Audit Log Secure Container"
	},

	17365	=> {
		typeID   => 17365,
		groupID  => 448,
		typeName => "Large Audit Log Secure Container"
	},

	17366	=> {
		typeID   => 17366,
		groupID  => 448,
		typeName => "Station Container"
	},

	17367	=> {
		typeID   => 17367,
		groupID  => 448,
		typeName => "Station Vault Container"
	},

	17368	=> {
		typeID   => 17368,
		groupID  => 448,
		typeName => "Station Warehouse Container"
	},

	17380	=> {
		typeID   => 17380,
		groupID  => 319,
		typeName => "Blood Raider Deadspace Tactical Unit"
	},

	17381	=> {
		typeID   => 17381,
		groupID  => 319,
		typeName => "Sansha Deadspace Outpost I"
	},

	17382	=> {
		typeID   => 17382,
		groupID  => 319,
		typeName => "Guristas Deadspace Tactical Outpost"
	},

	17388	=> {
		typeID   => 17388,
		groupID  => 494,
		typeName => "UNUSED_Gist_Bunker_LCS_ID104_DL5_DCP1"
	},

	17390	=> {
		typeID   => 17390,
		groupID  => 494,
		typeName => "Gardan's Fantasy Complex"
	},

	17391	=> {
		typeID   => 17391,
		groupID  => 314,
		typeName => "Ulamon's Data Chip"
	},

	17392	=> {
		typeID   => 17392,
		groupID  => 1040,
		typeName => "Data Chips"
	},

	17393	=> {
		typeID   => 17393,
		groupID  => 319,
		typeName => "Bloodsport Arena"
	},

	17394	=> {
		typeID   => 17394,
		groupID  => 319,
		typeName => "Habitation Module - Brothel"
	},

	17395	=> {
		typeID   => 17395,
		groupID  => 319,
		typeName => "Habitation Module - Residential"
	},

	17396	=> {
		typeID   => 17396,
		groupID  => 319,
		typeName => "Habitation Module - Narcotics supermarket"
	},

	17397	=> {
		typeID   => 17397,
		groupID  => 319,
		typeName => "Habitation Module - Casino"
	},

	17398	=> {
		typeID   => 17398,
		groupID  => 319,
		typeName => "Habitation Module - Pleasure hub"
	},

	17399	=> {
		typeID   => 17399,
		groupID  => 319,
		typeName => "Habitation Module - Police base"
	},

	17400	=> {
		typeID   => 17400,
		groupID  => 319,
		typeName => "Habitation Module - Prison"
	},

	17401	=> {
		typeID   => 17401,
		groupID  => 319,
		typeName => "Habitation Module - Roadhouse"
	},

	17402	=> {
		typeID   => 17402,
		groupID  => 449,
		typeName => "Large Blaster Battery"
	},

	17403	=> {
		typeID   => 17403,
		groupID  => 449,
		typeName => "Medium Blaster Battery"
	},

	17404	=> {
		typeID   => 17404,
		groupID  => 449,
		typeName => "Small Blaster Battery"
	},

	17406	=> {
		typeID   => 17406,
		groupID  => 430,
		typeName => "Large Pulse Laser Battery"
	},

	17407	=> {
		typeID   => 17407,
		groupID  => 430,
		typeName => "Medium Pulse Laser Battery"
	},

	17408	=> {
		typeID   => 17408,
		groupID  => 430,
		typeName => "Small Pulse Laser Battery"
	},

	17409	=> {
		typeID   => 17409,
		groupID  => 283,
		typeName => "Former Slaves"
	},

	17412	=> {
		typeID   => 17412,
		groupID  => 821,
		typeName => "Phi-Operation Protector"
	},

	17413	=> {
		typeID   => 17413,
		groupID  => 821,
		typeName => "Captain Rouge"
	},

	17422	=> {
		typeID   => 17422,
		groupID  => 494,
		typeName => "Angels Retirement Home"
	},

	17423	=> {
		typeID   => 17423,
		groupID  => 314,
		typeName => "Gallente 106 Election Holoreel"
	},

	17424	=> {
		typeID   => 17424,
		groupID  => 314,
		typeName => "Amarrian Wheat"
	},

	17425	=> {
		typeID   => 17425,
		groupID  => 450,
		typeName => "Crimson Arkonor"
	},

	17426	=> {
		typeID   => 17426,
		groupID  => 450,
		typeName => "Prime Arkonor"
	},

	17428	=> {
		typeID   => 17428,
		groupID  => 451,
		typeName => "Triclinic Bistot"
	},

	17429	=> {
		typeID   => 17429,
		groupID  => 451,
		typeName => "Monoclinic Bistot"
	},

	17432	=> {
		typeID   => 17432,
		groupID  => 452,
		typeName => "Sharp Crokite"
	},

	17433	=> {
		typeID   => 17433,
		groupID  => 452,
		typeName => "Crystalline Crokite"
	},

	17436	=> {
		typeID   => 17436,
		groupID  => 453,
		typeName => "Onyx Ochre"
	},

	17437	=> {
		typeID   => 17437,
		groupID  => 453,
		typeName => "Obsidian Ochre"
	},

	17440	=> {
		typeID   => 17440,
		groupID  => 454,
		typeName => "Vitric Hedbergite"
	},

	17441	=> {
		typeID   => 17441,
		groupID  => 454,
		typeName => "Glazed Hedbergite"
	},

	17444	=> {
		typeID   => 17444,
		groupID  => 455,
		typeName => "Vivid Hemorphite"
	},

	17445	=> {
		typeID   => 17445,
		groupID  => 455,
		typeName => "Radiant Hemorphite"
	},

	17448	=> {
		typeID   => 17448,
		groupID  => 456,
		typeName => "Pure Jaspet"
	},

	17449	=> {
		typeID   => 17449,
		groupID  => 456,
		typeName => "Pristine Jaspet"
	},

	17452	=> {
		typeID   => 17452,
		groupID  => 457,
		typeName => "Luminous Kernite"
	},

	17453	=> {
		typeID   => 17453,
		groupID  => 457,
		typeName => "Fiery Kernite"
	},

	17455	=> {
		typeID   => 17455,
		groupID  => 458,
		typeName => "Azure Plagioclase"
	},

	17456	=> {
		typeID   => 17456,
		groupID  => 458,
		typeName => "Rich Plagioclase"
	},

	17459	=> {
		typeID   => 17459,
		groupID  => 459,
		typeName => "Solid Pyroxeres"
	},

	17460	=> {
		typeID   => 17460,
		groupID  => 459,
		typeName => "Viscous Pyroxeres"
	},

	17463	=> {
		typeID   => 17463,
		groupID  => 460,
		typeName => "Condensed Scordite"
	},

	17464	=> {
		typeID   => 17464,
		groupID  => 460,
		typeName => "Massive Scordite"
	},

	17466	=> {
		typeID   => 17466,
		groupID  => 461,
		typeName => "Bright Spodumain"
	},

	17467	=> {
		typeID   => 17467,
		groupID  => 461,
		typeName => "Gleaming Spodumain"
	},

	17470	=> {
		typeID   => 17470,
		groupID  => 462,
		typeName => "Concentrated Veldspar"
	},

	17471	=> {
		typeID   => 17471,
		groupID  => 462,
		typeName => "Dense Veldspar"
	},

	17475	=> {
		typeID   => 17475,
		groupID  => 282,
		typeName => "Radioactive Waste"
	},

	17476	=> {
		typeID   => 17476,
		groupID  => 463,
		typeName => "Covetor"
	},

	17477	=> {
		typeID   => 17477,
		groupID  => 477,
		typeName => "Covetor Blueprint"
	},

	17478	=> {
		typeID   => 17478,
		groupID  => 463,
		typeName => "Retriever"
	},

	17479	=> {
		typeID   => 17479,
		groupID  => 477,
		typeName => "Retriever Blueprint"
	},

	17480	=> {
		typeID   => 17480,
		groupID  => 463,
		typeName => "Procurer"
	},

	17481	=> {
		typeID   => 17481,
		groupID  => 477,
		typeName => "Procurer Blueprint"
	},

	17482	=> {
		typeID   => 17482,
		groupID  => 464,
		typeName => "Strip Miner I"
	},

	17483	=> {
		typeID   => 17483,
		groupID  => 490,
		typeName => "Strip Miner I Blueprint"
	},

	17484	=> {
		typeID   => 17484,
		groupID  => 511,
		typeName => "Republic Fleet Rapid Light Missile Launcher"
	},

	17485	=> {
		typeID   => 17485,
		groupID  => 506,
		typeName => "Republic Fleet Cruise Missile Launcher"
	},

	17486	=> {
		typeID   => 17486,
		groupID  => 136,
		typeName => "Republic Fleet Cruise Missile Launcher Blueprint"
	},

	17487	=> {
		typeID   => 17487,
		groupID  => 510,
		typeName => "Republic Fleet Heavy Missile Launcher"
	},

	17488	=> {
		typeID   => 17488,
		groupID  => 507,
		typeName => "Republic Fleet Rocket Launcher"
	},

	17489	=> {
		typeID   => 17489,
		groupID  => 136,
		typeName => "Republic Fleet Rocket Launcher Blueprint"
	},

	17490	=> {
		typeID   => 17490,
		groupID  => 508,
		typeName => "Republic Fleet Torpedo Launcher"
	},

	17491	=> {
		typeID   => 17491,
		groupID  => 509,
		typeName => "Republic Fleet Light Missile Launcher"
	},

	17492	=> {
		typeID   => 17492,
		groupID  => 62,
		typeName => "Republic Fleet Large Armor Repairer"
	},

	17493	=> {
		typeID   => 17493,
		groupID  => 62,
		typeName => "Republic Fleet Medium Armor Repairer"
	},

	17494	=> {
		typeID   => 17494,
		groupID  => 62,
		typeName => "Republic Fleet Small Armor Repairer"
	},

	17495	=> {
		typeID   => 17495,
		groupID  => 77,
		typeName => "Caldari Navy Kinetic Deflection Field"
	},

	17496	=> {
		typeID   => 17496,
		groupID  => 77,
		typeName => "Caldari Navy Explosive Deflection Field"
	},

	17497	=> {
		typeID   => 17497,
		groupID  => 77,
		typeName => "Caldari Navy Thermal Dissipation Field"
	},

	17498	=> {
		typeID   => 17498,
		groupID  => 77,
		typeName => "Caldari Navy Adaptive Invulnerability Field"
	},

	17499	=> {
		typeID   => 17499,
		groupID  => 77,
		typeName => "Caldari Navy EM Ward Field"
	},

	17500	=> {
		typeID   => 17500,
		groupID  => 65,
		typeName => "Caldari Navy Stasis Webifier"
	},

	17501	=> {
		typeID   => 17501,
		groupID  => 145,
		typeName => "Caldari Navy Stasis Webifier Blueprint"
	},

	17502	=> {
		typeID   => 17502,
		groupID  => 328,
		typeName => "Ammatar Navy Armor EM Hardener"
	},

	17503	=> {
		typeID   => 17503,
		groupID  => 348,
		typeName => "Ammatar Navy Armor EM Hardener Blueprint"
	},

	17504	=> {
		typeID   => 17504,
		groupID  => 328,
		typeName => "Ammatar Navy Armor Explosive Hardener"
	},

	17505	=> {
		typeID   => 17505,
		groupID  => 348,
		typeName => "Ammatar Navy Armor Explosive Hardener Blueprint"
	},

	17506	=> {
		typeID   => 17506,
		groupID  => 328,
		typeName => "Ammatar Navy Armor Kinetic Hardener"
	},

	17507	=> {
		typeID   => 17507,
		groupID  => 348,
		typeName => "Ammatar Navy Armor Kinetic Hardener Blueprint"
	},

	17508	=> {
		typeID   => 17508,
		groupID  => 328,
		typeName => "Ammatar Navy Armor Thermal Hardener"
	},

	17509	=> {
		typeID   => 17509,
		groupID  => 348,
		typeName => "Ammatar Navy Armor Thermal Hardener Blueprint"
	},

	17510	=> {
		typeID   => 17510,
		groupID  => 767,
		typeName => "Ammatar Navy Capacitor Power Relay"
	},

	17511	=> {
		typeID   => 17511,
		groupID  => 137,
		typeName => "Ammatar Navy Capacitor Power Relay Blueprint"
	},

	17512	=> {
		typeID   => 17512,
		groupID  => 98,
		typeName => "Ammatar Navy Kinetic Plating"
	},

	17513	=> {
		typeID   => 17513,
		groupID  => 163,
		typeName => "Ammatar Navy Kinetic Plating Blueprint"
	},

	17514	=> {
		typeID   => 17514,
		groupID  => 98,
		typeName => "Ammatar Navy Adaptive Nano Plating"
	},

	17515	=> {
		typeID   => 17515,
		groupID  => 163,
		typeName => "Ammatar Navy Adaptive Nano Plating Blueprint"
	},

	17516	=> {
		typeID   => 17516,
		groupID  => 98,
		typeName => "Ammatar Navy Explosive Plating"
	},

	17517	=> {
		typeID   => 17517,
		groupID  => 163,
		typeName => "Ammatar Navy Explosive Plating Blueprint"
	},

	17518	=> {
		typeID   => 17518,
		groupID  => 98,
		typeName => "Ammatar Navy EM Plating"
	},

	17519	=> {
		typeID   => 17519,
		groupID  => 163,
		typeName => "Ammatar Navy EM Plating Blueprint"
	},

	17520	=> {
		typeID   => 17520,
		groupID  => 212,
		typeName => "Federation Navy Sensor Booster"
	},

	17521	=> {
		typeID   => 17521,
		groupID  => 223,
		typeName => "Federation Navy Sensor Booster Blueprint"
	},

	17522	=> {
		typeID   => 17522,
		groupID  => 769,
		typeName => "Ammatar Navy Reactor Control Unit"
	},

	17523	=> {
		typeID   => 17523,
		groupID  => 137,
		typeName => "Ammatar Navy Reactor Control Unit Blueprint"
	},

	17524	=> {
		typeID   => 17524,
		groupID  => 766,
		typeName => "Ammatar Navy Power Diagnostic System"
	},

	17525	=> {
		typeID   => 17525,
		groupID  => 137,
		typeName => "Ammatar Navy Power Diagnostic System Blueprint"
	},

	17526	=> {
		typeID   => 17526,
		groupID  => 43,
		typeName => "Imperial Navy Cap Recharger"
	},

	17527	=> {
		typeID   => 17527,
		groupID  => 123,
		typeName => "Imperial Navy Cap Recharger Blueprint"
	},

	17528	=> {
		typeID   => 17528,
		groupID  => 767,
		typeName => "Imperial Navy Capacitor Power Relay"
	},

	17529	=> {
		typeID   => 17529,
		groupID  => 137,
		typeName => "Imperial Navy Capacitor Power Relay Blueprint"
	},

	17536	=> {
		typeID   => 17536,
		groupID  => 326,
		typeName => "Ammatar Navy Energized Adaptive Nano Membrane"
	},

	17537	=> {
		typeID   => 17537,
		groupID  => 163,
		typeName => "Ammatar Navy Energized Adaptive Nano Membrane Blueprint"
	},

	17538	=> {
		typeID   => 17538,
		groupID  => 326,
		typeName => "Ammatar Navy Energized Kinetic Membrane"
	},

	17539	=> {
		typeID   => 17539,
		groupID  => 163,
		typeName => "Ammatar Navy Energized Kinetic Membrane Blueprint"
	},

	17540	=> {
		typeID   => 17540,
		groupID  => 326,
		typeName => "Ammatar Navy Energized Explosive Membrane"
	},

	17541	=> {
		typeID   => 17541,
		groupID  => 163,
		typeName => "Ammatar Navy Energized Explosive Membrane Blueprint"
	},

	17542	=> {
		typeID   => 17542,
		groupID  => 326,
		typeName => "Ammatar Navy Energized EM Membrane"
	},

	17543	=> {
		typeID   => 17543,
		groupID  => 163,
		typeName => "Ammatar Navy Energized EM Membrane Blueprint"
	},

	17544	=> {
		typeID   => 17544,
		groupID  => 326,
		typeName => "Ammatar Navy Energized Thermal Membrane"
	},

	17545	=> {
		typeID   => 17545,
		groupID  => 163,
		typeName => "Ammatar Navy Energized Thermal Membrane Blueprint"
	},

	17546	=> {
		typeID   => 17546,
		groupID  => 62,
		typeName => "Imperial Navy Large Armor Repairer"
	},

	17547	=> {
		typeID   => 17547,
		groupID  => 62,
		typeName => "Imperial Navy Medium Armor Repairer"
	},

	17548	=> {
		typeID   => 17548,
		groupID  => 62,
		typeName => "Imperial Navy Small Armor Repairer"
	},

	17549	=> {
		typeID   => 17549,
		groupID  => 98,
		typeName => "Federation Navy Adaptive Nano Plating"
	},

	17550	=> {
		typeID   => 17550,
		groupID  => 163,
		typeName => "Federation Navy Adaptive Nano Plating Blueprint"
	},

	17551	=> {
		typeID   => 17551,
		groupID  => 98,
		typeName => "Federation Navy Kinetic Plating"
	},

	17552	=> {
		typeID   => 17552,
		groupID  => 163,
		typeName => "Federation Navy Kinetic Plating Blueprint"
	},

	17553	=> {
		typeID   => 17553,
		groupID  => 98,
		typeName => "Federation Navy Explosive Plating"
	},

	17554	=> {
		typeID   => 17554,
		groupID  => 163,
		typeName => "Federation Navy Explosive Plating Blueprint"
	},

	17555	=> {
		typeID   => 17555,
		groupID  => 98,
		typeName => "Federation Navy EM Plating"
	},

	17556	=> {
		typeID   => 17556,
		groupID  => 163,
		typeName => "Federation Navy EM Plating Blueprint"
	},

	17557	=> {
		typeID   => 17557,
		groupID  => 98,
		typeName => "Federation Navy Thermal Plating"
	},

	17558	=> {
		typeID   => 17558,
		groupID  => 163,
		typeName => "Federation Navy Thermal Plating Blueprint"
	},

	17559	=> {
		typeID   => 17559,
		groupID  => 65,
		typeName => "Federation Navy Stasis Webifier"
	},

	17561	=> {
		typeID   => 17561,
		groupID  => 145,
		typeName => "Federation Navy Stasis Webifier Blueprint"
	},

	17563	=> {
		typeID   => 17563,
		groupID  => 494,
		typeName => "UNUSED_CargoRig_LCS_DL1_DCP1"
	},

	17565	=> {
		typeID   => 17565,
		groupID  => 470,
		typeName => "Unanchoring Drone"
	},

	17568	=> {
		typeID   => 17568,
		groupID  => 383,
		typeName => "Serpentis Point Defense Battery"
	},

	17569	=> {
		typeID   => 17569,
		groupID  => 383,
		typeName => "Serpentis Light Missile Battery"
	},

	17570	=> {
		typeID   => 17570,
		groupID  => 383,
		typeName => "Serpentis Heavy Missile Battery"
	},

	17571	=> {
		typeID   => 17571,
		groupID  => 383,
		typeName => "Serpentis Cruise Missile Battery"
	},

	17572	=> {
		typeID   => 17572,
		groupID  => 383,
		typeName => "Angel Point Defense Battery"
	},

	17573	=> {
		typeID   => 17573,
		groupID  => 383,
		typeName => "Angel Light Missile Battery"
	},

	17574	=> {
		typeID   => 17574,
		groupID  => 383,
		typeName => "Angel Heavy Missile Battery"
	},

	17575	=> {
		typeID   => 17575,
		groupID  => 383,
		typeName => "Angel Cruise Missile Battery"
	},

	17576	=> {
		typeID   => 17576,
		groupID  => 383,
		typeName => "Minmatar Point Defense Battery"
	},

	17577	=> {
		typeID   => 17577,
		groupID  => 383,
		typeName => "Minmatar Light Missile Battery"
	},

	17578	=> {
		typeID   => 17578,
		groupID  => 383,
		typeName => "Minmatar Heavy Missile Battery"
	},

	17579	=> {
		typeID   => 17579,
		groupID  => 383,
		typeName => "Minmatar Cruise Missile Battery"
	},

	17580	=> {
		typeID   => 17580,
		groupID  => 383,
		typeName => "Sansha Point Defense Battery"
	},

	17581	=> {
		typeID   => 17581,
		groupID  => 383,
		typeName => "Sansha Light Missile Battery"
	},

	17582	=> {
		typeID   => 17582,
		groupID  => 383,
		typeName => "Sansha Heavy Missile Battery"
	},

	17583	=> {
		typeID   => 17583,
		groupID  => 383,
		typeName => "Sansha Cruise Missile Battery"
	},

	17584	=> {
		typeID   => 17584,
		groupID  => 383,
		typeName => "Gallente Point Defense Battery"
	},

	17585	=> {
		typeID   => 17585,
		groupID  => 383,
		typeName => "Gallente Light Missile Battery"
	},

	17586	=> {
		typeID   => 17586,
		groupID  => 383,
		typeName => "Gallente Heavy Missile Battery"
	},

	17587	=> {
		typeID   => 17587,
		groupID  => 383,
		typeName => "Gallente Cruise Missile Battery"
	},

	17588	=> {
		typeID   => 17588,
		groupID  => 383,
		typeName => "Amarr Point Defense Battery"
	},

	17589	=> {
		typeID   => 17589,
		groupID  => 383,
		typeName => "Amarr Light Missile Battery"
	},

	17590	=> {
		typeID   => 17590,
		groupID  => 383,
		typeName => "Amarr Heavy Missile Battery"
	},

	17591	=> {
		typeID   => 17591,
		groupID  => 383,
		typeName => "Amarr Cruise Missile Battery"
	},

	17592	=> {
		typeID   => 17592,
		groupID  => 383,
		typeName => "Blood Point Defense Battery"
	},

	17593	=> {
		typeID   => 17593,
		groupID  => 383,
		typeName => "Blood Light Missile Battery"
	},

	17594	=> {
		typeID   => 17594,
		groupID  => 383,
		typeName => "Blood Heavy Missile Battery"
	},

	17595	=> {
		typeID   => 17595,
		groupID  => 383,
		typeName => "Blood Cruise Missile Battery"
	},

	17596	=> {
		typeID   => 17596,
		groupID  => 383,
		typeName => "Guristas Point Defense Battery"
	},

	17597	=> {
		typeID   => 17597,
		groupID  => 383,
		typeName => "Guristas Light Missile Battery"
	},

	17598	=> {
		typeID   => 17598,
		groupID  => 383,
		typeName => "Guristas Heavy Missile Battery"
	},

	17599	=> {
		typeID   => 17599,
		groupID  => 383,
		typeName => "Guristas Cruise Missile Batteries"
	},

	17600	=> {
		typeID   => 17600,
		groupID  => 383,
		typeName => "Caldari Point Defense Battery"
	},

	17601	=> {
		typeID   => 17601,
		groupID  => 383,
		typeName => "Caldari Light Missile Battery"
	},

	17602	=> {
		typeID   => 17602,
		groupID  => 383,
		typeName => "Caldari Heavy Missile Battery"
	},

	17603	=> {
		typeID   => 17603,
		groupID  => 383,
		typeName => "Caldari Cruise Missile Battery"
	},

	17605	=> {
		typeID   => 17605,
		groupID  => 383,
		typeName => "Angel Stasis Tower"
	},

	17606	=> {
		typeID   => 17606,
		groupID  => 383,
		typeName => "Minmatar Stasis Tower"
	},

	17607	=> {
		typeID   => 17607,
		groupID  => 383,
		typeName => "Sansha Stasis Tower"
	},

	17608	=> {
		typeID   => 17608,
		groupID  => 383,
		typeName => "Gallente Stasis Tower"
	},

	17609	=> {
		typeID   => 17609,
		groupID  => 383,
		typeName => "Amarr Stasis Tower"
	},

	17610	=> {
		typeID   => 17610,
		groupID  => 383,
		typeName => "Blood Stasis Tower"
	},

	17611	=> {
		typeID   => 17611,
		groupID  => 383,
		typeName => "Guristas Stasis Tower"
	},

	17612	=> {
		typeID   => 17612,
		groupID  => 383,
		typeName => "Caldari Stasis Tower"
	},

	17613	=> {
		typeID   => 17613,
		groupID  => 494,
		typeName => "Inner Sanctum"
	},

	17614	=> {
		typeID   => 17614,
		groupID  => 494,
		typeName => "Thorak's Biodome Garden"
	},

	17615	=> {
		typeID   => 17615,
		groupID  => 820,
		typeName => "Corpus Crimson Commander"
	},

	17616	=> {
		typeID   => 17616,
		groupID  => 820,
		typeName => "Mul-Zatath Gatekeeper"
	},

	17617	=> {
		typeID   => 17617,
		groupID  => 353,
		typeName => "QA Speed Limiter Module"
	},

	17619	=> {
		typeID   => 17619,
		groupID  => 25,
		typeName => "Caldari Navy Hookbill"
	},

	17620	=> {
		typeID   => 17620,
		groupID  => 105,
		typeName => "Caldari Navy Hookbill Blueprint"
	},

	17621	=> {
		typeID   => 17621,
		groupID  => 471,
		typeName => "Corporate Hangar Array"
	},

	17622	=> {
		typeID   => 17622,
		groupID  => 818,
		typeName => "Jenmai Hirokan"
	},

	17623	=> {
		typeID   => 17623,
		groupID  => 370,
		typeName => "Jenmei's Tag"
	},

	17624	=> {
		typeID   => 17624,
		groupID  => 314,
		typeName => "Elena Gazky's DNA"
	},

	17625	=> {
		typeID   => 17625,
		groupID  => 818,
		typeName => "Imai Kenon"
	},

	17626	=> {
		typeID   => 17626,
		groupID  => 319,
		typeName => "Stationary Bestower"
	},

	17627	=> {
		typeID   => 17627,
		groupID  => 319,
		typeName => "Stationary Mammoth"
	},

	17628	=> {
		typeID   => 17628,
		groupID  => 319,
		typeName => "Stationary Iteron V"
	},

	17629	=> {
		typeID   => 17629,
		groupID  => 319,
		typeName => "Stationary Tayra"
	},

	17630	=> {
		typeID   => 17630,
		groupID  => 370,
		typeName => "Imai Kenon's Tag"
	},

	17631	=> {
		typeID   => 17631,
		groupID  => 494,
		typeName => "Deadspace Synchronization HQ"
	},

	17632	=> {
		typeID   => 17632,
		groupID  => 494,
		typeName => "CreoCorp Main Factory"
	},

	17633	=> {
		typeID   => 17633,
		groupID  => 494,
		typeName => "UNUSED_HabMod_Residential_LCS"
	},

	17634	=> {
		typeID   => 17634,
		groupID  => 26,
		typeName => "Caracal Navy Issue"
	},

	17635	=> {
		typeID   => 17635,
		groupID  => 106,
		typeName => "Caracal Navy Issue Blueprint"
	},

	17636	=> {
		typeID   => 17636,
		groupID  => 27,
		typeName => "Raven Navy Issue"
	},

	17637	=> {
		typeID   => 17637,
		groupID  => 107,
		typeName => "Raven Navy Issue Blueprint"
	},

	17638	=> {
		typeID   => 17638,
		groupID  => 383,
		typeName => "Sentinel Bloodraider"
	},

	17639	=> {
		typeID   => 17639,
		groupID  => 409,
		typeName => "Taisu Magdesh's Insignia"
	},

	17640	=> {
		typeID   => 17640,
		groupID  => 314,
		typeName => "Mordur's DNA"
	},

	17641	=> {
		typeID   => 17641,
		groupID  => 594,
		typeName => "Arch Angel Raelek"
	},

	17642	=> {
		typeID   => 17642,
		groupID  => 370,
		typeName => "Raelek's Tag"
	},

	17643	=> {
		typeID   => 17643,
		groupID  => 314,
		typeName => "Caldari AZ-1 Nexus Chip"
	},

	17644	=> {
		typeID   => 17644,
		groupID  => 319,
		typeName => "Asteroid Deadspace Mining Post"
	},

	17645	=> {
		typeID   => 17645,
		groupID  => 494,
		typeName => "Deadspace Control Station"
	},

	17646	=> {
		typeID   => 17646,
		groupID  => 314,
		typeName => "Caldari CU-1 Nexus Chip"
	},

	17647	=> {
		typeID   => 17647,
		groupID  => 314,
		typeName => "Caldari BY-1 Nexus Chip"
	},

	17648	=> {
		typeID   => 17648,
		groupID  => 85,
		typeName => "Antimatter Charge XL"
	},

	17649	=> {
		typeID   => 17649,
		groupID  => 167,
		typeName => "Antimatter Charge XL Blueprint"
	},

	17650	=> {
		typeID   => 17650,
		groupID  => 85,
		typeName => "Iridium Charge XL"
	},

	17651	=> {
		typeID   => 17651,
		groupID  => 167,
		typeName => "Iridium Charge XL Blueprint"
	},

	17652	=> {
		typeID   => 17652,
		groupID  => 85,
		typeName => "Iron Charge XL"
	},

	17653	=> {
		typeID   => 17653,
		groupID  => 167,
		typeName => "Iron Charge XL Blueprint"
	},

	17654	=> {
		typeID   => 17654,
		groupID  => 85,
		typeName => "Lead Charge XL"
	},

	17655	=> {
		typeID   => 17655,
		groupID  => 167,
		typeName => "Lead Charge XL Blueprint"
	},

	17656	=> {
		typeID   => 17656,
		groupID  => 85,
		typeName => "Plutonium Charge XL"
	},

	17657	=> {
		typeID   => 17657,
		groupID  => 167,
		typeName => "Plutonium Charge XL Blueprint"
	},

	17658	=> {
		typeID   => 17658,
		groupID  => 85,
		typeName => "Thorium Charge XL"
	},

	17659	=> {
		typeID   => 17659,
		groupID  => 167,
		typeName => "Thorium Charge XL Blueprint"
	},

	17660	=> {
		typeID   => 17660,
		groupID  => 85,
		typeName => "Tungsten Charge XL"
	},

	17661	=> {
		typeID   => 17661,
		groupID  => 167,
		typeName => "Tungsten Charge XL Blueprint"
	},

	17662	=> {
		typeID   => 17662,
		groupID  => 85,
		typeName => "Uranium Charge XL"
	},

	17663	=> {
		typeID   => 17663,
		groupID  => 167,
		typeName => "Uranium Charge XL Blueprint"
	},

	17664	=> {
		typeID   => 17664,
		groupID  => 83,
		typeName => "Carbonized Lead XL"
	},

	17665	=> {
		typeID   => 17665,
		groupID  => 165,
		typeName => "Carbonized Lead XL Blueprint"
	},

	17666	=> {
		typeID   => 17666,
		groupID  => 83,
		typeName => "Depleted Uranium XL"
	},

	17667	=> {
		typeID   => 17667,
		groupID  => 165,
		typeName => "Depleted Uranium XL Blueprint"
	},

	17668	=> {
		typeID   => 17668,
		groupID  => 83,
		typeName => "EMP XL"
	},

	17669	=> {
		typeID   => 17669,
		groupID  => 165,
		typeName => "EMP XL Blueprint"
	},

	17670	=> {
		typeID   => 17670,
		groupID  => 83,
		typeName => "Fusion XL"
	},

	17671	=> {
		typeID   => 17671,
		groupID  => 165,
		typeName => "Fusion XL Blueprint"
	},

	17672	=> {
		typeID   => 17672,
		groupID  => 83,
		typeName => "Nuclear XL"
	},

	17673	=> {
		typeID   => 17673,
		groupID  => 165,
		typeName => "Nuclear XL Blueprint"
	},

	17674	=> {
		typeID   => 17674,
		groupID  => 83,
		typeName => "Phased Plasma XL"
	},

	17675	=> {
		typeID   => 17675,
		groupID  => 165,
		typeName => "Phased Plasma XL Blueprint"
	},

	17676	=> {
		typeID   => 17676,
		groupID  => 83,
		typeName => "Proton XL"
	},

	17677	=> {
		typeID   => 17677,
		groupID  => 165,
		typeName => "Proton XL Blueprint"
	},

	17678	=> {
		typeID   => 17678,
		groupID  => 83,
		typeName => "Titanium Sabot XL"
	},

	17679	=> {
		typeID   => 17679,
		groupID  => 165,
		typeName => "Titanium Sabot XL Blueprint"
	},

	17680	=> {
		typeID   => 17680,
		groupID  => 86,
		typeName => "Gamma XL"
	},

	17681	=> {
		typeID   => 17681,
		groupID  => 168,
		typeName => "Gamma XL Blueprint"
	},

	17682	=> {
		typeID   => 17682,
		groupID  => 86,
		typeName => "Infrared XL"
	},

	17683	=> {
		typeID   => 17683,
		groupID  => 168,
		typeName => "Infrared XL Blueprint"
	},

	17684	=> {
		typeID   => 17684,
		groupID  => 86,
		typeName => "Microwave XL"
	},

	17685	=> {
		typeID   => 17685,
		groupID  => 168,
		typeName => "Microwave XL Blueprint"
	},

	17686	=> {
		typeID   => 17686,
		groupID  => 86,
		typeName => "Multifrequency XL"
	},

	17687	=> {
		typeID   => 17687,
		groupID  => 168,
		typeName => "Multifrequency XL Blueprint"
	},

	17688	=> {
		typeID   => 17688,
		groupID  => 86,
		typeName => "Radio XL"
	},

	17689	=> {
		typeID   => 17689,
		groupID  => 168,
		typeName => "Radio XL Blueprint"
	},

	17690	=> {
		typeID   => 17690,
		groupID  => 86,
		typeName => "Standard XL"
	},

	17691	=> {
		typeID   => 17691,
		groupID  => 168,
		typeName => "Standard XL Blueprint"
	},

	17692	=> {
		typeID   => 17692,
		groupID  => 86,
		typeName => "Ultraviolet XL"
	},

	17693	=> {
		typeID   => 17693,
		groupID  => 168,
		typeName => "Ultraviolet XL Blueprint"
	},

	17694	=> {
		typeID   => 17694,
		groupID  => 86,
		typeName => "Xray XL"
	},

	17695	=> {
		typeID   => 17695,
		groupID  => 168,
		typeName => "Xray XL Blueprint"
	},

	17696	=> {
		typeID   => 17696,
		groupID  => 472,
		typeName => "Old System Scanner"
	},

	17701	=> {
		typeID   => 17701,
		groupID  => 473,
		typeName => "Tracking Array"
	},

	17703	=> {
		typeID   => 17703,
		groupID  => 25,
		typeName => "Imperial Navy Slicer"
	},

	17704	=> {
		typeID   => 17704,
		groupID  => 105,
		typeName => "Imperial Navy Slicer Blueprint"
	},

	17705	=> {
		typeID   => 17705,
		groupID  => 25,
		typeName => "Khanid Navy Frigate"
	},

	17706	=> {
		typeID   => 17706,
		groupID  => 105,
		typeName => "Khanid Navy Frigate Blueprint"
	},

	17707	=> {
		typeID   => 17707,
		groupID  => 25,
		typeName => "Mordus Frigate"
	},

	17708	=> {
		typeID   => 17708,
		groupID  => 105,
		typeName => "Mordus Frigate Blueprint"
	},

	17709	=> {
		typeID   => 17709,
		groupID  => 26,
		typeName => "Omen Navy Issue"
	},

	17710	=> {
		typeID   => 17710,
		groupID  => 106,
		typeName => "Omen Navy Issue Blueprint"
	},

	17713	=> {
		typeID   => 17713,
		groupID  => 26,
		typeName => "Stabber Fleet Issue"
	},

	17714	=> {
		typeID   => 17714,
		groupID  => 106,
		typeName => "Stabber Fleet Issue Blueprint"
	},

	17715	=> {
		typeID   => 17715,
		groupID  => 26,
		typeName => "Gila"
	},

	17716	=> {
		typeID   => 17716,
		groupID  => 106,
		typeName => "Gila Blueprint"
	},

	17718	=> {
		typeID   => 17718,
		groupID  => 26,
		typeName => "Phantasm"
	},

	17719	=> {
		typeID   => 17719,
		groupID  => 106,
		typeName => "Phantasm Blueprint"
	},

	17720	=> {
		typeID   => 17720,
		groupID  => 26,
		typeName => "Cynabal"
	},

	17721	=> {
		typeID   => 17721,
		groupID  => 106,
		typeName => "Cynabal Blueprint"
	},

	17722	=> {
		typeID   => 17722,
		groupID  => 26,
		typeName => "Vigilant"
	},

	17723	=> {
		typeID   => 17723,
		groupID  => 106,
		typeName => "Vigilant Blueprint"
	},

	17726	=> {
		typeID   => 17726,
		groupID  => 27,
		typeName => "Apocalypse Navy Issue"
	},

	17727	=> {
		typeID   => 17727,
		groupID  => 107,
		typeName => "Apocalypse Navy Issue Blueprint"
	},

	17728	=> {
		typeID   => 17728,
		groupID  => 27,
		typeName => "Megathron Navy Issue"
	},

	17729	=> {
		typeID   => 17729,
		groupID  => 107,
		typeName => "Megathron Navy Issue Blueprint"
	},

	17732	=> {
		typeID   => 17732,
		groupID  => 27,
		typeName => "Tempest Fleet Issue"
	},

	17733	=> {
		typeID   => 17733,
		groupID  => 107,
		typeName => "Tempest Fleet Issue Blueprint"
	},

	17736	=> {
		typeID   => 17736,
		groupID  => 27,
		typeName => "Nightmare"
	},

	17737	=> {
		typeID   => 17737,
		groupID  => 107,
		typeName => "Nightmare Blueprint"
	},

	17738	=> {
		typeID   => 17738,
		groupID  => 27,
		typeName => "Machariel"
	},

	17739	=> {
		typeID   => 17739,
		groupID  => 107,
		typeName => "Machariel Blueprint"
	},

	17740	=> {
		typeID   => 17740,
		groupID  => 27,
		typeName => "Vindicator"
	},

	17741	=> {
		typeID   => 17741,
		groupID  => 107,
		typeName => "Vindicator Blueprint"
	},

	17742	=> {
		typeID   => 17742,
		groupID  => 818,
		typeName => "Uleen Bloodsworn"
	},

	17743	=> {
		typeID   => 17743,
		groupID  => 370,
		typeName => "Uleen Bloodsworn's Tag"
	},

	17744	=> {
		typeID   => 17744,
		groupID  => 821,
		typeName => "Purple Particle Research Patrol"
	},

	17745	=> {
		typeID   => 17745,
		groupID  => 821,
		typeName => "General Hixous Puxley"
	},

	17746	=> {
		typeID   => 17746,
		groupID  => 821,
		typeName => "Supply Headman"
	},

	17747	=> {
		typeID   => 17747,
		groupID  => 494,
		typeName => "Docked & Loaded Mammoth"
	},

	17748	=> {
		typeID   => 17748,
		groupID  => 494,
		typeName => "Megathron under frantic repair"
	},

	17749	=> {
		typeID   => 17749,
		groupID  => 821,
		typeName => "The Antimatter Channeler"
	},

	17754	=> {
		typeID   => 17754,
		groupID  => 283,
		typeName => "Activists"
	},

	17755	=> {
		typeID   => 17755,
		groupID  => 314,
		typeName => "Pro-Trade Pamphlets"
	},

	17756	=> {
		typeID   => 17756,
		groupID  => 314,
		typeName => "Virgin Forest Pulp"
	},

	17757	=> {
		typeID   => 17757,
		groupID  => 314,
		typeName => "Bronze Sculpture"
	},

	17759	=> {
		typeID   => 17759,
		groupID  => 314,
		typeName => "Silver Sculpture"
	},

	17761	=> {
		typeID   => 17761,
		groupID  => 314,
		typeName => "Gold Sculpture"
	},

	17763	=> {
		typeID   => 17763,
		groupID  => 319,
		typeName => "Powerful EM Forcefield"
	},

	17764	=> {
		typeID   => 17764,
		groupID  => 404,
		typeName => "Ultra Fast Silo"
	},

	17765	=> {
		typeID   => 17765,
		groupID  => 283,
		typeName => "Exotic Dancers, Female"
	},

	17767	=> {
		typeID   => 17767,
		groupID  => 283,
		typeName => "Kameiras"
	},

	17769	=> {
		typeID   => 17769,
		groupID  => 428,
		typeName => "Fluxed Condensates"
	},

	17770	=> {
		typeID   => 17770,
		groupID  => 426,
		typeName => "Large AutoCannon Battery"
	},

	17771	=> {
		typeID   => 17771,
		groupID  => 426,
		typeName => "Medium AutoCannon Battery"
	},

	17772	=> {
		typeID   => 17772,
		groupID  => 426,
		typeName => "Small AutoCannon Battery"
	},

	17773	=> {
		typeID   => 17773,
		groupID  => 417,
		typeName => "XL Torpedo Battery"
	},

	17774	=> {
		typeID   => 17774,
		groupID  => 9,
		typeName => "Ice Field"
	},

	17775	=> {
		typeID   => 17775,
		groupID  => 319,
		typeName => "Starbase Major Assembly Array"
	},

	17776	=> {
		typeID   => 17776,
		groupID  => 319,
		typeName => "Starbase Minor Assembly Array"
	},

	17777	=> {
		typeID   => 17777,
		groupID  => 319,
		typeName => "Amarr Starbase Control Tower"
	},

	17778	=> {
		typeID   => 17778,
		groupID  => 319,
		typeName => "Caldari Starbase Control Tower"
	},

	17779	=> {
		typeID   => 17779,
		groupID  => 319,
		typeName => "Gallente Starbase Control Tower"
	},

	17780	=> {
		typeID   => 17780,
		groupID  => 319,
		typeName => "Minmatar Starbase Control Tower"
	},

	17781	=> {
		typeID   => 17781,
		groupID  => 319,
		typeName => "Starbase Hangar"
	},

	17782	=> {
		typeID   => 17782,
		groupID  => 319,
		typeName => "Starbase Ion Field Projection Battery"
	},

	17783	=> {
		typeID   => 17783,
		groupID  => 319,
		typeName => "Starbase Force Field Array"
	},

	17784	=> {
		typeID   => 17784,
		groupID  => 319,
		typeName => "Starbase Auxiliary Power Array"
	},

	17785	=> {
		typeID   => 17785,
		groupID  => 319,
		typeName => "Starbase Reactor Array"
	},

	17786	=> {
		typeID   => 17786,
		groupID  => 319,
		typeName => "Starbase Shield Generator"
	},

	17787	=> {
		typeID   => 17787,
		groupID  => 319,
		typeName => "Starbase Storage Facility"
	},

	17788	=> {
		typeID   => 17788,
		groupID  => 319,
		typeName => "Starbase Moon Harvester"
	},

	17789	=> {
		typeID   => 17789,
		groupID  => 319,
		typeName => "Starbase Medium Refinery"
	},

	17790	=> {
		typeID   => 17790,
		groupID  => 319,
		typeName => "Starbase Minor Refinery"
	},

	17791	=> {
		typeID   => 17791,
		groupID  => 283,
		typeName => "Freedom Fighters"
	},

	17793	=> {
		typeID   => 17793,
		groupID  => 314,
		typeName => "Amarr TIL-1 Nexus Chip"
	},

	17794	=> {
		typeID   => 17794,
		groupID  => 314,
		typeName => "Amarr KIU-1 Nexus Chip"
	},

	17795	=> {
		typeID   => 17795,
		groupID  => 314,
		typeName => "Amarr MIY-1 Nexus Chip"
	},

	17796	=> {
		typeID   => 17796,
		groupID  => 283,
		typeName => "Elite Slaves"
	},

	17798	=> {
		typeID   => 17798,
		groupID  => 496,
		typeName => "Dented Cask"
	},

	17799	=> {
		typeID   => 17799,
		groupID  => 494,
		typeName => "Non-Secured Asteroid Colony"
	},

	17800	=> {
		typeID   => 17800,
		groupID  => 819,
		typeName => "Retired Mining Veteran"
	},

	17801	=> {
		typeID   => 17801,
		groupID  => 409,
		typeName => "Akori's Insignia"
	},

	17802	=> {
		typeID   => 17802,
		groupID  => 409,
		typeName => "Ibrahim's Insignia"
	},

	17803	=> {
		typeID   => 17803,
		groupID  => 409,
		typeName => "Karothas's Insignia"
	},

	17812	=> {
		typeID   => 17812,
		groupID  => 25,
		typeName => "Republic Fleet Firetail"
	},

	17813	=> {
		typeID   => 17813,
		groupID  => 105,
		typeName => "Republic Fleet Firetail Blueprint"
	},

	17814	=> {
		typeID   => 17814,
		groupID  => 314,
		typeName => "Minmatar UUC Nexus Chip"
	},

	17815	=> {
		typeID   => 17815,
		groupID  => 314,
		typeName => "Minmatar UUA Nexus Chip"
	},

	17816	=> {
		typeID   => 17816,
		groupID  => 314,
		typeName => "Minmatar UUB Nexus Chip"
	},

	17817	=> {
		typeID   => 17817,
		groupID  => 409,
		typeName => "Genom Tara's Insignia"
	},

	17818	=> {
		typeID   => 17818,
		groupID  => 494,
		typeName => "Serpentis Supply Stronghold"
	},

	17820	=> {
		typeID   => 17820,
		groupID  => 494,
		typeName => "Supply Traffic Management"
	},

	17821	=> {
		typeID   => 17821,
		groupID  => 494,
		typeName => "Slaver Rig Control Tower"
	},

	17822	=> {
		typeID   => 17822,
		groupID  => 494,
		typeName => "Staff Quarters"
	},

	17823	=> {
		typeID   => 17823,
		groupID  => 820,
		typeName => "Serpentis Chief of Security"
	},

	17824	=> {
		typeID   => 17824,
		groupID  => 820,
		typeName => "Serpentis Refinery Headmaster"
	},

	17826	=> {
		typeID   => 17826,
		groupID  => 474,
		typeName => "Traffic Management Passkey"
	},

	17827	=> {
		typeID   => 17827,
		groupID  => 474,
		typeName => "Serpentis Staff Passcard"
	},

	17828	=> {
		typeID   => 17828,
		groupID  => 474,
		typeName => "Security Corridor Pass"
	},

	17829	=> {
		typeID   => 17829,
		groupID  => 474,
		typeName => "Headmaster Administration Keycard"
	},

	17830	=> {
		typeID   => 17830,
		groupID  => 474,
		typeName => "Inner Sanctum Passcard"
	},

	17831	=> {
		typeID   => 17831,
		groupID  => 366,
		typeName => "Acceleration Gate"
	},

	17832	=> {
		typeID   => 17832,
		groupID  => 328,
		typeName => "Federation Navy Armor EM Hardener"
	},

	17833	=> {
		typeID   => 17833,
		groupID  => 348,
		typeName => "Federation Navy Armor EM Hardener Blueprint"
	},

	17834	=> {
		typeID   => 17834,
		groupID  => 328,
		typeName => "Federation Navy Armor Explosive Hardener"
	},

	17835	=> {
		typeID   => 17835,
		groupID  => 348,
		typeName => "Federation Navy Armor Explosive Hardener Blueprint"
	},

	17836	=> {
		typeID   => 17836,
		groupID  => 328,
		typeName => "Federation Navy Armor Kinetic Hardener"
	},

	17837	=> {
		typeID   => 17837,
		groupID  => 348,
		typeName => "Federation Navy Armor Kinetic Hardener Blueprint"
	},

	17838	=> {
		typeID   => 17838,
		groupID  => 328,
		typeName => "Federation Navy Armor Thermal Hardener"
	},

	17839	=> {
		typeID   => 17839,
		groupID  => 348,
		typeName => "Federation Navy Armor Thermal Hardener Blueprint"
	},

	17840	=> {
		typeID   => 17840,
		groupID  => 314,
		typeName => "Zor's DNA"
	},

	17841	=> {
		typeID   => 17841,
		groupID  => 25,
		typeName => "Federation Navy Comet"
	},

	17842	=> {
		typeID   => 17842,
		groupID  => 105,
		typeName => "Federation Navy Comet Blueprint"
	},

	17843	=> {
		typeID   => 17843,
		groupID  => 26,
		typeName => "Vexor Navy Issue"
	},

	17844	=> {
		typeID   => 17844,
		groupID  => 106,
		typeName => "Vexor Navy Issue Blueprint"
	},

	17846	=> {
		typeID   => 17846,
		groupID  => 818,
		typeName => "Lazarus Trezun"
	},

	17847	=> {
		typeID   => 17847,
		groupID  => 370,
		typeName => "Lazarus's Tag"
	},

	17848	=> {
		typeID   => 17848,
		groupID  => 314,
		typeName => "Gallente Gamma Nexus Chip"
	},

	17849	=> {
		typeID   => 17849,
		groupID  => 314,
		typeName => "Gallente Beta Nexus Chip"
	},

	17850	=> {
		typeID   => 17850,
		groupID  => 314,
		typeName => "Gallente Alpha Nexus Chip"
	},

	17851	=> {
		typeID   => 17851,
		groupID  => 816,
		typeName => "Faramon Zaccori"
	},

	17852	=> {
		typeID   => 17852,
		groupID  => 370,
		typeName => "Faramon's Tag"
	},

	17853	=> {
		typeID   => 17853,
		groupID  => 474,
		typeName => "Crimson Hand Level 3 Passcard"
	},

	17854	=> {
		typeID   => 17854,
		groupID  => 474,
		typeName => "Crimson Hand Level 1 Passcard"
	},

	17855	=> {
		typeID   => 17855,
		groupID  => 474,
		typeName => "Crimson Hand Level 2 Passcard"
	},

	17856	=> {
		typeID   => 17856,
		groupID  => 474,
		typeName => "Crimson Hand Level 4 Passcard"
	},

	17857	=> {
		typeID   => 17857,
		groupID  => 476,
		typeName => "Mjolnir XL Torpedo"
	},

	17858	=> {
		typeID   => 17858,
		groupID  => 166,
		typeName => "Mjolnir XL Torpedo Blueprint"
	},

	17859	=> {
		typeID   => 17859,
		groupID  => 476,
		typeName => "Scourge XL Torpedo"
	},

	17860	=> {
		typeID   => 17860,
		groupID  => 166,
		typeName => "Scourge XL Torpedo Blueprint"
	},

	17861	=> {
		typeID   => 17861,
		groupID  => 476,
		typeName => "Inferno XL Torpedo"
	},

	17862	=> {
		typeID   => 17862,
		groupID  => 166,
		typeName => "Inferno XL Torpedo Blueprint"
	},

	17863	=> {
		typeID   => 17863,
		groupID  => 476,
		typeName => "Nova XL Torpedo"
	},

	17864	=> {
		typeID   => 17864,
		groupID  => 166,
		typeName => "Nova XL Torpedo Blueprint"
	},

	17865	=> {
		typeID   => 17865,
		groupID  => 467,
		typeName => "Iridescent Gneiss"
	},

	17866	=> {
		typeID   => 17866,
		groupID  => 467,
		typeName => "Prismatic Gneiss"
	},

	17867	=> {
		typeID   => 17867,
		groupID  => 469,
		typeName => "Silvery Omber"
	},

	17868	=> {
		typeID   => 17868,
		groupID  => 469,
		typeName => "Golden Omber"
	},

	17869	=> {
		typeID   => 17869,
		groupID  => 468,
		typeName => "Magma Mercoxit"
	},

	17870	=> {
		typeID   => 17870,
		groupID  => 468,
		typeName => "Vitreous Mercoxit"
	},

	17871	=> {
		typeID   => 17871,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Remote Armor Repair Systems RA-703"
	},

	17873	=> {
		typeID   => 17873,
		groupID  => 472,
		typeName => "System Scanner I"
	},

	17874	=> {
		typeID   => 17874,
		groupID  => 478,
		typeName => "System Scanner I Blueprint"
	},

	17875	=> {
		typeID   => 17875,
		groupID  => 383,
		typeName => "Sentinel Angel"
	},

	17876	=> {
		typeID   => 17876,
		groupID  => 383,
		typeName => "Sentinel Sansha"
	},

	17877	=> {
		typeID   => 17877,
		groupID  => 383,
		typeName => "Sentinel Serpentis"
	},

	17878	=> {
		typeID   => 17878,
		groupID  => 383,
		typeName => "Sentinel Chimera Strain Mother"
	},

	17879	=> {
		typeID   => 17879,
		groupID  => 383,
		typeName => "Sentinel Jormungand Strain Mother"
	},

	17880	=> {
		typeID   => 17880,
		groupID  => 383,
		typeName => "Sentinel Gallente"
	},

	17884	=> {
		typeID   => 17884,
		groupID  => 472,
		typeName => "Recon System Scanner"
	},

	17885	=> {
		typeID   => 17885,
		groupID  => 478,
		typeName => "Recon System Scanner Blueprint"
	},

	17887	=> {
		typeID   => 17887,
		groupID  => 423,
		typeName => "Oxygen Isotopes"
	},

	17888	=> {
		typeID   => 17888,
		groupID  => 423,
		typeName => "Nitrogen Isotopes"
	},

	17889	=> {
		typeID   => 17889,
		groupID  => 423,
		typeName => "Hydrogen Isotopes"
	},

	17890	=> {
		typeID   => 17890,
		groupID  => 819,
		typeName => "Serpentis Drugstore Overseer"
	},

	17891	=> {
		typeID   => 17891,
		groupID  => 494,
		typeName => "Gate Security"
	},

	17892	=> {
		typeID   => 17892,
		groupID  => 474,
		typeName => "Drugdealer Passcard to Storage Area"
	},

	17893	=> {
		typeID   => 17893,
		groupID  => 314,
		typeName => "High-Tech Data Chip"
	},

	17894	=> {
		typeID   => 17894,
		groupID  => 314,
		typeName => "High-Tech Scanner"
	},

	17895	=> {
		typeID   => 17895,
		groupID  => 314,
		typeName => "High-Tech Manufacturing Tools"
	},

	17897	=> {
		typeID   => 17897,
		groupID  => 314,
		typeName => "High-Tech Small Arms"
	},

	17898	=> {
		typeID   => 17898,
		groupID  => 1040,
		typeName => "High-Tech Transmitters"
	},

	17899	=> {
		typeID   => 17899,
		groupID  => 480,
		typeName => "Stealth Emitter Array"
	},

	17900	=> {
		typeID   => 17900,
		groupID  => 821,
		typeName => "Crimson Lord"
	},

	17901	=> {
		typeID   => 17901,
		groupID  => 481,
		typeName => "Scan Probe Launcher II"
	},

	17902	=> {
		typeID   => 17902,
		groupID  => 918,
		typeName => "Scan Probe Launcher II Blueprint"
	},

	17903	=> {
		typeID   => 17903,
		groupID  => 819,
		typeName => "Outpost Security Officer"
	},

	17904	=> {
		typeID   => 17904,
		groupID  => 474,
		typeName => "Sansha Outpost Securitycard"
	},

	17905	=> {
		typeID   => 17905,
		groupID  => 474,
		typeName => "Creo-Synchronization Pass"
	},

	17906	=> {
		typeID   => 17906,
		groupID  => 474,
		typeName => "Factory Gatekey"
	},

	17907	=> {
		typeID   => 17907,
		groupID  => 474,
		typeName => "Dented Cipher"
	},

	17908	=> {
		typeID   => 17908,
		groupID  => 386,
		typeName => "QA Cruise Missile"
	},

	17910	=> {
		typeID   => 17910,
		groupID  => 474,
		typeName => "Ruined Stargate Cipher"
	},

	17911	=> {
		typeID   => 17911,
		groupID  => 474,
		typeName => "Supply Ship Pass"
	},

	17912	=> {
		typeID   => 17912,
		groupID  => 483,
		typeName => "Modulated Strip Miner II"
	},

	17913	=> {
		typeID   => 17913,
		groupID  => 490,
		typeName => "Modulated Strip Miner II Blueprint"
	},

	17916	=> {
		typeID   => 17916,
		groupID  => 474,
		typeName => "Tritan's Forked Key"
	},

	17917	=> {
		typeID   => 17917,
		groupID  => 818,
		typeName => "Rogue Pirate Grunt"
	},

	17918	=> {
		typeID   => 17918,
		groupID  => 27,
		typeName => "Rattlesnake"
	},

	17919	=> {
		typeID   => 17919,
		groupID  => 107,
		typeName => "Rattlesnake Blueprint"
	},

	17920	=> {
		typeID   => 17920,
		groupID  => 27,
		typeName => "Bhaalgorn"
	},

	17921	=> {
		typeID   => 17921,
		groupID  => 107,
		typeName => "Bhaalgorn Blueprint"
	},

	17922	=> {
		typeID   => 17922,
		groupID  => 26,
		typeName => "Ashimmu"
	},

	17923	=> {
		typeID   => 17923,
		groupID  => 106,
		typeName => "Ashimmu Blueprint"
	},

	17924	=> {
		typeID   => 17924,
		groupID  => 25,
		typeName => "Succubus"
	},

	17925	=> {
		typeID   => 17925,
		groupID  => 105,
		typeName => "Succubus Blueprint"
	},

	17926	=> {
		typeID   => 17926,
		groupID  => 25,
		typeName => "Cruor"
	},

	17927	=> {
		typeID   => 17927,
		groupID  => 105,
		typeName => "Cruor Blueprint"
	},

	17928	=> {
		typeID   => 17928,
		groupID  => 25,
		typeName => "Daredevil"
	},

	17929	=> {
		typeID   => 17929,
		groupID  => 105,
		typeName => "Daredevil Blueprint"
	},

	17930	=> {
		typeID   => 17930,
		groupID  => 25,
		typeName => "Worm"
	},

	17931	=> {
		typeID   => 17931,
		groupID  => 105,
		typeName => "Worm Blueprint"
	},

	17932	=> {
		typeID   => 17932,
		groupID  => 25,
		typeName => "Dramiel"
	},

	17933	=> {
		typeID   => 17933,
		groupID  => 105,
		typeName => "Dramiel Blueprint"
	},

	17938	=> {
		typeID   => 17938,
		groupID  => 481,
		typeName => "Core Probe Launcher I"
	},

	17939	=> {
		typeID   => 17939,
		groupID  => 918,
		typeName => "Core Probe Launcher I Blueprint"
	},

	17940	=> {
		typeID   => 17940,
		groupID  => 257,
		typeName => "Mining Barge"
	},

	17941	=> {
		typeID   => 17941,
		groupID  => 436,
		typeName => "Caesarium Cadmide Reaction"
	},

	17942	=> {
		typeID   => 17942,
		groupID  => 436,
		typeName => "Carbon Polymers Reaction"
	},

	17943	=> {
		typeID   => 17943,
		groupID  => 436,
		typeName => "Ceramic Powder Reaction"
	},

	17944	=> {
		typeID   => 17944,
		groupID  => 436,
		typeName => "Crystallite Alloy Reaction"
	},

	17945	=> {
		typeID   => 17945,
		groupID  => 436,
		typeName => "Dysporite Reaction"
	},

	17946	=> {
		typeID   => 17946,
		groupID  => 436,
		typeName => "Fernite Alloy Reaction"
	},

	17947	=> {
		typeID   => 17947,
		groupID  => 436,
		typeName => "Ferrofluid Reaction"
	},

	17948	=> {
		typeID   => 17948,
		groupID  => 436,
		typeName => "Fluxed Condensates Reaction"
	},

	17949	=> {
		typeID   => 17949,
		groupID  => 436,
		typeName => "Hexite Reaction"
	},

	17950	=> {
		typeID   => 17950,
		groupID  => 436,
		typeName => "Hyperflurite Reaction"
	},

	17951	=> {
		typeID   => 17951,
		groupID  => 436,
		typeName => "Neo Mercurite Reaction"
	},

	17952	=> {
		typeID   => 17952,
		groupID  => 436,
		typeName => "Platinum Technite Reaction"
	},

	17953	=> {
		typeID   => 17953,
		groupID  => 436,
		typeName => "Rolled Tungsten Alloy Reaction"
	},

	17954	=> {
		typeID   => 17954,
		groupID  => 436,
		typeName => "Silicon Diborite Reaction"
	},

	17955	=> {
		typeID   => 17955,
		groupID  => 436,
		typeName => "Solerium Reaction"
	},

	17956	=> {
		typeID   => 17956,
		groupID  => 436,
		typeName => "Sulfuric Acid Reaction"
	},

	17957	=> {
		typeID   => 17957,
		groupID  => 436,
		typeName => "Titanium Chromide Reaction"
	},

	17958	=> {
		typeID   => 17958,
		groupID  => 436,
		typeName => "Vanadium Hafnite Reaction"
	},

	17959	=> {
		typeID   => 17959,
		groupID  => 428,
		typeName => "Vanadium Hafnite"
	},

	17960	=> {
		typeID   => 17960,
		groupID  => 428,
		typeName => "Prometium"
	},

	17961	=> {
		typeID   => 17961,
		groupID  => 436,
		typeName => "Prometium Reaction"
	},

	17962	=> {
		typeID   => 17962,
		groupID  => 484,
		typeName => "Titanium Carbide Reaction"
	},

	17963	=> {
		typeID   => 17963,
		groupID  => 484,
		typeName => "Crystalline Carbonide Reaction"
	},

	17964	=> {
		typeID   => 17964,
		groupID  => 484,
		typeName => "Fernite Carbide Reaction"
	},

	17965	=> {
		typeID   => 17965,
		groupID  => 484,
		typeName => "Tungsten Carbide Reaction"
	},

	17966	=> {
		typeID   => 17966,
		groupID  => 484,
		typeName => "Sylramic Fibers Reaction"
	},

	17967	=> {
		typeID   => 17967,
		groupID  => 484,
		typeName => "Fulleride Reaction"
	},

	17968	=> {
		typeID   => 17968,
		groupID  => 484,
		typeName => "Phenolic Composites Reaction"
	},

	17969	=> {
		typeID   => 17969,
		groupID  => 484,
		typeName => "Nanotransistors Reaction"
	},

	17970	=> {
		typeID   => 17970,
		groupID  => 484,
		typeName => "Hypersynaptic Fibers Reaction"
	},

	17971	=> {
		typeID   => 17971,
		groupID  => 484,
		typeName => "Ferrogel Reaction"
	},

	17972	=> {
		typeID   => 17972,
		groupID  => 484,
		typeName => "Fermionic Condensates Reaction"
	},

	17973	=> {
		typeID   => 17973,
		groupID  => 821,
		typeName => "Angel Cartel Jailor"
	},

	17974	=> {
		typeID   => 17974,
		groupID  => 474,
		typeName => "Battlement Accesscard"
	},

	17975	=> {
		typeID   => 17975,
		groupID  => 465,
		typeName => "Thick Blue Ice"
	},

	17976	=> {
		typeID   => 17976,
		groupID  => 465,
		typeName => "Pristine White Glaze"
	},

	17977	=> {
		typeID   => 17977,
		groupID  => 465,
		typeName => "Smooth Glacial Mass"
	},

	17978	=> {
		typeID   => 17978,
		groupID  => 465,
		typeName => "Enriched Clear Icicle"
	},

	17979	=> {
		typeID   => 17979,
		groupID  => 494,
		typeName => "Scramble Wave Generator"
	},

	17982	=> {
		typeID   => 17982,
		groupID  => 404,
		typeName => "Coupling Array"
	},

	17983	=> {
		typeID   => 17983,
		groupID  => 474,
		typeName => "Armorer Keycard"
	},

	17984	=> {
		typeID   => 17984,
		groupID  => 474,
		typeName => "The Repairer's Keycard"
	},

	17985	=> {
		typeID   => 17985,
		groupID  => 474,
		typeName => "Scratched and Dented Keycard"
	},

	17986	=> {
		typeID   => 17986,
		groupID  => 474,
		typeName => "Dusty Keycard"
	},

	17987	=> {
		typeID   => 17987,
		groupID  => 474,
		typeName => "Command Relay Key"
	},

	17988	=> {
		typeID   => 17988,
		groupID  => 474,
		typeName => "Gardan's Private Key"
	},

	17989	=> {
		typeID   => 17989,
		groupID  => 474,
		typeName => "Thorak's Private Key"
	},

	17990	=> {
		typeID   => 17990,
		groupID  => 474,
		typeName => "Security Cypher for Angel Prison"
	},

	17991	=> {
		typeID   => 17991,
		groupID  => 474,
		typeName => "9D Logic Keycard"
	},

	17992	=> {
		typeID   => 17992,
		groupID  => 474,
		typeName => "Puxley's 9D Pass"
	},

	17993	=> {
		typeID   => 17993,
		groupID  => 495,
		typeName => "Crimson Sentinel"
	},

	17994	=> {
		typeID   => 17994,
		groupID  => 494,
		typeName => "Assembly Management HQ"
	},

	17995	=> {
		typeID   => 17995,
		groupID  => 474,
		typeName => "Stolen Passkey"
	},

	17996	=> {
		typeID   => 17996,
		groupID  => 496,
		typeName => "Crimson Hand Container"
	},

	17997	=> {
		typeID   => 17997,
		groupID  => 819,
		typeName => "Blockade General Sade"
	},

	17998	=> {
		typeID   => 17998,
		groupID  => 474,
		typeName => "Sade's Pass"
	},

	17999	=> {
		typeID   => 17999,
		groupID  => 409,
		typeName => "Ammatar Navy Colonel Insignia I"
	},

	18000	=> {
		typeID   => 18000,
		groupID  => 383,
		typeName => "Hive mother"
	},

	18001	=> {
		typeID   => 18001,
		groupID  => 383,
		typeName => "Hive mother 2"
	},

	18004	=> {
		typeID   => 18004,
		groupID  => 819,
		typeName => "Supply Station Manager"
	},

	18012	=> {
		typeID   => 18012,
		groupID  => 319,
		typeName => "Drone Bunker"
	},

	18013	=> {
		typeID   => 18013,
		groupID  => 319,
		typeName => "Drone Elevator"
	},

	18014	=> {
		typeID   => 18014,
		groupID  => 319,
		typeName => "Drone Junction"
	},

	18015	=> {
		typeID   => 18015,
		groupID  => 319,
		typeName => "Drone Lookout"
	},

	18016	=> {
		typeID   => 18016,
		groupID  => 319,
		typeName => "Drone Battery"
	},

	18017	=> {
		typeID   => 18017,
		groupID  => 319,
		typeName => "Drone Wall"
	},

	18018	=> {
		typeID   => 18018,
		groupID  => 319,
		typeName => "Drone Barricade"
	},

	18019	=> {
		typeID   => 18019,
		groupID  => 319,
		typeName => "Drone Fence"
	},

	18020	=> {
		typeID   => 18020,
		groupID  => 319,
		typeName => "Drone Barrier"
	},

	18021	=> {
		typeID   => 18021,
		groupID  => 319,
		typeName => "Inactive Drone Sentry"
	},

	18023	=> {
		typeID   => 18023,
		groupID  => 383,
		typeName => "Drone Wall Sentry Gun"
	},

	18024	=> {
		typeID   => 18024,
		groupID  => 819,
		typeName => "The Superintendent"
	},

	18025	=> {
		typeID   => 18025,
		groupID  => 1218,
		typeName => "Ice Processing"
	},

	18026	=> {
		typeID   => 18026,
		groupID  => 383,
		typeName => "Tower Sentry Drone III"
	},

	18027	=> {
		typeID   => 18027,
		groupID  => 383,
		typeName => "Tower Sentry Drone II"
	},

	18028	=> {
		typeID   => 18028,
		groupID  => 383,
		typeName => "Tower Sentry Drone I"
	},

	18029	=> {
		typeID   => 18029,
		groupID  => 879,
		typeName => "Freed Slaves"
	},

	18031	=> {
		typeID   => 18031,
		groupID  => 383,
		typeName => "Drone Cruise Missile Battery"
	},

	18032	=> {
		typeID   => 18032,
		groupID  => 383,
		typeName => "Drone Heavy Missile Battery"
	},

	18033	=> {
		typeID   => 18033,
		groupID  => 383,
		typeName => "Drone Light Missile Battery"
	},

	18034	=> {
		typeID   => 18034,
		groupID  => 383,
		typeName => "Serpentis Light Missile Battery"
	},

	18035	=> {
		typeID   => 18035,
		groupID  => 383,
		typeName => "Drone Point Defense Battery"
	},

	18036	=> {
		typeID   => 18036,
		groupID  => 482,
		typeName => "Arkonor Mining Crystal I"
	},

	18037	=> {
		typeID   => 18037,
		groupID  => 727,
		typeName => "Arkonor Mining Crystal I Blueprint"
	},

	18038	=> {
		typeID   => 18038,
		groupID  => 482,
		typeName => "Bistot Mining Crystal I"
	},

	18039	=> {
		typeID   => 18039,
		groupID  => 727,
		typeName => "Bistot Mining Crystal I Blueprint"
	},

	18040	=> {
		typeID   => 18040,
		groupID  => 482,
		typeName => "Crokite Mining Crystal I"
	},

	18041	=> {
		typeID   => 18041,
		groupID  => 727,
		typeName => "Crokite Mining Crystal I Blueprint"
	},

	18042	=> {
		typeID   => 18042,
		groupID  => 482,
		typeName => "Dark Ochre Mining Crystal I"
	},

	18043	=> {
		typeID   => 18043,
		groupID  => 727,
		typeName => "Dark Ochre Mining Crystal I Blueprint"
	},

	18044	=> {
		typeID   => 18044,
		groupID  => 482,
		typeName => "Gneiss Mining Crystal I"
	},

	18045	=> {
		typeID   => 18045,
		groupID  => 727,
		typeName => "Gneiss Mining Crystal I Blueprint"
	},

	18046	=> {
		typeID   => 18046,
		groupID  => 482,
		typeName => "Hedbergite Mining Crystal I"
	},

	18047	=> {
		typeID   => 18047,
		groupID  => 727,
		typeName => "Hedbergite Mining Crystal I Blueprint"
	},

	18048	=> {
		typeID   => 18048,
		groupID  => 482,
		typeName => "Hemorphite Mining Crystal I"
	},

	18049	=> {
		typeID   => 18049,
		groupID  => 727,
		typeName => "Hemorphite Mining Crystal I Blueprint"
	},

	18050	=> {
		typeID   => 18050,
		groupID  => 482,
		typeName => "Jaspet Mining Crystal I"
	},

	18051	=> {
		typeID   => 18051,
		groupID  => 727,
		typeName => "Jaspet Mining Crystal I Blueprint"
	},

	18052	=> {
		typeID   => 18052,
		groupID  => 482,
		typeName => "Kernite Mining Crystal I"
	},

	18053	=> {
		typeID   => 18053,
		groupID  => 727,
		typeName => "Kernite Mining Crystal I Blueprint"
	},

	18054	=> {
		typeID   => 18054,
		groupID  => 663,
		typeName => "Mercoxit Mining Crystal I"
	},

	18055	=> {
		typeID   => 18055,
		groupID  => 727,
		typeName => "Mercoxit Mining Crystal I Blueprint"
	},

	18056	=> {
		typeID   => 18056,
		groupID  => 482,
		typeName => "Omber Mining Crystal I"
	},

	18057	=> {
		typeID   => 18057,
		groupID  => 727,
		typeName => "Omber Mining Crystal I Blueprint"
	},

	18058	=> {
		typeID   => 18058,
		groupID  => 482,
		typeName => "Plagioclase Mining Crystal I"
	},

	18059	=> {
		typeID   => 18059,
		groupID  => 727,
		typeName => "Plagioclase Mining Crystal I Blueprint"
	},

	18060	=> {
		typeID   => 18060,
		groupID  => 482,
		typeName => "Pyroxeres Mining Crystal I"
	},

	18061	=> {
		typeID   => 18061,
		groupID  => 727,
		typeName => "Pyroxeres Mining Crystal I Blueprint"
	},

	18062	=> {
		typeID   => 18062,
		groupID  => 482,
		typeName => "Scordite Mining Crystal I"
	},

	18063	=> {
		typeID   => 18063,
		groupID  => 727,
		typeName => "Scordite Mining Crystal I Blueprint"
	},

	18064	=> {
		typeID   => 18064,
		groupID  => 482,
		typeName => "Spodumain Mining Crystal I"
	},

	18065	=> {
		typeID   => 18065,
		groupID  => 727,
		typeName => "Spodumain Mining Crystal I Blueprint"
	},

	18066	=> {
		typeID   => 18066,
		groupID  => 482,
		typeName => "Veldspar Mining Crystal I"
	},

	18067	=> {
		typeID   => 18067,
		groupID  => 727,
		typeName => "Veldspar Mining Crystal I Blueprint"
	},

	18068	=> {
		typeID   => 18068,
		groupID  => 483,
		typeName => "Modulated Deep Core Miner II"
	},

	18069	=> {
		typeID   => 18069,
		groupID  => 134,
		typeName => "Modulated Deep Core Miner II Blueprint"
	},

	18070	=> {
		typeID   => 18070,
		groupID  => 805,
		typeName => "Strain Splinter Alvi"
	},

	18071	=> {
		typeID   => 18071,
		groupID  => 805,
		typeName => "Strain Render Alvi"
	},

	18072	=> {
		typeID   => 18072,
		groupID  => 805,
		typeName => "Strain Decimator Alvi"
	},

	18073	=> {
		typeID   => 18073,
		groupID  => 801,
		typeName => "Defeater Alvatis"
	},

	18074	=> {
		typeID   => 18074,
		groupID  => 801,
		typeName => "Crippler Alvatis"
	},

	18075	=> {
		typeID   => 18075,
		groupID  => 801,
		typeName => "Striker Alvatis"
	},

	18076	=> {
		typeID   => 18076,
		groupID  => 803,
		typeName => "Violator Alvum"
	},

	18077	=> {
		typeID   => 18077,
		groupID  => 803,
		typeName => "Disintegrator Alvum"
	},

	18078	=> {
		typeID   => 18078,
		groupID  => 803,
		typeName => "Bomber Alvum"
	},

	18079	=> {
		typeID   => 18079,
		groupID  => 805,
		typeName => "Sunder Alvi"
	},

	18080	=> {
		typeID   => 18080,
		groupID  => 805,
		typeName => "Raider Alvi"
	},

	18082	=> {
		typeID   => 18082,
		groupID  => 803,
		typeName => "Destructor Alvum"
	},

	18083	=> {
		typeID   => 18083,
		groupID  => 803,
		typeName => "Annihilator Alvum"
	},

	18084	=> {
		typeID   => 18084,
		groupID  => 803,
		typeName => "Devastator Alvum"
	},

	18085	=> {
		typeID   => 18085,
		groupID  => 805,
		typeName => "Devilfish Alvi"
	},

	18086	=> {
		typeID   => 18086,
		groupID  => 805,
		typeName => "Barracuda Alvi"
	},

	18087	=> {
		typeID   => 18087,
		groupID  => 805,
		typeName => "Splinter Alvi"
	},

	18088	=> {
		typeID   => 18088,
		groupID  => 805,
		typeName => "Render Alvi"
	},

	18113	=> {
		typeID   => 18113,
		groupID  => 806,
		typeName => "Incubus Apis"
	},

	18114	=> {
		typeID   => 18114,
		groupID  => 806,
		typeName => "Malphas Apis"
	},

	18564	=> {
		typeID   => 18564,
		groupID  => 805,
		typeName => "Hunter Alvi"
	},

	18565	=> {
		typeID   => 18565,
		groupID  => 821,
		typeName => "Serpentis Executive Officer"
	},

	18566	=> {
		typeID   => 18566,
		groupID  => 474,
		typeName => "Shipyard Code Part (One half)"
	},

	18567	=> {
		typeID   => 18567,
		groupID  => 319,
		typeName => "Shipyard"
	},

	18568	=> {
		typeID   => 18568,
		groupID  => 319,
		typeName => "Dark Shipyard"
	},

	18569	=> {
		typeID   => 18569,
		groupID  => 319,
		typeName => "Dirty Shipyard"
	},

	18573	=> {
		typeID   => 18573,
		groupID  => 817,
		typeName => "Rogue Mercenary Thorn"
	},

	18574	=> {
		typeID   => 18574,
		groupID  => 818,
		typeName => "Seven Grunt"
	},

	18575	=> {
		typeID   => 18575,
		groupID  => 818,
		typeName => "Seven Death Dealer"
	},

	18576	=> {
		typeID   => 18576,
		groupID  => 818,
		typeName => "Seven Deathguard"
	},

	18577	=> {
		typeID   => 18577,
		groupID  => 817,
		typeName => "Seven Thug"
	},

	18578	=> {
		typeID   => 18578,
		groupID  => 817,
		typeName => "Seven Assassin"
	},

	18579	=> {
		typeID   => 18579,
		groupID  => 817,
		typeName => "Seven Bodyguard"
	},

	18580	=> {
		typeID   => 18580,
		groupID  => 274,
		typeName => "Tycoon"
	},

	18581	=> {
		typeID   => 18581,
		groupID  => 409,
		typeName => "Zazzmatazz's Bodyguard Insignia"
	},

	18582	=> {
		typeID   => 18582,
		groupID  => 496,
		typeName => "Storage Taxes"
	},

	18583	=> {
		typeID   => 18583,
		groupID  => 314,
		typeName => "Ornamental Necklace"
	},

	18584	=> {
		typeID   => 18584,
		groupID  => 820,
		typeName => "Intoxicated Commander"
	},

	18585	=> {
		typeID   => 18585,
		groupID  => 474,
		typeName => "Weekend Pass for Sin Boulevard"
	},

	18586	=> {
		typeID   => 18586,
		groupID  => 480,
		typeName => "BH Structure Anchoring Array"
	},

	18588	=> {
		typeID   => 18588,
		groupID  => 972,
		typeName => "Observator Deep Space Probe I"
	},

	18590	=> {
		typeID   => 18590,
		groupID  => 482,
		typeName => "Arkonor Mining Crystal II"
	},

	18591	=> {
		typeID   => 18591,
		groupID  => 727,
		typeName => "Arkonor Mining Crystal II Blueprint"
	},

	18592	=> {
		typeID   => 18592,
		groupID  => 482,
		typeName => "Bistot Mining Crystal II"
	},

	18593	=> {
		typeID   => 18593,
		groupID  => 727,
		typeName => "Bistot Mining Crystal II Blueprint"
	},

	18594	=> {
		typeID   => 18594,
		groupID  => 482,
		typeName => "Crokite Mining Crystal II"
	},

	18595	=> {
		typeID   => 18595,
		groupID  => 727,
		typeName => "Crokite Mining Crystal II Blueprint"
	},

	18596	=> {
		typeID   => 18596,
		groupID  => 482,
		typeName => "Dark Ochre Mining Crystal II"
	},

	18597	=> {
		typeID   => 18597,
		groupID  => 727,
		typeName => "Dark Ochre Mining Crystal II Blueprint"
	},

	18598	=> {
		typeID   => 18598,
		groupID  => 482,
		typeName => "Gneiss Mining Crystal II"
	},

	18599	=> {
		typeID   => 18599,
		groupID  => 727,
		typeName => "Gneiss Mining Crystal II Blueprint"
	},

	18600	=> {
		typeID   => 18600,
		groupID  => 482,
		typeName => "Hedbergite Mining Crystal II"
	},

	18601	=> {
		typeID   => 18601,
		groupID  => 727,
		typeName => "Hedbergite Mining Crystal II Blueprint"
	},

	18602	=> {
		typeID   => 18602,
		groupID  => 482,
		typeName => "Hemorphite Mining Crystal II"
	},

	18603	=> {
		typeID   => 18603,
		groupID  => 727,
		typeName => "Hemorphite Mining Crystal II Blueprint"
	},

	18604	=> {
		typeID   => 18604,
		groupID  => 482,
		typeName => "Jaspet Mining Crystal II"
	},

	18605	=> {
		typeID   => 18605,
		groupID  => 727,
		typeName => "Jaspet Mining Crystal II Blueprint"
	},

	18606	=> {
		typeID   => 18606,
		groupID  => 482,
		typeName => "Kernite Mining Crystal II"
	},

	18607	=> {
		typeID   => 18607,
		groupID  => 727,
		typeName => "Kernite Mining Crystal II Blueprint"
	},

	18608	=> {
		typeID   => 18608,
		groupID  => 663,
		typeName => "Mercoxit Mining Crystal II"
	},

	18609	=> {
		typeID   => 18609,
		groupID  => 727,
		typeName => "Mercoxit Mining Crystal II Blueprint"
	},

	18610	=> {
		typeID   => 18610,
		groupID  => 482,
		typeName => "Omber Mining Crystal II"
	},

	18611	=> {
		typeID   => 18611,
		groupID  => 727,
		typeName => "Omber Mining Crystal II Blueprint"
	},

	18612	=> {
		typeID   => 18612,
		groupID  => 482,
		typeName => "Plagioclase Mining Crystal II"
	},

	18613	=> {
		typeID   => 18613,
		groupID  => 727,
		typeName => "Plagioclase Mining Crystal II Blueprint"
	},

	18614	=> {
		typeID   => 18614,
		groupID  => 482,
		typeName => "Pyroxeres Mining Crystal II"
	},

	18615	=> {
		typeID   => 18615,
		groupID  => 727,
		typeName => "Pyroxeres Mining Crystal II Blueprint"
	},

	18616	=> {
		typeID   => 18616,
		groupID  => 482,
		typeName => "Scordite Mining Crystal II"
	},

	18617	=> {
		typeID   => 18617,
		groupID  => 727,
		typeName => "Scordite Mining Crystal II Blueprint"
	},

	18618	=> {
		typeID   => 18618,
		groupID  => 482,
		typeName => "Veldspar Mining Crystal II"
	},

	18619	=> {
		typeID   => 18619,
		groupID  => 727,
		typeName => "Veldspar Mining Crystal II Blueprint"
	},

	18624	=> {
		typeID   => 18624,
		groupID  => 482,
		typeName => "Spodumain Mining Crystal II"
	},

	18625	=> {
		typeID   => 18625,
		groupID  => 727,
		typeName => "Spodumain Mining Crystal II Blueprint"
	},

	18626	=> {
		typeID   => 18626,
		groupID  => 492,
		typeName => "Quest Survey Probe I"
	},

	18628	=> {
		typeID   => 18628,
		groupID  => 496,
		typeName => "Scratched Cask"
	},

	18629	=> {
		typeID   => 18629,
		groupID  => 496,
		typeName => "Assembled Container"
	},

	18630	=> {
		typeID   => 18630,
		groupID  => 495,
		typeName => "Serpentis Fleet Stronghold"
	},

	18631	=> {
		typeID   => 18631,
		groupID  => 495,
		typeName => "Angel Retention Facility"
	},

	18632	=> {
		typeID   => 18632,
		groupID  => 494,
		typeName => "Radiating Telescope"
	},

	18633	=> {
		typeID   => 18633,
		groupID  => 494,
		typeName => "Sansha Outpost Administration Building"
	},

	18634	=> {
		typeID   => 18634,
		groupID  => 494,
		typeName => "Serpentis Narcotics Storage"
	},

	18635	=> {
		typeID   => 18635,
		groupID  => 492,
		typeName => "Discovery Survey Probe I"
	},

	18637	=> {
		typeID   => 18637,
		groupID  => 492,
		typeName => "Gaze Survey Probe I"
	},

	18639	=> {
		typeID   => 18639,
		groupID  => 481,
		typeName => "Expanded Probe Launcher I"
	},

	18640	=> {
		typeID   => 18640,
		groupID  => 918,
		typeName => "Expanded Probe Launcher I Blueprint"
	},

	18641	=> {
		typeID   => 18641,
		groupID  => 820,
		typeName => "Guristas Harlot Procurer"
	},

	18642	=> {
		typeID   => 18642,
		groupID  => 353,
		typeName => "QA Smartbomb"
	},

	18644	=> {
		typeID   => 18644,
		groupID  => 474,
		typeName => "High Roller's Passcard"
	},

	18645	=> {
		typeID   => 18645,
		groupID  => 494,
		typeName => "Captive Fighting Arena"
	},

	18654	=> {
		typeID   => 18654,
		groupID  => 409,
		typeName => "Olufami's Insignia"
	},

	18655	=> {
		typeID   => 18655,
		groupID  => 314,
		typeName => "Olufami's DNA"
	},

	18656	=> {
		typeID   => 18656,
		groupID  => 817,
		typeName => "Shimon Jaen"
	},

	18657	=> {
		typeID   => 18657,
		groupID  => 409,
		typeName => "Shimon Jaen's Insignia"
	},

	18658	=> {
		typeID   => 18658,
		groupID  => 46,
		typeName => "Gistii C-Type 1MN Afterburner"
	},

	18660	=> {
		typeID   => 18660,
		groupID  => 46,
		typeName => "Gistum C-Type 10MN Afterburner"
	},

	18662	=> {
		typeID   => 18662,
		groupID  => 46,
		typeName => "Gist C-Type 100MN Afterburner"
	},

	18664	=> {
		typeID   => 18664,
		groupID  => 46,
		typeName => "Gistii B-Type 1MN Afterburner"
	},

	18666	=> {
		typeID   => 18666,
		groupID  => 46,
		typeName => "Gistum B-Type 10MN Afterburner"
	},

	18668	=> {
		typeID   => 18668,
		groupID  => 46,
		typeName => "Gist B-Type 100MN Afterburner"
	},

	18670	=> {
		typeID   => 18670,
		groupID  => 46,
		typeName => "Gistii A-Type 1MN Afterburner"
	},

	18672	=> {
		typeID   => 18672,
		groupID  => 46,
		typeName => "Gistum A-Type 10MN Afterburner"
	},

	18674	=> {
		typeID   => 18674,
		groupID  => 46,
		typeName => "Gist A-Type 100MN Afterburner"
	},

	18676	=> {
		typeID   => 18676,
		groupID  => 46,
		typeName => "Gist X-Type 100MN Afterburner"
	},

	18678	=> {
		typeID   => 18678,
		groupID  => 816,
		typeName => "Zelfarios Kashnostramus"
	},

	18679	=> {
		typeID   => 18679,
		groupID  => 370,
		typeName => "Zelfarios Kashnostramus's Tag"
	},

	18680	=> {
		typeID   => 18680,
		groupID  => 46,
		typeName => "Coreli C-Type 1MN Afterburner"
	},

	18682	=> {
		typeID   => 18682,
		groupID  => 46,
		typeName => "Corelum C-Type 10MN Afterburner"
	},

	18684	=> {
		typeID   => 18684,
		groupID  => 46,
		typeName => "Core C-Type 100MN Afterburner"
	},

	18686	=> {
		typeID   => 18686,
		groupID  => 46,
		typeName => "Coreli B-Type 1MN Afterburner"
	},

	18688	=> {
		typeID   => 18688,
		groupID  => 46,
		typeName => "Corelum B-Type 10MN Afterburner"
	},

	18690	=> {
		typeID   => 18690,
		groupID  => 46,
		typeName => "Core B-Type 100MN Afterburner"
	},

	18692	=> {
		typeID   => 18692,
		groupID  => 46,
		typeName => "Coreli A-Type 1MN Afterburner"
	},

	18694	=> {
		typeID   => 18694,
		groupID  => 46,
		typeName => "Corelum A-Type 10MN Afterburner"
	},

	18696	=> {
		typeID   => 18696,
		groupID  => 46,
		typeName => "Core A-Type 100MN Afterburner"
	},

	18698	=> {
		typeID   => 18698,
		groupID  => 46,
		typeName => "Core X-Type 100MN Afterburner"
	},

	18700	=> {
		typeID   => 18700,
		groupID  => 98,
		typeName => "Corpii C-Type Adaptive Nano Plating"
	},

	18702	=> {
		typeID   => 18702,
		groupID  => 98,
		typeName => "Centii C-Type Adaptive Nano Plating"
	},

	18704	=> {
		typeID   => 18704,
		groupID  => 98,
		typeName => "Corpii B-Type Adaptive Nano Plating"
	},

	18706	=> {
		typeID   => 18706,
		groupID  => 98,
		typeName => "Centii B-Type Adaptive Nano Plating"
	},

	18708	=> {
		typeID   => 18708,
		groupID  => 98,
		typeName => "Corpii A-Type Adaptive Nano Plating"
	},

	18710	=> {
		typeID   => 18710,
		groupID  => 98,
		typeName => "Centii A-Type Adaptive Nano Plating"
	},

	18712	=> {
		typeID   => 18712,
		groupID  => 98,
		typeName => "Corpii C-Type Kinetic Plating"
	},

	18714	=> {
		typeID   => 18714,
		groupID  => 98,
		typeName => "Centii C-Type Kinetic Plating"
	},

	18716	=> {
		typeID   => 18716,
		groupID  => 98,
		typeName => "Corpii C-Type Explosive Plating"
	},

	18718	=> {
		typeID   => 18718,
		groupID  => 98,
		typeName => "Centii C-Type Explosive Plating"
	},

	18720	=> {
		typeID   => 18720,
		groupID  => 98,
		typeName => "Corpii C-Type EM Plating"
	},

	18722	=> {
		typeID   => 18722,
		groupID  => 98,
		typeName => "Centii C-Type EM Plating"
	},

	18724	=> {
		typeID   => 18724,
		groupID  => 98,
		typeName => "Corpii C-Type Thermal Plating"
	},

	18726	=> {
		typeID   => 18726,
		groupID  => 98,
		typeName => "Centii C-Type Thermal Plating"
	},

	18728	=> {
		typeID   => 18728,
		groupID  => 98,
		typeName => "Corpii B-Type Thermal Plating"
	},

	18730	=> {
		typeID   => 18730,
		groupID  => 98,
		typeName => "Centii B-Type Thermal Plating"
	},

	18740	=> {
		typeID   => 18740,
		groupID  => 98,
		typeName => "Corpii B-Type Kinetic Plating"
	},

	18742	=> {
		typeID   => 18742,
		groupID  => 98,
		typeName => "Centii B-Type Kinetic Plating"
	},

	18744	=> {
		typeID   => 18744,
		groupID  => 98,
		typeName => "Corpii B-Type Explosive Plating"
	},

	18746	=> {
		typeID   => 18746,
		groupID  => 98,
		typeName => "Centii B-Type Explosive Plating"
	},

	18748	=> {
		typeID   => 18748,
		groupID  => 98,
		typeName => "Corpii B-Type EM Plating"
	},

	18750	=> {
		typeID   => 18750,
		groupID  => 98,
		typeName => "Centii B-Type EM Plating"
	},

	18752	=> {
		typeID   => 18752,
		groupID  => 98,
		typeName => "Corpii A-Type Kinetic Plating"
	},

	18754	=> {
		typeID   => 18754,
		groupID  => 98,
		typeName => "Centii A-Type Kinetic Plating"
	},

	18756	=> {
		typeID   => 18756,
		groupID  => 98,
		typeName => "Corpii A-Type Explosive Plating"
	},

	18758	=> {
		typeID   => 18758,
		groupID  => 98,
		typeName => "Centii A-Type Explosive Plating"
	},

	18760	=> {
		typeID   => 18760,
		groupID  => 98,
		typeName => "Corpii A-Type EM Plating"
	},

	18762	=> {
		typeID   => 18762,
		groupID  => 98,
		typeName => "Centii A-Type EM Plating"
	},

	18764	=> {
		typeID   => 18764,
		groupID  => 98,
		typeName => "Corpii A-Type Thermal Plating"
	},

	18766	=> {
		typeID   => 18766,
		groupID  => 98,
		typeName => "Centii A-Type Thermal Plating"
	},

	18768	=> {
		typeID   => 18768,
		groupID  => 98,
		typeName => "Coreli C-Type Adaptive Nano Plating"
	},

	18770	=> {
		typeID   => 18770,
		groupID  => 98,
		typeName => "Coreli C-Type Kinetic Plating"
	},

	18772	=> {
		typeID   => 18772,
		groupID  => 98,
		typeName => "Coreli C-Type Explosive Plating"
	},

	18775	=> {
		typeID   => 18775,
		groupID  => 98,
		typeName => "Coreli C-Type EM Plating"
	},

	18777	=> {
		typeID   => 18777,
		groupID  => 98,
		typeName => "Coreli C-Type Thermal Plating"
	},

	18779	=> {
		typeID   => 18779,
		groupID  => 98,
		typeName => "Coreli B-Type Adaptive Nano Plating"
	},

	18781	=> {
		typeID   => 18781,
		groupID  => 98,
		typeName => "Coreli B-Type Kinetic Plating"
	},

	18783	=> {
		typeID   => 18783,
		groupID  => 98,
		typeName => "Coreli B-Type Explosive Plating"
	},

	18785	=> {
		typeID   => 18785,
		groupID  => 98,
		typeName => "Coreli B-Type EM Plating"
	},

	18787	=> {
		typeID   => 18787,
		groupID  => 98,
		typeName => "Coreli B-Type Thermal Plating"
	},

	18789	=> {
		typeID   => 18789,
		groupID  => 98,
		typeName => "Coreli A-Type Adaptive Nano Plating"
	},

	18791	=> {
		typeID   => 18791,
		groupID  => 98,
		typeName => "Coreli A-Type Kinetic Plating"
	},

	18793	=> {
		typeID   => 18793,
		groupID  => 98,
		typeName => "Coreli A-Type Explosive Plating"
	},

	18795	=> {
		typeID   => 18795,
		groupID  => 98,
		typeName => "Coreli A-Type EM Plating"
	},

	18797	=> {
		typeID   => 18797,
		groupID  => 98,
		typeName => "Coreli A-Type Thermal Plating"
	},

	18799	=> {
		typeID   => 18799,
		groupID  => 326,
		typeName => "Corelum C-Type Energized Adaptive Nano Membrane"
	},

	18801	=> {
		typeID   => 18801,
		groupID  => 326,
		typeName => "Corelum C-Type Energized Kinetic Membrane"
	},

	18803	=> {
		typeID   => 18803,
		groupID  => 326,
		typeName => "Corelum C-Type Energized Explosive Membrane"
	},

	18805	=> {
		typeID   => 18805,
		groupID  => 326,
		typeName => "Corelum C-Type Energized EM Membrane"
	},

	18807	=> {
		typeID   => 18807,
		groupID  => 326,
		typeName => "Corelum C-Type Energized Thermal Membrane"
	},

	18809	=> {
		typeID   => 18809,
		groupID  => 326,
		typeName => "Corelum B-Type Energized Adaptive Nano Membrane"
	},

	18811	=> {
		typeID   => 18811,
		groupID  => 326,
		typeName => "Corelum B-Type Energized Kinetic Membrane"
	},

	18813	=> {
		typeID   => 18813,
		groupID  => 326,
		typeName => "Corelum B-Type Energized Explosive Membrane"
	},

	18815	=> {
		typeID   => 18815,
		groupID  => 326,
		typeName => "Corelum B-Type Energized EM Membrane"
	},

	18817	=> {
		typeID   => 18817,
		groupID  => 326,
		typeName => "Corelum B-Type Energized Thermal Membrane"
	},

	18819	=> {
		typeID   => 18819,
		groupID  => 326,
		typeName => "Corelum A-Type Energized Adaptive Nano Membrane"
	},

	18821	=> {
		typeID   => 18821,
		groupID  => 326,
		typeName => "Corelum A-Type Energized Kinetic Membrane"
	},

	18823	=> {
		typeID   => 18823,
		groupID  => 326,
		typeName => "Corelum A-Type Energized Explosive Membrane"
	},

	18825	=> {
		typeID   => 18825,
		groupID  => 326,
		typeName => "Corelum A-Type Energized EM Membrane"
	},

	18827	=> {
		typeID   => 18827,
		groupID  => 326,
		typeName => "Corelum A-Type Energized Thermal Membrane"
	},

	18829	=> {
		typeID   => 18829,
		groupID  => 326,
		typeName => "Corpum C-Type Energized Adaptive Nano Membrane"
	},

	18831	=> {
		typeID   => 18831,
		groupID  => 326,
		typeName => "Centum C-Type Energized Adaptive Nano Membrane"
	},

	18833	=> {
		typeID   => 18833,
		groupID  => 326,
		typeName => "Corpum C-Type Energized Kinetic Membrane"
	},

	18835	=> {
		typeID   => 18835,
		groupID  => 326,
		typeName => "Centum C-Type Energized Kinetic Membrane"
	},

	18837	=> {
		typeID   => 18837,
		groupID  => 326,
		typeName => "Corpum C-Type Energized Explosive Membrane"
	},

	18839	=> {
		typeID   => 18839,
		groupID  => 326,
		typeName => "Centum C-Type Energized Explosive Membrane"
	},

	18841	=> {
		typeID   => 18841,
		groupID  => 326,
		typeName => "Corpum C-Type Energized EM Membrane"
	},

	18843	=> {
		typeID   => 18843,
		groupID  => 326,
		typeName => "Centum C-Type Energized EM Membrane"
	},

	18845	=> {
		typeID   => 18845,
		groupID  => 326,
		typeName => "Corpum C-Type Energized Thermal Membrane"
	},

	18847	=> {
		typeID   => 18847,
		groupID  => 326,
		typeName => "Centum C-Type Energized Thermal Membrane"
	},

	18849	=> {
		typeID   => 18849,
		groupID  => 326,
		typeName => "Corpum B-Type Energized Adaptive Nano Membrane"
	},

	18851	=> {
		typeID   => 18851,
		groupID  => 326,
		typeName => "Centum B-Type Energized Adaptive Nano Membrane"
	},

	18853	=> {
		typeID   => 18853,
		groupID  => 326,
		typeName => "Corpum B-Type Energized Kinetic Membrane"
	},

	18855	=> {
		typeID   => 18855,
		groupID  => 326,
		typeName => "Centum B-Type Energized Kinetic Membrane"
	},

	18857	=> {
		typeID   => 18857,
		groupID  => 326,
		typeName => "Corpum B-Type Energized Explosive Membrane"
	},

	18859	=> {
		typeID   => 18859,
		groupID  => 326,
		typeName => "Centum B-Type Energized Explosive Membrane"
	},

	18861	=> {
		typeID   => 18861,
		groupID  => 326,
		typeName => "Corpum B-Type Energized Thermal Membrane"
	},

	18863	=> {
		typeID   => 18863,
		groupID  => 326,
		typeName => "Centum B-Type Energized Thermal Membrane"
	},

	18865	=> {
		typeID   => 18865,
		groupID  => 326,
		typeName => "Corpum A-Type Energized Thermal Membrane"
	},

	18867	=> {
		typeID   => 18867,
		groupID  => 326,
		typeName => "Centum A-Type Energized Thermal Membrane"
	},

	18869	=> {
		typeID   => 18869,
		groupID  => 326,
		typeName => "Corpum A-Type Energized EM Membrane"
	},

	18871	=> {
		typeID   => 18871,
		groupID  => 326,
		typeName => "Centum A-Type Energized EM Membrane"
	},

	18873	=> {
		typeID   => 18873,
		groupID  => 326,
		typeName => "Corpum A-Type Energized Explosive Membrane"
	},

	18875	=> {
		typeID   => 18875,
		groupID  => 326,
		typeName => "Centum A-Type Energized Explosive Membrane"
	},

	18877	=> {
		typeID   => 18877,
		groupID  => 326,
		typeName => "Corpum A-Type Energized Kinetic Membrane"
	},

	18879	=> {
		typeID   => 18879,
		groupID  => 326,
		typeName => "Centum A-Type Energized Kinetic Membrane"
	},

	18881	=> {
		typeID   => 18881,
		groupID  => 326,
		typeName => "Corpum A-Type Energized Adaptive Nano Membrane"
	},

	18883	=> {
		typeID   => 18883,
		groupID  => 326,
		typeName => "Centum A-Type Energized Adaptive Nano Membrane"
	},

	18885	=> {
		typeID   => 18885,
		groupID  => 328,
		typeName => "Corpus C-Type Armor EM Hardener"
	},

	18887	=> {
		typeID   => 18887,
		groupID  => 328,
		typeName => "Centus C-Type Armor EM Hardener"
	},

	18889	=> {
		typeID   => 18889,
		groupID  => 328,
		typeName => "Corpus C-Type Armor Explosive Hardener"
	},

	18891	=> {
		typeID   => 18891,
		groupID  => 328,
		typeName => "Centus C-Type Armor Explosive Hardener"
	},

	18893	=> {
		typeID   => 18893,
		groupID  => 328,
		typeName => "Corpus C-Type Armor Kinetic Hardener"
	},

	18895	=> {
		typeID   => 18895,
		groupID  => 328,
		typeName => "Centus C-Type Armor Kinetic Hardener"
	},

	18897	=> {
		typeID   => 18897,
		groupID  => 328,
		typeName => "Corpus C-Type Armor Thermal Hardener"
	},

	18899	=> {
		typeID   => 18899,
		groupID  => 328,
		typeName => "Centus C-Type Armor Thermal Hardener"
	},

	18901	=> {
		typeID   => 18901,
		groupID  => 328,
		typeName => "Corpus B-Type Armor EM Hardener"
	},

	18903	=> {
		typeID   => 18903,
		groupID  => 328,
		typeName => "Centus B-Type Armor EM Hardener"
	},

	18905	=> {
		typeID   => 18905,
		groupID  => 328,
		typeName => "Corpus B-Type Armor Explosive Hardener"
	},

	18907	=> {
		typeID   => 18907,
		groupID  => 328,
		typeName => "Centus B-Type Armor Explosive Hardener"
	},

	18909	=> {
		typeID   => 18909,
		groupID  => 328,
		typeName => "Corpus B-Type Armor Kinetic Hardener"
	},

	18911	=> {
		typeID   => 18911,
		groupID  => 328,
		typeName => "Centus B-Type Armor Kinetic Hardener"
	},

	18913	=> {
		typeID   => 18913,
		groupID  => 328,
		typeName => "Corpus B-Type Armor Thermal Hardener"
	},

	18915	=> {
		typeID   => 18915,
		groupID  => 328,
		typeName => "Centus B-Type Armor Thermal Hardener"
	},

	18917	=> {
		typeID   => 18917,
		groupID  => 328,
		typeName => "Corpus A-Type Armor Thermal Hardener"
	},

	18919	=> {
		typeID   => 18919,
		groupID  => 328,
		typeName => "Centus A-Type Armor Thermal Hardener"
	},

	18921	=> {
		typeID   => 18921,
		groupID  => 328,
		typeName => "Corpus A-Type Armor Kinetic Hardener"
	},

	18923	=> {
		typeID   => 18923,
		groupID  => 328,
		typeName => "Centus A-Type Armor Kinetic Hardener"
	},

	18925	=> {
		typeID   => 18925,
		groupID  => 328,
		typeName => "Corpus A-Type Armor Explosive Hardener"
	},

	18927	=> {
		typeID   => 18927,
		groupID  => 328,
		typeName => "Centus A-Type Armor Explosive Hardener"
	},

	18929	=> {
		typeID   => 18929,
		groupID  => 328,
		typeName => "Corpus A-Type Armor EM Hardener"
	},

	18931	=> {
		typeID   => 18931,
		groupID  => 328,
		typeName => "Centus A-Type Armor EM Hardener"
	},

	18933	=> {
		typeID   => 18933,
		groupID  => 328,
		typeName => "Corpus X-Type Armor EM Hardener"
	},

	18935	=> {
		typeID   => 18935,
		groupID  => 328,
		typeName => "Centus X-Type Armor EM Hardener"
	},

	18937	=> {
		typeID   => 18937,
		groupID  => 328,
		typeName => "Corpus X-Type Armor Explosive Hardener"
	},

	18939	=> {
		typeID   => 18939,
		groupID  => 328,
		typeName => "Centus X-Type Armor Explosive Hardener"
	},

	18941	=> {
		typeID   => 18941,
		groupID  => 328,
		typeName => "Corpus X-Type Armor Kinetic Hardener"
	},

	18943	=> {
		typeID   => 18943,
		groupID  => 328,
		typeName => "Centus X-Type Armor Kinetic Hardener"
	},

	18945	=> {
		typeID   => 18945,
		groupID  => 328,
		typeName => "Corpus X-Type Armor Thermal Hardener"
	},

	18947	=> {
		typeID   => 18947,
		groupID  => 328,
		typeName => "Centus X-Type Armor Thermal Hardener"
	},

	18949	=> {
		typeID   => 18949,
		groupID  => 328,
		typeName => "Core C-Type Armor EM Hardener"
	},

	18951	=> {
		typeID   => 18951,
		groupID  => 328,
		typeName => "Core C-Type Armor Explosive Hardener"
	},

	18953	=> {
		typeID   => 18953,
		groupID  => 328,
		typeName => "Core C-Type Armor Kinetic Hardener"
	},

	18955	=> {
		typeID   => 18955,
		groupID  => 328,
		typeName => "Core C-Type Armor Thermal Hardener"
	},

	18957	=> {
		typeID   => 18957,
		groupID  => 328,
		typeName => "Core B-Type Armor EM Hardener"
	},

	18959	=> {
		typeID   => 18959,
		groupID  => 328,
		typeName => "Core B-Type Armor Explosive Hardener"
	},

	18961	=> {
		typeID   => 18961,
		groupID  => 328,
		typeName => "Core B-Type Armor Kinetic Hardener"
	},

	18963	=> {
		typeID   => 18963,
		groupID  => 328,
		typeName => "Core B-Type Armor Thermal Hardener"
	},

	18965	=> {
		typeID   => 18965,
		groupID  => 328,
		typeName => "Core A-Type Armor EM Hardener"
	},

	18967	=> {
		typeID   => 18967,
		groupID  => 328,
		typeName => "Core A-Type Armor Explosive Hardener"
	},

	18969	=> {
		typeID   => 18969,
		groupID  => 328,
		typeName => "Core A-Type Armor Kinetic Hardener"
	},

	18971	=> {
		typeID   => 18971,
		groupID  => 328,
		typeName => "Core A-Type Armor Thermal Hardener"
	},

	18973	=> {
		typeID   => 18973,
		groupID  => 328,
		typeName => "Core X-Type Armor EM Hardener"
	},

	18975	=> {
		typeID   => 18975,
		groupID  => 328,
		typeName => "Core X-Type Armor Explosive Hardener"
	},

	18977	=> {
		typeID   => 18977,
		groupID  => 328,
		typeName => "Core X-Type Armor Kinetic Hardener"
	},

	18979	=> {
		typeID   => 18979,
		groupID  => 328,
		typeName => "Core X-Type Armor Thermal Hardener"
	},

	18981	=> {
		typeID   => 18981,
		groupID  => 325,
		typeName => "Coreli C-Type Small Remote Armor Repairer"
	},

	18983	=> {
		typeID   => 18983,
		groupID  => 325,
		typeName => "Coreli B-Type Small Remote Armor Repairer"
	},

	18985	=> {
		typeID   => 18985,
		groupID  => 325,
		typeName => "Coreli A-Type Small Remote Armor Repairer"
	},

	18987	=> {
		typeID   => 18987,
		groupID  => 325,
		typeName => "Corelum C-Type Medium Remote Armor Repairer"
	},

	18989	=> {
		typeID   => 18989,
		groupID  => 325,
		typeName => "Corelum B-Type Medium Remote Armor Repairer"
	},

	18991	=> {
		typeID   => 18991,
		groupID  => 325,
		typeName => "Corelum A-Type Medium Remote Armor Repairer"
	},

	18999	=> {
		typeID   => 18999,
		groupID  => 62,
		typeName => "Corpii C-Type Small Armor Repairer"
	},

	19001	=> {
		typeID   => 19001,
		groupID  => 62,
		typeName => "Corpii B-Type Small Armor Repairer"
	},

	19003	=> {
		typeID   => 19003,
		groupID  => 62,
		typeName => "Corpii A-Type Small Armor Repairer"
	},

	19005	=> {
		typeID   => 19005,
		groupID  => 62,
		typeName => "Centii C-Type Small Armor Repairer"
	},

	19007	=> {
		typeID   => 19007,
		groupID  => 62,
		typeName => "Centii B-Type Small Armor Repairer"
	},

	19009	=> {
		typeID   => 19009,
		groupID  => 62,
		typeName => "Centii A-Type Small Armor Repairer"
	},

	19011	=> {
		typeID   => 19011,
		groupID  => 62,
		typeName => "Coreli C-Type Small Armor Repairer"
	},

	19013	=> {
		typeID   => 19013,
		groupID  => 62,
		typeName => "Coreli B-Type Small Armor Repairer"
	},

	19015	=> {
		typeID   => 19015,
		groupID  => 62,
		typeName => "Coreli A-Type Small Armor Repairer"
	},

	19017	=> {
		typeID   => 19017,
		groupID  => 62,
		typeName => "Corpum C-Type Medium Armor Repairer"
	},

	19019	=> {
		typeID   => 19019,
		groupID  => 62,
		typeName => "Corpum B-Type Medium Armor Repairer"
	},

	19021	=> {
		typeID   => 19021,
		groupID  => 62,
		typeName => "Corpum A-Type Medium Armor Repairer"
	},

	19023	=> {
		typeID   => 19023,
		groupID  => 62,
		typeName => "Centum C-Type Medium Armor Repairer"
	},

	19025	=> {
		typeID   => 19025,
		groupID  => 62,
		typeName => "Centum B-Type Medium Armor Repairer"
	},

	19027	=> {
		typeID   => 19027,
		groupID  => 62,
		typeName => "Centum A-Type Medium Armor Repairer"
	},

	19029	=> {
		typeID   => 19029,
		groupID  => 62,
		typeName => "Corelum C-Type Medium Armor Repairer"
	},

	19031	=> {
		typeID   => 19031,
		groupID  => 62,
		typeName => "Corelum B-Type Medium Armor Repairer"
	},

	19033	=> {
		typeID   => 19033,
		groupID  => 62,
		typeName => "Corelum A-Type Medium Armor Repairer"
	},

	19035	=> {
		typeID   => 19035,
		groupID  => 62,
		typeName => "Core C-Type Large Armor Repairer"
	},

	19036	=> {
		typeID   => 19036,
		groupID  => 62,
		typeName => "Core B-Type Large Armor Repairer"
	},

	19037	=> {
		typeID   => 19037,
		groupID  => 62,
		typeName => "Core A-Type Large Armor Repairer"
	},

	19038	=> {
		typeID   => 19038,
		groupID  => 62,
		typeName => "Core X-Type Large Armor Repairer"
	},

	19039	=> {
		typeID   => 19039,
		groupID  => 62,
		typeName => "Corpus C-Type Large Armor Repairer"
	},

	19040	=> {
		typeID   => 19040,
		groupID  => 62,
		typeName => "Centus C-Type Large Armor Repairer"
	},

	19041	=> {
		typeID   => 19041,
		groupID  => 62,
		typeName => "Corpus B-Type Large Armor Repairer"
	},

	19042	=> {
		typeID   => 19042,
		groupID  => 62,
		typeName => "Centus B-Type Large Armor Repairer"
	},

	19043	=> {
		typeID   => 19043,
		groupID  => 62,
		typeName => "Corpus A-Type Large Armor Repairer"
	},

	19044	=> {
		typeID   => 19044,
		groupID  => 62,
		typeName => "Centus A-Type Large Armor Repairer"
	},

	19045	=> {
		typeID   => 19045,
		groupID  => 62,
		typeName => "Corpus X-Type Large Armor Repairer"
	},

	19046	=> {
		typeID   => 19046,
		groupID  => 62,
		typeName => "Centus X-Type Large Armor Repairer"
	},

	19047	=> {
		typeID   => 19047,
		groupID  => 325,
		typeName => "Centii C-Type Small Remote Armor Repairer"
	},

	19049	=> {
		typeID   => 19049,
		groupID  => 325,
		typeName => "Centii B-Type Small Remote Armor Repairer"
	},

	19051	=> {
		typeID   => 19051,
		groupID  => 325,
		typeName => "Centii A-Type Small Remote Armor Repairer"
	},

	19053	=> {
		typeID   => 19053,
		groupID  => 325,
		typeName => "Centum C-Type Medium Remote Armor Repairer"
	},

	19055	=> {
		typeID   => 19055,
		groupID  => 325,
		typeName => "Centum B-Type Medium Remote Armor Repairer"
	},

	19057	=> {
		typeID   => 19057,
		groupID  => 325,
		typeName => "Centum A-Type Medium Remote Armor Repairer"
	},

	19065	=> {
		typeID   => 19065,
		groupID  => 67,
		typeName => "Corpii C-Type Small Remote Capacitor Transmitter"
	},

	19067	=> {
		typeID   => 19067,
		groupID  => 67,
		typeName => "Corpii B-Type Small Remote Capacitor Transmitter"
	},

	19069	=> {
		typeID   => 19069,
		groupID  => 67,
		typeName => "Corpii A-Type Small Remote Capacitor Transmitter"
	},

	19071	=> {
		typeID   => 19071,
		groupID  => 67,
		typeName => "Centii C-Type Small Remote Capacitor Transmitter"
	},

	19073	=> {
		typeID   => 19073,
		groupID  => 67,
		typeName => "Centii B-Type Small Remote Capacitor Transmitter"
	},

	19075	=> {
		typeID   => 19075,
		groupID  => 67,
		typeName => "Centii A-Type Small Remote Capacitor Transmitter"
	},

	19077	=> {
		typeID   => 19077,
		groupID  => 67,
		typeName => "Corpum C-Type Medium Remote Capacitor Transmitter"
	},

	19079	=> {
		typeID   => 19079,
		groupID  => 67,
		typeName => "Corpum B-Type Medium Remote Capacitor Transmitter"
	},

	19081	=> {
		typeID   => 19081,
		groupID  => 67,
		typeName => "Corpum A-Type Medium Remote Capacitor Transmitter"
	},

	19083	=> {
		typeID   => 19083,
		groupID  => 67,
		typeName => "Centum C-Type Medium Remote Capacitor Transmitter"
	},

	19085	=> {
		typeID   => 19085,
		groupID  => 67,
		typeName => "Centum B-Type Medium Remote Capacitor Transmitter"
	},

	19087	=> {
		typeID   => 19087,
		groupID  => 67,
		typeName => "Centum A-Type Medium Remote Capacitor Transmitter"
	},

	19101	=> {
		typeID   => 19101,
		groupID  => 68,
		typeName => "Corpii C-Type Small Energy Nosferatu"
	},

	19103	=> {
		typeID   => 19103,
		groupID  => 68,
		typeName => "Corpii B-Type Small Energy Nosferatu"
	},

	19105	=> {
		typeID   => 19105,
		groupID  => 68,
		typeName => "Corpii A-Type Small Energy Nosferatu"
	},

	19107	=> {
		typeID   => 19107,
		groupID  => 68,
		typeName => "Corpum C-Type Medium Energy Nosferatu"
	},

	19109	=> {
		typeID   => 19109,
		groupID  => 68,
		typeName => "Corpum B-Type Medium Energy Nosferatu"
	},

	19111	=> {
		typeID   => 19111,
		groupID  => 68,
		typeName => "Corpum A-Type Medium Energy Nosferatu"
	},

	19113	=> {
		typeID   => 19113,
		groupID  => 68,
		typeName => "Corpus C-Type Heavy Energy Nosferatu"
	},

	19115	=> {
		typeID   => 19115,
		groupID  => 68,
		typeName => "Corpus B-Type Heavy Energy Nosferatu"
	},

	19117	=> {
		typeID   => 19117,
		groupID  => 68,
		typeName => "Corpus A-Type Heavy Energy Nosferatu"
	},

	19119	=> {
		typeID   => 19119,
		groupID  => 68,
		typeName => "Corpus X-Type Heavy Energy Nosferatu"
	},

	19129	=> {
		typeID   => 19129,
		groupID  => 41,
		typeName => "Gistii C-Type Small Remote Shield Booster"
	},

	19131	=> {
		typeID   => 19131,
		groupID  => 41,
		typeName => "Gistii B-Type Small Remote Shield Booster"
	},

	19133	=> {
		typeID   => 19133,
		groupID  => 41,
		typeName => "Gistii A-Type Small Remote Shield Booster"
	},

	19135	=> {
		typeID   => 19135,
		groupID  => 41,
		typeName => "Pithi C-Type Small Remote Shield Booster"
	},

	19137	=> {
		typeID   => 19137,
		groupID  => 41,
		typeName => "Pithi B-Type Small Remote Shield Booster"
	},

	19139	=> {
		typeID   => 19139,
		groupID  => 41,
		typeName => "Pithi A-Type Small Remote Shield Booster"
	},

	19141	=> {
		typeID   => 19141,
		groupID  => 41,
		typeName => "Gistum C-Type Medium Remote Shield Booster"
	},

	19143	=> {
		typeID   => 19143,
		groupID  => 41,
		typeName => "Gistum B-Type Medium Remote Shield Booster"
	},

	19145	=> {
		typeID   => 19145,
		groupID  => 41,
		typeName => "Gistum A-Type Medium Remote Shield Booster"
	},

	19147	=> {
		typeID   => 19147,
		groupID  => 41,
		typeName => "Pithum C-Type Medium Remote Shield Booster"
	},

	19149	=> {
		typeID   => 19149,
		groupID  => 41,
		typeName => "Pithum B-Type Medium Remote Shield Booster"
	},

	19151	=> {
		typeID   => 19151,
		groupID  => 41,
		typeName => "Pithum A-Type Medium Remote Shield Booster"
	},

	19169	=> {
		typeID   => 19169,
		groupID  => 40,
		typeName => "Gistii C-Type Small Shield Booster"
	},

	19171	=> {
		typeID   => 19171,
		groupID  => 40,
		typeName => "Gistii B-Type Small Shield Booster"
	},

	19173	=> {
		typeID   => 19173,
		groupID  => 40,
		typeName => "Gistii A-Type Small Shield Booster"
	},

	19175	=> {
		typeID   => 19175,
		groupID  => 40,
		typeName => "Pithi C-Type Small Shield Booster"
	},

	19177	=> {
		typeID   => 19177,
		groupID  => 40,
		typeName => "Pithi B-Type Small Shield Booster"
	},

	19179	=> {
		typeID   => 19179,
		groupID  => 40,
		typeName => "Pithi A-Type Small Shield Booster"
	},

	19181	=> {
		typeID   => 19181,
		groupID  => 40,
		typeName => "Gistum C-Type Medium Shield Booster"
	},

	19183	=> {
		typeID   => 19183,
		groupID  => 40,
		typeName => "Gistum B-Type Medium Shield Booster"
	},

	19185	=> {
		typeID   => 19185,
		groupID  => 40,
		typeName => "Gistum A-Type Medium Shield Booster"
	},

	19187	=> {
		typeID   => 19187,
		groupID  => 40,
		typeName => "Pithum C-Type Medium Shield Booster"
	},

	19189	=> {
		typeID   => 19189,
		groupID  => 40,
		typeName => "Pithum B-Type Medium Shield Booster"
	},

	19191	=> {
		typeID   => 19191,
		groupID  => 40,
		typeName => "Pithum A-Type Medium Shield Booster"
	},

	19193	=> {
		typeID   => 19193,
		groupID  => 40,
		typeName => "Gist C-Type Large Shield Booster"
	},

	19194	=> {
		typeID   => 19194,
		groupID  => 40,
		typeName => "Gist B-Type Large Shield Booster"
	},

	19195	=> {
		typeID   => 19195,
		groupID  => 40,
		typeName => "Gist C-Type X-Large Shield Booster"
	},

	19196	=> {
		typeID   => 19196,
		groupID  => 40,
		typeName => "Gist B-Type X-Large Shield Booster"
	},

	19197	=> {
		typeID   => 19197,
		groupID  => 40,
		typeName => "Gist A-Type X-Large Shield Booster"
	},

	19198	=> {
		typeID   => 19198,
		groupID  => 40,
		typeName => "Gist X-Type X-Large Shield Booster"
	},

	19199	=> {
		typeID   => 19199,
		groupID  => 40,
		typeName => "Gist A-Type Large Shield Booster"
	},

	19200	=> {
		typeID   => 19200,
		groupID  => 40,
		typeName => "Gist X-Type Large Shield Booster"
	},

	19201	=> {
		typeID   => 19201,
		groupID  => 40,
		typeName => "Pith C-Type Large Shield Booster"
	},

	19202	=> {
		typeID   => 19202,
		groupID  => 40,
		typeName => "Pith C-Type X-Large Shield Booster"
	},

	19203	=> {
		typeID   => 19203,
		groupID  => 40,
		typeName => "Pith B-Type Large Shield Booster"
	},

	19204	=> {
		typeID   => 19204,
		groupID  => 40,
		typeName => "Pith B-Type X-Large Shield Booster"
	},

	19205	=> {
		typeID   => 19205,
		groupID  => 40,
		typeName => "Pith A-Type Large Shield Booster"
	},

	19206	=> {
		typeID   => 19206,
		groupID  => 40,
		typeName => "Pith A-Type X-Large Shield Booster"
	},

	19207	=> {
		typeID   => 19207,
		groupID  => 40,
		typeName => "Pith X-Type Large Shield Booster"
	},

	19208	=> {
		typeID   => 19208,
		groupID  => 40,
		typeName => "Pith X-Type X-Large Shield Booster"
	},

	19209	=> {
		typeID   => 19209,
		groupID  => 295,
		typeName => "Pithum C-Type Explosive Deflection Amplifier"
	},

	19211	=> {
		typeID   => 19211,
		groupID  => 295,
		typeName => "Pithum C-Type Thermal Dissipation Amplifier"
	},

	19213	=> {
		typeID   => 19213,
		groupID  => 295,
		typeName => "Pithum C-Type Kinetic Deflection Amplifier"
	},

	19215	=> {
		typeID   => 19215,
		groupID  => 295,
		typeName => "Pithum C-Type EM Ward Amplifier"
	},

	19217	=> {
		typeID   => 19217,
		groupID  => 295,
		typeName => "Pithum B-Type Explosive Deflection Amplifier"
	},

	19219	=> {
		typeID   => 19219,
		groupID  => 295,
		typeName => "Pithum B-Type Thermal Dissipation Amplifier"
	},

	19221	=> {
		typeID   => 19221,
		groupID  => 295,
		typeName => "Pithum B-Type Kinetic Deflection Amplifier"
	},

	19223	=> {
		typeID   => 19223,
		groupID  => 295,
		typeName => "Pithum B-Type EM Ward Amplifier"
	},

	19225	=> {
		typeID   => 19225,
		groupID  => 295,
		typeName => "Pithum A-Type Explosive Deflection Amplifier"
	},

	19227	=> {
		typeID   => 19227,
		groupID  => 295,
		typeName => "Pithum A-Type Thermal Dissipation Amplifier"
	},

	19229	=> {
		typeID   => 19229,
		groupID  => 295,
		typeName => "Pithum A-Type Kinetic Deflection Amplifier"
	},

	19231	=> {
		typeID   => 19231,
		groupID  => 295,
		typeName => "Pithum A-Type EM Ward Amplifier"
	},

	19233	=> {
		typeID   => 19233,
		groupID  => 295,
		typeName => "Gistum C-Type Explosive Deflection Amplifier"
	},

	19235	=> {
		typeID   => 19235,
		groupID  => 295,
		typeName => "Gistum B-Type Explosive Deflection Amplifier"
	},

	19237	=> {
		typeID   => 19237,
		groupID  => 295,
		typeName => "Gistum C-Type Thermal Dissipation Amplifier"
	},

	19239	=> {
		typeID   => 19239,
		groupID  => 295,
		typeName => "Gistum B-Type Thermal Dissipation Amplifier"
	},

	19241	=> {
		typeID   => 19241,
		groupID  => 295,
		typeName => "Gistum C-Type Kinetic Deflection Amplifier"
	},

	19243	=> {
		typeID   => 19243,
		groupID  => 295,
		typeName => "Gistum B-Type Kinetic Deflection Amplifier"
	},

	19245	=> {
		typeID   => 19245,
		groupID  => 295,
		typeName => "Gistum C-Type EM Ward Amplifier"
	},

	19247	=> {
		typeID   => 19247,
		groupID  => 295,
		typeName => "Gistum B-Type EM Ward Amplifier"
	},

	19249	=> {
		typeID   => 19249,
		groupID  => 295,
		typeName => "Gistum A-Type Explosive Deflection Amplifier"
	},

	19251	=> {
		typeID   => 19251,
		groupID  => 295,
		typeName => "Gistum A-Type Thermal Dissipation Amplifier"
	},

	19253	=> {
		typeID   => 19253,
		groupID  => 295,
		typeName => "Gistum A-Type Kinetic Deflection Amplifier"
	},

	19255	=> {
		typeID   => 19255,
		groupID  => 295,
		typeName => "Gistum A-Type EM Ward Amplifier"
	},

	19257	=> {
		typeID   => 19257,
		groupID  => 77,
		typeName => "Gist C-Type Kinetic Deflection Field"
	},

	19258	=> {
		typeID   => 19258,
		groupID  => 77,
		typeName => "Pith C-Type Kinetic Deflection Field"
	},

	19259	=> {
		typeID   => 19259,
		groupID  => 77,
		typeName => "Gist C-Type Explosive Deflection Field"
	},

	19260	=> {
		typeID   => 19260,
		groupID  => 77,
		typeName => "Pith C-Type Explosive Deflection Field"
	},

	19261	=> {
		typeID   => 19261,
		groupID  => 77,
		typeName => "Gist C-Type Thermal Dissipation Field"
	},

	19262	=> {
		typeID   => 19262,
		groupID  => 77,
		typeName => "Pith C-Type Thermal Dissipation Field"
	},

	19263	=> {
		typeID   => 19263,
		groupID  => 77,
		typeName => "Gist C-Type EM Ward Field"
	},

	19264	=> {
		typeID   => 19264,
		groupID  => 77,
		typeName => "Pith C-Type EM Ward Field"
	},

	19265	=> {
		typeID   => 19265,
		groupID  => 77,
		typeName => "Gist B-Type EM Ward Field"
	},

	19266	=> {
		typeID   => 19266,
		groupID  => 77,
		typeName => "Pith B-Type EM Ward Field"
	},

	19267	=> {
		typeID   => 19267,
		groupID  => 77,
		typeName => "Gist B-Type Thermal Dissipation Field"
	},

	19268	=> {
		typeID   => 19268,
		groupID  => 77,
		typeName => "Pith B-Type Thermal Dissipation Field"
	},

	19269	=> {
		typeID   => 19269,
		groupID  => 77,
		typeName => "Gist B-Type Explosive Deflection Field"
	},

	19270	=> {
		typeID   => 19270,
		groupID  => 77,
		typeName => "Pith B-Type Explosive Deflection Field"
	},

	19271	=> {
		typeID   => 19271,
		groupID  => 77,
		typeName => "Gist B-Type Kinetic Deflection Field"
	},

	19272	=> {
		typeID   => 19272,
		groupID  => 77,
		typeName => "Pith B-Type Kinetic Deflection Field"
	},

	19273	=> {
		typeID   => 19273,
		groupID  => 77,
		typeName => "Gist A-Type Kinetic Deflection Field"
	},

	19274	=> {
		typeID   => 19274,
		groupID  => 77,
		typeName => "Pith A-Type Kinetic Deflection Field"
	},

	19275	=> {
		typeID   => 19275,
		groupID  => 77,
		typeName => "Gist A-Type Explosive Deflection Field"
	},

	19276	=> {
		typeID   => 19276,
		groupID  => 77,
		typeName => "Pith A-Type Explosive Deflection Field"
	},

	19277	=> {
		typeID   => 19277,
		groupID  => 77,
		typeName => "Gist A-Type Thermal Dissipation Field"
	},

	19278	=> {
		typeID   => 19278,
		groupID  => 77,
		typeName => "Pith A-Type Thermal Dissipation Field"
	},

	19279	=> {
		typeID   => 19279,
		groupID  => 77,
		typeName => "Gist A-Type EM Ward Field"
	},

	19280	=> {
		typeID   => 19280,
		groupID  => 77,
		typeName => "Pith A-Type EM Ward Field"
	},

	19281	=> {
		typeID   => 19281,
		groupID  => 77,
		typeName => "Gist X-Type EM Ward Field"
	},

	19282	=> {
		typeID   => 19282,
		groupID  => 77,
		typeName => "Pith X-Type EM Ward Field"
	},

	19283	=> {
		typeID   => 19283,
		groupID  => 77,
		typeName => "Gist X-Type Thermal Dissipation Field"
	},

	19284	=> {
		typeID   => 19284,
		groupID  => 77,
		typeName => "Pith X-Type Thermal Dissipation Field"
	},

	19285	=> {
		typeID   => 19285,
		groupID  => 77,
		typeName => "Gist X-Type Explosive Deflection Field"
	},

	19286	=> {
		typeID   => 19286,
		groupID  => 77,
		typeName => "Pith X-Type Explosive Deflection Field"
	},

	19287	=> {
		typeID   => 19287,
		groupID  => 77,
		typeName => "Gist X-Type Kinetic Deflection Field"
	},

	19288	=> {
		typeID   => 19288,
		groupID  => 77,
		typeName => "Pith X-Type Kinetic Deflection Field"
	},

	19289	=> {
		typeID   => 19289,
		groupID  => 338,
		typeName => "Pith C-Type Shield Boost Amplifier"
	},

	19293	=> {
		typeID   => 19293,
		groupID  => 338,
		typeName => "Gist A-Type Shield Boost Amplifier"
	},

	19295	=> {
		typeID   => 19295,
		groupID  => 338,
		typeName => "Pith X-Type Shield Boost Amplifier"
	},

	19297	=> {
		typeID   => 19297,
		groupID  => 338,
		typeName => "Gist C-Type Shield Boost Amplifier"
	},

	19299	=> {
		typeID   => 19299,
		groupID  => 338,
		typeName => "Gist B-Type Shield Boost Amplifier"
	},

	19301	=> {
		typeID   => 19301,
		groupID  => 338,
		typeName => "Gist X-Type Shield Boost Amplifier"
	},

	19303	=> {
		typeID   => 19303,
		groupID  => 338,
		typeName => "Pith B-Type Shield Boost Amplifier"
	},

	19311	=> {
		typeID   => 19311,
		groupID  => 338,
		typeName => "Pith A-Type Shield Boost Amplifier"
	},

	19313	=> {
		typeID   => 19313,
		groupID  => 46,
		typeName => "Coreli C-Type 5MN Microwarpdrive"
	},

	19315	=> {
		typeID   => 19315,
		groupID  => 46,
		typeName => "Corelum C-Type 50MN Microwarpdrive"
	},

	19317	=> {
		typeID   => 19317,
		groupID  => 46,
		typeName => "Core C-Type 500MN Microwarpdrive"
	},

	19319	=> {
		typeID   => 19319,
		groupID  => 46,
		typeName => "Coreli B-Type 5MN Microwarpdrive"
	},

	19321	=> {
		typeID   => 19321,
		groupID  => 46,
		typeName => "Corelum B-Type 50MN Microwarpdrive"
	},

	19323	=> {
		typeID   => 19323,
		groupID  => 46,
		typeName => "Core B-Type 500MN Microwarpdrive"
	},

	19325	=> {
		typeID   => 19325,
		groupID  => 46,
		typeName => "Coreli A-Type 5MN Microwarpdrive"
	},

	19327	=> {
		typeID   => 19327,
		groupID  => 46,
		typeName => "Corelum A-Type 50MN Microwarpdrive"
	},

	19329	=> {
		typeID   => 19329,
		groupID  => 46,
		typeName => "Core A-Type 500MN Microwarpdrive"
	},

	19335	=> {
		typeID   => 19335,
		groupID  => 46,
		typeName => "Core X-Type 500MN Microwarpdrive"
	},

	19337	=> {
		typeID   => 19337,
		groupID  => 46,
		typeName => "Gistii C-Type 5MN Microwarpdrive"
	},

	19339	=> {
		typeID   => 19339,
		groupID  => 46,
		typeName => "Gistum C-Type 50MN Microwarpdrive"
	},

	19341	=> {
		typeID   => 19341,
		groupID  => 46,
		typeName => "Gist C-Type 500MN Microwarpdrive"
	},

	19343	=> {
		typeID   => 19343,
		groupID  => 46,
		typeName => "Gistii B-Type 5MN Microwarpdrive"
	},

	19345	=> {
		typeID   => 19345,
		groupID  => 46,
		typeName => "Gistum B-Type 50MN Microwarpdrive"
	},

	19347	=> {
		typeID   => 19347,
		groupID  => 46,
		typeName => "Gist B-Type 500MN Microwarpdrive"
	},

	19349	=> {
		typeID   => 19349,
		groupID  => 46,
		typeName => "Gistii A-Type 5MN Microwarpdrive"
	},

	19351	=> {
		typeID   => 19351,
		groupID  => 46,
		typeName => "Gistum A-Type 50MN Microwarpdrive"
	},

	19353	=> {
		typeID   => 19353,
		groupID  => 46,
		typeName => "Gist A-Type 500MN Microwarpdrive"
	},

	19359	=> {
		typeID   => 19359,
		groupID  => 46,
		typeName => "Gist X-Type 500MN Microwarpdrive"
	},

	19361	=> {
		typeID   => 19361,
		groupID  => 326,
		typeName => "Corpum B-Type Energized EM Membrane"
	},

	19363	=> {
		typeID   => 19363,
		groupID  => 326,
		typeName => "Centum B-Type Energized EM Membrane"
	},

	19365	=> {
		typeID   => 19365,
		groupID  => 446,
		typeName => "Sarum Customs General"
	},

	19366	=> {
		typeID   => 19366,
		groupID  => 446,
		typeName => "Ammatar Customs General"
	},

	19367	=> {
		typeID   => 19367,
		groupID  => 446,
		typeName => "Caldari Customs Commissioner"
	},

	19368	=> {
		typeID   => 19368,
		groupID  => 446,
		typeName => "Khanid Customs General Major"
	},

	19369	=> {
		typeID   => 19369,
		groupID  => 446,
		typeName => "Gallente Customs Major"
	},

	19370	=> {
		typeID   => 19370,
		groupID  => 446,
		typeName => "Minmatar Customs Commander"
	},

	19371	=> {
		typeID   => 19371,
		groupID  => 446,
		typeName => "Amarr Customs General"
	},

	19372	=> {
		typeID   => 19372,
		groupID  => 446,
		typeName => "Amarr Customs Surveillance Officer"
	},

	19373	=> {
		typeID   => 19373,
		groupID  => 496,
		typeName => "The Prize Container"
	},

	19382	=> {
		typeID   => 19382,
		groupID  => 314,
		typeName => "Luther Veron's Head"
	},

	19383	=> {
		typeID   => 19383,
		groupID  => 446,
		typeName => "Gallente Customs Official"
	},

	19384	=> {
		typeID   => 19384,
		groupID  => 446,
		typeName => "Sarum Customs Surveillance Officer"
	},

	19385	=> {
		typeID   => 19385,
		groupID  => 446,
		typeName => "Caldari Customs Agent"
	},

	19386	=> {
		typeID   => 19386,
		groupID  => 446,
		typeName => "Khanid Customs Surveillance Officer"
	},

	19387	=> {
		typeID   => 19387,
		groupID  => 446,
		typeName => "Ammatar Customs Surveillance Officer"
	},

	19388	=> {
		typeID   => 19388,
		groupID  => 446,
		typeName => "Minmatar Customs Patroller"
	},

	19398	=> {
		typeID   => 19398,
		groupID  => 284,
		typeName => "Confiscated Viral Agent"
	},

	19399	=> {
		typeID   => 19399,
		groupID  => 314,
		typeName => "Confiscated Vitoc"
	},

	19400	=> {
		typeID   => 19400,
		groupID  => 493,
		typeName => "1st Tier Overseer's Personal Effects"
	},

	19401	=> {
		typeID   => 19401,
		groupID  => 493,
		typeName => "2nd Tier Overseer's Personal Effects"
	},

	19402	=> {
		typeID   => 19402,
		groupID  => 493,
		typeName => "3rd Tier Overseer's Personal Effects"
	},

	19403	=> {
		typeID   => 19403,
		groupID  => 493,
		typeName => "4th Tier Overseer's Personal Effects"
	},

	19404	=> {
		typeID   => 19404,
		groupID  => 493,
		typeName => "5th Tier Overseer's Personal Effects"
	},

	19405	=> {
		typeID   => 19405,
		groupID  => 493,
		typeName => "6th Tier Overseer's Personal Effects"
	},

	19406	=> {
		typeID   => 19406,
		groupID  => 493,
		typeName => "7th Tier Overseer's Personal Effects"
	},

	19407	=> {
		typeID   => 19407,
		groupID  => 493,
		typeName => "8th Tier Overseer's Personal Effects"
	},

	19408	=> {
		typeID   => 19408,
		groupID  => 493,
		typeName => "9th Tier Overseer's Personal Effects"
	},

	19409	=> {
		typeID   => 19409,
		groupID  => 493,
		typeName => "11th Tier Overseer's Personal Effects"
	},

	19410	=> {
		typeID   => 19410,
		groupID  => 493,
		typeName => "12th Tier Overseer's Personal Effects"
	},

	19411	=> {
		typeID   => 19411,
		groupID  => 493,
		typeName => "13th Tier Overseer's Personal Effects"
	},

	19412	=> {
		typeID   => 19412,
		groupID  => 493,
		typeName => "14th Tier Overseer's Personal Effects"
	},

	19413	=> {
		typeID   => 19413,
		groupID  => 493,
		typeName => "15th Tier Overseer's Personal Effects"
	},

	19414	=> {
		typeID   => 19414,
		groupID  => 493,
		typeName => "16th Tier Overseer's Personal Effects"
	},

	19415	=> {
		typeID   => 19415,
		groupID  => 493,
		typeName => "17th Tier Overseer's Personal Effects"
	},

	19416	=> {
		typeID   => 19416,
		groupID  => 493,
		typeName => "18th Tier Overseer's Personal Effects"
	},

	19417	=> {
		typeID   => 19417,
		groupID  => 493,
		typeName => "19th Tier Overseer's Personal Effects"
	},

	19418	=> {
		typeID   => 19418,
		groupID  => 493,
		typeName => "20th Tier Overseer's Personal Effects"
	},

	19419	=> {
		typeID   => 19419,
		groupID  => 493,
		typeName => "21st Tier Overseer's Personal Effects"
	},

	19420	=> {
		typeID   => 19420,
		groupID  => 493,
		typeName => "22nd Tier Overseer's Personal Effects"
	},

	19421	=> {
		typeID   => 19421,
		groupID  => 493,
		typeName => "23rd Tier Overseer's Personal Effects"
	},

	19422	=> {
		typeID   => 19422,
		groupID  => 493,
		typeName => "10th Tier Overseer's Personal Effects"
	},

	19423	=> {
		typeID   => 19423,
		groupID  => 821,
		typeName => "Watch Officer"
	},

	19424	=> {
		typeID   => 19424,
		groupID  => 821,
		typeName => "Serpentis Shipyard Defender"
	},

	19425	=> {
		typeID   => 19425,
		groupID  => 496,
		typeName => "Black Drone Container"
	},

	19426	=> {
		typeID   => 19426,
		groupID  => 494,
		typeName => "Strain Operation Bunker"
	},

	19427	=> {
		typeID   => 19427,
		groupID  => 494,
		typeName => "Hive Under Construction"
	},

	19430	=> {
		typeID   => 19430,
		groupID  => 257,
		typeName => "Omnipotent"
	},

	19459	=> {
		typeID   => 19459,
		groupID  => 498,
		typeName => "'Phase' Servitor"
	},

	19461	=> {
		typeID   => 19461,
		groupID  => 314,
		typeName => "Blaque Voucher"
	},

	19462	=> {
		typeID   => 19462,
		groupID  => 314,
		typeName => "Foiritan Voucher"
	},

	19463	=> {
		typeID   => 19463,
		groupID  => 314,
		typeName => "Autrech Voucher"
	},

	19466	=> {
		typeID   => 19466,
		groupID  => 498,
		typeName => "Regular Mercenary Navigator"
	},

	19468	=> {
		typeID   => 19468,
		groupID  => 498,
		typeName => "'Longbow' Servitor"
	},

	19470	=> {
		typeID   => 19470,
		groupID  => 311,
		typeName => "Intensive Reprocessing Array"
	},

	19487	=> {
		typeID   => 19487,
		groupID  => 494,
		typeName => "Angel Battlestation"
	},

	19489	=> {
		typeID   => 19489,
		groupID  => 38,
		typeName => "Thukker Modified Medium Shield Extender"
	},

	19491	=> {
		typeID   => 19491,
		groupID  => 46,
		typeName => "Thukker Modified 100MN Afterburner"
	},

	19493	=> {
		typeID   => 19493,
		groupID  => 314,
		typeName => "Arms Cache"
	},

	19500	=> {
		typeID   => 19500,
		groupID  => 747,
		typeName => "Zor's Custom Navigation Link"
	},

	19501	=> {
		typeID   => 19501,
		groupID  => 494,
		typeName => "The Damsels Wimpy Prison"
	},

	19502	=> {
		typeID   => 19502,
		groupID  => 494,
		typeName => "The Damsels Wimpy Brothel"
	},

	19504	=> {
		typeID   => 19504,
		groupID  => 494,
		typeName => "Pirate Headquarters"
	},

	19505	=> {
		typeID   => 19505,
		groupID  => 319,
		typeName => "Guristas Starbase Control Tower"
	},

	19533	=> {
		typeID   => 19533,
		groupID  => 319,
		typeName => "Gas/Storage Silo - Pirate Extravaganza lvl 3_ MISSION"
	},

	19534	=> {
		typeID   => 19534,
		groupID  => 300,
		typeName => "High-grade Talisman Alpha"
	},

	19535	=> {
		typeID   => 19535,
		groupID  => 300,
		typeName => "High-grade Talisman Beta"
	},

	19536	=> {
		typeID   => 19536,
		groupID  => 300,
		typeName => "High-grade Talisman Gamma"
	},

	19537	=> {
		typeID   => 19537,
		groupID  => 300,
		typeName => "High-grade Talisman Delta"
	},

	19538	=> {
		typeID   => 19538,
		groupID  => 300,
		typeName => "High-grade Talisman Epsilon"
	},

	19539	=> {
		typeID   => 19539,
		groupID  => 300,
		typeName => "High-grade Talisman Omega"
	},

	19540	=> {
		typeID   => 19540,
		groupID  => 300,
		typeName => "High-grade Snake Alpha"
	},

	19547	=> {
		typeID   => 19547,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Systems RS-605"
	},

	19548	=> {
		typeID   => 19548,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Remote Armor Repair Systems RA-705"
	},

	19549	=> {
		typeID   => 19549,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Mechanic MC-805"
	},

	19550	=> {
		typeID   => 19550,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Hull Upgrades HG-1005"
	},

	19551	=> {
		typeID   => 19551,
		groupID  => 300,
		typeName => "High-grade Snake Beta"
	},

	19553	=> {
		typeID   => 19553,
		groupID  => 300,
		typeName => "High-grade Snake Gamma"
	},

	19554	=> {
		typeID   => 19554,
		groupID  => 300,
		typeName => "High-grade Snake Delta"
	},

	19555	=> {
		typeID   => 19555,
		groupID  => 300,
		typeName => "High-grade Snake Epsilon"
	},

	19556	=> {
		typeID   => 19556,
		groupID  => 300,
		typeName => "High-grade Snake Omega"
	},

	19557	=> {
		typeID   => 19557,
		groupID  => 494,
		typeName => "Low-Tech Deadspace Energy Harvester"
	},

	19558	=> {
		typeID   => 19558,
		groupID  => 494,
		typeName => "Angel Radiating Telescope"
	},

	19559	=> {
		typeID   => 19559,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	19560	=> {
		typeID   => 19560,
		groupID  => 494,
		typeName => "Deserted Starbase Storage Facility"
	},

	19561	=> {
		typeID   => 19561,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	19562	=> {
		typeID   => 19562,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	19563	=> {
		typeID   => 19563,
		groupID  => 446,
		typeName => "CONCORD Customs Commander"
	},

	19564	=> {
		typeID   => 19564,
		groupID  => 446,
		typeName => "CONCORD Customs Official"
	},

	19565	=> {
		typeID   => 19565,
		groupID  => 494,
		typeName => "Guristas Bunker_MISSION"
	},

	19582	=> {
		typeID   => 19582,
		groupID  => 314,
		typeName => "Guristas Research Data"
	},

	19583	=> {
		typeID   => 19583,
		groupID  => 498,
		typeName => "Regular Mercenary Scout"
	},

	19585	=> {
		typeID   => 19585,
		groupID  => 474,
		typeName => "Dewak's Level 1 Decoder"
	},

	19586	=> {
		typeID   => 19586,
		groupID  => 474,
		typeName => "Dewak's Level 2 Decoder"
	},

	19587	=> {
		typeID   => 19587,
		groupID  => 474,
		typeName => "Dewak's Level 3 Decoder"
	},

	19588	=> {
		typeID   => 19588,
		groupID  => 494,
		typeName => "Gas/Storage Silo"
	},

	19589	=> {
		typeID   => 19589,
		groupID  => 817,
		typeName => "Utori Kumesh"
	},

	19590	=> {
		typeID   => 19590,
		groupID  => 494,
		typeName => "Dewak's First Officer's HQ"
	},

	19591	=> {
		typeID   => 19591,
		groupID  => 496,
		typeName => "Dewak's Dot"
	},

	19592	=> {
		typeID   => 19592,
		groupID  => 821,
		typeName => "'Screaming' Dewak Humfry"
	},

	19593	=> {
		typeID   => 19593,
		groupID  => 319,
		typeName => "Imai Kenon's Corpse"
	},

	19594	=> {
		typeID   => 19594,
		groupID  => 498,
		typeName => "'Dart' Servitor"
	},

	19620	=> {
		typeID   => 19620,
		groupID  => 821,
		typeName => "Drone Commandeered Battleship"
	},

	19621	=> {
		typeID   => 19621,
		groupID  => 474,
		typeName => "Perimeter Descramble Code"
	},

	19622	=> {
		typeID   => 19622,
		groupID  => 494,
		typeName => "Starbase Storage Facility"
	},

	19653	=> {
		typeID   => 19653,
		groupID  => 494,
		typeName => "Industrial Derelict"
	},

	19658	=> {
		typeID   => 19658,
		groupID  => 976,
		typeName => "Melted Snowball CVII"
	},

	19660	=> {
		typeID   => 19660,
		groupID  => 501,
		typeName => "Festival Launcher"
	},

	19662	=> {
		typeID   => 19662,
		groupID  => 817,
		typeName => "Jarkon Puman"
	},

	19663	=> {
		typeID   => 19663,
		groupID  => 370,
		typeName => "Jarkon Puman's Tag"
	},

	19664	=> {
		typeID   => 19664,
		groupID  => 383,
		typeName => "Ammatar Point Defense Battery"
	},

	19665	=> {
		typeID   => 19665,
		groupID  => 383,
		typeName => "Ammatar Light Missile Battery"
	},

	19666	=> {
		typeID   => 19666,
		groupID  => 383,
		typeName => "Ammatar Heavy Missile Battery"
	},

	19667	=> {
		typeID   => 19667,
		groupID  => 383,
		typeName => "Ammatar Cruise Missile Battery"
	},

	19668	=> {
		typeID   => 19668,
		groupID  => 383,
		typeName => "Tower Sentry Ammatar I"
	},

	19669	=> {
		typeID   => 19669,
		groupID  => 383,
		typeName => "Tower Sentry Ammatar II"
	},

	19670	=> {
		typeID   => 19670,
		groupID  => 383,
		typeName => "Tower Sentry Ammatar III"
	},

	19671	=> {
		typeID   => 19671,
		groupID  => 319,
		typeName => "Ammatar Barricade"
	},

	19672	=> {
		typeID   => 19672,
		groupID  => 319,
		typeName => "Ammatar Cathedral"
	},

	19673	=> {
		typeID   => 19673,
		groupID  => 319,
		typeName => "Ammatar Deadspace Tactical Unit"
	},

	19674	=> {
		typeID   => 19674,
		groupID  => 816,
		typeName => "Warlord Ixon Kruz"
	},

	19675	=> {
		typeID   => 19675,
		groupID  => 409,
		typeName => "Ixon Kruz's Insignia"
	},

	19676	=> {
		typeID   => 19676,
		groupID  => 817,
		typeName => "Ixon Reaver"
	},

	19677	=> {
		typeID   => 19677,
		groupID  => 816,
		typeName => "Commander Dakin Gara"
	},

	19678	=> {
		typeID   => 19678,
		groupID  => 409,
		typeName => "Dakin Gara's Insignia"
	},

	19679	=> {
		typeID   => 19679,
		groupID  => 816,
		typeName => "High Priest Karmone Tizmer"
	},

	19680	=> {
		typeID   => 19680,
		groupID  => 409,
		typeName => "Karmone Tizmer's Insignia"
	},

	19681	=> {
		typeID   => 19681,
		groupID  => 817,
		typeName => "Hunter Malbreth"
	},

	19683	=> {
		typeID   => 19683,
		groupID  => 816,
		typeName => "Commander Genom Tara"
	},

	19684	=> {
		typeID   => 19684,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Proficiency RP-903"
	},

	19685	=> {
		typeID   => 19685,
		groupID  => 738,
		typeName => "Inherent Implants 'Noble' Repair Proficiency RP-905"
	},

	19686	=> {
		typeID   => 19686,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Motion Prediction MR-705"
	},

	19687	=> {
		typeID   => 19687,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Surgical Strike SS-905"
	},

	19688	=> {
		typeID   => 19688,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Large Projectile Turret LP-1005"
	},

	19689	=> {
		typeID   => 19689,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Medium Projectile Turret MP-805"
	},

	19690	=> {
		typeID   => 19690,
		groupID  => 742,
		typeName => "Eifyr and Co. 'Gunslinger' Small Projectile Turret SP-605"
	},

	19691	=> {
		typeID   => 19691,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Small Energy Turret SE-605"
	},

	19692	=> {
		typeID   => 19692,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Controlled Bursts CB-705"
	},

	19693	=> {
		typeID   => 19693,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Gunnery RF-905"
	},

	19694	=> {
		typeID   => 19694,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Large Energy Turret LE-1005"
	},

	19695	=> {
		typeID   => 19695,
		groupID  => 742,
		typeName => "Inherent Implants 'Lancer' Medium Energy Turret ME-805"
	},

	19696	=> {
		typeID   => 19696,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Sharpshooter ST-905"
	},

	19697	=> {
		typeID   => 19697,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Trajectory Analysis TA-705"
	},

	19698	=> {
		typeID   => 19698,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Large Hybrid Turret LH-1005"
	},

	19699	=> {
		typeID   => 19699,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Medium Hybrid Turret MH-805"
	},

	19700	=> {
		typeID   => 19700,
		groupID  => 742,
		typeName => "Zainou 'Deadeye' Small Hybrid Turret SH-605"
	},

	19701	=> {
		typeID   => 19701,
		groupID  => 821,
		typeName => "Swarm Parasite Worker"
	},

	19702	=> {
		typeID   => 19702,
		groupID  => 474,
		typeName => "Repository Descramble Code"
	},

	19703	=> {
		typeID   => 19703,
		groupID  => 495,
		typeName => "Swarm Defense Battery"
	},

	19704	=> {
		typeID   => 19704,
		groupID  => 821,
		typeName => "Supreme Hive Defender"
	},

	19705	=> {
		typeID   => 19705,
		groupID  => 474,
		typeName => "Outgrowth Hive Entrance Code"
	},

	19706	=> {
		typeID   => 19706,
		groupID  => 310,
		typeName => "Celestial Beacon II"
	},

	19707	=> {
		typeID   => 19707,
		groupID  => 495,
		typeName => "Outgrowth Strain Mother"
	},

	19708	=> {
		typeID   => 19708,
		groupID  => 494,
		typeName => "Metal Scraps In Storage"
	},

	19711	=> {
		typeID   => 19711,
		groupID  => 319,
		typeName => "AstroFarm"
	},

	19712	=> {
		typeID   => 19712,
		groupID  => 319,
		typeName => "HumanFarm"
	},

	19713	=> {
		typeID   => 19713,
		groupID  => 227,
		typeName => "Argon Gas Environment"
	},

	19714	=> {
		typeID   => 19714,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	19715	=> {
		typeID   => 19715,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	19716	=> {
		typeID   => 19716,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	19719	=> {
		typeID   => 19719,
		groupID  => 257,
		typeName => "Transport Ships"
	},

	19720	=> {
		typeID   => 19720,
		groupID  => 485,
		typeName => "Revelation"
	},

	19721	=> {
		typeID   => 19721,
		groupID  => 537,
		typeName => "Revelation Blueprint"
	},

	19722	=> {
		typeID   => 19722,
		groupID  => 485,
		typeName => "Naglfar"
	},

	19723	=> {
		typeID   => 19723,
		groupID  => 537,
		typeName => "Naglfar Blueprint"
	},

	19724	=> {
		typeID   => 19724,
		groupID  => 485,
		typeName => "Moros"
	},

	19725	=> {
		typeID   => 19725,
		groupID  => 537,
		typeName => "Moros Blueprint"
	},

	19726	=> {
		typeID   => 19726,
		groupID  => 485,
		typeName => "Phoenix"
	},

	19727	=> {
		typeID   => 19727,
		groupID  => 537,
		typeName => "Phoenix Blueprint"
	},

	19728	=> {
		typeID   => 19728,
		groupID  => 502,
		typeName => "Deadspace Signature"
	},

	19729	=> {
		typeID   => 19729,
		groupID  => 319,
		typeName => "Gallente Bunker UDI"
	},

	19730	=> {
		typeID   => 19730,
		groupID  => 314,
		typeName => "Communications Logs"
	},

	19731	=> {
		typeID   => 19731,
		groupID  => 821,
		typeName => "Sansha Corpse Collector"
	},

	19732	=> {
		typeID   => 19732,
		groupID  => 474,
		typeName => "Sansha Supply Pit Passcard"
	},

	19737	=> {
		typeID   => 19737,
		groupID  => 621,
		typeName => "Sansha's Tyrant Elite"
	},

	19738	=> {
		typeID   => 19738,
		groupID  => 494,
		typeName => "Subspace Data Miner"
	},

	19739	=> {
		typeID   => 19739,
		groupID  => 506,
		typeName => "Cruise Missile Launcher II"
	},

	19740	=> {
		typeID   => 19740,
		groupID  => 136,
		typeName => "Cruise Missile Launcher II Blueprint"
	},

	19742	=> {
		typeID   => 19742,
		groupID  => 494,
		typeName => "Infested station ruins"
	},

	19743	=> {
		typeID   => 19743,
		groupID  => 319,
		typeName => "Extremely Powerful EM Forcefield"
	},

	19744	=> {
		typeID   => 19744,
		groupID  => 28,
		typeName => "Sigil"
	},

	19745	=> {
		typeID   => 19745,
		groupID  => 108,
		typeName => "Sigil Blueprint"
	},

	19746	=> {
		typeID   => 19746,
		groupID  => 227,
		typeName => "Dust Storm Environment"
	},

	19747	=> {
		typeID   => 19747,
		groupID  => 227,
		typeName => "Lightning Storm Environment"
	},

	19748	=> {
		typeID   => 19748,
		groupID  => 227,
		typeName => "Ethereal Environment"
	},

	19749	=> {
		typeID   => 19749,
		groupID  => 227,
		typeName => "Celestial Environment"
	},

	19750	=> {
		typeID   => 19750,
		groupID  => 227,
		typeName => "Infernal Environment"
	},

	19751	=> {
		typeID   => 19751,
		groupID  => 227,
		typeName => "Icefield Environment"
	},

	19752	=> {
		typeID   => 19752,
		groupID  => 227,
		typeName => "Krypton Gas Environment"
	},

	19753	=> {
		typeID   => 19753,
		groupID  => 227,
		typeName => "Toxic Cloud Environment"
	},

	19754	=> {
		typeID   => 19754,
		groupID  => 227,
		typeName => "Radon Gas Environment"
	},

	19755	=> {
		typeID   => 19755,
		groupID  => 227,
		typeName => "Turbulent Storm Environment"
	},

	19756	=> {
		typeID   => 19756,
		groupID  => 227,
		typeName => "Xenon Gas Environment"
	},

	19757	=> {
		typeID   => 19757,
		groupID  => 15,
		typeName => "Research Outpost"
	},

	19758	=> {
		typeID   => 19758,
		groupID  => 307,
		typeName => "Caldari Research Outpost Platform"
	},

	19759	=> {
		typeID   => 19759,
		groupID  => 272,
		typeName => "Long Distance Jamming"
	},

	19760	=> {
		typeID   => 19760,
		groupID  => 272,
		typeName => "Frequency Modulation"
	},

	19761	=> {
		typeID   => 19761,
		groupID  => 272,
		typeName => "Signal Dispersion"
	},

	19765	=> {
		typeID   => 19765,
		groupID  => 306,
		typeName => "Warehouse_MISSION"
	},

	19766	=> {
		typeID   => 19766,
		groupID  => 272,
		typeName => "Signal Suppression"
	},

	19767	=> {
		typeID   => 19767,
		groupID  => 272,
		typeName => "Weapon Destabilization"
	},

	19768	=> {
		typeID   => 19768,
		groupID  => 817,
		typeName => "Mercenary Corporal"
	},

	19769	=> {
		typeID   => 19769,
		groupID  => 817,
		typeName => "Mercenary Lieutenant"
	},

	19794	=> {
		typeID   => 19794,
		groupID  => 306,
		typeName => "Cruise Missile Storage"
	},

	19795	=> {
		typeID   => 19795,
		groupID  => 494,
		typeName => "Radio Telescope"
	},

	19806	=> {
		typeID   => 19806,
		groupID  => 379,
		typeName => "Target Painter II"
	},

	19807	=> {
		typeID   => 19807,
		groupID  => 504,
		typeName => "Target Painter II Blueprint"
	},

	19808	=> {
		typeID   => 19808,
		groupID  => 379,
		typeName => "Partial Weapon Navigation"
	},

	19809	=> {
		typeID   => 19809,
		groupID  => 504,
		typeName => "Partial Weapon Navigation Blueprint"
	},

	19810	=> {
		typeID   => 19810,
		groupID  => 379,
		typeName => "Peripheral Compact Target Painter"
	},

	19811	=> {
		typeID   => 19811,
		groupID  => 504,
		typeName => "Peripheral Weapon Navigation Diameter Blueprint"
	},

	19812	=> {
		typeID   => 19812,
		groupID  => 379,
		typeName => "Parallel Enduring Target Painter"
	},

	19813	=> {
		typeID   => 19813,
		groupID  => 504,
		typeName => "Parallel Weapon Navigation Transmitter Blueprint"
	},

	19814	=> {
		typeID   => 19814,
		groupID  => 379,
		typeName => "Phased Scoped Target Painter"
	},

	19815	=> {
		typeID   => 19815,
		groupID  => 504,
		typeName => "Phased Weapon Navigation Array Generation Extron Blueprint"
	},

	19921	=> {
		typeID   => 19921,
		groupID  => 272,
		typeName => "Target Painting"
	},

	19922	=> {
		typeID   => 19922,
		groupID  => 272,
		typeName => "Signature Focusing"
	},

	19923	=> {
		typeID   => 19923,
		groupID  => 201,
		typeName => "Morpheus Enduring Magnetometric ECM"
	},

	19925	=> {
		typeID   => 19925,
		groupID  => 201,
		typeName => "Aergia Compact Magnetometric ECM"
	},

	19927	=> {
		typeID   => 19927,
		groupID  => 201,
		typeName => "Hypnos Scoped Magnetometric ECM"
	},

	19929	=> {
		typeID   => 19929,
		groupID  => 201,
		typeName => "Induced Compact Multispectral ECM"
	},

	19931	=> {
		typeID   => 19931,
		groupID  => 201,
		typeName => "Compulsive Scoped Multispectral ECM"
	},

	19933	=> {
		typeID   => 19933,
		groupID  => 201,
		typeName => "'Hypnos' Multispectral ECM I"
	},

	19935	=> {
		typeID   => 19935,
		groupID  => 201,
		typeName => "Languid Enduring Ladar ECM"
	},

	19937	=> {
		typeID   => 19937,
		groupID  => 201,
		typeName => "Halting Compact Ladar ECM"
	},

	19939	=> {
		typeID   => 19939,
		groupID  => 201,
		typeName => "Enfeebling Scoped Ladar ECM"
	},

	19942	=> {
		typeID   => 19942,
		groupID  => 201,
		typeName => "FZ-3a Enduring Gravimetric ECM"
	},

	19944	=> {
		typeID   => 19944,
		groupID  => 201,
		typeName => "CZ-4 Compact Gravimetric ECM"
	},

	19946	=> {
		typeID   => 19946,
		groupID  => 201,
		typeName => "BZ-5 Scoped Gravimetric ECM"
	},

	19948	=> {
		typeID   => 19948,
		groupID  => 201,
		typeName => "Gloom Enduring Radar ECM"
	},

	19950	=> {
		typeID   => 19950,
		groupID  => 201,
		typeName => "Shade Compact Radar ECM"
	},

	19952	=> {
		typeID   => 19952,
		groupID  => 201,
		typeName => "Umbra Scoped Radar ECM"
	},

	19954	=> {
		typeID   => 19954,
		groupID  => 474,
		typeName => "Soran's Passkey"
	},

	19955	=> {
		typeID   => 19955,
		groupID  => 495,
		typeName => "'True Power' Assembly Security HQ"
	},

	19957	=> {
		typeID   => 19957,
		groupID  => 494,
		typeName => "Centus Reprocessing Station"
	},

	19960	=> {
		typeID   => 19960,
		groupID  => 496,
		typeName => "Special Products"
	},

	19961	=> {
		typeID   => 19961,
		groupID  => 495,
		typeName => "Station Ultima"
	},

	19962	=> {
		typeID   => 19962,
		groupID  => 85,
		typeName => "Shadow Iron Charge S"
	},

	19964	=> {
		typeID   => 19964,
		groupID  => 85,
		typeName => "Shadow Tungsten Charge S"
	},

	19966	=> {
		typeID   => 19966,
		groupID  => 85,
		typeName => "Shadow Iridium Charge S"
	},

	19968	=> {
		typeID   => 19968,
		groupID  => 85,
		typeName => "Shadow Lead Charge S"
	},

	19970	=> {
		typeID   => 19970,
		groupID  => 83,
		typeName => "Arch Angel Carbonized Lead S"
	},

	19972	=> {
		typeID   => 19972,
		groupID  => 83,
		typeName => "Arch Angel Nuclear S"
	},

	19974	=> {
		typeID   => 19974,
		groupID  => 83,
		typeName => "Arch Angel Proton S"
	},

	19976	=> {
		typeID   => 19976,
		groupID  => 83,
		typeName => "Arch Angel Depleted Uranium S"
	},

	19978	=> {
		typeID   => 19978,
		groupID  => 86,
		typeName => "Sanshas Radio S"
	},

	19980	=> {
		typeID   => 19980,
		groupID  => 86,
		typeName => "Sanshas Microwave S"
	},

	19982	=> {
		typeID   => 19982,
		groupID  => 86,
		typeName => "Sanshas Infrared S"
	},

	19984	=> {
		typeID   => 19984,
		groupID  => 86,
		typeName => "Sanshas Standard S"
	},

	19986	=> {
		typeID   => 19986,
		groupID  => 83,
		typeName => "Arch Angel Titanium Sabot S"
	},

	19988	=> {
		typeID   => 19988,
		groupID  => 83,
		typeName => "Arch Angel Fusion S"
	},

	19990	=> {
		typeID   => 19990,
		groupID  => 83,
		typeName => "Arch Angel Phased Plasma S"
	},

	19992	=> {
		typeID   => 19992,
		groupID  => 83,
		typeName => "Arch Angel EMP S"
	},

	19994	=> {
		typeID   => 19994,
		groupID  => 83,
		typeName => "Arch Angel Carbonized Lead M"
	},

	19995	=> {
		typeID   => 19995,
		groupID  => 165,
		typeName => "Arch Angel Carbonized Lead M Blueprint"
	},

	19996	=> {
		typeID   => 19996,
		groupID  => 83,
		typeName => "Arch Angel Nuclear M"
	},

	19998	=> {
		typeID   => 19998,
		groupID  => 83,
		typeName => "Arch Angel Proton M"
	},

	20000	=> {
		typeID   => 20000,
		groupID  => 83,
		typeName => "Arch Angel Depleted Uranium M"
	},

	20002	=> {
		typeID   => 20002,
		groupID  => 83,
		typeName => "Arch Angel Titanium Sabot M"
	},

	20003	=> {
		typeID   => 20003,
		groupID  => 165,
		typeName => "Arch Angel Titanium Sabot M Blueprint"
	},

	20004	=> {
		typeID   => 20004,
		groupID  => 83,
		typeName => "Arch Angel Fusion M"
	},

	20006	=> {
		typeID   => 20006,
		groupID  => 83,
		typeName => "Arch Angel Phased Plasma M"
	},

	20008	=> {
		typeID   => 20008,
		groupID  => 83,
		typeName => "Arch Angel EMP M"
	},

	20010	=> {
		typeID   => 20010,
		groupID  => 86,
		typeName => "Sanshas Radio M"
	},

	20012	=> {
		typeID   => 20012,
		groupID  => 86,
		typeName => "Sanshas Microwave M"
	},

	20014	=> {
		typeID   => 20014,
		groupID  => 86,
		typeName => "Sanshas Infrared M"
	},

	20016	=> {
		typeID   => 20016,
		groupID  => 86,
		typeName => "Sanshas Standard M"
	},

	20018	=> {
		typeID   => 20018,
		groupID  => 86,
		typeName => "Sanshas Radio L"
	},

	20020	=> {
		typeID   => 20020,
		groupID  => 86,
		typeName => "Sanshas Microwave L"
	},

	20022	=> {
		typeID   => 20022,
		groupID  => 86,
		typeName => "Sanshas Infrared L"
	},

	20024	=> {
		typeID   => 20024,
		groupID  => 86,
		typeName => "Sanshas Standard L"
	},

	20026	=> {
		typeID   => 20026,
		groupID  => 86,
		typeName => "Sanshas Radio XL"
	},

	20028	=> {
		typeID   => 20028,
		groupID  => 86,
		typeName => "Sanshas Microwave XL"
	},

	20030	=> {
		typeID   => 20030,
		groupID  => 86,
		typeName => "Sanshas Infrared XL"
	},

	20032	=> {
		typeID   => 20032,
		groupID  => 86,
		typeName => "Sanshas Standard XL"
	},

	20034	=> {
		typeID   => 20034,
		groupID  => 85,
		typeName => "Shadow Thorium Charge S"
	},

	20036	=> {
		typeID   => 20036,
		groupID  => 85,
		typeName => "Shadow Uranium Charge S"
	},

	20038	=> {
		typeID   => 20038,
		groupID  => 85,
		typeName => "Shadow Plutonium Charge S"
	},

	20040	=> {
		typeID   => 20040,
		groupID  => 85,
		typeName => "Shadow Antimatter Charge S"
	},

	20043	=> {
		typeID   => 20043,
		groupID  => 85,
		typeName => "Shadow Iron Charge M"
	},

	20045	=> {
		typeID   => 20045,
		groupID  => 85,
		typeName => "Shadow Tungsten Charge M"
	},

	20047	=> {
		typeID   => 20047,
		groupID  => 85,
		typeName => "Shadow Iridium Charge M"
	},

	20049	=> {
		typeID   => 20049,
		groupID  => 85,
		typeName => "Shadow Lead Charge M"
	},

	20051	=> {
		typeID   => 20051,
		groupID  => 85,
		typeName => "Shadow Thorium Charge M"
	},

	20053	=> {
		typeID   => 20053,
		groupID  => 85,
		typeName => "Shadow Uranium Charge M"
	},

	20055	=> {
		typeID   => 20055,
		groupID  => 85,
		typeName => "Shadow Plutonium Charge M"
	},

	20057	=> {
		typeID   => 20057,
		groupID  => 85,
		typeName => "Shadow Antimatter Charge M"
	},

	20059	=> {
		typeID   => 20059,
		groupID  => 365,
		typeName => "Amarr Control Tower Medium"
	},

	20060	=> {
		typeID   => 20060,
		groupID  => 365,
		typeName => "Amarr Control Tower Small"
	},

	20061	=> {
		typeID   => 20061,
		groupID  => 365,
		typeName => "Caldari Control Tower Medium"
	},

	20062	=> {
		typeID   => 20062,
		groupID  => 365,
		typeName => "Caldari Control Tower Small"
	},

	20063	=> {
		typeID   => 20063,
		groupID  => 365,
		typeName => "Gallente Control Tower Medium"
	},

	20064	=> {
		typeID   => 20064,
		groupID  => 365,
		typeName => "Gallente Control Tower Small"
	},

	20065	=> {
		typeID   => 20065,
		groupID  => 365,
		typeName => "Minmatar Control Tower Medium"
	},

	20066	=> {
		typeID   => 20066,
		groupID  => 365,
		typeName => "Minmatar Control Tower Small"
	},

	20069	=> {
		typeID   => 20069,
		groupID  => 316,
		typeName => "Armored Warfare Link - Damage Control I"
	},

	20070	=> {
		typeID   => 20070,
		groupID  => 316,
		typeName => "Skirmish Warfare Link - Evasive Maneuvers I"
	},

	20077	=> {
		typeID   => 20077,
		groupID  => 496,
		typeName => "Main Supply Storage"
	},

	20078	=> {
		typeID   => 20078,
		groupID  => 821,
		typeName => "True Creation's Park Overseer"
	},

	20079	=> {
		typeID   => 20079,
		groupID  => 821,
		typeName => "Effotber's Transit Overseer"
	},

	20080	=> {
		typeID   => 20080,
		groupID  => 821,
		typeName => "Overseer Skomener Effotber"
	},

	20102	=> {
		typeID   => 20102,
		groupID  => 494,
		typeName => "Guristas War Installation"
	},

	20103	=> {
		typeID   => 20103,
		groupID  => 474,
		typeName => "Product Park Passcard"
	},

	20104	=> {
		typeID   => 20104,
		groupID  => 474,
		typeName => "Creations Central Pass"
	},

	20105	=> {
		typeID   => 20105,
		groupID  => 474,
		typeName => "'True Creations' Manufacture Passcard"
	},

	20108	=> {
		typeID   => 20108,
		groupID  => 356,
		typeName => "Gold Sculpture Blueprint"
	},

	20110	=> {
		typeID   => 20110,
		groupID  => 530,
		typeName => "Sleeper Foundation Block"
	},

	20113	=> {
		typeID   => 20113,
		groupID  => 333,
		typeName => "Datacore - Jove Tech 1"
	},

	20114	=> {
		typeID   => 20114,
		groupID  => 333,
		typeName => "Datacore - Propulsion Subsystems Engineering"
	},

	20115	=> {
		typeID   => 20115,
		groupID  => 333,
		typeName => "Datacore - Engineering Subsystems Engineering"
	},

	20116	=> {
		typeID   => 20116,
		groupID  => 333,
		typeName => "Datacore - Electronic Subsystems Engineering"
	},

	20117	=> {
		typeID   => 20117,
		groupID  => 333,
		typeName => "Datacore - Advanced Starship Engineering "
	},

	20121	=> {
		typeID   => 20121,
		groupID  => 300,
		typeName => "High-grade Crystal Alpha"
	},

	20124	=> {
		typeID   => 20124,
		groupID  => 316,
		typeName => "Siege Warfare Link - Active Shielding I"
	},

	20125	=> {
		typeID   => 20125,
		groupID  => 906,
		typeName => "Curse"
	},

	20126	=> {
		typeID   => 20126,
		groupID  => 106,
		typeName => "Curse Blueprint"
	},

	20127	=> {
		typeID   => 20127,
		groupID  => 505,
		typeName => "Stealth Bombers Fake Skill"
	},

	20128	=> {
		typeID   => 20128,
		groupID  => 86,
		typeName => "Civilian Pulse Crystal"
	},

	20130	=> {
		typeID   => 20130,
		groupID  => 86,
		typeName => "Civilian Autocannon Ammo"
	},

	20132	=> {
		typeID   => 20132,
		groupID  => 86,
		typeName => "Civilian Railgun Charge"
	},

	20134	=> {
		typeID   => 20134,
		groupID  => 86,
		typeName => "Civilian Blaster Charge"
	},

	20138	=> {
		typeID   => 20138,
		groupID  => 771,
		typeName => "Heavy Assault Missile Launcher I"
	},

	20157	=> {
		typeID   => 20157,
		groupID  => 300,
		typeName => "High-grade Crystal Beta"
	},

	20158	=> {
		typeID   => 20158,
		groupID  => 300,
		typeName => "High-grade Crystal Gamma"
	},

	20159	=> {
		typeID   => 20159,
		groupID  => 300,
		typeName => "High-grade Crystal Delta"
	},

	20160	=> {
		typeID   => 20160,
		groupID  => 300,
		typeName => "High-grade Crystal Epsilon"
	},

	20161	=> {
		typeID   => 20161,
		groupID  => 300,
		typeName => "High-grade Crystal Omega"
	},

	20162	=> {
		typeID   => 20162,
		groupID  => 494,
		typeName => "Asteroid Colony"
	},

	20163	=> {
		typeID   => 20163,
		groupID  => 683,
		typeName => "Minmatar Miner"
	},

	20164	=> {
		typeID   => 20164,
		groupID  => 474,
		typeName => "Drazin's Keycard"
	},

	20165	=> {
		typeID   => 20165,
		groupID  => 319,
		typeName => "Asteroid Prime Colony_MISSION lvl 3"
	},

	20166	=> {
		typeID   => 20166,
		groupID  => 494,
		typeName => "Habitation Module"
	},

	20171	=> {
		typeID   => 20171,
		groupID  => 333,
		typeName => "Datacore - Hydromagnetic Physics"
	},

	20172	=> {
		typeID   => 20172,
		groupID  => 333,
		typeName => "Datacore - Minmatar Starship Engineering"
	},

	20173	=> {
		typeID   => 20173,
		groupID  => 821,
		typeName => "Serpentis Major"
	},

	20174	=> {
		typeID   => 20174,
		groupID  => 821,
		typeName => "Serpentis Deadspace Sergeant"
	},

	20175	=> {
		typeID   => 20175,
		groupID  => 438,
		typeName => "Simple Reactor Array"
	},

	20176	=> {
		typeID   => 20176,
		groupID  => 438,
		typeName => "Academy"
	},

	20177	=> {
		typeID   => 20177,
		groupID  => 319,
		typeName => "Asteroid Deadspace Mining Colony"
	},

	20182	=> {
		typeID   => 20182,
		groupID  => 319,
		typeName => "Secured Drone Bunker"
	},

	20183	=> {
		typeID   => 20183,
		groupID  => 513,
		typeName => "Providence"
	},

	20184	=> {
		typeID   => 20184,
		groupID  => 525,
		typeName => "Providence Blueprint"
	},

	20185	=> {
		typeID   => 20185,
		groupID  => 513,
		typeName => "Charon"
	},

	20186	=> {
		typeID   => 20186,
		groupID  => 525,
		typeName => "Charon Blueprint"
	},

	20187	=> {
		typeID   => 20187,
		groupID  => 513,
		typeName => "Obelisk"
	},

	20188	=> {
		typeID   => 20188,
		groupID  => 525,
		typeName => "Obelisk Blueprint"
	},

	20189	=> {
		typeID   => 20189,
		groupID  => 513,
		typeName => "Fenrir"
	},

	20190	=> {
		typeID   => 20190,
		groupID  => 525,
		typeName => "Fenrir Blueprint"
	},

	20196	=> {
		typeID   => 20196,
		groupID  => 494,
		typeName => "Blood Raider Chapel"
	},

	20197	=> {
		typeID   => 20197,
		groupID  => 353,
		typeName => "QA Shield Extender"
	},

	20199	=> {
		typeID   => 20199,
		groupID  => 201,
		typeName => "Dread Guristas Multispectral ECM"
	},

	20201	=> {
		typeID   => 20201,
		groupID  => 201,
		typeName => "Kaikka's Modified Multispectral ECM"
	},

	20203	=> {
		typeID   => 20203,
		groupID  => 201,
		typeName => "Thon's Modified Multispectral ECM"
	},

	20205	=> {
		typeID   => 20205,
		groupID  => 201,
		typeName => "Vepas' Modified Multispectral ECM"
	},

	20207	=> {
		typeID   => 20207,
		groupID  => 201,
		typeName => "Estamel's Modified Multispectral ECM"
	},

	20209	=> {
		typeID   => 20209,
		groupID  => 256,
		typeName => "Rocket Specialization"
	},

	20210	=> {
		typeID   => 20210,
		groupID  => 256,
		typeName => "Light Missile Specialization"
	},

	20211	=> {
		typeID   => 20211,
		groupID  => 256,
		typeName => "Heavy Missile Specialization"
	},

	20212	=> {
		typeID   => 20212,
		groupID  => 256,
		typeName => "Cruise Missile Specialization"
	},

	20213	=> {
		typeID   => 20213,
		groupID  => 256,
		typeName => "Torpedo Specialization"
	},

	20214	=> {
		typeID   => 20214,
		groupID  => 202,
		typeName => "Extra Radar ECCM Scanning Array I"
	},

	20216	=> {
		typeID   => 20216,
		groupID  => 202,
		typeName => "Incremental Radar ECCM Scanning Array I"
	},

	20218	=> {
		typeID   => 20218,
		groupID  => 202,
		typeName => "Conjunctive Radar ECCM Scanning Array I"
	},

	20219	=> {
		typeID   => 20219,
		groupID  => 131,
		typeName => "Conjunctive Radar ECCM Scanning Array I Blueprint"
	},

	20220	=> {
		typeID   => 20220,
		groupID  => 202,
		typeName => "Extra Ladar ECCM Scanning Array I"
	},

	20222	=> {
		typeID   => 20222,
		groupID  => 202,
		typeName => "Incremental Ladar ECCM Scanning Array I"
	},

	20224	=> {
		typeID   => 20224,
		groupID  => 202,
		typeName => "Conjunctive Ladar ECCM Scanning Array I"
	},

	20225	=> {
		typeID   => 20225,
		groupID  => 131,
		typeName => "Conjunctive Ladar ECCM Scanning Array I Blueprint"
	},

	20226	=> {
		typeID   => 20226,
		groupID  => 202,
		typeName => "Extra Gravimetric ECCM Scanning Array I"
	},

	20228	=> {
		typeID   => 20228,
		groupID  => 202,
		typeName => "Incremental Gravimetric ECCM Scanning Array I"
	},

	20230	=> {
		typeID   => 20230,
		groupID  => 202,
		typeName => "Conjunctive Gravimetric ECCM Scanning Array I"
	},

	20231	=> {
		typeID   => 20231,
		groupID  => 131,
		typeName => "Conjunctive Gravimetric ECCM Scanning Array I Blueprint"
	},

	20232	=> {
		typeID   => 20232,
		groupID  => 202,
		typeName => "Extra Magnetometric ECCM Scanning Array I"
	},

	20234	=> {
		typeID   => 20234,
		groupID  => 202,
		typeName => "Incremental Magnetometric ECCM Scanning Array I"
	},

	20236	=> {
		typeID   => 20236,
		groupID  => 202,
		typeName => "Conjunctive Magnetometric ECCM Scanning Array I"
	},

	20237	=> {
		typeID   => 20237,
		groupID  => 131,
		typeName => "Conjunctive Magnetometric ECCM Scanning Array I Blueprint"
	},

	20238	=> {
		typeID   => 20238,
		groupID  => 203,
		typeName => "Secure Gravimetric Backup Cluster I"
	},

	20239	=> {
		typeID   => 20239,
		groupID  => 347,
		typeName => "Secure Gravimetric Backup Cluster I Blueprint"
	},

	20240	=> {
		typeID   => 20240,
		groupID  => 203,
		typeName => "Shielded Gravimetric Backup Cluster I"
	},

	20241	=> {
		typeID   => 20241,
		groupID  => 347,
		typeName => "Shielded Gravimetric Backup Cluster I Blueprint"
	},

	20242	=> {
		typeID   => 20242,
		groupID  => 203,
		typeName => "Warded Gravimetric Backup Cluster I"
	},

	20243	=> {
		typeID   => 20243,
		groupID  => 347,
		typeName => "Warded Gravimetric Backup Cluster I Blueprint"
	},

	20244	=> {
		typeID   => 20244,
		groupID  => 203,
		typeName => "Secure Ladar Backup Cluster I"
	},

	20245	=> {
		typeID   => 20245,
		groupID  => 347,
		typeName => "Secure Ladar Backup Cluster I Blueprint"
	},

	20246	=> {
		typeID   => 20246,
		groupID  => 203,
		typeName => "Shielded Ladar Backup Cluster I"
	},

	20247	=> {
		typeID   => 20247,
		groupID  => 347,
		typeName => "Shielded Ladar Backup Cluster I Blueprint"
	},

	20248	=> {
		typeID   => 20248,
		groupID  => 203,
		typeName => "Warded Ladar Backup Cluster I"
	},

	20249	=> {
		typeID   => 20249,
		groupID  => 347,
		typeName => "Warded Ladar Backup Cluster I Blueprint"
	},

	20250	=> {
		typeID   => 20250,
		groupID  => 203,
		typeName => "Secure Magnetometric Backup Cluster I"
	},

	20251	=> {
		typeID   => 20251,
		groupID  => 347,
		typeName => "Secure Magnetometric Backup Cluster I Blueprint"
	},

	20252	=> {
		typeID   => 20252,
		groupID  => 203,
		typeName => "Shielded Magnetometric Backup Cluster I"
	},

	20253	=> {
		typeID   => 20253,
		groupID  => 347,
		typeName => "Shielded Magnetometric Backup Cluster I Blueprint"
	},

	20254	=> {
		typeID   => 20254,
		groupID  => 203,
		typeName => "Warded Magnetometric Backup Cluster I"
	},

	20255	=> {
		typeID   => 20255,
		groupID  => 347,
		typeName => "Warded Magnetometric Backup Cluster I Blueprint"
	},

	20260	=> {
		typeID   => 20260,
		groupID  => 203,
		typeName => "Secure Radar Backup Cluster I"
	},

	20261	=> {
		typeID   => 20261,
		groupID  => 347,
		typeName => "Secure Radar Backup Cluster I Blueprint"
	},

	20262	=> {
		typeID   => 20262,
		groupID  => 203,
		typeName => "Shielded Radar Backup Cluster I"
	},

	20263	=> {
		typeID   => 20263,
		groupID  => 347,
		typeName => "Shielded Radar Backup Cluster I Blueprint"
	},

	20264	=> {
		typeID   => 20264,
		groupID  => 203,
		typeName => "Warded Radar Backup Cluster I"
	},

	20265	=> {
		typeID   => 20265,
		groupID  => 347,
		typeName => "Warded Radar Backup Cluster I Blueprint"
	},

	20279	=> {
		typeID   => 20279,
		groupID  => 817,
		typeName => "Rogue Pirate Raider"
	},

	20280	=> {
		typeID   => 20280,
		groupID  => 515,
		typeName => "Siege Module I"
	},

	20281	=> {
		typeID   => 20281,
		groupID  => 516,
		typeName => "Siege Module I Blueprint"
	},

	20282	=> {
		typeID   => 20282,
		groupID  => 494,
		typeName => "Storage Silo"
	},

	20283	=> {
		typeID   => 20283,
		groupID  => 494,
		typeName => "Storage Silo"
	},

	20284	=> {
		typeID   => 20284,
		groupID  => 494,
		typeName => "Storage Silo"
	},

	20285	=> {
		typeID   => 20285,
		groupID  => 494,
		typeName => "Storage Silo"
	},

	20306	=> {
		typeID   => 20306,
		groupID  => 772,
		typeName => "Mjolnir Heavy Assault Missile"
	},

	20307	=> {
		typeID   => 20307,
		groupID  => 772,
		typeName => "Scourge Heavy Assault Missile"
	},

	20308	=> {
		typeID   => 20308,
		groupID  => 772,
		typeName => "Inferno Heavy Assault Missile"
	},

	20312	=> {
		typeID   => 20312,
		groupID  => 256,
		typeName => "Guided Missile Precision"
	},

	20314	=> {
		typeID   => 20314,
		groupID  => 256,
		typeName => "Target Navigation Prediction"
	},

	20315	=> {
		typeID   => 20315,
		groupID  => 256,
		typeName => "Warhead Upgrades"
	},

	20324	=> {
		typeID   => 20324,
		groupID  => 818,
		typeName => "COSMOS Caldari B1"
	},

	20325	=> {
		typeID   => 20325,
		groupID  => 494,
		typeName => "Serpentis Bunker"
	},

	20326	=> {
		typeID   => 20326,
		groupID  => 494,
		typeName => "Guristas Starbase Control Tower"
	},

	20327	=> {
		typeID   => 20327,
		groupID  => 255,
		typeName => "Capital Energy Turret"
	},

	20328	=> {
		typeID   => 20328,
		groupID  => 314,
		typeName => "Insorum"
	},

	20329	=> {
		typeID   => 20329,
		groupID  => 494,
		typeName => "Radio Telescope"
	},

	20330	=> {
		typeID   => 20330,
		groupID  => 667,
		typeName => "Imperial Navy Jakar"
	},

	20333	=> {
		typeID   => 20333,
		groupID  => 706,
		typeName => "Republic Fleet Darkana"
	},

	20334	=> {
		typeID   => 20334,
		groupID  => 674,
		typeName => "Caldari Navy Temura"
	},

	20335	=> {
		typeID   => 20335,
		groupID  => 680,
		typeName => "Federation Navy Orion"
	},

	20342	=> {
		typeID   => 20342,
		groupID  => 257,
		typeName => "Advanced Spaceship Command"
	},

	20343	=> {
		typeID   => 20343,
		groupID  => 329,
		typeName => "50mm Steel Plates II"
	},

	20344	=> {
		typeID   => 20344,
		groupID  => 349,
		typeName => "50mm Steel Plates II Blueprint"
	},

	20345	=> {
		typeID   => 20345,
		groupID  => 329,
		typeName => "100mm Steel Plates II"
	},

	20346	=> {
		typeID   => 20346,
		groupID  => 349,
		typeName => "100mm Steel Plates II Blueprint"
	},

	20347	=> {
		typeID   => 20347,
		groupID  => 329,
		typeName => "200mm Steel Plates II"
	},

	20348	=> {
		typeID   => 20348,
		groupID  => 349,
		typeName => "200mm Steel Plates II Blueprint"
	},

	20349	=> {
		typeID   => 20349,
		groupID  => 329,
		typeName => "400mm Steel Plates II"
	},

	20350	=> {
		typeID   => 20350,
		groupID  => 349,
		typeName => "400mm Steel Plates II Blueprint"
	},

	20351	=> {
		typeID   => 20351,
		groupID  => 329,
		typeName => "800mm Steel Plates II"
	},

	20352	=> {
		typeID   => 20352,
		groupID  => 349,
		typeName => "800mm Steel Plates II Blueprint"
	},

	20353	=> {
		typeID   => 20353,
		groupID  => 329,
		typeName => "1600mm Steel Plates II"
	},

	20354	=> {
		typeID   => 20354,
		groupID  => 349,
		typeName => "1600mm Steel Plates II Blueprint"
	},

	20358	=> {
		typeID   => 20358,
		groupID  => 738,
		typeName => "Numon Family Heirloom"
	},

	20359	=> {
		typeID   => 20359,
		groupID  => 816,
		typeName => "Kazar Numon"
	},

	20362	=> {
		typeID   => 20362,
		groupID  => 314,
		typeName => "Foiritan Sculpture"
	},

	20363	=> {
		typeID   => 20363,
		groupID  => 817,
		typeName => "Sukuuvestaa Transport Ship"
	},

	20364	=> {
		typeID   => 20364,
		groupID  => 517,
		typeName => "Cosmos Condor"
	},

	20367	=> {
		typeID   => 20367,
		groupID  => 341,
		typeName => "Smugglers Mask I"
	},

	20368	=> {
		typeID   => 20368,
		groupID  => 120,
		typeName => "Smugglers Mask I Blueprint"
	},

	20369	=> {
		typeID   => 20369,
		groupID  => 517,
		typeName => "Cosmos Incursus"
	},

	20370	=> {
		typeID   => 20370,
		groupID  => 816,
		typeName => "Whelan Machorin"
	},

	20371	=> {
		typeID   => 20371,
		groupID  => 746,
		typeName => "Whelan Machorin's Ballistic Smartlink"
	},

	20372	=> {
		typeID   => 20372,
		groupID  => 409,
		typeName => "Whelan Machorin's Insignia"
	},

	20373	=> {
		typeID   => 20373,
		groupID  => 816,
		typeName => "General 'Buck' Turgidson"
	},

	20374	=> {
		typeID   => 20374,
		groupID  => 409,
		typeName => "'Buck' Turgidson's Insignia"
	},

	20375	=> {
		typeID   => 20375,
		groupID  => 314,
		typeName => "Whelan Machorin's Head"
	},

	20376	=> {
		typeID   => 20376,
		groupID  => 517,
		typeName => "Cosmos Heron"
	},

	20377	=> {
		typeID   => 20377,
		groupID  => 517,
		typeName => "Cosmos Merlin"
	},

	20378	=> {
		typeID   => 20378,
		groupID  => 517,
		typeName => "Cosmos Probe"
	},

	20379	=> {
		typeID   => 20379,
		groupID  => 517,
		typeName => "Cosmos Buzzard"
	},

	20380	=> {
		typeID   => 20380,
		groupID  => 517,
		typeName => "Cosmos Crow"
	},

	20381	=> {
		typeID   => 20381,
		groupID  => 517,
		typeName => "Erudin Hanka's Harpy"
	},

	20382	=> {
		typeID   => 20382,
		groupID  => 517,
		typeName => "Cosmos Hawk"
	},

	20383	=> {
		typeID   => 20383,
		groupID  => 517,
		typeName => "Cosmos Raptor"
	},

	20384	=> {
		typeID   => 20384,
		groupID  => 517,
		typeName => "Cosmos Cormorant"
	},

	20385	=> {
		typeID   => 20385,
		groupID  => 517,
		typeName => "Cosmos Ferox"
	},

	20386	=> {
		typeID   => 20386,
		groupID  => 517,
		typeName => "Cosmos Badger"
	},

	20387	=> {
		typeID   => 20387,
		groupID  => 517,
		typeName => "Cosmos Badger Mark II"
	},

	20388	=> {
		typeID   => 20388,
		groupID  => 517,
		typeName => "Cosmos Blackbird"
	},

	20389	=> {
		typeID   => 20389,
		groupID  => 517,
		typeName => "Cosmos Caracal"
	},

	20390	=> {
		typeID   => 20390,
		groupID  => 517,
		typeName => "Cosmos Moa"
	},

	20391	=> {
		typeID   => 20391,
		groupID  => 517,
		typeName => "Cosmos Osprey"
	},

	20392	=> {
		typeID   => 20392,
		groupID  => 517,
		typeName => "Cosmos Raven"
	},

	20393	=> {
		typeID   => 20393,
		groupID  => 517,
		typeName => "Cosmos Bustard"
	},

	20394	=> {
		typeID   => 20394,
		groupID  => 517,
		typeName => "Cosmos Capsule"
	},

	20405	=> {
		typeID   => 20405,
		groupID  => 316,
		typeName => "Information Warfare Link - Recon Operation I"
	},

	20406	=> {
		typeID   => 20406,
		groupID  => 316,
		typeName => "Information Warfare Link - Electronic Superiority I"
	},

	20408	=> {
		typeID   => 20408,
		groupID  => 316,
		typeName => "Skirmish Warfare Link - Rapid Deployment I"
	},

	20409	=> {
		typeID   => 20409,
		groupID  => 316,
		typeName => "Armored Warfare Link - Passive Defense I"
	},

	20410	=> {
		typeID   => 20410,
		groupID  => 333,
		typeName => "Datacore - Gallentean Starship Engineering"
	},

	20411	=> {
		typeID   => 20411,
		groupID  => 333,
		typeName => "Datacore - High Energy Physics"
	},

	20412	=> {
		typeID   => 20412,
		groupID  => 333,
		typeName => "Datacore - Plasma Physics"
	},

	20413	=> {
		typeID   => 20413,
		groupID  => 333,
		typeName => "Datacore - Laser Physics"
	},

	20414	=> {
		typeID   => 20414,
		groupID  => 333,
		typeName => "Datacore - Quantum Physics"
	},

	20415	=> {
		typeID   => 20415,
		groupID  => 333,
		typeName => "Datacore - Molecular Engineering"
	},

	20416	=> {
		typeID   => 20416,
		groupID  => 333,
		typeName => "Datacore - Nanite Engineering"
	},

	20417	=> {
		typeID   => 20417,
		groupID  => 333,
		typeName => "Datacore - Electromagnetic Physics"
	},

	20418	=> {
		typeID   => 20418,
		groupID  => 333,
		typeName => "Datacore - Electronic Engineering"
	},

	20419	=> {
		typeID   => 20419,
		groupID  => 333,
		typeName => "Datacore - Graviton Physics"
	},

	20420	=> {
		typeID   => 20420,
		groupID  => 333,
		typeName => "Datacore - Rocket Science"
	},

	20421	=> {
		typeID   => 20421,
		groupID  => 333,
		typeName => "Datacore - Amarrian Starship Engineering"
	},

	20422	=> {
		typeID   => 20422,
		groupID  => 332,
		typeName => "Data Interface - Talocan Weapon Systems"
	},

	20423	=> {
		typeID   => 20423,
		groupID  => 333,
		typeName => "Datacore - Nuclear Physics"
	},

	20424	=> {
		typeID   => 20424,
		groupID  => 333,
		typeName => "Datacore - Mechanical Engineering"
	},

	20425	=> {
		typeID   => 20425,
		groupID  => 333,
		typeName => "Datacore - Offensive Subsystems Engineering"
	},

	20426	=> {
		typeID   => 20426,
		groupID  => 716,
		typeName => "Data Interface - Basic"
	},

	20431	=> {
		typeID   => 20431,
		groupID  => 428,
		typeName => "Black Morphite"
	},

	20432	=> {
		typeID   => 20432,
		groupID  => 436,
		typeName => "Black Morphite Reaction"
	},

	20433	=> {
		typeID   => 20433,
		groupID  => 270,
		typeName => "Talocan Technology"
	},

	20434	=> {
		typeID   => 20434,
		groupID  => 526,
		typeName => "Terran Broken Datachips - Weaponry"
	},

	20435	=> {
		typeID   => 20435,
		groupID  => 816,
		typeName => "Yaekun Ogdin"
	},

	20438	=> {
		typeID   => 20438,
		groupID  => 816,
		typeName => "Faramon Mundan"
	},

	20439	=> {
		typeID   => 20439,
		groupID  => 816,
		typeName => "Hoborak Moon"
	},

	20440	=> {
		typeID   => 20440,
		groupID  => 816,
		typeName => "Rachen Mysuna"
	},

	20441	=> {
		typeID   => 20441,
		groupID  => 816,
		typeName => "Xevni Jipon"
	},

	20442	=> {
		typeID   => 20442,
		groupID  => 816,
		typeName => "Paon Tay"
	},

	20443	=> {
		typeID   => 20443,
		groupID  => 742,
		typeName => "Ogdin's Eye Coordination Enhancer"
	},

	20444	=> {
		typeID   => 20444,
		groupID  => 53,
		typeName => "Dual Giga Pulse Laser I"
	},

	20445	=> {
		typeID   => 20445,
		groupID  => 133,
		typeName => "Dual Giga Pulse Laser I Blueprint"
	},

	20446	=> {
		typeID   => 20446,
		groupID  => 53,
		typeName => "Dual Giga Beam Laser I"
	},

	20447	=> {
		typeID   => 20447,
		groupID  => 133,
		typeName => "Dual Giga Beam Laser I Blueprint"
	},

	20448	=> {
		typeID   => 20448,
		groupID  => 74,
		typeName => "Dual 1000mm Railgun I"
	},

	20449	=> {
		typeID   => 20449,
		groupID  => 154,
		typeName => "Dual 1000mm Railgun I Blueprint"
	},

	20450	=> {
		typeID   => 20450,
		groupID  => 74,
		typeName => "Ion Siege Blaster I"
	},

	20451	=> {
		typeID   => 20451,
		groupID  => 154,
		typeName => "Ion Siege Blaster I Blueprint"
	},

	20452	=> {
		typeID   => 20452,
		groupID  => 55,
		typeName => "Hexa 2500mm Repeating Cannon I"
	},

	20453	=> {
		typeID   => 20453,
		groupID  => 135,
		typeName => "Hexa 2500mm Repeating Cannon I Blueprint"
	},

	20454	=> {
		typeID   => 20454,
		groupID  => 55,
		typeName => "Quad 3500mm Siege Artillery I"
	},

	20455	=> {
		typeID   => 20455,
		groupID  => 135,
		typeName => "Quad 3500mm Siege Artillery I Blueprint"
	},

	20456	=> {
		typeID   => 20456,
		groupID  => 474,
		typeName => "Alpha Keycard"
	},

	20457	=> {
		typeID   => 20457,
		groupID  => 474,
		typeName => "Beta Keycard"
	},

	20458	=> {
		typeID   => 20458,
		groupID  => 474,
		typeName => "Gamma Keycard"
	},

	20459	=> {
		typeID   => 20459,
		groupID  => 706,
		typeName => "Republic Fleet Darkana_Alpha"
	},

	20460	=> {
		typeID   => 20460,
		groupID  => 706,
		typeName => "Republic Fleet Darkana_Beta"
	},

	20461	=> {
		typeID   => 20461,
		groupID  => 706,
		typeName => "Republic Fleet Darkana_Gamma"
	},

	20462	=> {
		typeID   => 20462,
		groupID  => 520,
		typeName => "COSMOS Caldari Arrogator"
	},

	20463	=> {
		typeID   => 20463,
		groupID  => 520,
		typeName => "COSMOS Caldari Assassin"
	},

	20464	=> {
		typeID   => 20464,
		groupID  => 520,
		typeName => "COSMOS Caldari Death Dealer"
	},

	20465	=> {
		typeID   => 20465,
		groupID  => 520,
		typeName => "COSMOS Caldari Demolisher"
	},

	20466	=> {
		typeID   => 20466,
		groupID  => 520,
		typeName => "COSMOS Caldari Despoiler"
	},

	20467	=> {
		typeID   => 20467,
		groupID  => 520,
		typeName => "COSMOS Caldari Destructor"
	},

	20468	=> {
		typeID   => 20468,
		groupID  => 520,
		typeName => "COSMOS Caldari Eliminator"
	},

	20469	=> {
		typeID   => 20469,
		groupID  => 520,
		typeName => "COSMOS Caldari Imputor"
	},

	20470	=> {
		typeID   => 20470,
		groupID  => 520,
		typeName => "COSMOS Caldari Infiltrator"
	},

	20471	=> {
		typeID   => 20471,
		groupID  => 520,
		typeName => "COSMOS Caldari Invader"
	},

	20472	=> {
		typeID   => 20472,
		groupID  => 520,
		typeName => "COSMOS Caldari Nihilist"
	},

	20473	=> {
		typeID   => 20473,
		groupID  => 520,
		typeName => "COSMOS Caldari Plunderer"
	},

	20474	=> {
		typeID   => 20474,
		groupID  => 520,
		typeName => "COSMOS Caldari Saboteur"
	},

	20475	=> {
		typeID   => 20475,
		groupID  => 520,
		typeName => "COSMOS Caldari Wrecker"
	},

	20476	=> {
		typeID   => 20476,
		groupID  => 521,
		typeName => "Drifter Spur"
	},

	20477	=> {
		typeID   => 20477,
		groupID  => 521,
		typeName => "Bandit Spur"
	},

	20478	=> {
		typeID   => 20478,
		groupID  => 521,
		typeName => "Marauder Spur"
	},

	20479	=> {
		typeID   => 20479,
		groupID  => 521,
		typeName => "Outlaw Spur"
	},

	20480	=> {
		typeID   => 20480,
		groupID  => 521,
		typeName => "Gunslinger Spur"
	},

	20481	=> {
		typeID   => 20481,
		groupID  => 521,
		typeName => "Desperado Spur"
	},

	20482	=> {
		typeID   => 20482,
		groupID  => 522,
		typeName => "COSMOS Caldari Annihilator"
	},

	20483	=> {
		typeID   => 20483,
		groupID  => 522,
		typeName => "COSMOS Caldari Ascriber"
	},

	20484	=> {
		typeID   => 20484,
		groupID  => 522,
		typeName => "COSMOS Caldari Eraser"
	},

	20485	=> {
		typeID   => 20485,
		groupID  => 522,
		typeName => "COSMOS Caldari Inferno"
	},

	20486	=> {
		typeID   => 20486,
		groupID  => 522,
		typeName => "COSMOS Caldari Mortifier"
	},

	20487	=> {
		typeID   => 20487,
		groupID  => 522,
		typeName => "COSMOS Caldari Nullifier"
	},

	20488	=> {
		typeID   => 20488,
		groupID  => 522,
		typeName => "COSMOS Caldari Silencer"
	},

	20489	=> {
		typeID   => 20489,
		groupID  => 522,
		typeName => "COSMOS Caldari Terrorist"
	},

	20490	=> {
		typeID   => 20490,
		groupID  => 523,
		typeName => "COSMOS Caldari Conquistador"
	},

	20491	=> {
		typeID   => 20491,
		groupID  => 523,
		typeName => "COSMOS Caldari Destroyer"
	},

	20492	=> {
		typeID   => 20492,
		groupID  => 523,
		typeName => "COSMOS Caldari Extinguisher"
	},

	20493	=> {
		typeID   => 20493,
		groupID  => 523,
		typeName => "COSMOS Caldari Usurper"
	},

	20494	=> {
		typeID   => 20494,
		groupID  => 258,
		typeName => "Armored Warfare"
	},

	20495	=> {
		typeID   => 20495,
		groupID  => 258,
		typeName => "Information Warfare"
	},

	20498	=> {
		typeID   => 20498,
		groupID  => 300,
		typeName => "High-grade Halo Alpha"
	},

	20499	=> {
		typeID   => 20499,
		groupID  => 300,
		typeName => "High-grade Slave Alpha"
	},

	20500	=> {
		typeID   => 20500,
		groupID  => 300,
		typeName => "High-grade Halo Beta"
	},

	20501	=> {
		typeID   => 20501,
		groupID  => 300,
		typeName => "High-grade Slave Beta"
	},

	20502	=> {
		typeID   => 20502,
		groupID  => 300,
		typeName => "High-grade Halo Delta"
	},

	20503	=> {
		typeID   => 20503,
		groupID  => 300,
		typeName => "High-grade Slave Delta"
	},

	20504	=> {
		typeID   => 20504,
		groupID  => 300,
		typeName => "High-grade Halo Epsilon"
	},

	20505	=> {
		typeID   => 20505,
		groupID  => 300,
		typeName => "High-grade Slave Epsilon"
	},

	20506	=> {
		typeID   => 20506,
		groupID  => 300,
		typeName => "High-grade Halo Gamma"
	},

	20507	=> {
		typeID   => 20507,
		groupID  => 300,
		typeName => "High-grade Slave Gamma"
	},

	20508	=> {
		typeID   => 20508,
		groupID  => 300,
		typeName => "High-grade Halo Omega"
	},

	20509	=> {
		typeID   => 20509,
		groupID  => 300,
		typeName => "High-grade Slave Omega"
	},

	20510	=> {
		typeID   => 20510,
		groupID  => 284,
		typeName => "Potent Viral Agent"
	},

	20514	=> {
		typeID   => 20514,
		groupID  => 316,
		typeName => "Siege Warfare Link - Shield Harmonizing I"
	},

	20517	=> {
		typeID   => 20517,
		groupID  => 474,
		typeName => "Private Citizen Tsuna's Passcard"
	},

	20520	=> {
		typeID   => 20520,
		groupID  => 517,
		typeName => "Turu's Harpy"
	},

	20521	=> {
		typeID   => 20521,
		groupID  => 517,
		typeName => "Helkelen's Blackbird"
	},

	20523	=> {
		typeID   => 20523,
		groupID  => 494,
		typeName => "Habitation Module - Tsuna's Science Labs"
	},

	20524	=> {
		typeID   => 20524,
		groupID  => 257,
		typeName => "Amarr Freighter"
	},

	20525	=> {
		typeID   => 20525,
		groupID  => 257,
		typeName => "Amarr Dreadnought"
	},

	20526	=> {
		typeID   => 20526,
		groupID  => 257,
		typeName => "Caldari Freighter"
	},

	20527	=> {
		typeID   => 20527,
		groupID  => 257,
		typeName => "Gallente Freighter"
	},

	20528	=> {
		typeID   => 20528,
		groupID  => 257,
		typeName => "Minmatar Freighter"
	},

	20529	=> {
		typeID   => 20529,
		groupID  => 517,
		typeName => "Ariato's Condor"
	},

	20530	=> {
		typeID   => 20530,
		groupID  => 257,
		typeName => "Caldari Dreadnought"
	},

	20531	=> {
		typeID   => 20531,
		groupID  => 257,
		typeName => "Gallente Dreadnought"
	},

	20532	=> {
		typeID   => 20532,
		groupID  => 257,
		typeName => "Minmatar Dreadnought"
	},

	20533	=> {
		typeID   => 20533,
		groupID  => 257,
		typeName => "Capital Ships"
	},

	20534	=> {
		typeID   => 20534,
		groupID  => 517,
		typeName => "Awazhen's Moa"
	},

	20535	=> {
		typeID   => 20535,
		groupID  => 517,
		typeName => "Hatamei's Cormorant"
	},

	20536	=> {
		typeID   => 20536,
		groupID  => 517,
		typeName => "Sakkaro's Badger"
	},

	20537	=> {
		typeID   => 20537,
		groupID  => 517,
		typeName => "Makachi's Probe"
	},

	20538	=> {
		typeID   => 20538,
		groupID  => 517,
		typeName => "Mottoya's Crow"
	},

	20539	=> {
		typeID   => 20539,
		groupID  => 524,
		typeName => "XL Torpedo Launcher I"
	},

	20540	=> {
		typeID   => 20540,
		groupID  => 136,
		typeName => "XL Torpedo Launcher I Blueprint"
	},

	20541	=> {
		typeID   => 20541,
		groupID  => 314,
		typeName => "Drill Parts"
	},

	20542	=> {
		typeID   => 20542,
		groupID  => 494,
		typeName => "Lephny's Mining Post"
	},

	20545	=> {
		typeID   => 20545,
		groupID  => 816,
		typeName => "Markus Ikmani"
	},

	20546	=> {
		typeID   => 20546,
		groupID  => 409,
		typeName => "Markus's Insignia"
	},

	20547	=> {
		typeID   => 20547,
		groupID  => 817,
		typeName => "Ratei Jezzor"
	},

	20548	=> {
		typeID   => 20548,
		groupID  => 409,
		typeName => "Ratei's Insignia"
	},

	20549	=> {
		typeID   => 20549,
		groupID  => 533,
		typeName => "Manchura Todaki"
	},

	20550	=> {
		typeID   => 20550,
		groupID  => 370,
		typeName => "Manchura's Tag"
	},

	20551	=> {
		typeID   => 20551,
		groupID  => 314,
		typeName => "Manchura's Logs"
	},

	20552	=> {
		typeID   => 20552,
		groupID  => 533,
		typeName => "Wei Todaki_"
	},

	20554	=> {
		typeID   => 20554,
		groupID  => 283,
		typeName => "Wei Todaki"
	},

	20555	=> {
		typeID   => 20555,
		groupID  => 76,
		typeName => "Small 'Siesta' Capacitor Booster"
	},

	20556	=> {
		typeID   => 20556,
		groupID  => 156,
		typeName => "Small 'Siesta' Capacitor Booster Blueprint"
	},

	20557	=> {
		typeID   => 20557,
		groupID  => 76,
		typeName => "Medium 'Gattotte' Capacitor Booster"
	},

	20558	=> {
		typeID   => 20558,
		groupID  => 156,
		typeName => "Medium 'Gattotte' Capacitor Booster Blueprint"
	},

	20559	=> {
		typeID   => 20559,
		groupID  => 76,
		typeName => "Heavy 'Brave' Capacitor Booster"
	},

	20560	=> {
		typeID   => 20560,
		groupID  => 156,
		typeName => "Heavy 'Brave' Capacitor Booster Blueprint"
	},

	20561	=> {
		typeID   => 20561,
		groupID  => 330,
		typeName => "Prototype 'Poncho' Cloaking Device I"
	},

	20562	=> {
		typeID   => 20562,
		groupID  => 401,
		typeName => "Prototype 'Poncho' Cloaking Device I Blueprint"
	},

	20563	=> {
		typeID   => 20563,
		groupID  => 330,
		typeName => "'Smokescreen' Covert Ops Cloaking Device II"
	},

	20564	=> {
		typeID   => 20564,
		groupID  => 401,
		typeName => "'Smokescreen' Covert Ops Cloaking Device II Blueprint"
	},

	20565	=> {
		typeID   => 20565,
		groupID  => 330,
		typeName => "Improved 'Guise' Cloaking Device II"
	},

	20566	=> {
		typeID   => 20566,
		groupID  => 401,
		typeName => "Improved 'Guise' Cloaking Device II Blueprint"
	},

	20567	=> {
		typeID   => 20567,
		groupID  => 285,
		typeName => "'Dyad' Co-Processor I"
	},

	20568	=> {
		typeID   => 20568,
		groupID  => 346,
		typeName => "'Dyad' Co-Processor I Blueprint"
	},

	20569	=> {
		typeID   => 20569,
		groupID  => 285,
		typeName => "'Deuce' Co-Processor I"
	},

	20570	=> {
		typeID   => 20570,
		groupID  => 346,
		typeName => "'Deuce' Co-Processor I Blueprint"
	},

	20573	=> {
		typeID   => 20573,
		groupID  => 201,
		typeName => "'Marshall' Magnetometric ECM"
	},

	20574	=> {
		typeID   => 20574,
		groupID  => 130,
		typeName => "'Marshall' Magnetometric ECM Blueprint"
	},

	20575	=> {
		typeID   => 20575,
		groupID  => 201,
		typeName => "'Gambler' Ladar ECM"
	},

	20576	=> {
		typeID   => 20576,
		groupID  => 130,
		typeName => "'Gambler' Ladar ECM Blueprint"
	},

	20577	=> {
		typeID   => 20577,
		groupID  => 201,
		typeName => "'Plunderer' Gravimetric ECM"
	},

	20578	=> {
		typeID   => 20578,
		groupID  => 130,
		typeName => "'Plunderer' Gravimetric ECM Blueprint"
	},

	20579	=> {
		typeID   => 20579,
		groupID  => 201,
		typeName => "'Heist' Radar ECM"
	},

	20580	=> {
		typeID   => 20580,
		groupID  => 130,
		typeName => "'Heist' Radar ECM Blueprint"
	},

	20581	=> {
		typeID   => 20581,
		groupID  => 80,
		typeName => "'Ghost' Burst Jammer"
	},

	20582	=> {
		typeID   => 20582,
		groupID  => 160,
		typeName => "'Ghost' Burst Jammer Blueprint"
	},

	20587	=> {
		typeID   => 20587,
		groupID  => 74,
		typeName => "150mm 'Musket' Railgun"
	},

	20588	=> {
		typeID   => 20588,
		groupID  => 154,
		typeName => "150mm 'Musket' Railgun Blueprint"
	},

	20589	=> {
		typeID   => 20589,
		groupID  => 74,
		typeName => "250mm 'Flintlock' Railgun"
	},

	20590	=> {
		typeID   => 20590,
		groupID  => 154,
		typeName => "250mm 'Flintlock' Railgun Blueprint"
	},

	20591	=> {
		typeID   => 20591,
		groupID  => 74,
		typeName => "425mm 'Popper' Railgun"
	},

	20592	=> {
		typeID   => 20592,
		groupID  => 154,
		typeName => "425mm 'Popper' Railgun Blueprint"
	},

	20593	=> {
		typeID   => 20593,
		groupID  => 507,
		typeName => "'Balefire' Rocket Launcher"
	},

	20594	=> {
		typeID   => 20594,
		groupID  => 136,
		typeName => "'Balefire' Rocket Launcher Blueprint"
	},

	20595	=> {
		typeID   => 20595,
		groupID  => 509,
		typeName => "'Gallows' Light Missile Launcher"
	},

	20596	=> {
		typeID   => 20596,
		groupID  => 136,
		typeName => "'Gallows' Light Missile Launcher Blueprint"
	},

	20597	=> {
		typeID   => 20597,
		groupID  => 511,
		typeName => "'Pickaxe' Rapid Light Missile Launcher"
	},

	20598	=> {
		typeID   => 20598,
		groupID  => 136,
		typeName => "'Pickaxe' Rapid Light Missile Launcher Blueprint"
	},

	20599	=> {
		typeID   => 20599,
		groupID  => 510,
		typeName => "'Undertaker' Heavy Missile Launcher"
	},

	20600	=> {
		typeID   => 20600,
		groupID  => 136,
		typeName => "'Undertaker' Heavy Missile Launcher Blueprint"
	},

	20601	=> {
		typeID   => 20601,
		groupID  => 506,
		typeName => "'Noose' Cruise Missile Launcher"
	},

	20602	=> {
		typeID   => 20602,
		groupID  => 136,
		typeName => "'Noose' Cruise Missile Launcher Blueprint"
	},

	20603	=> {
		typeID   => 20603,
		groupID  => 508,
		typeName => "'Barrage' Torpedo Launcher"
	},

	20604	=> {
		typeID   => 20604,
		groupID  => 136,
		typeName => "'Barrage' Torpedo Launcher Blueprint"
	},

	20605	=> {
		typeID   => 20605,
		groupID  => 295,
		typeName => "'Whiskey' Explosive Deflection Amplifier"
	},

	20606	=> {
		typeID   => 20606,
		groupID  => 296,
		typeName => "'Whiskey' Explosive Deflection Amplifier Blueprint"
	},

	20607	=> {
		typeID   => 20607,
		groupID  => 295,
		typeName => "'High Noon' Thermal Dissipation Amplifier"
	},

	20608	=> {
		typeID   => 20608,
		groupID  => 296,
		typeName => "'High Noon' Thermal Dissipation Amplifier Blueprint"
	},

	20609	=> {
		typeID   => 20609,
		groupID  => 295,
		typeName => "'Cactus' Modified Kinetic Deflection Amplifier"
	},

	20610	=> {
		typeID   => 20610,
		groupID  => 296,
		typeName => "'Cactus' Modified Kinetic Deflection Amplifier Blueprint"
	},

	20611	=> {
		typeID   => 20611,
		groupID  => 295,
		typeName => "'Prospector' EM Ward Amplifier"
	},

	20612	=> {
		typeID   => 20612,
		groupID  => 296,
		typeName => "'Prospector' EM Ward Amplifier Blueprint"
	},

	20613	=> {
		typeID   => 20613,
		groupID  => 338,
		typeName => "'Glycerine' Shield Boost Amplifier"
	},

	20614	=> {
		typeID   => 20614,
		groupID  => 360,
		typeName => "'Glycerine' Shield Boost Amplifier Blueprint"
	},

	20617	=> {
		typeID   => 20617,
		groupID  => 40,
		typeName => "Small 'Settler' Shield Booster"
	},

	20618	=> {
		typeID   => 20618,
		groupID  => 120,
		typeName => "Small 'Settler' Shield Booster Blueprint"
	},

	20619	=> {
		typeID   => 20619,
		groupID  => 40,
		typeName => "Medium 'Lone Ranger' Shield Booster"
	},

	20620	=> {
		typeID   => 20620,
		groupID  => 120,
		typeName => "Medium 'Lone Ranger' Shield Booster Blueprint"
	},

	20621	=> {
		typeID   => 20621,
		groupID  => 40,
		typeName => "Large 'Outlaw' Shield Booster"
	},

	20622	=> {
		typeID   => 20622,
		groupID  => 120,
		typeName => "Large 'Outlaw' Shield Booster Blueprint"
	},

	20623	=> {
		typeID   => 20623,
		groupID  => 40,
		typeName => "X-Large 'Locomotive' Shield Booster"
	},

	20624	=> {
		typeID   => 20624,
		groupID  => 120,
		typeName => "X-Large 'Locomotive' Shield Booster Blueprint"
	},

	20625	=> {
		typeID   => 20625,
		groupID  => 38,
		typeName => "Small 'Wolf' Shield Extender"
	},

	20626	=> {
		typeID   => 20626,
		groupID  => 118,
		typeName => "Small 'Wolf' Shield Extender Blueprint"
	},

	20627	=> {
		typeID   => 20627,
		groupID  => 38,
		typeName => "Small 'Trapper' Shield Extender"
	},

	20628	=> {
		typeID   => 20628,
		groupID  => 118,
		typeName => "Small 'Trapper' Shield Extender Blueprint"
	},

	20629	=> {
		typeID   => 20629,
		groupID  => 38,
		typeName => "Medium 'Canyon' Shield Extender"
	},

	20630	=> {
		typeID   => 20630,
		groupID  => 118,
		typeName => "Medium 'Canyon' Shield Extender Blueprint"
	},

	20631	=> {
		typeID   => 20631,
		groupID  => 38,
		typeName => "Large 'Sheriff' Shield Extender"
	},

	20632	=> {
		typeID   => 20632,
		groupID  => 118,
		typeName => "Large 'Sheriff' Shield Extender Blueprint"
	},

	20633	=> {
		typeID   => 20633,
		groupID  => 77,
		typeName => "'Nugget' Kinetic Deflection Field"
	},

	20634	=> {
		typeID   => 20634,
		groupID  => 157,
		typeName => "'Nugget' Kinetic Deflection Field Blueprint"
	},

	20635	=> {
		typeID   => 20635,
		groupID  => 77,
		typeName => "'Desert Heat' Thermal Dissipation Field"
	},

	20636	=> {
		typeID   => 20636,
		groupID  => 157,
		typeName => "'Desert Heat' Thermal Dissipation Field Blueprint"
	},

	20637	=> {
		typeID   => 20637,
		groupID  => 77,
		typeName => "'Posse' Adaptive Invulnerability Field"
	},

	20638	=> {
		typeID   => 20638,
		groupID  => 157,
		typeName => "'Posse' Adaptive Invulnerability Field Blueprint"
	},

	20639	=> {
		typeID   => 20639,
		groupID  => 77,
		typeName => "'Poacher' EM Ward Field"
	},

	20640	=> {
		typeID   => 20640,
		groupID  => 157,
		typeName => "'Poacher' EM Ward Field Blueprint"
	},

	20641	=> {
		typeID   => 20641,
		groupID  => 77,
		typeName => "'Snake Eyes' Explosive Deflection Field"
	},

	20642	=> {
		typeID   => 20642,
		groupID  => 157,
		typeName => "'Snake Eyes' Explosive Deflection Field Blueprint"
	},

	20643	=> {
		typeID   => 20643,
		groupID  => 517,
		typeName => "Poyri's Harpy"
	},

	20644	=> {
		typeID   => 20644,
		groupID  => 517,
		typeName => "Niemenen's Capsule"
	},

	20645	=> {
		typeID   => 20645,
		groupID  => 517,
		typeName => "Kirku's Heron"
	},

	20646	=> {
		typeID   => 20646,
		groupID  => 517,
		typeName => "Arkimo's Hawk"
	},

	20647	=> {
		typeID   => 20647,
		groupID  => 517,
		typeName => "Riutta's Ferox"
	},

	20648	=> {
		typeID   => 20648,
		groupID  => 517,
		typeName => "Taihti's Raven"
	},

	20649	=> {
		typeID   => 20649,
		groupID  => 517,
		typeName => "Kanji's Caracal"
	},

	20650	=> {
		typeID   => 20650,
		groupID  => 517,
		typeName => "Jitainen's Probe"
	},

	20651	=> {
		typeID   => 20651,
		groupID  => 517,
		typeName => "Tuuri's Raptor"
	},

	20652	=> {
		typeID   => 20652,
		groupID  => 517,
		typeName => "Urigamu's Crow"
	},

	20653	=> {
		typeID   => 20653,
		groupID  => 517,
		typeName => "Sayto's Badger Mark II"
	},

	20654	=> {
		typeID   => 20654,
		groupID  => 517,
		typeName => "Setala's Blackbird"
	},

	20655	=> {
		typeID   => 20655,
		groupID  => 517,
		typeName => "Hekkiren's Badger"
	},

	20656	=> {
		typeID   => 20656,
		groupID  => 517,
		typeName => "Ikonen's Buzzard"
	},

	20657	=> {
		typeID   => 20657,
		groupID  => 517,
		typeName => "Hochi's Badger Mark II"
	},

	20658	=> {
		typeID   => 20658,
		groupID  => 517,
		typeName => "Saturi's Bustard"
	},

	20659	=> {
		typeID   => 20659,
		groupID  => 517,
		typeName => "Etsuya's Merlin"
	},

	20660	=> {
		typeID   => 20660,
		groupID  => 517,
		typeName => "Rost's Ferox"
	},

	20661	=> {
		typeID   => 20661,
		groupID  => 517,
		typeName => "Aikato's Probe"
	},

	20662	=> {
		typeID   => 20662,
		groupID  => 517,
		typeName => "Dechien's Heron"
	},

	20663	=> {
		typeID   => 20663,
		groupID  => 517,
		typeName => "Tekkurs's Crow"
	},

	20664	=> {
		typeID   => 20664,
		groupID  => 517,
		typeName => "Tanaka's Raptor"
	},

	20665	=> {
		typeID   => 20665,
		groupID  => 517,
		typeName => "Anekoji's Osprey"
	},

	20666	=> {
		typeID   => 20666,
		groupID  => 517,
		typeName => "Gojivi's Bustard"
	},

	20667	=> {
		typeID   => 20667,
		groupID  => 517,
		typeName => "Gorgoz's Raptor"
	},

	20668	=> {
		typeID   => 20668,
		groupID  => 517,
		typeName => "Opainen's Cormorant"
	},

	20669	=> {
		typeID   => 20669,
		groupID  => 517,
		typeName => "Pihrava's Condor"
	},

	20670	=> {
		typeID   => 20670,
		groupID  => 517,
		typeName => "Nakamuta's Incursus"
	},

	20671	=> {
		typeID   => 20671,
		groupID  => 517,
		typeName => "Katori's Cormorant"
	},

	20672	=> {
		typeID   => 20672,
		groupID  => 517,
		typeName => "Suruki's Hawk"
	},

	20673	=> {
		typeID   => 20673,
		groupID  => 517,
		typeName => "Yama's Moa"
	},

	20674	=> {
		typeID   => 20674,
		groupID  => 517,
		typeName => "Adakita's Caracal"
	},

	20675	=> {
		typeID   => 20675,
		groupID  => 517,
		typeName => "Nobayashi's Incursus"
	},

	20676	=> {
		typeID   => 20676,
		groupID  => 517,
		typeName => "Karpela's Ferox"
	},

	20677	=> {
		typeID   => 20677,
		groupID  => 517,
		typeName => "Rahkamo's Buzzard"
	},

	20678	=> {
		typeID   => 20678,
		groupID  => 517,
		typeName => "Nissiken's Condor"
	},

	20679	=> {
		typeID   => 20679,
		groupID  => 517,
		typeName => "Sirkya's Cormorant"
	},

	20680	=> {
		typeID   => 20680,
		groupID  => 517,
		typeName => "Rati's Moa"
	},

	20681	=> {
		typeID   => 20681,
		groupID  => 517,
		typeName => "Eskaila's Raven"
	},

	20682	=> {
		typeID   => 20682,
		groupID  => 517,
		typeName => "Aurio's Incursus"
	},

	20683	=> {
		typeID   => 20683,
		groupID  => 517,
		typeName => "Michi's Heron"
	},

	20684	=> {
		typeID   => 20684,
		groupID  => 517,
		typeName => "Utrainen's Merlin"
	},

	20685	=> {
		typeID   => 20685,
		groupID  => 517,
		typeName => "Otalen's Caracal"
	},

	20686	=> {
		typeID   => 20686,
		groupID  => 517,
		typeName => "Nikainen's Moa"
	},

	20687	=> {
		typeID   => 20687,
		groupID  => 517,
		typeName => "Raytio's Badger Mark II"
	},

	20688	=> {
		typeID   => 20688,
		groupID  => 517,
		typeName => "Magye's Bustard"
	},

	20689	=> {
		typeID   => 20689,
		groupID  => 517,
		typeName => "Koronen's Raptor"
	},

	20690	=> {
		typeID   => 20690,
		groupID  => 517,
		typeName => "Ahti's Osprey"
	},

	20691	=> {
		typeID   => 20691,
		groupID  => 517,
		typeName => "Watanen's Heron"
	},

	20692	=> {
		typeID   => 20692,
		groupID  => 517,
		typeName => "Oshima's Crow"
	},

	20693	=> {
		typeID   => 20693,
		groupID  => 517,
		typeName => "Fujimo's Caracal"
	},

	20694	=> {
		typeID   => 20694,
		groupID  => 517,
		typeName => "Kubona's Merlin"
	},

	20695	=> {
		typeID   => 20695,
		groupID  => 517,
		typeName => "Kanerva's Condor"
	},

	20696	=> {
		typeID   => 20696,
		groupID  => 517,
		typeName => "Tazaki's Buzzard"
	},

	20697	=> {
		typeID   => 20697,
		groupID  => 517,
		typeName => "Aura's Osprey"
	},

	20698	=> {
		typeID   => 20698,
		groupID  => 517,
		typeName => "Sagimoro's Blackbird"
	},

	20699	=> {
		typeID   => 20699,
		groupID  => 517,
		typeName => "Wakomi's Raven"
	},

	20700	=> {
		typeID   => 20700,
		groupID  => 1229,
		typeName => "Michi's Excavation Augmentor"
	},

	20701	=> {
		typeID   => 20701,
		groupID  => 62,
		typeName => "Capital Armor Repairer I"
	},

	20702	=> {
		typeID   => 20702,
		groupID  => 142,
		typeName => "Capital Armor Repairer I Blueprint"
	},

	20703	=> {
		typeID   => 20703,
		groupID  => 40,
		typeName => "Capital Shield Booster I"
	},

	20704	=> {
		typeID   => 20704,
		groupID  => 120,
		typeName => "Capital Shield Booster I Blueprint"
	},

	20713	=> {
		typeID   => 20713,
		groupID  => 526,
		typeName => "Utrainen's Employment Voucher"
	},

	20714	=> {
		typeID   => 20714,
		groupID  => 817,
		typeName => "Lephny's Mining Boat"
	},

	20715	=> {
		typeID   => 20715,
		groupID  => 283,
		typeName => "Jorek Lephny"
	},

	20716	=> {
		typeID   => 20716,
		groupID  => 297,
		typeName => "Vendor"
	},

	20717	=> {
		typeID   => 20717,
		groupID  => 297,
		typeName => "Bursar"
	},

	20718	=> {
		typeID   => 20718,
		groupID  => 297,
		typeName => "Auctioneer"
	},

	20719	=> {
		typeID   => 20719,
		groupID  => 297,
		typeName => "Marketeer"
	},

	20721	=> {
		typeID   => 20721,
		groupID  => 83,
		typeName => "Arch Angel Carbonized Lead L"
	},

	20723	=> {
		typeID   => 20723,
		groupID  => 83,
		typeName => "Arch Angel Nuclear L"
	},

	20725	=> {
		typeID   => 20725,
		groupID  => 83,
		typeName => "Arch Angel Proton L"
	},

	20727	=> {
		typeID   => 20727,
		groupID  => 83,
		typeName => "Arch Angel Depleted Uranium L"
	},

	20729	=> {
		typeID   => 20729,
		groupID  => 83,
		typeName => "Arch Angel Titanium Sabot L"
	},

	20731	=> {
		typeID   => 20731,
		groupID  => 83,
		typeName => "Arch Angel Fusion L"
	},

	20733	=> {
		typeID   => 20733,
		groupID  => 83,
		typeName => "Arch Angel Phased Plasma L"
	},

	20735	=> {
		typeID   => 20735,
		groupID  => 83,
		typeName => "Arch Angel EMP L"
	},

	20737	=> {
		typeID   => 20737,
		groupID  => 83,
		typeName => "Arch Angel Carbonized Lead XL"
	},

	20739	=> {
		typeID   => 20739,
		groupID  => 83,
		typeName => "Arch Angel Depleted Uranium XL"
	},

	20741	=> {
		typeID   => 20741,
		groupID  => 83,
		typeName => "Arch Angel EMP XL"
	},

	20743	=> {
		typeID   => 20743,
		groupID  => 83,
		typeName => "Arch Angel Fusion XL"
	},

	20745	=> {
		typeID   => 20745,
		groupID  => 83,
		typeName => "Arch Angel Nuclear XL"
	},

	20747	=> {
		typeID   => 20747,
		groupID  => 83,
		typeName => "Arch Angel Phased Plasma XL"
	},

	20749	=> {
		typeID   => 20749,
		groupID  => 83,
		typeName => "Arch Angel Proton XL"
	},

	20751	=> {
		typeID   => 20751,
		groupID  => 83,
		typeName => "Arch Angel Titanium Sabot XL"
	},

	20753	=> {
		typeID   => 20753,
		groupID  => 83,
		typeName => "Domination Carbonized Lead S"
	},

	20755	=> {
		typeID   => 20755,
		groupID  => 83,
		typeName => "Domination Nuclear S"
	},

	20757	=> {
		typeID   => 20757,
		groupID  => 83,
		typeName => "Domination Proton S"
	},

	20759	=> {
		typeID   => 20759,
		groupID  => 83,
		typeName => "Domination Depleted Uranium S"
	},

	20761	=> {
		typeID   => 20761,
		groupID  => 83,
		typeName => "Domination Titanium Sabot S"
	},

	20763	=> {
		typeID   => 20763,
		groupID  => 83,
		typeName => "Domination Fusion S"
	},

	20765	=> {
		typeID   => 20765,
		groupID  => 83,
		typeName => "Domination Phased Plasma S"
	},

	20767	=> {
		typeID   => 20767,
		groupID  => 83,
		typeName => "Domination EMP S"
	},

	20769	=> {
		typeID   => 20769,
		groupID  => 83,
		typeName => "Domination Carbonized Lead M"
	},

	20771	=> {
		typeID   => 20771,
		groupID  => 83,
		typeName => "Domination Nuclear M"
	},

	20773	=> {
		typeID   => 20773,
		groupID  => 83,
		typeName => "Domination Proton M"
	},

	20775	=> {
		typeID   => 20775,
		groupID  => 83,
		typeName => "Domination Depleted Uranium M"
	},

	20777	=> {
		typeID   => 20777,
		groupID  => 83,
		typeName => "Domination Titanium Sabot M"
	},

	20779	=> {
		typeID   => 20779,
		groupID  => 83,
		typeName => "Domination Fusion M"
	},

	20781	=> {
		typeID   => 20781,
		groupID  => 83,
		typeName => "Domination Phased Plasma M"
	},

	20783	=> {
		typeID   => 20783,
		groupID  => 83,
		typeName => "Domination EMP M"
	},

	20785	=> {
		typeID   => 20785,
		groupID  => 83,
		typeName => "Domination Carbonized Lead L"
	},

	20787	=> {
		typeID   => 20787,
		groupID  => 83,
		typeName => "Domination Nuclear L"
	},

	20789	=> {
		typeID   => 20789,
		groupID  => 83,
		typeName => "Domination Proton L"
	},

	20791	=> {
		typeID   => 20791,
		groupID  => 83,
		typeName => "Domination Depleted Uranium L"
	},

	20793	=> {
		typeID   => 20793,
		groupID  => 83,
		typeName => "Domination Titanium Sabot L"
	},

	20795	=> {
		typeID   => 20795,
		groupID  => 83,
		typeName => "Domination Fusion L"
	},

	20797	=> {
		typeID   => 20797,
		groupID  => 83,
		typeName => "Domination Phased Plasma L"
	},

	20799	=> {
		typeID   => 20799,
		groupID  => 83,
		typeName => "Domination EMP L"
	},

	20801	=> {
		typeID   => 20801,
		groupID  => 83,
		typeName => "Domination Carbonized Lead XL"
	},

	20803	=> {
		typeID   => 20803,
		groupID  => 83,
		typeName => "Domination Depleted Uranium XL"
	},

	20805	=> {
		typeID   => 20805,
		groupID  => 83,
		typeName => "Domination EMP XL"
	},

	20807	=> {
		typeID   => 20807,
		groupID  => 83,
		typeName => "Domination Fusion XL"
	},

	20809	=> {
		typeID   => 20809,
		groupID  => 83,
		typeName => "Domination Nuclear XL"
	},

	20811	=> {
		typeID   => 20811,
		groupID  => 83,
		typeName => "Domination Phased Plasma XL"
	},

	20813	=> {
		typeID   => 20813,
		groupID  => 83,
		typeName => "Domination Proton XL"
	},

	20815	=> {
		typeID   => 20815,
		groupID  => 83,
		typeName => "Domination Titanium Sabot XL"
	},

	20817	=> {
		typeID   => 20817,
		groupID  => 86,
		typeName => "Sanshas Ultraviolet S"
	},

	20819	=> {
		typeID   => 20819,
		groupID  => 86,
		typeName => "Sanshas Xray S"
	},

	20821	=> {
		typeID   => 20821,
		groupID  => 86,
		typeName => "Sanshas Gamma S"
	},

	20823	=> {
		typeID   => 20823,
		groupID  => 86,
		typeName => "Sanshas Multifrequency S"
	},

	20825	=> {
		typeID   => 20825,
		groupID  => 86,
		typeName => "Sanshas Ultraviolet M"
	},

	20827	=> {
		typeID   => 20827,
		groupID  => 86,
		typeName => "Sanshas Xray M"
	},

	20829	=> {
		typeID   => 20829,
		groupID  => 86,
		typeName => "Sanshas Gamma M"
	},

	20831	=> {
		typeID   => 20831,
		groupID  => 86,
		typeName => "Sanshas Multifrequency M"
	},

	20833	=> {
		typeID   => 20833,
		groupID  => 86,
		typeName => "Sanshas Ultraviolet L"
	},

	20835	=> {
		typeID   => 20835,
		groupID  => 86,
		typeName => "Sanshas Xray L"
	},

	20837	=> {
		typeID   => 20837,
		groupID  => 86,
		typeName => "Sanshas Gamma L"
	},

	20839	=> {
		typeID   => 20839,
		groupID  => 86,
		typeName => "Sanshas Multifrequency L"
	},

	20841	=> {
		typeID   => 20841,
		groupID  => 86,
		typeName => "Sanshas Ultraviolet XL"
	},

	20843	=> {
		typeID   => 20843,
		groupID  => 86,
		typeName => "Sanshas Xray XL"
	},

	20845	=> {
		typeID   => 20845,
		groupID  => 86,
		typeName => "Sanshas Gamma XL"
	},

	20847	=> {
		typeID   => 20847,
		groupID  => 86,
		typeName => "Sanshas Multifrequency XL"
	},

	20849	=> {
		typeID   => 20849,
		groupID  => 86,
		typeName => "True Sanshas Radio S"
	},

	20851	=> {
		typeID   => 20851,
		groupID  => 86,
		typeName => "True Sanshas Microwave S"
	},

	20853	=> {
		typeID   => 20853,
		groupID  => 86,
		typeName => "True Sanshas Infrared S"
	},

	20855	=> {
		typeID   => 20855,
		groupID  => 86,
		typeName => "True Sanshas Standard S"
	},

	20857	=> {
		typeID   => 20857,
		groupID  => 86,
		typeName => "True Sanshas Ultraviolet S"
	},

	20859	=> {
		typeID   => 20859,
		groupID  => 86,
		typeName => "True Sanshas Xray S"
	},

	20861	=> {
		typeID   => 20861,
		groupID  => 86,
		typeName => "True Sanshas Gamma S"
	},

	20863	=> {
		typeID   => 20863,
		groupID  => 86,
		typeName => "True Sanshas Multifrequency S"
	},

	20865	=> {
		typeID   => 20865,
		groupID  => 86,
		typeName => "True Sanshas Radio M"
	},

	20867	=> {
		typeID   => 20867,
		groupID  => 86,
		typeName => "True Sanshas Microwave M"
	},

	20869	=> {
		typeID   => 20869,
		groupID  => 86,
		typeName => "True Sanshas Infrared M"
	},

	20871	=> {
		typeID   => 20871,
		groupID  => 86,
		typeName => "True Sanshas Standard M"
	},

	20873	=> {
		typeID   => 20873,
		groupID  => 86,
		typeName => "True Sanshas Ultraviolet M"
	},

	20875	=> {
		typeID   => 20875,
		groupID  => 86,
		typeName => "True Sanshas Xray M"
	},

	20877	=> {
		typeID   => 20877,
		groupID  => 86,
		typeName => "True Sanshas Gamma M"
	},

	20879	=> {
		typeID   => 20879,
		groupID  => 86,
		typeName => "True Sanshas Multifrequency M"
	},

	20881	=> {
		typeID   => 20881,
		groupID  => 86,
		typeName => "True Sanshas Radio L"
	},

	20883	=> {
		typeID   => 20883,
		groupID  => 86,
		typeName => "True Sanshas Microwave L"
	},

	20885	=> {
		typeID   => 20885,
		groupID  => 86,
		typeName => "True Sanshas Infrared L"
	},

	20887	=> {
		typeID   => 20887,
		groupID  => 86,
		typeName => "True Sanshas Standard L"
	},

	20889	=> {
		typeID   => 20889,
		groupID  => 86,
		typeName => "True Sanshas Ultraviolet L"
	},

	20891	=> {
		typeID   => 20891,
		groupID  => 86,
		typeName => "True Sanshas Xray L"
	},

	20893	=> {
		typeID   => 20893,
		groupID  => 86,
		typeName => "True Sanshas Gamma L"
	},

	20895	=> {
		typeID   => 20895,
		groupID  => 86,
		typeName => "True Sanshas Multifrequency L"
	},

	20897	=> {
		typeID   => 20897,
		groupID  => 86,
		typeName => "True Sanshas Radio XL"
	},

	20899	=> {
		typeID   => 20899,
		groupID  => 86,
		typeName => "True Sanshas Microwave XL"
	},

	20901	=> {
		typeID   => 20901,
		groupID  => 86,
		typeName => "True Sanshas Infrared XL"
	},

	20903	=> {
		typeID   => 20903,
		groupID  => 86,
		typeName => "True Sanshas Standard XL"
	},

	20905	=> {
		typeID   => 20905,
		groupID  => 86,
		typeName => "True Sanshas Ultraviolet XL"
	},

	20907	=> {
		typeID   => 20907,
		groupID  => 86,
		typeName => "True Sanshas Xray XL"
	},

	20909	=> {
		typeID   => 20909,
		groupID  => 86,
		typeName => "True Sanshas Gamma XL"
	},

	20911	=> {
		typeID   => 20911,
		groupID  => 86,
		typeName => "True Sanshas Multifrequency XL"
	},

	20913	=> {
		typeID   => 20913,
		groupID  => 85,
		typeName => "Shadow Iron Charge L"
	},

	20915	=> {
		typeID   => 20915,
		groupID  => 85,
		typeName => "Shadow Tungsten Charge L"
	},

	20917	=> {
		typeID   => 20917,
		groupID  => 85,
		typeName => "Shadow Iridium Charge L"
	},

	20919	=> {
		typeID   => 20919,
		groupID  => 85,
		typeName => "Shadow Lead Charge L"
	},

	20921	=> {
		typeID   => 20921,
		groupID  => 85,
		typeName => "Shadow Thorium Charge L"
	},

	20923	=> {
		typeID   => 20923,
		groupID  => 85,
		typeName => "Shadow Uranium Charge L"
	},

	20925	=> {
		typeID   => 20925,
		groupID  => 85,
		typeName => "Shadow Plutonium Charge L"
	},

	20927	=> {
		typeID   => 20927,
		groupID  => 85,
		typeName => "Shadow Antimatter Charge L"
	},

	20929	=> {
		typeID   => 20929,
		groupID  => 85,
		typeName => "Shadow Antimatter Charge XL"
	},

	20931	=> {
		typeID   => 20931,
		groupID  => 85,
		typeName => "Shadow Iridium Charge XL"
	},

	20933	=> {
		typeID   => 20933,
		groupID  => 85,
		typeName => "Shadow Iron Charge XL"
	},

	20935	=> {
		typeID   => 20935,
		groupID  => 85,
		typeName => "Shadow Lead Charge XL"
	},

	20937	=> {
		typeID   => 20937,
		groupID  => 85,
		typeName => "Shadow Plutonium Charge XL"
	},

	20939	=> {
		typeID   => 20939,
		groupID  => 85,
		typeName => "Shadow Thorium Charge XL"
	},

	20941	=> {
		typeID   => 20941,
		groupID  => 85,
		typeName => "Shadow Tungsten Charge XL"
	},

	20943	=> {
		typeID   => 20943,
		groupID  => 85,
		typeName => "Shadow Uranium Charge XL"
	},

	20945	=> {
		typeID   => 20945,
		groupID  => 85,
		typeName => "Guardian Iron Charge S"
	},

	20947	=> {
		typeID   => 20947,
		groupID  => 85,
		typeName => "Guardian Tungsten Charge S"
	},

	20949	=> {
		typeID   => 20949,
		groupID  => 85,
		typeName => "Guardian Iridium Charge S"
	},

	20951	=> {
		typeID   => 20951,
		groupID  => 85,
		typeName => "Guardian Lead Charge S"
	},

	20953	=> {
		typeID   => 20953,
		groupID  => 85,
		typeName => "Guardian Thorium Charge S"
	},

	20955	=> {
		typeID   => 20955,
		groupID  => 85,
		typeName => "Guardian Uranium Charge S"
	},

	20957	=> {
		typeID   => 20957,
		groupID  => 85,
		typeName => "Guardian Plutonium Charge S"
	},

	20959	=> {
		typeID   => 20959,
		groupID  => 85,
		typeName => "Guardian Antimatter Charge S"
	},

	20961	=> {
		typeID   => 20961,
		groupID  => 85,
		typeName => "Guardian Iron Charge M"
	},

	20963	=> {
		typeID   => 20963,
		groupID  => 85,
		typeName => "Guardian Tungsten Charge M"
	},

	20965	=> {
		typeID   => 20965,
		groupID  => 85,
		typeName => "Guardian Iridium Charge M"
	},

	20967	=> {
		typeID   => 20967,
		groupID  => 85,
		typeName => "Guardian Lead Charge M"
	},

	20969	=> {
		typeID   => 20969,
		groupID  => 85,
		typeName => "Guardian Thorium Charge M"
	},

	20971	=> {
		typeID   => 20971,
		groupID  => 85,
		typeName => "Guardian Uranium Charge M"
	},

	20973	=> {
		typeID   => 20973,
		groupID  => 85,
		typeName => "Guardian Plutonium Charge M"
	},

	20975	=> {
		typeID   => 20975,
		groupID  => 85,
		typeName => "Guardian Antimatter Charge M"
	},

	20977	=> {
		typeID   => 20977,
		groupID  => 85,
		typeName => "Guardian Iron Charge L"
	},

	20979	=> {
		typeID   => 20979,
		groupID  => 85,
		typeName => "Guardian Tungsten Charge L"
	},

	20981	=> {
		typeID   => 20981,
		groupID  => 85,
		typeName => "Guardian Iridium Charge L"
	},

	20983	=> {
		typeID   => 20983,
		groupID  => 85,
		typeName => "Guardian Lead Charge L"
	},

	20985	=> {
		typeID   => 20985,
		groupID  => 85,
		typeName => "Guardian Thorium Charge L"
	},

	20987	=> {
		typeID   => 20987,
		groupID  => 85,
		typeName => "Guardian Uranium Charge L"
	},

	20989	=> {
		typeID   => 20989,
		groupID  => 85,
		typeName => "Guardian Plutonium Charge L"
	},

	20991	=> {
		typeID   => 20991,
		groupID  => 85,
		typeName => "Guardian Antimatter Charge L"
	},

	20993	=> {
		typeID   => 20993,
		groupID  => 85,
		typeName => "Guardian Antimatter Charge XL"
	},

	20995	=> {
		typeID   => 20995,
		groupID  => 85,
		typeName => "Guardian Iridium Charge XL"
	},

	20997	=> {
		typeID   => 20997,
		groupID  => 85,
		typeName => "Guardian Iron Charge XL"
	},

	20999	=> {
		typeID   => 20999,
		groupID  => 85,
		typeName => "Guardian Lead Charge XL"
	},

	21001	=> {
		typeID   => 21001,
		groupID  => 85,
		typeName => "Guardian Plutonium Charge XL"
	},

	21003	=> {
		typeID   => 21003,
		groupID  => 85,
		typeName => "Guardian Thorium Charge XL"
	},

	21005	=> {
		typeID   => 21005,
		groupID  => 85,
		typeName => "Guardian Tungsten Charge XL"
	},

	21007	=> {
		typeID   => 21007,
		groupID  => 85,
		typeName => "Guardian Uranium Charge XL"
	},

	21009	=> {
		typeID   => 21009,
		groupID  => 873,
		typeName => "Capital Propulsion Engine"
	},

	21010	=> {
		typeID   => 21010,
		groupID  => 915,
		typeName => "Capital Propulsion Engine Blueprint"
	},

	21011	=> {
		typeID   => 21011,
		groupID  => 873,
		typeName => "Capital Turret Hardpoint"
	},

	21012	=> {
		typeID   => 21012,
		groupID  => 915,
		typeName => "Capital Turret Hardpoint Blueprint"
	},

	21013	=> {
		typeID   => 21013,
		groupID  => 873,
		typeName => "Capital Sensor Cluster"
	},

	21014	=> {
		typeID   => 21014,
		groupID  => 915,
		typeName => "Capital Sensor Cluster Blueprint"
	},

	21017	=> {
		typeID   => 21017,
		groupID  => 873,
		typeName => "Capital Armor Plates"
	},

	21018	=> {
		typeID   => 21018,
		groupID  => 915,
		typeName => "Capital Armor Plates Blueprint"
	},

	21019	=> {
		typeID   => 21019,
		groupID  => 873,
		typeName => "Capital Capacitor Battery"
	},

	21020	=> {
		typeID   => 21020,
		groupID  => 915,
		typeName => "Capital Capacitor Battery Blueprint"
	},

	21021	=> {
		typeID   => 21021,
		groupID  => 873,
		typeName => "Capital Power Generator"
	},

	21022	=> {
		typeID   => 21022,
		groupID  => 915,
		typeName => "Capital Power Generator Blueprint"
	},

	21023	=> {
		typeID   => 21023,
		groupID  => 873,
		typeName => "Capital Shield Emitter"
	},

	21024	=> {
		typeID   => 21024,
		groupID  => 915,
		typeName => "Capital Shield Emitter Blueprint"
	},

	21025	=> {
		typeID   => 21025,
		groupID  => 873,
		typeName => "Capital Jump Drive"
	},

	21026	=> {
		typeID   => 21026,
		groupID  => 915,
		typeName => "Capital Jump Drive Blueprint"
	},

	21027	=> {
		typeID   => 21027,
		groupID  => 873,
		typeName => "Capital Cargo Bay"
	},

	21028	=> {
		typeID   => 21028,
		groupID  => 915,
		typeName => "Capital Cargo Bay Blueprint"
	},

	21029	=> {
		typeID   => 21029,
		groupID  => 873,
		typeName => "Capital Drone Bay"
	},

	21030	=> {
		typeID   => 21030,
		groupID  => 915,
		typeName => "Capital Drone Bay Blueprint"
	},

	21035	=> {
		typeID   => 21035,
		groupID  => 873,
		typeName => "Capital Computer System"
	},

	21036	=> {
		typeID   => 21036,
		groupID  => 915,
		typeName => "Capital Computer System Blueprint"
	},

	21037	=> {
		typeID   => 21037,
		groupID  => 873,
		typeName => "Capital Construction Parts"
	},

	21038	=> {
		typeID   => 21038,
		groupID  => 915,
		typeName => "Capital Construction Parts Blueprint"
	},

	21039	=> {
		typeID   => 21039,
		groupID  => 873,
		typeName => "Capital Siege Array"
	},

	21040	=> {
		typeID   => 21040,
		groupID  => 915,
		typeName => "Capital Siege Array Blueprint"
	},

	21041	=> {
		typeID   => 21041,
		groupID  => 873,
		typeName => "Capital Launcher Hardpoint"
	},

	21042	=> {
		typeID   => 21042,
		groupID  => 915,
		typeName => "Capital Launcher Hardpoint Blueprint"
	},

	21043	=> {
		typeID   => 21043,
		groupID  => 526,
		typeName => "Ancient Treasure Map"
	},

	21044	=> {
		typeID   => 21044,
		groupID  => 526,
		typeName => "Pistols"
	},

	21046	=> {
		typeID   => 21046,
		groupID  => 526,
		typeName => "Nugoeihuvi Transaction Logs"
	},

	21047	=> {
		typeID   => 21047,
		groupID  => 472,
		typeName => "Oshima's System Scanner"
	},

	21048	=> {
		typeID   => 21048,
		groupID  => 474,
		typeName => "Kepheur's Keycard"
	},

	21049	=> {
		typeID   => 21049,
		groupID  => 533,
		typeName => "Tao Pai Motow"
	},

	21052	=> {
		typeID   => 21052,
		groupID  => 306,
		typeName => "Old Storage Container"
	},

	21053	=> {
		typeID   => 21053,
		groupID  => 526,
		typeName => "Kepheur's DNA"
	},

	21054	=> {
		typeID   => 21054,
		groupID  => 526,
		typeName => "Crude Sculpture"
	},

	21055	=> {
		typeID   => 21055,
		groupID  => 356,
		typeName => "Crude Sculpture Blueprint"
	},

	21056	=> {
		typeID   => 21056,
		groupID  => 533,
		typeName => "Tara Buquet"
	},

	21057	=> {
		typeID   => 21057,
		groupID  => 409,
		typeName => "Tara's Insignia"
	},

	21058	=> {
		typeID   => 21058,
		groupID  => 523,
		typeName => "COSMOS Caldari Non-Pirate Battleship 4"
	},

	21059	=> {
		typeID   => 21059,
		groupID  => 1209,
		typeName => "Shield Compensation"
	},

	21060	=> {
		typeID   => 21060,
		groupID  => 520,
		typeName => "COSMOS Caldari Non-Pirate Frigate Elite 4"
	},

	21061	=> {
		typeID   => 21061,
		groupID  => 533,
		typeName => "Makele Kordonii"
	},

	21062	=> {
		typeID   => 21062,
		groupID  => 370,
		typeName => "Makele's Tag"
	},

	21063	=> {
		typeID   => 21063,
		groupID  => 533,
		typeName => "Zvarin Karsha_"
	},

	21064	=> {
		typeID   => 21064,
		groupID  => 283,
		typeName => "Zvarin Karsha"
	},

	21065	=> {
		typeID   => 21065,
		groupID  => 533,
		typeName => "Ryoke Laika"
	},

	21066	=> {
		typeID   => 21066,
		groupID  => 283,
		typeName => "Ryoke Laika"
	},

	21067	=> {
		typeID   => 21067,
		groupID  => 526,
		typeName => "Ryoke Laika's Head"
	},

	21068	=> {
		typeID   => 21068,
		groupID  => 533,
		typeName => "Sheriff Togany_"
	},

	21070	=> {
		typeID   => 21070,
		groupID  => 283,
		typeName => "Sheriff Togany"
	},

	21071	=> {
		typeID   => 21071,
		groupID  => 256,
		typeName => "Rapid Launch"
	},

	21073	=> {
		typeID   => 21073,
		groupID  => 530,
		typeName => "Sleeper Split Cables"
	},

	21074	=> {
		typeID   => 21074,
		groupID  => 735,
		typeName => "Talocan Sketch Books"
	},

	21075	=> {
		typeID   => 21075,
		groupID  => 530,
		typeName => "Talocan Molecule Binder"
	},

	21076	=> {
		typeID   => 21076,
		groupID  => 528,
		typeName => "Talocan Stasis Inverter"
	},

	21077	=> {
		typeID   => 21077,
		groupID  => 735,
		typeName => "Talocan Info Shards"
	},

	21078	=> {
		typeID   => 21078,
		groupID  => 530,
		typeName => "Talocan Reflective Sheets"
	},

	21079	=> {
		typeID   => 21079,
		groupID  => 528,
		typeName => "Talocan Perpetual Clock"
	},

	21080	=> {
		typeID   => 21080,
		groupID  => 528,
		typeName => "Talocan Solid Atomizer"
	},

	21081	=> {
		typeID   => 21081,
		groupID  => 530,
		typeName => "Talocan Mechanical Gears"
	},

	21082	=> {
		typeID   => 21082,
		groupID  => 528,
		typeName => "Talocan System Interface Unit"
	},

	21084	=> {
		typeID   => 21084,
		groupID  => 735,
		typeName => "Talocan Mathematical Schematics"
	},

	21085	=> {
		typeID   => 21085,
		groupID  => 735,
		typeName => "Talocan Automation Accounts"
	},

	21086	=> {
		typeID   => 21086,
		groupID  => 530,
		typeName => "Talocan Partition Plates"
	},

	21087	=> {
		typeID   => 21087,
		groupID  => 735,
		typeName => "Talocan Intricate Formulas"
	},

	21088	=> {
		typeID   => 21088,
		groupID  => 528,
		typeName => "Talocan Stasis Deflector"
	},

	21089	=> {
		typeID   => 21089,
		groupID  => 530,
		typeName => "Talocan Ignition Device"
	},

	21090	=> {
		typeID   => 21090,
		groupID  => 533,
		typeName => "Bai Tarziiki"
	},

	21091	=> {
		typeID   => 21091,
		groupID  => 526,
		typeName => "Bai's Corpse"
	},

	21092	=> {
		typeID   => 21092,
		groupID  => 533,
		typeName => "Motani Ihura"
	},

	21094	=> {
		typeID   => 21094,
		groupID  => 310,
		typeName => "Cynosural Field I"
	},

	21095	=> {
		typeID   => 21095,
		groupID  => 532,
		typeName => "Cynosural Field I Blueprint"
	},

	21096	=> {
		typeID   => 21096,
		groupID  => 658,
		typeName => "Cynosural Field Generator I"
	},

	21097	=> {
		typeID   => 21097,
		groupID  => 31,
		typeName => "Goru's Shuttle"
	},

	21098	=> {
		typeID   => 21098,
		groupID  => 111,
		typeName => "Goru's Shuttle Blueprint"
	},

	21099	=> {
		typeID   => 21099,
		groupID  => 306,
		typeName => "Kazka Loot Container"
	},

	21101	=> {
		typeID   => 21101,
		groupID  => 533,
		typeName => "RabaRaba ChooChoo"
	},

	21103	=> {
		typeID   => 21103,
		groupID  => 533,
		typeName => "Jakon Tooka"
	},

	21104	=> {
		typeID   => 21104,
		groupID  => 370,
		typeName => "Jakon's Tag"
	},

	21105	=> {
		typeID   => 21105,
		groupID  => 517,
		typeName => "Cosmos Bellicose"
	},

	21106	=> {
		typeID   => 21106,
		groupID  => 517,
		typeName => "Cosmos Bestower"
	},

	21107	=> {
		typeID   => 21107,
		groupID  => 517,
		typeName => "Cosmos Claw"
	},

	21108	=> {
		typeID   => 21108,
		groupID  => 517,
		typeName => "Cosmos Executioner"
	},

	21109	=> {
		typeID   => 21109,
		groupID  => 517,
		typeName => "Cosmos Hoarder"
	},

	21110	=> {
		typeID   => 21110,
		groupID  => 517,
		typeName => "Cosmos Hound"
	},

	21111	=> {
		typeID   => 21111,
		groupID  => 517,
		typeName => "Cosmos Mammoth"
	},

	21112	=> {
		typeID   => 21112,
		groupID  => 517,
		typeName => "Cosmos Maulus"
	},

	21113	=> {
		typeID   => 21113,
		groupID  => 517,
		typeName => "Cosmos Navitas"
	},

	21114	=> {
		typeID   => 21114,
		groupID  => 517,
		typeName => "Cosmos Omen"
	},

	21115	=> {
		typeID   => 21115,
		groupID  => 517,
		typeName => "Cosmos Retribution"
	},

	21116	=> {
		typeID   => 21116,
		groupID  => 517,
		typeName => "Cosmos Rifter"
	},

	21117	=> {
		typeID   => 21117,
		groupID  => 517,
		typeName => "Cosmos Rupture"
	},

	21118	=> {
		typeID   => 21118,
		groupID  => 517,
		typeName => "Cosmos Scythe"
	},

	21119	=> {
		typeID   => 21119,
		groupID  => 517,
		typeName => "Cosmos Stiletto"
	},

	21120	=> {
		typeID   => 21120,
		groupID  => 517,
		typeName => "Cosmos Tempest"
	},

	21121	=> {
		typeID   => 21121,
		groupID  => 517,
		typeName => "Cosmos Thrasher"
	},

	21122	=> {
		typeID   => 21122,
		groupID  => 517,
		typeName => "Cosmos Vagabond"
	},

	21123	=> {
		typeID   => 21123,
		groupID  => 517,
		typeName => "Cosmos Vigil"
	},

	21124	=> {
		typeID   => 21124,
		groupID  => 517,
		typeName => "Cosmos Wolf"
	},

	21125	=> {
		typeID   => 21125,
		groupID  => 517,
		typeName => "Cosmos Wreathe"
	},

	21126	=> {
		typeID   => 21126,
		groupID  => 526,
		typeName => "Raytio Family Supplies"
	},

	21127	=> {
		typeID   => 21127,
		groupID  => 534,
		typeName => "Payo Ming"
	},

	21128	=> {
		typeID   => 21128,
		groupID  => 522,
		typeName => "COSMOS Magye Eraser"
	},

	21129	=> {
		typeID   => 21129,
		groupID  => 522,
		typeName => "COSMOS Magye Silencer"
	},

	21130	=> {
		typeID   => 21130,
		groupID  => 520,
		typeName => "COSMOS Magye Death Dealer"
	},

	21131	=> {
		typeID   => 21131,
		groupID  => 520,
		typeName => "COSMOS Magye Wrecker"
	},

	21132	=> {
		typeID   => 21132,
		groupID  => 517,
		typeName => "Burkur's Vigil"
	},

	21133	=> {
		typeID   => 21133,
		groupID  => 517,
		typeName => "Mork's Probe"
	},

	21134	=> {
		typeID   => 21134,
		groupID  => 517,
		typeName => "Kersos' Thrasher"
	},

	21135	=> {
		typeID   => 21135,
		groupID  => 517,
		typeName => "Rakken's Claw"
	},

	21136	=> {
		typeID   => 21136,
		groupID  => 517,
		typeName => "Pokkolen's Wreathe"
	},

	21137	=> {
		typeID   => 21137,
		groupID  => 517,
		typeName => "Hekken's Condor"
	},

	21138	=> {
		typeID   => 21138,
		groupID  => 517,
		typeName => "Nitrut's Vigil"
	},

	21139	=> {
		typeID   => 21139,
		groupID  => 517,
		typeName => "Takson's Wreathe"
	},

	21140	=> {
		typeID   => 21140,
		groupID  => 517,
		typeName => "Rochet's Incursus"
	},

	21141	=> {
		typeID   => 21141,
		groupID  => 517,
		typeName => "Darrchien's Navitas"
	},

	21142	=> {
		typeID   => 21142,
		groupID  => 517,
		typeName => "Stokk's Claw"
	},

	21143	=> {
		typeID   => 21143,
		groupID  => 517,
		typeName => "Rikkiryo's Heron"
	},

	21144	=> {
		typeID   => 21144,
		groupID  => 517,
		typeName => "Hatram's Executioner"
	},

	21145	=> {
		typeID   => 21145,
		groupID  => 517,
		typeName => "Nitrus' Vigil"
	},

	21146	=> {
		typeID   => 21146,
		groupID  => 517,
		typeName => "Ouche's Navitas"
	},

	21147	=> {
		typeID   => 21147,
		groupID  => 517,
		typeName => "Bokh's Rifter"
	},

	21148	=> {
		typeID   => 21148,
		groupID  => 517,
		typeName => "Karkinen's Cormorant"
	},

	21149	=> {
		typeID   => 21149,
		groupID  => 517,
		typeName => "Sakt's Stiletto"
	},

	21150	=> {
		typeID   => 21150,
		groupID  => 517,
		typeName => "Sarbaert's Hound"
	},

	21151	=> {
		typeID   => 21151,
		groupID  => 517,
		typeName => "Tekrawhol's Rupture"
	},

	21152	=> {
		typeID   => 21152,
		groupID  => 517,
		typeName => "Tromkurt's Vagabond"
	},

	21153	=> {
		typeID   => 21153,
		groupID  => 517,
		typeName => "Rugaert's Vigil"
	},

	21154	=> {
		typeID   => 21154,
		groupID  => 517,
		typeName => "Asshala's Retribution"
	},

	21155	=> {
		typeID   => 21155,
		groupID  => 517,
		typeName => "Horkund's Scythe"
	},

	21156	=> {
		typeID   => 21156,
		groupID  => 517,
		typeName => "Korten's Vagabond"
	},

	21157	=> {
		typeID   => 21157,
		groupID  => 517,
		typeName => "Patrenn's Rifter"
	},

	21158	=> {
		typeID   => 21158,
		groupID  => 517,
		typeName => "Tikrest's Rupture"
	},

	21159	=> {
		typeID   => 21159,
		groupID  => 517,
		typeName => "Ucham's Omen"
	},

	21160	=> {
		typeID   => 21160,
		groupID  => 517,
		typeName => "Sharum's Maulus"
	},

	21161	=> {
		typeID   => 21161,
		groupID  => 715,
		typeName => "Kutill's Hoarder"
	},

	21162	=> {
		typeID   => 21162,
		groupID  => 517,
		typeName => "Mothrus's Bellicose"
	},

	21163	=> {
		typeID   => 21163,
		groupID  => 517,
		typeName => "Maertigor's Wreathe"
	},

	21164	=> {
		typeID   => 21164,
		groupID  => 517,
		typeName => "Ristiger's Bellicose"
	},

	21165	=> {
		typeID   => 21165,
		groupID  => 517,
		typeName => "Frain's Blackbird"
	},

	21166	=> {
		typeID   => 21166,
		groupID  => 517,
		typeName => "Karadom's Mammoth"
	},

	21167	=> {
		typeID   => 21167,
		groupID  => 517,
		typeName => "Robaerger's Scythe"
	},

	21168	=> {
		typeID   => 21168,
		groupID  => 517,
		typeName => "Torsont's Bellicose"
	},

	21169	=> {
		typeID   => 21169,
		groupID  => 517,
		typeName => "Jogmundt's Probe"
	},

	21170	=> {
		typeID   => 21170,
		groupID  => 517,
		typeName => "Hakkars' Wolf"
	},

	21171	=> {
		typeID   => 21171,
		groupID  => 517,
		typeName => "Murchor's Tempest"
	},

	21172	=> {
		typeID   => 21172,
		groupID  => 517,
		typeName => "Ossiam's Retribution"
	},

	21173	=> {
		typeID   => 21173,
		groupID  => 517,
		typeName => "Quereg's Omen"
	},

	21174	=> {
		typeID   => 21174,
		groupID  => 517,
		typeName => "Kverkinn's Stiletto"
	},

	21175	=> {
		typeID   => 21175,
		groupID  => 517,
		typeName => "Namian's Retribution"
	},

	21176	=> {
		typeID   => 21176,
		groupID  => 517,
		typeName => "Tyrfin's Rupture"
	},

	21177	=> {
		typeID   => 21177,
		groupID  => 517,
		typeName => "Spitek's Bellicose"
	},

	21178	=> {
		typeID   => 21178,
		groupID  => 517,
		typeName => "Gurmurkur's Vagabond"
	},

	21179	=> {
		typeID   => 21179,
		groupID  => 517,
		typeName => "Verkort's Scythe"
	},

	21180	=> {
		typeID   => 21180,
		groupID  => 526,
		typeName => "Illian's Passcard"
	},

	21181	=> {
		typeID   => 21181,
		groupID  => 534,
		typeName => "Illian Gara"
	},

	21194	=> {
		typeID   => 21194,
		groupID  => 86,
		typeName => "Blood Radio S"
	},

	21196	=> {
		typeID   => 21196,
		groupID  => 86,
		typeName => "Blood Microwave S"
	},

	21198	=> {
		typeID   => 21198,
		groupID  => 86,
		typeName => "Blood Infrared S"
	},

	21200	=> {
		typeID   => 21200,
		groupID  => 86,
		typeName => "Blood Standard S"
	},

	21202	=> {
		typeID   => 21202,
		groupID  => 86,
		typeName => "Blood Ultraviolet S"
	},

	21204	=> {
		typeID   => 21204,
		groupID  => 86,
		typeName => "Blood Xray S"
	},

	21206	=> {
		typeID   => 21206,
		groupID  => 86,
		typeName => "Blood Gamma S"
	},

	21208	=> {
		typeID   => 21208,
		groupID  => 86,
		typeName => "Blood Multifrequency S"
	},

	21210	=> {
		typeID   => 21210,
		groupID  => 86,
		typeName => "Blood Microwave M"
	},

	21212	=> {
		typeID   => 21212,
		groupID  => 86,
		typeName => "Blood Infrared M"
	},

	21214	=> {
		typeID   => 21214,
		groupID  => 86,
		typeName => "Blood Standard M"
	},

	21216	=> {
		typeID   => 21216,
		groupID  => 86,
		typeName => "Blood Ultraviolet M"
	},

	21218	=> {
		typeID   => 21218,
		groupID  => 86,
		typeName => "Blood Xray M"
	},

	21220	=> {
		typeID   => 21220,
		groupID  => 86,
		typeName => "Blood Gamma M"
	},

	21222	=> {
		typeID   => 21222,
		groupID  => 86,
		typeName => "Blood Multifrequency M"
	},

	21224	=> {
		typeID   => 21224,
		groupID  => 86,
		typeName => "Blood Radio L"
	},

	21226	=> {
		typeID   => 21226,
		groupID  => 86,
		typeName => "Blood Microwave L"
	},

	21228	=> {
		typeID   => 21228,
		groupID  => 86,
		typeName => "Blood Infrared L"
	},

	21230	=> {
		typeID   => 21230,
		groupID  => 86,
		typeName => "Blood Standard L"
	},

	21232	=> {
		typeID   => 21232,
		groupID  => 86,
		typeName => "Blood Ultraviolet L"
	},

	21234	=> {
		typeID   => 21234,
		groupID  => 86,
		typeName => "Blood Xray L"
	},

	21236	=> {
		typeID   => 21236,
		groupID  => 86,
		typeName => "Blood Gamma L"
	},

	21238	=> {
		typeID   => 21238,
		groupID  => 86,
		typeName => "Blood Multifrequency L"
	},

	21240	=> {
		typeID   => 21240,
		groupID  => 86,
		typeName => "Blood Radio XL"
	},

	21242	=> {
		typeID   => 21242,
		groupID  => 86,
		typeName => "Blood Microwave XL"
	},

	21244	=> {
		typeID   => 21244,
		groupID  => 86,
		typeName => "Blood Infrared XL"
	},

	21246	=> {
	},

	},


