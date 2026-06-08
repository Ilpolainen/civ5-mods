-- Rekisteröidään Elmonian atlas peliin
INSERT INTO IconTextureAtlases (Atlas, IconSize, Filename, IconsPerRow, IconsPerColumn)
VALUES
    ('ELMONIA_ATLAS', 256, 'Art/Elmonia_Atlas_256.dds', 2, 2),
    ('ELMONIA_ATLAS', 128, 'Art/Elmonia_Atlas_128.dds', 2, 2),
    ('ELMONIA_ATLAS', 64,  'Art/Elmonia_Atlas_64.dds',  2, 2),
    ('ELMONIA_ATLAS', 32,  'Art/Elmonia_Atlas_32.dds',  2, 2),
    ('ELMONIA_ATLAS', 45,  'Art/Elmonia_Atlas_45.dds',  2, 2),
    ('ELMONIA_ATLAS', 80,  'Art/Elmonia_Atlas_80.dds',  2, 2),
    ('ELMONIA_VAAKUNA', 256, 'Art/Elmonia_Vaakuna_256.dds', 1, 1),
    ('ELMONIA_VAAKUNA', 128, 'Art/Elmonia_Vaakuna_128.dds', 1, 1),
    ('ELMONIA_VAAKUNA', 64,  'Art/Elmonia_Vaakuna_64.dds',  1, 1),
    ('ELMONIA_VAAKUNA', 32,  'Art/Elmonia_Vaakuna_32.dds',  1, 1),
    ('ELMONIA_VAAKUNA', 45,  'Art/Elmonia_Vaakuna_45.dds',  1, 1),
    ('ELMONIA_VAAKUNA', 80,  'Art/Elmonia_Vaakuna_80.dds',  1, 1),
    ('UNICORN_ATLAS', 256, 'Art/Unicorn_Atlas_256.dds', 1, 1),
    ('UNICORN_ATLAS', 128, 'Art/Unicorn_Atlas_128.dds', 1, 1),
    ('UNICORN_ATLAS', 64,  'Art/Unicorn_Atlas_64.dds',  1, 1),
    ('UNICORN_ATLAS', 32,  'Art/Unicorn_Atlas_32.dds',  1, 1);

INSERT INTO Units (
    Class,
    Type,
    GoodyHutUpgradeUnitClass,
    PrereqTech,
    Combat,
    RangedCombat,
    Cost,
    Moves,
    Range,
    CombatClass,
    Domain,
    DefaultUnitAI,
    Description,
    Civilopedia,
    Strategy,
    Help,
    MilitarySupport,
    MilitaryProduction,
    Pillage,
    ObsoleteTech,
    AdvancedStartCost,
    XPValueAttack,
    XPValueDefense,
    UnitArtInfo,
    UnitFlagAtlas,
    UnitFlagIconOffset,
    IconAtlas,
    PortraitIndex,
    MoveRate
)
VALUES (
    'UNITCLASS_KNIGHT', -- Class
    'UNIT_ELMONIA_LUNAR_KNIGHT', -- Type
    'UNITCLASS_CAVALRY', -- GoodyHutUpgradeUnitClass
    'TECH_CHIVALRY', -- PrereqTech,
    25,
    12,
    85, -- Cost
    4, -- Moves
    2, -- Range
    'UNITCOMBAT_MOUNTED', -- CombatClass
    'DOMAIN_LAND', -- Domain
    'UNITAI_ATTACK', -- DefaultUnitAI
    'TXT_KEY_UNIT_ELMONIA_LUNAR_KNIGHT', -- Description
    'TXT_KEY_UNIT_ELMONIA_LUNAR_KNIGHT_PE,DIA', -- Civilopedia
    'TXT_KEY_UNIT_ELMONIA_LUNAR_KNIGHT_STRATEGY', -- Strategy
    'TXT_KEY_UNIT_ELMONIA_LUNAR_KNIGHT_HELP', -- Help
    1, -- MilitarySupport
    1, -- MilitaryProduction
    1, -- Pillage
    'TECH_DYNAMITE', -- ObsoleteTech
    15, -- AdvancedStartCost
    3, -- XPValueAttack
    3, -- XPValueDefense
    'ART_DEF_UNIT_KNIGHT', -- UnitArtInfo
    'UNICORN_ATLAS', 0, -- UnitFlagAtlas + UnitFlagIconOffset
    'ELMONIA_ATLAS', 3, -- IconAtlas + PortraitIndex (Lunar Knight = oikea ala)
    'QUADRUPED' -- MoveRate
);

INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
VALUES ('CIVILIZATION_ELMONIA', 'UNITCLASS_SETTLER', 'UNITAI_SETTLE', 1);


INSERT INTO Leaders (
    Type,
    Description,
    Civilopedia,
    CivilopediaTag,
    ArtDefineTag,
    IconAtlas, PortraitIndex,
    VictoryCompetitiveness,
    WonderCompetitiveness,
    MinorCivCompetitiveness,
    Boldness,
    DiploBalance,
    WarmongerHate,
    WorkAgainstWillingness,
    WorkWithWillingness,
    Loyalty,
    Neediness,
    Forgiveness,
    Chattiness,
    Meanness
)
VALUES (
    'LEADER_EMMA_XIV', -- Type
    'TXT_KEY_LEADER_EMMA_XIV', -- Description
    'TXT_KEY_LEADER_EMMA_XIV_PEDIA', -- Civilopedia
    'TXT_KEY_LEADER_EMMA_XIV_PEDIA_TAG', -- CivilopediaTag
    'Elizabeth_Scene.xml', -- ArtDefineTag
    'ELMONIA_ATLAS', 1, -- IconAtlas + PortraitIndex (Emma XIV = oikea ylä)
    5, -- VictoryCompetitiveness
    5, -- WonderCompetitiveness
    5, -- MinorCivCompetitiveness
    5, -- Boldness
    5, -- DiploBalance
    5, -- WarmongerHate
    5, -- WorkAgainstWillingness
    5, -- WorkWithWillingness
    5, -- Loyalty
    5, -- Neediness
    5, -- Forgiveness
    5, -- Chattiness
    5 -- Meanness
); 

INSERT INTO Leader_Traits (LeaderType, TraitType)
VALUES ('LEADER_EMMA_XIV', 'TRAIT_HEDONISTIC_CULTURE');

INSERT INTO Colors(Type, Red, Green, Blue, Alpha)
VALUES ('COLOR_PINK', 0.85, 0.31, 0.55, 1.0);

INSERT INTO PlayerColors (Type, PrimaryColor, SecondaryColor, TextColor)
VALUES ('PLAYERCOLOR_ELMONIA', 'COLOR_PINK', 'COLOR_WHITE', 'COLOR_WHITE');

INSERT INTO Civilizations (
    Type,
    Description,
    Civilopedia,
    CivilopediaTag,
    Playable,
    AIPlayable,
    ShortDescription,
    Adjective,
    DefaultPlayerColor,
    ArtDefineTag,
    ArtStyleType,
    ArtStyleSuffix,
    ArtStylePrefix,
    IconAtlas,
    PortraitIndex,
    AlphaIconAtlas,
    MapImage,
    DawnOfManQuote,
    DawnOfManImage,
    DawnOfManAudio
)
VALUES (
    'CIVILIZATION_ELMONIA', -- Type
    'TXT_KEY_CIVILIZATION_ELMONIA', -- Description
    'TXT_KEY_CIVILIZATION_ELMONIA_PEDIA', -- Civilopedia
    'TXT_KEY_CIVILIZATION_ELMONIA_PEDIA_TAG', -- CivilopediaTag
    1, -- Playable
    0, -- AIPlayable
    'TXT_KEY_CIVILIZATION_ELMONIA_SHORT_DESC', -- ShortDescription
    'TXT_KEY_CIVILIZATION_ELMONIA_ADJECTIVE', -- Adjective
    'PLAYERCOLOR_ELMONIA', -- DefaultPlayerColor
    'ART_DEF_CIVILIZATION_ENGLAND', -- ArtDefineTag
    'ARTSTYLE_EUROPEAN', -- ArtStyleType
    '_EURO', -- ArtStyleSuffix
    'EUROPEAN', -- ArtStylePrefix
    'ELMONIA_ATLAS', 
    0,
    'ELMONIA_VAAKUNA', -- AlphaIconAtlas (sama atlas, alpha-kanava hoitaa läpinäkyvyyden)
    'MapEngland512.dds', -- MapImage
    'TXT_KEY_CIV5_DAWN_ELMONIA_TEXT', -- DawnOfManQuote
    'DOM_Elmonia.dds', -- DawnOfManImage
    'AS2D_DOM_ELMONIA' -- DawnOfManAudio
);


INSERT INTO Traits (
    Type,
    Description,
    ShortDescription,
    WonderProductionModifier,
    GoldenAgeDurationModifier,
    LuxuryHappinessRetention
)
VALUES (
    'TRAIT_HEDONISTIC_CULTURE',
    'TXT_KEY_TRAIT_HEDONISTIC_CULTURE',
    'TXT_KEY_TRAIT_HEDONISTIC_CULTURE_SHORT',
    20,
    50,
    50
);

INSERT INTO Trait_ImprovementYieldChanges (TraitType, ImprovementType, YieldType, Yield)
VALUES ('TRAIT_HEDONISTIC_CULTURE', 'IMPROVEMENT_PLANTATION', 'YIELD_CULTURE', 2);

INSERT INTO Civilization_Start_Region_Priority (CivilizationType, RegionType)
VALUES ('CIVILIZATION_ELMONIA', 'REGION_PLAINS');

INSERT INTO Civilization_Leaders (CivilizationType, LeaderheadType)
VALUES (
    'CIVILIZATION_ELMONIA', -- CivilizationType
    'LEADER_EMMA_XIV' -- LeaderheadType
);


INSERT INTO Civilization_UnitClassOverrides (
    CivilizationType,
    UnitClassType,
    UnitType)
VALUES (
    'CIVILIZATION_ELMONIA', -- CivilizationType
    'UNITCLASS_KNIGHT', -- UnitClassType
    'UNIT_ELMONIA_LUNAR_KNIGHT' -- UnitType
);

-- Lisää Elmonian cityname-avaimet (pääkaupunki ensin)
INSERT INTO Civilization_CityNames (CivilizationType, CityName)
VALUES 
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_CAPITAL'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_2'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_3'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_4'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_5'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_6'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_7'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_8'),
    ('CIVILIZATION_ELMONIA', 'TXT_KEY_CITY_NAME_ELMONIA_9');


INSERT INTO Civilization_FreeTechs (CivilizationType, TechType)
VALUES ('CIVILIZATION_ELMONIA', 'TECH_ANIMAL_HUSBANDRY');

INSERT INTO Civilization_FreeTechs (CivilizationType, TechType)
VALUES ('CIVILIZATION_ELMONIA', 'TECH_HORSEBACK_RIDING');

INSERT INTO Civilization_SpyNames (CivilizationType, SpyName)
VALUES
    ('CIVILIZATION_ELMONIA', 'Derpy Hooves'),
    ('CIVILIZATION_ELMONIA', 'Lyra Heartstrings'),
    ('CIVILIZATION_ELMONIA', 'Bon Bon'),
    ('CIVILIZATION_ELMONIA', 'Octavia'),
    ('CIVILIZATION_ELMONIA', 'Vinyl Scratch'),
    ('CIVILIZATION_ELMONIA', 'Trixie'),
    ('CIVILIZATION_ELMONIA', 'Zecora'),
    ('CIVILIZATION_ELMONIA', 'Spitfire'),
    ('CIVILIZATION_ELMONIA', 'Cheerilee'),
    ('CIVILIZATION_ELMONIA', 'Doctor Whooves');


INSERT INTO Buildings
(Type,
BuildingClass, Cost, HurryCostModifier, MinAreaSize, ConquestProb, ArtDefineTag)
SELECT
'BUILDING_SCHOOL_OF_FRIENDSHIP', 
BuildingClass, Cost, HurryCostModifier, MinAreaSize, ConquestProb, ArtDefineTag
FROM Buildings WHERE Type = 'BUILDING_COLOSSEUM';


UPDATE Buildings
SET Description = 'TXT_KEY_BUILDING_SCHOOL_OF_FRIENDSHIP',
    Help = 'TXT_KEY_BUILDING_SCHOOL_OF_FRIENDSHIP_HELP',
    Strategy = 'TXT_KEY_BUILDING_SCHOOL_OF_FRIENDSHIP_STRATEGY',
    Civilopedia = 'TXT_KEY_BUILDING_SCHOOL_OF_FRIENDSHIP_PEDIA',
    PrereqTech = 'TECH_CONSTRUCTION',
    IconAtlas = 'ELMONIA_ATLAS',
    PortraitIndex = 2,
    GoldMaintenance = 0,
    Defense = 15,
    ExtraCityHitPoints = 15,
    Happiness = 3
WHERE Type = 'BUILDING_SCHOOL_OF_FRIENDSHIP';

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
VALUES ('BUILDING_SCHOOL_OF_FRIENDSHIP', 'YIELD_CULTURE', 2);

INSERT INTO Building_YieldChanges (BuildingType, YieldType, Yield)
VALUES ('BUILDING_SCHOOL_OF_FRIENDSHIP', 'YIELD_SCIENCE', 2);

INSERT INTO Civilization_BuildingClassOverrides (CivilizationType, BuildingClassType, BuildingType)
VALUES ('CIVILIZATION_ELMONIA', 'BUILDINGCLASS_COLOSSEUM', 'BUILDING_SCHOOL_OF_FRIENDSHIP');


----------------------------------------------------------------------------------------------------------------------------
-- Audio_Sounds
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Audio_Sounds 
		(SoundID,
        Filename, 						
        LoadType)
VALUES	('ELMONIA_DOM_SPEECH', 	
        'Elmonia_DOM', 	
        'DynamicResident');		
----------------------------------------------------------------------------------------------------------------------------
-- Audio_2DSounds
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Audio_2DSounds 
		(ScriptID,
        SoundID,
        SoundType, 			
        MinVolume, 	
        MaxVolume,	
        IsMusic, 
        Looping)
VALUES	(
    'AS2D_DOM_ELMONIA', 	
    'ELMONIA_DOM_SPEECH', 			
    'GAME_SPEECH', 					
    100, 		
    100, 		
    0, 		 
    0);