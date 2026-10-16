function BelmontSound.main()
  if not FXSoundTable then
    FXSoundTable = {}
  end
  FXSoundTable.Belmont = {
    [""] = {
      "Chain_Pull1",
      0.10000000149012,
      0,
      0,
      0,
      false,
      0,
      0
    },
    PowerCrystalEnd = {
      "PowerCrystalEnd",
      0.75,
      0,
      0,
      0,
      false,
      0,
      0
    },
    VenomEnd = {
      "VenomBegin",
      0.5,
      0,
      0,
      10000,
      false,
      0,
      0
    },
    MagicBootsInit = {
      "ApparitionPowerStep",
      0.1,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    DaggerThreeD = {
      "Dagger_Dark_05|Dagger_Dark_06",
      0.75,
      0,
      0,
      0,
      false,
      0,
      0
    },
    BladeHit = {
      "Punch_sword1|Punch_sword2|Punch_sword3",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    MeleeHit = {
      "Punch_melee1|Punch_melee2|Punch_melee3",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipWallImpact_WOOD = {
      "WhipWallImpact_WOOD_01|WhipWallImpact_WOOD_03|WhipWallImpact_WOOD_02",
      0.65,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    FireStorm = {
      "WhipComboExpl_01|WhipComboExpl_02|WhipComboExpl_03",
      0.75,
      0,
      0,
      1500,
      false,
      0,
      0
    },
    EnemyBlockedBladeHit = {
      "Punch_swordblock1|Punch_swordblock2|Punch_swordblock3",
      0.75,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Blood_BlueEtherealBlood = {
      "BlueEtherealBlood_12|BlueEtherealBlood_13|BlueEtherealBlood_14",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    VialDarkPowerLoop = {
      "VialDarkPowerLoop",
      0.5,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Wind_LoopPower = {
      "Wind_LoopPower",
      0.85,
      0.5,
      0,
      0,
      true,
      0.5,
      0.5
    },
    EnemyBlockedSpecialBladeHit = {
      "Punch_swordblockSpecial",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipWallImpact_STONE = {
      "WhipWallImpact_STONE_01|WhipWallImpact_STONE_02|WhipWallImpact_STONE_03",
      0.7,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    DaggerThree = {
      "Dagger_05|Dagger_06",
      0.8,
      0,
      0,
      0,
      false,
      0,
      0
    },
    BlockedWhipMetalHit = {
      "MetalHitBlock_04|MetalHitBlock_03|MetalHitBlock_02|MetalHitBlock_01",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Explosion_RedBlood = {
      "Explosion_Sangre_01|Explosion_Sangre_02|Explosion_Sangre_03",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerFleshHit = {
      "KnifeStab_01|KnifeStab_02|KnifeStab_03|KnifeStab_04",
      0.85,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipFleshHit = {
      "Punch_melee1|Punch_melee2|Punch_melee3",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    LightImpact = {
      "Hit_Magic1|Hit_Magic2|Hit_Magic3|Hit_Magic4",
      0.75,
      0,
      0,
      3000,
      false,
      0,
      0
    },
    Blood_RedBlood = {
      "RedBlood_01|RedBlood_02|RedBlood_03",
      0.3,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Blood_EtherealBlood = {
      "EtherealBlood",
      0.5,
      0,
      0,
      0,
      false,
      0,
      0
    },
    EnemyBlockedMeleeHit = {
      "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock4",
      1.1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Blood_StickyBloodSmall = {
      "StickyBloodSmall_01",
      0.6,
      0,
      0,
      0,
      false,
      0,
      0
    },
    EnemyBlockedPushHit = {
      "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock4",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Blood_RedBloodLight = {
      "RedBloodLight_01|RedBloodLight_02|RedBloodLight_03",
      0.3,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerFiveD = {
      "Dagger_Dark_07|Dagger_Dark_08",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerTwo = {
      "Dagger_03|Dagger_04",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Explosion_BlueEtherealBlood = {
      "Explosion_BlueEtherealBlood_02",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    NormalImpact = {
      "Hit_Normal1|Hit_Normal2|Hit_Normal3",
      0.7,
      0,
      0,
      3000,
      false,
      0,
      0
    },
    PushHit = {
      "Punch_melee1|Punch_melee2|Punch_melee3",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    LightPowerOff = {
      "DarkPowerOff",
      1,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    VialExplosion = {
      "Agua_Bendita1|Agua_Bendita2",
      0.7,
      0,
      0,
      3000,
      false,
      0,
      0
    },
    GauntletFlash = {
      "BoomerangStar",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    FairiesOut = {
      "Fairy_appear1",
      0.65,
      0,
      0,
      0,
      false,
      0,
      0
    },
    VenomLoop = {
      "VenomLoop",
      1,
      0,
      0,
      10000,
      false,
      0,
      0
    },
    BlackDeath = {
      "BlackDeath",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    LightPowerOn = {
      "DarkPowerOn3",
      1,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    DaggerMetalHit = {
      "MetalHitDag_01|MetalHitDag_02|MetalHitDag_03",
      0.85,
      0,
      0,
      0,
      false,
      0,
      0
    },
    PowerCrystalLoop = {
      "PowerCrystalLoop",
      0.5,
      0,
      0,
      2000,
      true,
      0.5,
      1
    },
    WhipWallImpact_SNOW = {
      "WhipWallImpact_SNOW_01|WhipWallImpact_SNOW_02|WhipWallImpact_SNOW_03",
      0.7,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    BlockedMeleeWoodHit = {
      "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock4",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    MeleeMetalHit = {
      "MetalHit_01|MetalHit_02|MetalHit_03",
      0.75,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Dash_Loop = {
      "Wind_LoopPower22",
      1,
      0,
      0,
      2000,
      true,
      0.5,
      0.5
    },
    NeutralEnergyArrive = {
      "Energy_Arrive1",
      0.45,
      0,
      0,
      1500,
      false,
      0,
      0
    },
    DaggerOneD = {
      "Dagger_Dark_01|Dagger_Dark_02",
      0.6,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Blood_RedBloodBig = {
      "RedBloodBig_01|RedBloodBig_02|RedBloodBig_03",
      0.3,
      0,
      0,
      0,
      false,
      0,
      0
    },
    BlockedWhipWoodHit = {
      "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock4",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    NeutralBaseLoop = {
      "Loop_Estatua1",
      0.7,
      0,
      0,
      0,
      true,
      0.5,
      2.5
    },
    DeadByMagic = {
      "FuseBurn_Magic",
      1,
      0,
      0,
      3000,
      false,
      0,
      0
    },
    WhipWallImpact_GENERIC = {
      "Hit_Chain1|Hit_Chain2|Hit_Chain3|Hit_Chain4|Hit_Chain5|Hit_Chain6",
      0.55,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    MagicBootsEnd = {
      "ApparitionPowerStep3",
      0.15,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    BlockedDaggerMetalHit = {
      "MetalHitBlockDag_01|MetalHitBlockDag_02|MetalHitBlockDag_03|MetalHitBlockDag_04",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipWallImpact_METAL = {
      "WhipWallImpact_METAL_01|WhipWallImpact_METAL_02|WhipWallImpact_METAL_03",
      0.7,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    BlockedMeleeMetalHit = {
      "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock4",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipWallImpact_GROUND = {
      "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03",
      0.7,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    WhipMetalHit = {
      "MetalHit_01|MetalHit_02|MetalHit_03",
      0.9,
      0,
      0,
      0,
      false,
      0,
      0
    },
    EnemyBlockedSpecialPushHit = {
      "Punch_meleeblockSpecial",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    VenomBegin = {
      "VenomBegin",
      0.5,
      0,
      0,
      10000,
      false,
      0,
      0
    },
    DarkPowerOff = {
      "DarkPowerOff",
      0.75,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    Dash_Init = {
      "Pasada_Fuego2",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipWallImpact_BOOK = {
      "Hit_Book_01|Hit_Book_02|Hit_Book_03",
      0.6,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    Splash_Water = {
      "WhipWallImpact_WATER_011|WhipWallImpact_WATER_022|WhipWallImpact_WATER_033",
      0.85,
      0,
      0,
      0,
      false,
      0,
      0
    },
    PowerCrystalDrain = {
      "PowerCrystalDrain|PowerCrystalDrain2|PowerCrystalDrain3",
      0.3,
      0,
      0,
      0,
      false,
      0,
      0
    },
    HeartBeat = {
      "HBeat_01",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    BlockedDaggerWoodHit = {
      "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock4",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerOne = {
      "Dagger_01|Dagger_02",
      0.6,
      0,
      0,
      0,
      false,
      0,
      0
    },
    LoopBelmontNeutralEnergy = {
      "Wind_LoopPower",
      0.85,
      0.5,
      0,
      0,
      true,
      0.5,
      0.5
    },
    MagicBootsLoopOn = {
      "Wind_LoopPower22",
      0.65,
      2,
      0,
      0,
      true,
      0.5,
      1
    },
    EnemyBlockedSpecialMeleeHit = {
      "Punch_meleeblockSpecial",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    WhipWallImpact_WATER = {
      "WhipWallImpact_WATER_01|WhipWallImpact_WATER_03|WhipWallImpact_WATER_02",
      0.7,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    WhipWallImpact_ICE = {
      "WhipWallImpact_STONE_01|WhipWallImpact_STONE_02|WhipWallImpact_STONE_03",
      0.7,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    DarkPowerOn = {
      "LightPowerOn1",
      1,
      0,
      0,
      2000,
      false,
      0,
      0
    },
    MeleeFleshHit = {
      "Punch_melee1|Punch_melee1|Punch_melee1",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Blood_StickyBlood = {
      "StickyBlood_01",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DarkImpact = {
      "Hit_Fire1|Hit_Fire2|Hit_Fire3|Hit_Fire4",
      0.6,
      0,
      0,
      3000,
      false,
      0,
      0
    },
    FountainLoop = {
      "Loop_Estatua1",
      0.7,
      0,
      0,
      0,
      true,
      0.5,
      2.5
    },
    DaggerFive = {
      "Dagger_07|Dagger_08",
      1,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerTwoD = {
      "Dagger_Dark_03|Dagger_Dark_04",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerFourD = {
      "Dagger_Dark_05|Dagger_Dark_06",
      0.8,
      0,
      0,
      0,
      false,
      0,
      0
    },
    DaggerFour = {
      "Dagger_05|Dagger_06",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Splash_Stone = {
      "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03",
      0,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Splash_Snow = {
      "WhipWallImpact_SNOW_01|WhipWallImpact_SNOW_02|WhipWallImpact_SNOW_03",
      0.7,
      0,
      0,
      0,
      false,
      0,
      0
    },
    Splash_Wood = {
      "WhipWallImpact_WOOD_01|WhipWallImpact_WOOD_02|WhipWallImpact_WOOD_03",
      0.5,
      0,
      0,
      0,
      false,
      0,
      0
    },
    BodyTrail = {
      "Sand_Heads_03",
      0.5,
      0,
      0,
      0,
      true,
      0.5,
      0.5
    }
  }
end

function BelmontSound.LoadSounds(ClassName)
  local ac = Act.GetClass(ClassName)
  Game.ConsoleError("Initialising Belmont Sounds\n")
  Game.Set("PathInPackFile", "Sounds/Chars/" .. ac.Name .. "/")
  ac.FootStepType = Physics.PHYSICS_STEP_COWBOY
  ac.uData.WeaponType = "Melee"
  ac.uData.SurfaceType = "Flesh"
  ac.uData.BlockSurfaceType = "Wood"
  ac.AddSoundRes = "Focus_Off.wav"
  ac.AddSoundRes = "Focus_On.wav"
  ac.AddSoundRes = "EnergyUp_10.wav"
  ac.AddSoundRes = "FuseBurn_Magic.wav"
  ac.AddSoundRes = "PowerCrystalDrain.wav"
  ac.AddSoundRes = "PowerCrystalDrain2.wav"
  ac.AddSoundRes = "PowerCrystalDrain3.wav"
  ac.AddSoundRes = "VialDarkPowerLoop.wav"
  ac.AddSoundRes = "Punch_swordblock1.wav"
  ac.AddSoundRes = "Punch_swordblock2.wav"
  ac.AddSoundRes = "Punch_swordblock3.wav"
  ac.AddSoundRes = "Punch_meleeblock1.wav"
  ac.AddSoundRes = "Punch_meleeblock2.wav"
  ac.AddSoundRes = "Punch_meleeblock3.wav"
  ac.AddSoundRes = "Punch_meleeblock4.wav"
  ac.AddSoundRes = "Punch_swordblockSpecial.wav"
  ac.AddSoundRes = "Punch_meleeblockSpecial.wav"
  ac.AddSoundRes = "Fairy_appear1.wav"
  ac.AddSoundRes = "Loop_Estatua1.wav"
  ac.AddSoundRes = "Punch_melee1.wav"
  ac.AddSoundRes = "Punch_melee2.wav"
  ac.AddSoundRes = "Punch_melee3.wav"
  ac.AddSoundRes = "Punch_sword1.wav"
  ac.AddSoundRes = "Punch_sword2.wav"
  ac.AddSoundRes = "Punch_sword3.wav"
  ac.AddSoundRes = "ala3.wav"
  ac.AddSoundRes = "ala4.wav"
  ac.AddSoundRes = "Mov_Gab1.wav"
  ac.AddSoundRes = "Mov_Gab2.wav"
  ac.AddSoundRes = "Mov_Gab3.wav"
  ac.AddSoundRes = "Mov_Gab4.wav"
  ac.AddSoundRes = "Mov_Gab5.wav"
  ac.AddSoundRes = "Mov_Gab6.wav"
  ac.AddSoundRes = "Fall_Belmot1.wav"
  ac.AddSoundRes = "Fall_Belmot2.wav"
  ac.AddSoundRes = "Fall_Belmot3.wav"
  ac.AddSoundRes = "Fall_BelmotBig2.wav"
  ac.AddSoundRes = "Cross_Stab1.wav"
  ac.AddSoundRes = "Cross_Stab2.wav"
  ac.AddSoundRes = "Cross_Stab3.wav"
  ac.AddSoundRes = "Cross_Stab4.wav"
  ac.AddSoundRes = "Cross_Fly1.wav"
  ac.AddSoundRes = "Cross_Fly2.wav"
  ac.AddSoundRes = "Break_Bone1.wav"
  ac.AddSoundRes = "Break_Bone2.wav"
  ac.AddSoundRes = "Break_Bone3.wav"
  ac.AddSoundRes = "hit-fall1.wav"
  ac.AddSoundRes = "hit-fall2.wav"
  ac.AddSoundRes = "Pasada_Belmont1.wav"
  ac.AddSoundRes = "Pasada_Magica1.wav"
  ac.AddSoundRes = "Pasada_Magica2.wav"
  ac.AddSoundRes = "Pasada_vuelo1.wav"
  ac.AddSoundRes = "Pasada_vuelo2.wav"
  ac.AddSoundRes = "Hand_Belmont1.wav"
  ac.AddSoundRes = "Hand_Belmont11.wav"
  ac.AddSoundRes = "Hand_Belmont2.wav"
  ac.AddSoundRes = "Hand_Belmont22.wav"
  ac.AddSoundRes = "Hand_Belmont3.wav"
  ac.AddSoundRes = "Hand_Belmont33.wav"
  ac.AddSoundRes = "Hand_Belmont4.wav"
  ac.AddSoundRes = "Hand_Belmont44.wav"
  ac.AddSoundRes = "Chain_1.wav"
  ac.AddSoundRes = "Chain_2.wav"
  ac.AddSoundRes = "Chain_A.wav"
  ac.AddSoundRes = "Chain_B.wav"
  ac.AddSoundRes = "Chain_Gabriel1.wav"
  ac.AddSoundRes = "Chain_Gabriel2.wav"
  ac.AddSoundRes = "Chain_GabrielA.wav"
  ac.AddSoundRes = "Chain_GabrielB.wav"
  ac.AddSoundRes = "Chain_Pull1.wav"
  ac.AddSoundRes = "Chain_Pull2.wav"
  ac.AddSoundRes = "Chain_Pull3.wav"
  ac.AddSoundRes = "Chain_Pull4.wav"
  ac.AddSoundRes = "Chain_Squeak1.wav"
  ac.AddSoundRes = "Chain_Squeak2.wav"
  ac.AddSoundRes = "Chain_Squeak3.wav"
  ac.AddSoundRes = "Chain_Squeak4.wav"
  ac.AddSoundRes = "Chain_Squeak5.wav"
  ac.AddSoundRes = "Chain_Squeak6.wav"
  ac.AddSoundRes = "Chain_Squeak7.wav"
  ac.AddSoundRes = "Chain_Squeak8.wav"
  ac.AddSoundRes = "Chain_SqueakA.wav"
  ac.AddSoundRes = "Chain_SqueakB.wav"
  ac.AddSoundRes = "Chain_SqueakC.wav"
  ac.AddSoundRes = "Chain_SqueakD.wav"
  ac.AddSoundRes = "Chain_SqueakE.wav"
  ac.AddSoundRes = "Chain_SqueakF.wav"
  ac.AddSoundRes = "Chain_SqueakG.wav"
  ac.AddSoundRes = "step_sprint1.wav"
  ac.AddSoundRes = "step_sprint2.wav"
  ac.AddSoundRes = "step_sprint3.wav"
  ac.AddSoundRes = "step_sprint4.wav"
  ac.AddSoundRes = "step_sprint11.wav"
  ac.AddSoundRes = "step_sprint22.wav"
  ac.AddSoundRes = "step_sprint33.wav"
  ac.AddSoundRes = "step_sprint44.wav"
  ac.AddSoundRes = "Pasada_Fria1.wav"
  ac.AddSoundRes = "Pasada_Fria11.wav"
  ac.AddSoundRes = "Pasada_Fria2.wav"
  ac.AddSoundRes = "Pasada_Fria22.wav"
  ac.AddSoundRes = "Pasada_FriaA.wav"
  ac.AddSoundRes = "Pasada_FriaB.wav"
  ac.AddSoundRes = "Pasada_Fuego1.wav"
  ac.AddSoundRes = "Pasada_Fuego2.wav"
  ac.AddSoundRes = "Pasada_FuegoA.wav"
  ac.AddSoundRes = "Pasada_FuegoB.wav"
  ac.AddSoundRes = "Pasada_Cadena1.wav"
  ac.AddSoundRes = "Pasada_Cadena2.wav"
  ac.AddSoundRes = "Pasada_Cadena3.wav"
  ac.AddSoundRes = "Pasada_CadenaA.wav"
  ac.AddSoundRes = "Pasada_CadenaB.wav"
  ac.AddSoundRes = "Pasada_CadenaC.wav"
  ac.AddSoundRes = "Chain_Cierre1.wav"
  ac.AddSoundRes = "Chain_Cierre2.wav"
  ac.AddSoundRes = "Chain_GabrielAA.wav"
  ac.AddSoundRes = "Chain_GabrielBB.wav"
  ac.AddSoundRes = "Pasada_Final1.wav"
  ac.AddSoundRes = "Impact_Belmont_Hard1.wav"
  ac.AddSoundRes = "Impact_Belmont_Hard2.wav"
  ac.AddSoundRes = "Impact_Belmont_Med1.wav"
  ac.AddSoundRes = "Impact_Belmont_Med2.wav"
  ac.AddSoundRes = "Impact_Belmont_Soft1.wav"
  ac.AddSoundRes = "Impact_Belmont_Soft2.wav"
  ac.AddSoundRes = "Pasada_Magica_Latigo11.wav"
  ac.AddSoundRes = "Pasada_Magica_Latigo22.wav"
  ac.AddSoundRes = "Rodar_Belmont1.wav"
  ac.AddSoundRes = "Rodar_Belmont2.wav"
  ac.AddSoundRes = "Rodar_Belmont3.wav"
  ac.AddSoundRes = "Rodar_Belmont4.wav"
  ac.AddSoundRes = "Chain_On_Flor.wav"
  ac.AddSoundRes = "Chain_On_Flor2.wav"
  ac.AddSoundRes = "Blast_Power1.wav"
  ac.AddSoundRes = "Blast_Power2.wav"
  ac.AddSoundRes = "Spark_descarga1.wav"
  ac.AddSoundRes = "Catch_Object1.wav"
  ac.AddSoundRes = "Catch_Object2.wav"
  ac.AddSoundRes = "Flesh_Tear1.wav"
  ac.AddSoundRes = "Flesh_Tear2.wav"
  ac.AddSoundRes = "ruede1.wav"
  ac.AddSoundRes = "Hit_Fire1.wav"
  ac.AddSoundRes = "Hit_Fire11.wav"
  ac.AddSoundRes = "Hit_Fire2.wav"
  ac.AddSoundRes = "Hit_Fire3.wav"
  ac.AddSoundRes = "Hit_Fire4.wav"
  ac.AddSoundRes = "Hit_Magic1.wav"
  ac.AddSoundRes = "Hit_Magic2.wav"
  ac.AddSoundRes = "Hit_Magic3.wav"
  ac.AddSoundRes = "Hit_Magic4.wav"
  ac.AddSoundRes = "Hit_Normal1.wav"
  ac.AddSoundRes = "Hit_Normal2.wav"
  ac.AddSoundRes = "Hit_Normal3.wav"
  ac.AddSoundRes = "Energy_Arrive1.wav"
  ac.AddSoundRes = "Golpe_Rojo1.wav"
  ac.AddSoundRes = "Golpe_Rojo2.wav"
  ac.AddSoundRes = "Chain_Fat1.wav"
  ac.AddSoundRes = "Chain_Fat2.wav"
  ac.AddSoundRes = "Chain_Fat3.wav"
  ac.AddSoundRes = "Chain_Fat4.wav"
  ac.AddSoundRes = "Agua_Bendita1.wav"
  ac.AddSoundRes = "Agua_Bendita2.wav"
  ac.AddSoundRes = "Hit_Chain1.wav"
  ac.AddSoundRes = "Hit_Chain2.wav"
  ac.AddSoundRes = "Hit_Chain3.wav"
  ac.AddSoundRes = "Hit_Chain4.wav"
  ac.AddSoundRes = "Hit_Chain5.wav"
  ac.AddSoundRes = "Hit_Chain6.wav"
  ac.AddSoundRes = "ApparitionPowerStep.wav"
  ac.AddSoundRes = "ApparitionPowerStep3.wav"
  ac.AddSoundRes = "ApparitionPowerStep4.wav"
  ac.AddSoundRes = "Wind_LoopPower.wav"
  ac.AddSoundRes = "Wind_LoopPower22.wav"
  ac.AddSoundRes = "LightPowerOn1.wav"
  ac.AddSoundRes = "DarkPowerOn3.wav"
  ac.AddSoundRes = "LightPowerOff.wav"
  ac.AddSoundRes = "DarkPowerOff.wav"
  ac.AddSoundRes = "LightPowerOn.wav"
  ac.AddSoundRes = "Pasada_Bloqueo1.wav"
  ac.AddSoundRes = "Pasada_Bloqueo2.wav"
  ac.AddSoundRes = "Pasada_Bloqueo11.wav"
  ac.AddSoundRes = "Pasada_Bloqueo22.wav"
  ac.AddSoundRes = "PowerCatch3.wav"
  ac.AddSoundRes = "Punch_sword11.wav"
  ac.AddSoundRes = "Punch_sword22.wav"
  ac.AddSoundRes = "Punch_sword33.wav"
  ac.AddSoundRes = "KnifeStab_01.wav"
  ac.AddSoundRes = "KnifeStab_02.wav"
  ac.AddSoundRes = "KnifeStab_03.wav"
  ac.AddSoundRes = "KnifeStab_04.wav"
  ac.AddSoundRes = "MetalHit_01.wav"
  ac.AddSoundRes = "MetalHit_02.wav"
  ac.AddSoundRes = "MetalHit_03.wav"
  ac.AddSoundRes = "MetalHit_011.wav"
  ac.AddSoundRes = "MetalHit_022.wav"
  ac.AddSoundRes = "MetalHit_033.wav"
  ac.AddSoundRes = "MetalHitBlock_01.wav"
  ac.AddSoundRes = "MetalHitBlock_03.wav"
  ac.AddSoundRes = "MetalHitBlock_02.wav"
  ac.AddSoundRes = "MetalHitBlock_04.wav"
  ac.AddSoundRes = "MetalHitBlockDag_01.wav"
  ac.AddSoundRes = "MetalHitBlockDag_02.wav"
  ac.AddSoundRes = "MetalHitBlockDag_03.wav"
  ac.AddSoundRes = "MetalHitBlockDag_04.wav"
  ac.AddSoundRes = "MetalHitDag_01.wav"
  ac.AddSoundRes = "MetalHitDag_02.wav"
  ac.AddSoundRes = "MetalHitDag_03.wav"
  ac.AddSoundRes = "WhipWallImpact_STONE_01.wav"
  ac.AddSoundRes = "WhipWallImpact_STONE_02.wav"
  ac.AddSoundRes = "WhipWallImpact_STONE_03.wav"
  ac.AddSoundRes = "WhipWallImpact_WATER_01.wav"
  ac.AddSoundRes = "WhipWallImpact_WATER_02.wav"
  ac.AddSoundRes = "WhipWallImpact_WATER_03.wav"
  ac.AddSoundRes = "WhipWallImpact_WATER_011.wav"
  ac.AddSoundRes = "WhipWallImpact_WATER_022.wav"
  ac.AddSoundRes = "WhipWallImpact_WATER_033.wav"
  ac.AddSoundRes = "WhipWallImpact_WOOD_01.wav"
  ac.AddSoundRes = "WhipWallImpact_WOOD_02.wav"
  ac.AddSoundRes = "WhipWallImpact_WOOD_03.wav"
  ac.AddSoundRes = "WhipWallImpact_METAL_01.wav"
  ac.AddSoundRes = "WhipWallImpact_METAL_02.wav"
  ac.AddSoundRes = "WhipWallImpact_METAL_03.wav"
  ac.AddSoundRes = "WhipWallImpact_SNOW_01.wav"
  ac.AddSoundRes = "WhipWallImpact_SNOW_02.wav"
  ac.AddSoundRes = "WhipWallImpact_SNOW_03.wav"
  ac.AddSoundRes = "WhipWallImpact_GROUND_01.wav"
  ac.AddSoundRes = "WhipWallImpact_GROUND_02.wav"
  ac.AddSoundRes = "WhipWallImpact_GROUND_03.wav"
  ac.AddSoundRes = "Explosion_Sangre_01.wav"
  ac.AddSoundRes = "Explosion_Sangre_02.wav"
  ac.AddSoundRes = "Explosion_Sangre_03.wav"
  ac.AddSoundRes = "Explosion_BlueEtherealBlood_02.wav"
  ac.AddSoundRes = "RedBlood_01.wav"
  ac.AddSoundRes = "RedBlood_02.wav"
  ac.AddSoundRes = "RedBlood_03.wav"
  ac.AddSoundRes = "RedBloodBig_01.wav"
  ac.AddSoundRes = "RedBloodBig_02.wav"
  ac.AddSoundRes = "RedBloodBig_03.wav"
  ac.AddSoundRes = "RedBloodLight_01.wav"
  ac.AddSoundRes = "RedBloodLight_02.wav"
  ac.AddSoundRes = "RedBloodLight_03.wav"
  ac.AddSoundRes = "StickyBlood_01.wav"
  ac.AddSoundRes = "BlueEtherealBlood_12.wav"
  ac.AddSoundRes = "BlueEtherealBlood_13.wav"
  ac.AddSoundRes = "BlueEtherealBlood_14.wav"
  ac.AddSoundRes = "EtherealBlood.wav"
  ac.AddSoundRes = "Into_Mouline_01.wav"
  ac.AddSoundRes = "Into_Mouline_02.wav"
  ac.AddSoundRes = "Into_Mouline_11.wav"
  ac.AddSoundRes = "Into_Mouline_22.wav"
  ac.AddSoundRes = "IcePick_HangWall_01.wav"
  ac.AddSoundRes = "IcePick_HangWall_02.wav"
  ac.AddSoundRes = "IcePick_HangWall_03.wav"
  ac.AddSoundRes = "BoomerangStar.wav"
  ac.AddSoundRes = "HitThud_3.wav"
  ac.AddSoundRes = "HitThud_4.wav"
  ac.AddSoundRes = "HitThud_5.wav"
  ac.AddSoundRes = "trunk_01.wav"
  ac.AddSoundRes = "trunk_02.wav"
  ac.AddSoundRes = "WhipBlockComboUppercut_01.wav"
  ac.AddSoundRes = "WhipBlockComboUppercut_02.wav"
  ac.AddSoundRes = "WhipComboADLhInit.wav"
  ac.AddSoundRes = "WhipComboADLhEnd.wav"
  ac.AddSoundRes = "WhipComboADLh.wav"
  ac.AddSoundRes = "WhipComboAJ.wav"
  ac.AddSoundRes = "WhipComboDDDDDDInit.wav"
  ac.AddSoundRes = "WhipComboDrMhInit.wav"
  ac.AddSoundRes = "WhipComboDrMh.wav"
  ac.AddSoundRes = "WhipFallBlockComboAEnd.wav"
  ac.AddSoundRes = "WhipFallBlockComboDEnd.wav"
  ac.AddSoundRes = "WhipFallComboDDDD_01.wav"
  ac.AddSoundRes = "WhipFallComboDDDD_02.wav"
  ac.AddSoundRes = "WhipComboDAD.wav"
  ac.AddSoundRes = "WhipComboDADInit.wav"
  ac.AddSoundRes = "WhipComboDAD_02.wav"
  ac.AddSoundRes = "WhipComboDAD_04.wav"
  ac.AddSoundRes = "VenomLoop.wav"
  ac.AddSoundRes = "VenomBegin.wav"
  ac.AddSoundRes = "VenomEnd.wav"
  ac.AddSoundRes = "Mov_Bag_01.wav"
  ac.AddSoundRes = "ExplosionAirBelmont_02.wav"
  ac.AddSoundRes = "WhipComboExpl_01.wav"
  ac.AddSoundRes = "WhipComboExpl_02.wav"
  ac.AddSoundRes = "WhipComboExpl_03.wav"
  ac.AddSoundRes = "Dagger_01.wav"
  ac.AddSoundRes = "Dagger_02.wav"
  ac.AddSoundRes = "Dagger_03.wav"
  ac.AddSoundRes = "Dagger_04.wav"
  ac.AddSoundRes = "Dagger_05.wav"
  ac.AddSoundRes = "Dagger_06.wav"
  ac.AddSoundRes = "Dagger_07.wav"
  ac.AddSoundRes = "Dagger_08.wav"
  ac.AddSoundRes = "Dagger_Dark_01.wav"
  ac.AddSoundRes = "Dagger_Dark_02.wav"
  ac.AddSoundRes = "Dagger_Dark_03.wav"
  ac.AddSoundRes = "Dagger_Dark_04.wav"
  ac.AddSoundRes = "Dagger_Dark_05.wav"
  ac.AddSoundRes = "Dagger_Dark_06.wav"
  ac.AddSoundRes = "Dagger_Dark_07.wav"
  ac.AddSoundRes = "Dagger_Dark_08.wav"
  ac.AddSoundRes = "Belmont_Power_01.wav"
  ac.AddSoundRes = "PowerCrystal22.wav"
  ac.AddSoundRes = "PowerCrystalEnd.wav"
  ac.AddSoundRes = "PowerCrystalLoop.wav"
  ac.AddSoundRes = "HBeat_01.wav"
  ac.AddSoundRes = "WhipComboA.wav"
  ac.AddSoundRes = "WhipComboA_2.wav"
  ac.AddSoundRes = "WhipComboAA.wav"
  ac.AddSoundRes = "WhipComboAA_2.wav"
  ac.AddSoundRes = "WhipComboAAA.wav"
  ac.AddSoundRes = "WhipComboAAA_2.wav"
  ac.AddSoundRes = "WhipComboAAAA.wav"
  ac.AddSoundRes = "WhipComboAAAA_2.wav"
  ac.AddSoundRes = "WhipComboAAAAA.wav"
  ac.AddSoundRes = "WhipComboAAAAA_2.wav"
  ac.AddSoundRes = "WhipComboAAAAAA.wav"
  ac.AddSoundRes = "WhipComboAAAAAA_2.wav"
  ac.AddSoundRes = "WhipComboAAAAAAA.wav"
  ac.AddSoundRes = "WhipComboAAAAAAAA.wav"
  ac.AddSoundRes = "WhipComboAAAAAAAA_2.wav"
  ac.AddSoundRes = "WhipComboAAAAAAA_2.wav"
  ac.AddSoundRes = "WhipComboAJ_1.wav"
  ac.AddSoundRes = "WhipComboAJ_2.wav"
  ac.AddSoundRes = "WhipComboAJJ_1.wav"
  ac.AddSoundRes = "WhipComboAJJ_2.wav"
  ac.AddSoundRes = "WhipComboD.wav"
  ac.AddSoundRes = "WhipComboDD.wav"
  ac.AddSoundRes = "WhipComboDDD.wav"
  ac.AddSoundRes = "WhipComboDDDD.wav"
  ac.AddSoundRes = "WhipComboDDDDD.wav"
  ac.AddSoundRes = "WhipComboDDhD_2.wav"
  ac.AddSoundRes = "WhipComboDDhD_3.wav"
  ac.AddSoundRes = "WhipComboDDhD_1.wav"
  ac.AddSoundRes = "WhipComboDDhD_22.wav"
  ac.AddSoundRes = "WhipComboDDhD_33.wav"
  ac.AddSoundRes = "WhipComboDrD.wav"
  ac.AddSoundRes = "WhipComboDrDrD.wav"
  ac.AddSoundRes = "WhipComboDrDrD_2.wav"
  ac.AddSoundRes = "WhipComboDrD_2.wav"
  ac.AddSoundRes = "WhipComboDrDrDrD.wav"
  ac.AddSoundRes = "WhipComboDrDrDrD_2.wav"
  ac.AddSoundRes = "WhipComboDrDrDrDrD.wav"
  ac.AddSoundRes = "WhipComboDrDrDrDrDrD.wav"
  ac.AddSoundRes = "WhipComboDrDrDrDrDrD_2.wav"
  ac.AddSoundRes = "WhipComboDrDrDrDrD_2.wav"
  ac.AddSoundRes = "WhipComboDrMhsss_1.wav"
  ac.AddSoundRes = "WhipComboDrMhsss_2.wav"
  ac.AddSoundRes = "WhipComboDrMhss_1.wav"
  ac.AddSoundRes = "WhipComboDrMhss_2.wav"
  ac.AddSoundRes = "WhipComboDrMhs_1.wav"
  ac.AddSoundRes = "WhipComboDrMhs_2.wav"
  ac.AddSoundRes = "WhipComboExplHitEnd_1.wav"
  ac.AddSoundRes = "WhipComboExplHitEnd_2.wav"
  ac.AddSoundRes = "WhipComboExplHitEnd_3.wav"
  ac.AddSoundRes = "WhipComboExplHitEnd_4.wav"
  ac.AddSoundRes = "WhipBlockComboAEnd_1.wav"
  ac.AddSoundRes = "WhipBlockComboAEnd_2.wav"
  ac.AddSoundRes = "WhipBlockComboAEnd_3.wav"
  ac.AddSoundRes = "WhipBlockComboAEnd_4.wav"
  ac.AddSoundRes = "WhipBlockComboAInit_1.wav"
  ac.AddSoundRes = "WhipBlockComboAInit_2.wav"
  ac.AddSoundRes = "WhipBlockComboAInit_3.wav"
  ac.AddSoundRes = "WhipBlockComboAInit_4.wav"
  ac.AddSoundRes = "WhipBlockComboDEnd_3.wav"
  ac.AddSoundRes = "WhipBlockComboDEnd_4.wav"
  ac.AddSoundRes = "WhipBlockComboDEnd_1.wav"
  ac.AddSoundRes = "WhipBlockComboDEnd_2.wav"
  ac.AddSoundRes = "WhipBlockComboUppercut_3.wav"
  ac.AddSoundRes = "WhipBlockComboUppercut_4.wav"
  ac.AddSoundRes = "WhipBlockComboUppercutJ_2.wav"
  ac.AddSoundRes = "WhipBlockComboUppercutJ_4.wav"
  ac.AddSoundRes = "WhipBlockSommerJump_2.wav"
  ac.AddSoundRes = "WhipBlockSommerJump_4.wav"
  ac.AddSoundRes = "WhipBlockSommerJump_5.wav"
  ac.AddSoundRes = "WhipBlockSommerJumpD.wav"
  ac.AddSoundRes = "WhipBlockSommerJumpD_1.wav"
  ac.AddSoundRes = "WhipBlockSommerJump_1.wav"
  ac.AddSoundRes = "WhipBlockSommerJump_3.wav"
  ac.AddSoundRes = "FallEnd_1.wav"
  ac.AddSoundRes = "FallEnd_2.wav"
  ac.AddSoundRes = "FallEnd_3.wav"
  ac.AddSoundRes = "FallEnd_4.wav"
  ac.AddSoundRes = "FallEnd_5.wav"
  ac.AddSoundRes = "FallHighEnd_1.wav"
  ac.AddSoundRes = "FallHighEnd_2.wav"
  ac.AddSoundRes = "FallHighEnd_3.wav"
  ac.AddSoundRes = "FallHighEnd_4.wav"
  ac.AddSoundRes = "FallHighEnd_5.wav"
  ac.AddSoundRes = "FallShortEnd_1.wav"
  ac.AddSoundRes = "FallShortEnd_3.wav"
  ac.AddSoundRes = "FallShortEnd_4.wav"
  ac.AddSoundRes = "FallShortEnd_2.wav"
  ac.AddSoundRes = "FallRunEnd_1.wav"
  ac.AddSoundRes = "FallRunEnd_2.wav"
  ac.AddSoundRes = "FallRunEnd_3.wav"
  ac.AddSoundRes = "FallRunEnd_4.wav"
  ac.AddSoundRes = "WhipHitHardBack_1.wav"
  ac.AddSoundRes = "WhipHitHardBack_2.wav"
  ac.AddSoundRes = "WhipHitHardBack_22.wav"
  ac.AddSoundRes = "WhipHitHardBack_3.wav"
  ac.AddSoundRes = "WhipHitHardBack_33.wav"
  ac.AddSoundRes = "WhipHitHardBack_4.wav"
  ac.AddSoundRes = "WhipHitHardBack_44.wav"
  ac.AddSoundRes = "WhipHitHardBack_5.wav"
  ac.AddSoundRes = "WhipHitHardBack_55.wav"
  ac.AddSoundRes = "WhipHitHardBack_6.wav"
  ac.AddSoundRes = "WhipHitHardBack_66.wav"
  ac.AddSoundRes = "WhipHitHardBack_7.wav"
  ac.AddSoundRes = "WhipHitHardBack_8.wav"
  ac.AddSoundRes = "WhipHitHardBack_88.wav"
  ac.AddSoundRes = "WhipHitHardBackFix_2.wav"
  ac.AddSoundRes = "WhipHitHardBackFix_3.wav"
  ac.AddSoundRes = "WhipHitHardBackFix_4.wav"
  ac.AddSoundRes = "WhipHitHardBackFix_5.wav"
  ac.AddSoundRes = "WhipHitHardBackFix_6.wav"
  ac.AddSoundRes = "WhipHitMedBack_1.wav"
  ac.AddSoundRes = "WhipHitMedBack_2.wav"
  ac.AddSoundRes = "WhipHitMedBack_3.wav"
  ac.AddSoundRes = "WhipHitMedBack_4.wav"
  ac.AddSoundRes = "WhipHitMedBack_5.wav"
  ac.AddSoundRes = "WhipHitMedBack_6.wav"
  ac.AddSoundRes = "WhipHitMedBack_7.wav"
  ac.AddSoundRes = "WhipHitSoftBack_1.wav"
  ac.AddSoundRes = "WhipHitSoftBack_2.wav"
  ac.AddSoundRes = "WhipHitSoftBack_3.wav"
  ac.AddSoundRes = "WhipHitSoftBack_4.wav"
  ac.AddSoundRes = "WhipHitSoftBack_5.wav"
  ac.AddSoundRes = "WhipHitSoftBack_6.wav"
  ac.AddSoundRes = "WhipHitSoftBack_7.wav"
  ac.AddSoundRes = "WhipHitSoftBack_8.wav"
  ac.AddSoundRes = "HookLinear45FallInit_1.wav"
  ac.AddSoundRes = "HookLinear45FallInit_2.wav"
  ac.AddSoundRes = "HookLinear45FallInit_3.wav"
  ac.AddSoundRes = "HookLinear45FallInit_4.wav"
  ac.AddSoundRes = "HookLinear45FallInit_5.wav"
  ac.AddSoundRes = "HookLinear45FallInit_6.wav"
  ac.AddSoundRes = "HookLinear45FallInit_7.wav"
  ac.AddSoundRes = "HookLinear45FallInit_8.wav"
  ac.AddSoundRes = "HookRappelBack1.wav"
  ac.AddSoundRes = "HookRappelBack2.wav"
  ac.AddSoundRes = "HookRappelBack3.wav"
  ac.AddSoundRes = "HookRappelBack4.wav"
  ac.AddSoundRes = "HookRappelBack5.wav"
  ac.AddSoundRes = "HookRappelBack6.wav"
  ac.AddSoundRes = "HookRappelBack7.wav"
  ac.AddSoundRes = "HookRappelBack8.wav"
  ac.AddSoundRes = "HookRappelRun1.wav"
  ac.AddSoundRes = "HookRappelRun2.wav"
  ac.AddSoundRes = "HookRappelRun3.wav"
  ac.AddSoundRes = "HookRappelRun4.wav"
  ac.AddSoundRes = "HookRappelRun5.wav"
  ac.AddSoundRes = "HookRappelRun6.wav"
  ac.AddSoundRes = "HookRappelRun7.wav"
  ac.AddSoundRes = "HookRappelRun8.wav"
  ac.AddSoundRes = "HookRappelRun9.wav"
  ac.AddSoundRes = "HookRappelRun10.wav"
  ac.AddSoundRes = "HookRappelRun11.wav"
  ac.AddSoundRes = "HookRappelRun12.wav"
  ac.AddSoundRes = "HookRappelRun13.wav"
  ac.AddSoundRes = "HookRappelRun14.wav"
  ac.AddSoundRes = "KeyPick_1.wav"
  ac.AddSoundRes = "KeyPick_2.wav"
  ac.AddSoundRes = "KeyPick_3.wav"
  ac.AddSoundRes = "KeyPick_4.wav"
  ac.AddSoundRes = "SawWin_1.wav"
  ac.AddSoundRes = "SawWin_2.wav"
  ac.AddSoundRes = "SawWin_3.wav"
  ac.AddSoundRes = "SawWin_4.wav"
  ac.AddSoundRes = "PushGetKeyLeft_1.wav"
  ac.AddSoundRes = "PushGetKeyLeft_2.wav"
  ac.AddSoundRes = "PushGetKeyLeft_6.wav"
  ac.AddSoundRes = "PushGetKeyLeft_7.wav"
  ac.AddSoundRes = "PushGetKeyLeft_8.wav"
  ac.AddSoundRes = "HangClimb_1.wav"
  ac.AddSoundRes = "HangClimb_2.wav"
  ac.AddSoundRes = "HangClimb_3.wav"
  ac.AddSoundRes = "HangClimb_4.wav"
  ac.AddSoundRes = "HangClimb_5.wav"
  ac.AddSoundRes = "HangClimb_6.wav"
  ac.AddSoundRes = "HangLeft_1.wav"
  ac.AddSoundRes = "HangLeft_2.wav"
  ac.AddSoundRes = "HangLeft_3.wav"
  ac.AddSoundRes = "HangLeft_4.wav"
  ac.AddSoundRes = "HangLeft_5.wav"
  ac.AddSoundRes = "HangLeft_6.wav"
  ac.AddSoundRes = "HangLeft_7.wav"
  ac.AddSoundRes = "HangLeft_8.wav"
  ac.AddSoundRes = "HangLeft_9.wav"
  ac.AddSoundRes = "HangLeft_10.wav"
  ac.AddSoundRes = "HangWallDownSwitch0_1.wav"
  ac.AddSoundRes = "HangWallDownSwitch0_2.wav"
  ac.AddSoundRes = "HangWallDownSwitch0_3.wav"
  ac.AddSoundRes = "HangWallDownSwitch0_4.wav"
  ac.AddSoundRes = "HangWallDownSwitch0_5.wav"
  ac.AddSoundRes = "HangLeftSwitch_1.wav"
  ac.AddSoundRes = "HangLeftSwitch_2.wav"
  ac.AddSoundRes = "HangLeftSwitch_3.wav"
  ac.AddSoundRes = "HangLeftSwitch_4.wav"
  ac.AddSoundRes = "HangLeftSwitch_5.wav"
  ac.AddSoundRes = "HangWallDown_2.wav"
  ac.AddSoundRes = "HangWallDown_4.wav"
  ac.AddSoundRes = "HangWallDown_10.wav"
  ac.AddSoundRes = "HangWallFarLeft_2.wav"
  ac.AddSoundRes = "HangWallFarLeft_3.wav"
  ac.AddSoundRes = "HangWallFarLeft_4.wav"
  ac.AddSoundRes = "HangWallFarLeft_5.wav"
  ac.AddSoundRes = "HangWallFarLeft_11.wav"
  ac.AddSoundRes = "HangWallFarLeft_22.wav"
  ac.AddSoundRes = "HangWallFarLeft_33.wav"
  ac.AddSoundRes = "HangWallFarLeft_44.wav"
  ac.AddSoundRes = "HangWallFarLeft_55.wav"
  ac.AddSoundRes = "HangWallShake0_1.wav"
  ac.AddSoundRes = "HangWallShake0_2.wav"
  ac.AddSoundRes = "HangWallShake0_3.wav"
  ac.AddSoundRes = "HangWallShake0_4.wav"
  ac.AddSoundRes = "HangWallShake0_5.wav"
  ac.AddSoundRes = "Caidavacio_1.wav"
  ac.AddSoundRes = "Caidavacio_2.wav"
  ac.AddSoundRes = "Caidavacio_3.wav"
  ac.AddSoundRes = "Caidavacio_4.wav"
  ac.AddSoundRes = "BlackDeath.wav"
  ac.AddSoundRes = "Belmont_Cough_01.wav"
  ac.AddSoundRes = "Belmont_Cough_02.wav"
  ac.AddSoundRes = "Belmont_Cough_03.wav"
  ac.AddSoundRes = "Belmont_Cough_04.wav"
  ac.AddSoundRes = "Belmont_Cough_05.wav"
  ac.AddSoundRes = "Belmont_Cough_06.wav"
  ac.AddSoundRes = "Belmont_Cough_07.wav"
  ac.AddSoundRes = "Belmont_Cough_08.wav"
  ac.AddSoundRes = "Belmont_Cough_09.wav"
  ac.AddSoundRes = "WhipUseRunePanPuzzle.wav"
  Game.Set("PathInPackFile", "")
  BelmontSound.SetSounds(ClassName)
end

BelmontSound.Conversion = {}

function BelmontSound.SetSounds(ClassName)
  local ac, am
  ac = Act.GetClass(ClassName)
  am = ac:GetAct("Balance")
  if am ~= nil then
  end
  am = ac:GetAct("Balance0")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "HangLeftSwitch_4|HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Hand_Belmont2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("Balance1")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "HangWallDown_2|HangWallDown_4|HangWallDown_10", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceAttack")
  if am ~= nil then
    am:ActSoundNoRepeat(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "WhipComboA|WhipComboA_2|WhipComboAA|WhipComboAA_2|WhipComboAAA|WhipComboAAA_2|WhipComboAAAA|WhipComboAAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipWallImpact_WOOD_03|WhipWallImpact_WOOD_02|WhipWallImpact_WOOD_01", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceAttackEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 82, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(67, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceAttackInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 10, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipComboAAAAAA_2|WhipComboAAAAAA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Pasada_Bloqueo11", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "WhipWallImpact_WOOD_03|WhipWallImpact_WOOD_02|WhipWallImpact_WOOD_01", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceDodge")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Magica2|Pasada_Magica1", 0.06, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "WhipBlockSommerJump_5|WhipBlockSommerJump_4||", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceFallEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 6, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceFromHangWall")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 30, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 41, 1, 0.09, 2, "WALL")
    am:ActSound(5, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.07, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.07, 0, 0, 0, 0)
    am:ActSound(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "HangClimb_2|HangClimb_3|HangClimb_4|HangClimb_5", 0.75, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceRun")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 36, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceRun0")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "FallRunEnd_2|FallShortEnd_4||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceRunEndLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceRunEndRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceRunTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4|HookRappelBack5|HookRappelBack6", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceShake")
  if am ~= nil then
    am:ActSoundNoRepeat(59, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceShakeEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 131, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 140, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(126, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(135, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceShakeFall")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceShakeInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipComboDrDrDrDrD_2|WhipComboDrDrDrDrD|WhipComboAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Cross_Stab1|Cross_Stab2|Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Cross_Stab1|Cross_Stab2|Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "IcePick_HangWall_01|IcePick_HangWall_02|IcePick_HangWall_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "IcePick_HangWall_01|IcePick_HangWall_02|IcePick_HangWall_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceToHangWall")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "WALL")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Hand_Belmont3|Hand_Belmont4", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BalanceTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("BloodPuzzle")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 42, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 80, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("BloodPuzzleTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 23, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 44, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 65, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 81, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 100, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(79, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("CrossGrille")
  if am ~= nil then
    SoundUtils.AddStep(am, 35, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 53, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 68, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
  end
  am = ac:GetAct("CrossOneSelf")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 105, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 112, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(109, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("CrossOneSelfKey")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 105, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 112, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(109, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumNoise")
  if am ~= nil then
  end
  am = ac:GetAct("EquilibriumNoiseLeft")
  if am ~= nil then
  end
  am = ac:GetAct("EquilibriumNoiseRight")
  if am ~= nil then
  end
  am = ac:GetAct("EquilibriumRelax")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 51, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 69, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 85, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumShake")
  if am ~= nil then
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(1, "Mov_Gab1", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab4", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab5", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumShakeFall")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Caidavacio_1|Caidavacio_2|Caidavacio_3|Caidavacio_4", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumShakeLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(1, "Mov_Gab1", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab4", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab5", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumShakeLeftFall")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Caidavacio_1|Caidavacio_2|Caidavacio_3|Caidavacio_4", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumShakeRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(1, "Mov_Gab1", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab4", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab5", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumShakeRightFall")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Mov_Gab4", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Caidavacio_1|Caidavacio_2|Caidavacio_3|Caidavacio_4", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("EquilibriumWalk")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 51, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 69, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 85, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("Facial_CrystalPower")
  if am ~= nil then
  end
  am = ac:GetAct("Facial_CrystalPowerEnd")
  if am ~= nil then
  end
  am = ac:GetAct("Facial_CrystalPowerInit")
  if am ~= nil then
  end
  am = ac:GetAct("Facial_Death")
  if am ~= nil then
  end
  am = ac:GetAct("Facial_Relax")
  if am ~= nil then
  end
  am = ac:GetAct("Facial_Relax1")
  if am ~= nil then
  end
  am = ac:GetAct("Facial_Talk")
  if am ~= nil then
  end
  am = ac:GetAct("Fall")
  if am ~= nil then
  end
  am = ac:GetAct("FallEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 35, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 37, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(35, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(35, "Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSound(39, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("FallHigh")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("FallHighEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 2, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Fall_BelmotBig2", 0.5, 0, 0, 0, 0)
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(1, "Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "FallHighEnd_1|FallHighEnd_2|FallHighEnd_3|FallHighEnd_4|FallHighEnd_5|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("FallInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("FallRun")
  if am ~= nil then
  end
  am = ac:GetAct("FallRunEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Fall_BelmotBig2", 0.25, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("FallShort")
  if am ~= nil then
  end
  am = ac:GetAct("FallShortEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("FirstCut")
  if am ~= nil then
  end
  am = ac:GetAct("FromRuneToBack")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Chain_GabrielAA|Chain_GabrielBB", 0, 0, 0, 0, 0)
    am:ActSound(12, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(14, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(14, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 9, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 12, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 14, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 16, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipBlockSommerJumpD|WhipBlockSommerJumpD_1||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("Gear")
  if am ~= nil then
    SoundUtils.AddStep(am, 52, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 103, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Into_Mouline_11|Into_Mouline_22", 0.2, 0, 0, 0, 1)
    am:ActSoundNoRepeat(32, "Into_Mouline_01|Into_Mouline_02", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("GearInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("GearLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 160, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 166, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 186, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(150, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(152, "hit-fall1|hit-fall2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(152, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(164, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("GearWW2")
  if am ~= nil then
  end
  am = ac:GetAct("GearWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 58, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 90, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 111, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Into_Mouline_01|Into_Mouline_02", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Into_Mouline_11|Into_Mouline_22", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("GetAmmo")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.1, 1, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 60, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 67, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Bag_01", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HandCatchedLoop")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Cross_Fly1", 0.4, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Cross_Fly2", 0.4, 0, 0, 0, 0)
    am:ActSound(61, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(64, "Cross_Fly1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipComboDrD|WhipComboDrD_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Punch_sword11|Punch_sword22|Punch_sword33", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HitHeavy_1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "WhipComboDrMhs_1|WhipComboDrMhs_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Punch_sword11|Punch_sword22|Punch_sword33", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "HitHeavy_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "WhipComboDrMhss_1|WhipComboDrMhss_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Punch_sword11|Punch_sword22|Punch_sword33", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "HitHeavy_1", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HandCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 129, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 140, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Cross_Fly2", 0.4, 0, 0, 0, 0)
    am:ActSound(18, "Break_Bone3", 0.6, 0, 0, 0, 0)
    am:ActSound(18, "Break_Bone1", 0.3, 0, 0, 0, 0)
    am:ActSound(44, "Break_Bone2", 0.6, 0, 0, 0, 0)
    am:ActSound(90, "hit-fall1", 0.7, 0, 0, 0, 0)
    am:ActSound(90, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.19, 0, 0, 0, 0)
    am:ActSound(123, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(137, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Punch_sword11|Punch_sword22|Punch_sword33", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HitHeavy_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Hit_bone1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "HitHeavy_1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(43, "WhipHitHardBack_1|WhipHitHardBack_2|WhipHitHardBack_3|WhipHitHardBack_4|WhipHitHardBack_5|WhipHitHardBack_6|WhipHitHardBack_7|WhipHitHardBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "HitThud_4|HitThud_3|HitThud_5", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("HandCatchedWin")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(2, "Cross_Fly1", 0.4, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(40, "Cross_Fly2", 0.4, 0, 0, 0, 0)
    am:ActSound(51, "Pasada_Magica1|Pasada_Magica2", 0.05, 0, 0, 0, 0)
    am:ActSound(51, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(69, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(69, "Fall_BelmotBig2", 0.1, 0, 0, 0, 0)
    am:ActSound(69, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Punch_sword11|Punch_sword22|Punch_sword33", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipComboDD", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HitHeavy_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipComboExplHitEnd_1|WhipComboExplHitEnd_3", 1, 0, 0, 10000000, 0)
    am:ActSoundNoRepeat(40, "Punch_sword11|Punch_sword22|Punch_sword33", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "HitHeavy_1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "HitThud_5", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("HandS1Catched")
  if am ~= nil then
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(40, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HandS2Catched")
  if am ~= nil then
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HandS3Catched")
  if am ~= nil then
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("Hang")
  if am ~= nil then
  end
  am = ac:GetAct("HangClimb")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 30, 3, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 44, 1, 0.2, 3, "WALL")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "HangClimb_6|HangClimb_1|HangClimb_2|HangClimb_3|HangClimb_4|HangClimb_5|||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangCorner270Left")
  if am ~= nil then
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(7, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(24, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(44, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(44, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(45, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7||HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangCorner270Right")
  if am ~= nil then
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(7, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(24, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(28, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(44, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(44, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(45, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangCorner90Left")
  if am ~= nil then
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(6, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(15, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(28, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(37, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(38, "Hand_Belmont4|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangCorner90Right")
  if am ~= nil then
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Hand_Belmont4|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9||||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangFallInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("HangFromEdge")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 12, 3, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangFromEdge0")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 12, 3, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangHighInit")
  if am ~= nil then
    am:ActSound(1, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_5|FallEnd_4|FallEnd_3|FallEnd_2|FallEnd_1", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangInit")
  if am ~= nil then
    am:ActSound(1, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_5|FallEnd_4|FallEnd_3|FallEnd_2|FallEnd_1", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangInitInit")
  if am ~= nil then
    am:ActSound(1, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(1, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(2, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangLeft")
  if am ~= nil then
    am:ActSound(4, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangLeftEnd")
  if am ~= nil then
    am:ActSound(28, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangLeftSwitch")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "WALL")
    am:ActSound(2, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(26, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangLeftSwitch_5|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangLookDown")
  if am ~= nil then
  end
  am = ac:GetAct("HangLookDownEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangLookDownFall")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangLookDownInit")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangRight")
  if am ~= nil then
    am:ActSound(4, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangRightEnd")
  if am ~= nil then
    am:ActSound(28, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangRightSwitch")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "WALL")
    am:ActSound(2, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(26, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangLeftSwitch_5|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangRunInit")
  if am ~= nil then
    am:ActSound(1, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_5|FallEnd_4|FallEnd_3|FallEnd_2|FallEnd_1", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangRunInitInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(6, "Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "FallEnd_5|FallEnd_4|FallEnd_3|FallEnd_2|FallEnd_1", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangShortInit")
  if am ~= nil then
    am:ActSound(1, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallEnd_5|FallEnd_4|FallEnd_3|FallEnd_2|FallEnd_1", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangShortInitInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.07, 0, 0, 0, 0)
    am:ActSound(1, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.05, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_5|FallEnd_4|FallEnd_3|FallEnd_2|FallEnd_1", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangSoftLeft")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.07, 0, 0, 0, 0)
    am:ActSound(3, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Hand_Belmont3|Hand_Belmont4", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangSoftRight")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.07, 0, 0, 0, 0)
    am:ActSound(3, "Gear_Mov3|Gear_Mov4", 0, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
    am:ActSound(14, "Gear_Mov1|Gear_Mov2", 0, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWall")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallAttack")
  if am ~= nil then
    am:ActSoundNoRepeat(29, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "WhipComboA|WhipComboA_2|WhipComboAA|WhipComboAAA|WhipComboAAA_2|WhipComboAAAA|WhipComboAAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Hit_Rune_01|Hit_Rune_02|Hit_Rune_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "HitHeavy_1|HitHeavy_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Hit_Rune_01|Hit_Rune_02|Hit_Rune_03", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallAttackEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(59, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(63, "Catch_Object2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "Hand_Belmont2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallAttackInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Catch_Object1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipComboAAAAAAA_2|WhipComboAAAAAAAA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "HitHeavy_1|HitHeavy_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Hit_Rune_01|Hit_Rune_02|Hit_Rune_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Hit_Rune_01|Hit_Rune_02|Hit_Rune_03", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallClimb")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 30, 3, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 41, 1, 0.1, 2, "WALL")
    am:ActSound(5, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab3|Mov_Gab4", 0.1, 0, 0, 0, 0)
    am:ActSound(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HangClimb_1|HangClimb_2|HangClimb_3|HangClimb_4|HangClimb_5|HangClimb_6||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallCorner270Left")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 3, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 30, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 40, 3, 0.1, 2, "WALL")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(37, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(41, "Hand_Belmont3|Hand_Belmont4", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HangLeft_1|HangLeft_2|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "HangLeft_1|HangLeft_2|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallCorner270Right")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.09, 3, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 40, 3, 0.09, 2, "WALL")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(37, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(41, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HangLeft_1|HangLeft_2|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "HangLeft_1|HangLeft_2|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallCorner90Left")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 24, 3, 0.1, 2, "WALL")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(13, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(26, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangLeft_1|HangLeft_2|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallCorner90Right")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.1, 2, "WALL")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(13, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(26, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangLeft_1|HangLeft_2|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|HangLeft_10|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallDown")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "HangWallDown_10|HangWallDown_2|HangWallDown_4||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallDown0")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallDown_10|HangWallDown_2|HangWallDown_4||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallDownSwitch")
  if am ~= nil then
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(20, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallDownSwitch0")
  if am ~= nil then
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFallInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarDownJump")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(6, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.5, 0, 0, 0, 0)
    am:ActSound(6, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 45, 3, 0.09, 2, "WALL")
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.4, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(48, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HangWallFarLeft_55|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarLeft0")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 45, 3, 0.09, 2, "WALL")
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(11, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(48, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HangWallFarLeft_55|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarLeftJump")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarLeftSwitch")
  if am ~= nil then
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(11, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(28, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(42, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "HangWallFarLeft_55|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 20, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 44, 3, 0.09, 2, "WALL")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.35, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(45, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HangWallFarLeft_55|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarRight0")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 47, 1, 0.09, 2, "WALL")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HangWallFarLeft_55|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarRightJump")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(7, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_44", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFarRightSwitch")
  if am ~= nil then
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(11, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(22, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(28, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(44, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "HangWallFarLeft_5|HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "HangWallFarLeft_55|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFromBalance")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 9, 3, 0.1, 1, "WALL")
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "WALL")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5|||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFromEdge")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 9, 3, 0.1, 1, "WALL")
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "WALL")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallFromEdge0")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 9, 3, 0.1, 1, "WALL")
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "WALL")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallHighInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 28, 1, 0.09, 2, "WALL")
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(2, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HangWallFarLeft_11|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_55", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.1, 2, "WALL")
    am:ActSound(2, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallInitInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.1, 2, "WALL")
    am:ActSound(1, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Hand_Belmont1|Hand_Belmont2", 0.4, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.35, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallInitMid")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.1, 2, "WALL")
    am:ActSound(1, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLeftEnd")
  if am ~= nil then
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 4, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLeftSwitch")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(14, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookBack")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallLookBackEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Hand_Belmont1|Hand_Belmont2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookBackInit")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookDown")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallLookDownEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Hand_Belmont1|Hand_Belmont2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookDownFall")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookDownInit")
  if am ~= nil then
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookFarBackJump")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4|HangWallFarLeft_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookFarLeftJump")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4|HangWallFarLeft_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookFarRightJump")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4|HangWallFarLeft_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookLeft")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallLookLeftEnd")
  if am ~= nil then
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Hand_Belmont1|Hand_Belmont3", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookLeftFarLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 44, 3, 0.1, 2, "WALL")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.35, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(21, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(48, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4|HangWallFarLeft_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_55|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookLeftFarLeft0")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 47, 3, 0.1, 2, "WALL")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.35, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(21, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(45, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallFarLeft_2|HangWallFarLeft_3|HangWallFarLeft_4|HangWallFarLeft_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_55|HangWallFarLeft_11", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookLeftFarLeftSwitch")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(8, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(8, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.35, 0, 0, 0, 0)
    am:ActSound(20, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(26, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(32, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(42, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookLeftInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookRight")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallLookRightEnd")
  if am ~= nil then
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Hand_Belmont1|Hand_Belmont3", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookRightFarRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 24, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 45, 3, 0.1, 2, "WALL")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Magica1|Pasada_Magica2", 0.15, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(48, "Hand_Belmont1|Hand_Belmont3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookRightFarRight0")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 47, 3, 0.1, 2, "WALL")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(8, "Pasada_Magica1|Pasada_Magica2", 0.15, 0, 0, 0, 0)
    am:ActSound(8, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(44, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookRightFarRightSwitch")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(26, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(32, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(44, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallLookRightInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallMiniGameLeft")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallMiniGameLeftFail")
  if am ~= nil then
    am:ActSoundNoRepeat(49, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
    am:ActSoundNoRepeat(49, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(49, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(71, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("HangWallMiniGameLeftInit")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(10, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
    am:ActSoundNoRepeat(10, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(10, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("HangWallMiniGameLeftWin")
  if am ~= nil then
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(49, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(49, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("HangWallMiniGameUp")
  if am ~= nil then
  end
  am = ac:GetAct("HangWallMiniGameUpFail")
  if am ~= nil then
    am:ActSoundNoRepeat(49, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
    am:ActSoundNoRepeat(49, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(49, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("HangWallMiniGameUpInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(7, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(7, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("HangWallMiniGameUpWin")
  if am ~= nil then
    am:ActSoundNoRepeat(49, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
    am:ActSoundNoRepeat(49, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(49, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("HangWallRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HangLeft_1|HangLeft_3|HangLeft_4|HangLeft_5|HangLeft_6|HangLeft_7|HangLeft_8|HangLeft_9|||||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallRightEnd")
  if am ~= nil then
    am:ActSound(23, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 4, 0, 0, 0)
  end
  am = ac:GetAct("HangWallRightSwitch")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(14, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont1|Hand_Belmont3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HangWallDownSwitch0_1|HangWallDownSwitch0_2|HangWallDownSwitch0_3|HangWallDownSwitch0_4|HangWallDownSwitch0_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica1|Pasada_Magica2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 9, 3, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "WALL")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(4, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(6, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShake")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 51, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 59, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShake0")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 51, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 59, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.125, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShake1")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 51, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 59, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.125, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShake2")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 51, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 59, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HangWallShake0_1|HangWallShake0_2|HangWallShake0_3|HangWallShake0_4|HangWallShake0_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.125, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShakeFall")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Caidavacio_1|Caidavacio_2|Caidavacio_3|Caidavacio_4", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShakeFall0")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Caidavacio_1|Caidavacio_2|Caidavacio_3|Caidavacio_4", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Magica1|Pasada_Magica2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShortInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.1, 2, "WALL")
    am:ActSound(3, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(5, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallShortInitInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 6, 3, 0.1, 2, "WALL")
    am:ActSound(2, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallSoftLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.1, 2, "WALL")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(8, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallSoftRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 18, 3, 0.1, 2, "WALL")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(8, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallToBalance")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 14, 3, 0.1, 2, "WALL")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "FallEnd_1|FallEnd_2|FallEnd_36|FallEnd_4|FallEnd_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallToStoneLeg")
  if am ~= nil then
    SoundUtils.AddStep(am, 64, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 76, 2, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 86, 3, 0.1, 2, "WALL")
    am:ActSoundNoRepeat(0, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_4|HookLinear45FallInit_3|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Magica2|Pasada_Magica1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipComboAAAA|WhipComboAA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_CadenaB", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Hand_Belmont1|Hand_Belmont2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "HangWallFarLeft_11|HangWallFarLeft_22|HangWallFarLeft_33|HangWallFarLeft_44|HangWallFarLeft_55", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallUp")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "WALL")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "WALL")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Hand_Belmont1|Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HangWallUp0")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "WALL")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Hand_Belmont1|Hand_Belmont2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Hand_Belmont3|Hand_Belmont4", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "HangLeftSwitch_1|HangLeftSwitch_2|HangLeftSwitch_3|HangLeftSwitch_4|HangLeftSwitch_5||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HitSharktopus")
  if am ~= nil then
  end
  am = ac:GetAct("HitUseRune")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 32, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 44, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45")
  if am ~= nil then
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Magica1|Pasada_Magica2", 0.05, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45End")
  if am ~= nil then
    am:ActSound(62, "Chain_GabrielA|Chain_GabrielB", 0.4, 1, 0, 0, 0)
    am:ActSound(65, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45Fall")
  if am ~= nil then
    am:ActSound(18, "Pasada_Magica1|Pasada_Magica2", 0.18, 0, 0, 0, 0)
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Fat1|Chain_Fat2|Chain_Fat4|Chain_Fat3", 0.3, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45FallInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(6, "Pasada_Magica2", 0, 0, 0, 0, 0)
    am:ActSound(6, "Pasada_vuelo2", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45FallRun")
  if am ~= nil then
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Pasada_Magica1|Pasada_Magica2", 0.18, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45FallRunInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinear45Init")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(6, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFw")
  if am ~= nil then
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(20, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Magica1|Pasada_Magica2", 0.18, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSound(21, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwEnd")
  if am ~= nil then
    am:ActSound(62, "Chain_GabrielA|Chain_GabrielB", 0.4, 1, 0, 0, 0)
    am:ActSound(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwFall")
  if am ~= nil then
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Pasada_Magica1|Pasada_Magica2", 0.15, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwFallInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwFallRun")
  if am ~= nil then
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Pasada_Magica2|Pasada_Magica1", 0.15, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwFallRunInit")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwHangWallInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearFwInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUp")
  if am ~= nil then
    am:ActSound(20, "Pasada_Magica2|Pasada_Magica1", 0.15, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUpEnd")
  if am ~= nil then
    am:ActSound(62, "Chain_GabrielA|Chain_GabrielB", 0.4, 1, 0, 0, 0)
    am:ActSound(62, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(68, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUpFall")
  if am ~= nil then
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Pasada_Magica2|Pasada_Magica1", 0.18, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUpFallInit")
  if am ~= nil then
    am:ActSound(5, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUpFallRun")
  if am ~= nil then
    am:ActSound(18, "Pasada_Magica2|Pasada_Magica1", 0.18, -1, 0, 0, 0)
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, -1, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUpFallRunInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookLinearUpInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(6, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookPendBack")
  if am ~= nil then
    am:ActSound(71, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(73, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(73, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(73, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
    am:ActSound(73, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(94, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, -1, 0, 0, 0)
  end
  am = ac:GetAct("HookPendGo")
  if am ~= nil then
    am:ActSound(142, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(146, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(146, "Chain_SqueakD|Chain_SqueakE", 0.2, 0, 0, 0, 0)
    am:ActSound(146, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(146, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookPendGo45")
  if am ~= nil then
    am:ActSound(20, "Pasada_Magica1|Pasada_Magica2", 0.18, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookPendGoFw")
  if am ~= nil then
    am:ActSound(20, "Pasada_Magica1|Pasada_Magica2", 0.18, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(21, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(21, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookPendGoUp")
  if am ~= nil then
    am:ActSound(23, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(23, "Pasada_Magica1|Pasada_Magica2", 0.18, 0, 0, 0, 0)
    am:ActSound(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(24, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(24, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(24, "Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappel")
  if am ~= nil then
  end
  am = ac:GetAct("HookRappel45FallInit")
  if am ~= nil then
    am:ActSound(2, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappel45FallRunInit")
  if am ~= nil then
    am:ActSound(2, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappel45Init")
  if am ~= nil then
    am:ActSound(1, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "FallShortEnd_2|FallShortEnd_3|FallShortEnd_4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelBack")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 23, 3, 0.09, 2, "WALL")
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(7, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(7, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4|HookRappelBack5|HookRappelBack6|HookRappelBack7|HookRappelBack8|||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelBackEnd")
  if am ~= nil then
    am:ActSound(27, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(28, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(28, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4|HookRappelBack5|HookRappelBack6|HookRappelBack7|HookRappelBack8", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelBackInit")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelFall")
  if am ~= nil then
    am:ActSound(1, "Chain_GabrielA|Chain_GabrielB", 0.4, 0, 0, 0, 0)
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 2, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInit")
  if am ~= nil then
    am:ActSound(1, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInitEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 2, 3, 0.09, 2, "WALL")
    am:ActSound(1, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInitInit")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(2, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInitLeft")
  if am ~= nil then
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInitLeftEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "WALL")
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(12, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "HookRappelBack5|HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInitRight")
  if am ~= nil then
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelInitRightEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "WALL")
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Squeak2|Chain_Squeak1", 0.11, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "HookRappelBack5|HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelJump")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(1, "Chain_GabrielA|Chain_GabrielB", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "FallRunEnd_1|FallRunEnd_2|FallRunEnd_3|FallRunEnd_4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 11, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 38, 3, 0.09, 2, "WALL")
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLeft2")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 26, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 34, 1, 0.09, 2, "WALL")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLeftEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 47, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 50, 3, 0.09, 2, "WALL")
    am:ActSound(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(51, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.2, 0, 0, 0, 0)
    am:ActSound(51, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(51, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4|HookRappelBack5|HookRappelBack6|HookRappelBack7|HookRappelBack8", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLeftFar")
  if am ~= nil then
    SoundUtils.AddStep(am, 48, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 57, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 64, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 72, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 76, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 84, 1, 0.09, 2, "WALL")
    am:ActSound(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(66, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.2, 0, 0, 0, 0)
    am:ActSound(66, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(66, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(74, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(80, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(71, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLeftFarEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 92, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 99, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 104, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 112, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 118, 1, 0.09, 2, "WALL")
    am:ActSound(95, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(102, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(107, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(108, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.2, 0, 0, 0, 0)
    am:ActSound(108, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(108, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(114, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(107, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLeftJump")
  if am ~= nil then
    am:ActSound(20, "Chain_GabrielA|Chain_GabrielB", 0.4, 2, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLookDown")
  if am ~= nil then
  end
  am = ac:GetAct("HookRappelLookDownEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelLookDownInit")
  if am ~= nil then
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 11, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 38, 3, 0.09, 2, "WALL")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.25, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRight2")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 26, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 34, 1, 0.09, 2, "WALL")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRightEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 47, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 50, 3, 0.09, 2, "WALL")
    am:ActSound(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(51, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(51, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRightFar")
  if am ~= nil then
    SoundUtils.AddStep(am, 48, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 57, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 64, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 72, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 76, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 84, 1, 0.09, 2, "WALL")
    am:ActSound(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(68, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(68, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(68, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(74, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(80, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRightFarEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 92, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 99, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 104, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 112, 3, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 118, 1, 0.09, 2, "WALL")
    am:ActSound(95, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(102, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(107, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(108, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(108, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(114, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "HookRappelBack1|HookRappelBack2|HookRappelBack3|HookRappelBack4|HookRappelBack5|HookRappelBack6|HookRappelBack7|HookRappelBack8", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRightJump")
  if am ~= nil then
    am:ActSound(20, "Chain_GabrielA|Chain_GabrielB", 0.4, 2, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRun")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "WALL")
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSound(2, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Fat3|Chain_Fat4", 0.2, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Fat1|Chain_Fat2", 0.3, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14|HookRappelRun1|HookRappelRun2|HookRappelRun3|HookRappelRun4|HookRappelRun5|HookRappelRun6|HookRappelRun7||||||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRunEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "WALL")
    am:ActSound(1, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "WALL")
    SoundUtils.AddStep(am, 13, 3, 0.09, 2, "WALL")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSound(15, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(15, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.11, 2, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HookRappelRun8|HookRappelRun9|HookRappelRun10|HookRappelRun11|HookRappelRun12|HookRappelRun13|HookRappelRun14", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpFallInit")
  if am ~= nil then
    am:ActSound(3, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpFallInitLeft")
  if am ~= nil then
    am:ActSound(2, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpFallInitRight")
  if am ~= nil then
    am:ActSound(2, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpFallRunInit")
  if am ~= nil then
    am:ActSound(2, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpInit")
  if am ~= nil then
    am:ActSound(0, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpInitLeft")
  if am ~= nil then
    am:ActSound(7, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("HookRappelUpInitRight")
  if am ~= nil then
    am:ActSound(5, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("Jump2")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "ala3", 1, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "ala4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("Jump2Run")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "ala4", 1, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "ala3", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("JumpBackInit")
  if am ~= nil then
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("JumpInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 3, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("JumpLeftInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("JumpRightInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("JumpRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("JumpShortInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 3, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyPick")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 37, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "KeyPick_1|KeyPick_2|KeyPick_3|KeyPick_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Catch_Object2|Catch_Object1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyRelax")
  if am ~= nil then
  end
  am = ac:GetAct("KeyRun")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyRunEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyTurn180")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyTurnLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyTurnRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyWalk")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyWalkEndLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyWalkEndRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 6, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyWalkInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 0, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyWalkInitTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 1, 0.09, 3, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KeyWalkTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KickBoom")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 40, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "FallEnd_2|FallEnd_1|FallEnd_3|FallEnd_4", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Catch_Object2", 0.85, 2, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "BoomerangStar", 1, 2, 0, 0, 0)
    am:ActSoundNoRepeat(15, "SawWin_4|SawWin_1|SawWin_2|SawWin_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_Fuego1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("KickGrenade")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 56, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Catch_Object1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "SawWin_4|SawWin_1|SawWin_2|SawWin_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Pasada_Fuego2", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Pasada_Cadena2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PlaceCrystal")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 76, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 87, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(74, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PreButcher")
  if am ~= nil then
    am:ActSoundNoRepeat(41, "Pasada_Magica_Latigo11", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Chain_GabrielAA", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("PullLever")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 34, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 115, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 123, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(123, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushBack")
  if am ~= nil then
    SoundUtils.AddStep(am, 20, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 44, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushBackEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushBackInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushGetKeyLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 68, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "trunk_02", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "PushGetKeyLeft_1|PushGetKeyLeft_2|PushGetKeyLeft_6|PushGetKeyLeft_7|PushGetKeyLeft_8", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushGetKeyRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 43, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "PushGetKeyLeft_1|PushGetKeyLeft_2|PushGetKeyLeft_6|PushGetKeyLeft_7|PushGetKeyLeft_8", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "trunk_02", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRelax")
  if am ~= nil then
  end
  am = ac:GetAct("PushRelaxEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRelaxInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 8, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRoll")
  if am ~= nil then
    SoundUtils.AddStep(am, 42, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 103, 3, 0.1, 1, "FLOOR")
    am:ActSoundNoRepeat(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRollEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 19, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRollGetKeyLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 43, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 68, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "trunk_02", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "PushGetKeyLeft_1|PushGetKeyLeft_2|PushGetKeyLeft_6|PushGetKeyLeft_7|PushGetKeyLeft_8", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRollInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 15, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRollLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 12, 1, 0.2, 2, "FLOOR")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRollSetKeyLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 43, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "trunk_02", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "trunk_01", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushRollWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 42, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 103, 3, 0.1, 1, "FLOOR")
    SoundUtils.AddStep(am, 118, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(115, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushSetKeyLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 43, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 62, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 71, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "trunk_02", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "trunk_01", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(60, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushSetKeyRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 49, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 57, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(33, "trunk_02", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "trunk_01", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Hand_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Hand_Belmont1", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushWalkLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 41, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushWalkLeftEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 63, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(63, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushWalkLeftInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushWalkRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 41, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushWalkRightEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 63, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(63, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("PushWalkRightInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("RagDollDestroy")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "SawWin_1|SawWin_2|SawWin_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Tentacles_02", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("RagDollRelax")
  if am ~= nil then
  end
  am = ac:GetAct("RagDollRelaxInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Tentacles_01", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Tentacles_01", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("ReaperDoorMiniGameBack")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "WhipBlockComboAInit_1|WhipBlockComboAInit_2|WhipBlockComboAInit_3|WhipBlockComboAInit_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("ReaperDoorMiniGameInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HookLinear45FallInit_1|HookLinear45FallInit_2|HookLinear45FallInit_3|HookLinear45FallInit_4|HookLinear45FallInit_5|HookLinear45FallInit_6|HookLinear45FallInit_7|HookLinear45FallInit_8|||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("ReaperDoorMiniGameLose")
  if am ~= nil then
    am:ActSound(0, "Pasada_Bloqueo1|Pasada_Bloqueo2", 0.5, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(0, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(1, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielB", 0.5, 0, 100, 10000000, 0)
  end
  am = ac:GetAct("ReaperDoorMiniGameWin")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Chain_SqueakA", 0.2, -6, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab1", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Fat1", 0.3, -6, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Chain_SqueakB", 0.2, -6, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Chain_Fat2", 0.3, -3, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_Fat3", 0.3, -2, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Chain_Fat3", 0.3, -2, 0, 0, 0)
    am:ActSoundNoRepeat(28, "SawWin_1|SawWin_2|SawWin_3|SawWin_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Chain_GabrielA", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab2|Mov_Gab1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab1", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("Relax")
  if am ~= nil then
  end
  am = ac:GetAct("Relax0")
  if am ~= nil then
  end
  am = ac:GetAct("Relax1")
  if am ~= nil then
  end
  am = ac:GetAct("Run")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 10, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 3, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("RunEndLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 8, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("RunEndRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("RunInitClimb")
  if am ~= nil then
    SoundUtils.AddStep(am, 31, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFall")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.6, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5|||", 0.75, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFallFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "FallRunEnd_1|FallRunEnd_2|FallRunEnd_3|FallRunEnd_4|||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFallHigh")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSound(4, "Rodar_Belmont1|Rodar_Belmont2", 0.35, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "FallHighEnd_1|FallHighEnd_2|FallHighEnd_3|FallHighEnd_4|FallHighEnd_5|||", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFallRun")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(4, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.55, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFallRunFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "FallRunEnd_1|FallRunEnd_2|FallRunEnd_3|FallRunEnd_4|||", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFallShort")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitFallShortFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallRunEnd_1|FallRunEnd_2|FallRunEnd_3|FallRunEnd_4|||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunInitWallClimb")
  if am ~= nil then
    SoundUtils.AddStep(am, 24, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("RunTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("SpearMiniGameInit")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "WhipBlockComboAInit_1|WhipBlockComboAInit_2|WhipBlockComboAInit_3", 1, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("SpearMiniGameRelax")
  if am ~= nil then
  end
  am = ac:GetAct("Sprint")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Pasada_FriaA", 0.22, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint11|step_sprint22", 0.25, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint1", 0.4, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(14, "Pasada_FriaB", 0.22, 0, 0, 0, 0)
    am:ActSound(16, "Pasada_CadenaB|Pasada_CadenaC", 0, 0, 0, 0, 0)
    am:ActSound(16, "step_sprint2", 0.4, 0, 0, 0, 0)
    am:ActSound(16, "step_sprint33|step_sprint44", 0.25, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("SprintEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(5, "step_sprint3|step_sprint4", 0.4, 0, 0, 0, 0)
    am:ActSound(5, "step_sprint11|step_sprint22", 0.25, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 3, 0, 0, 0)
    am:ActSound(24, "ApparitionPowerStep3", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("SprintInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(4, "ApparitionPowerStep", 0, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint4|step_sprint3", 0.4, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint33|step_sprint44", 0.25, 0, 0, 0, 0)
  end
  am = ac:GetAct("StillDie")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("TakeCrystal")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Catch_Object2", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TakeFinger")
  if am ~= nil then
  end
  am = ac:GetAct("TakeFlower")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(26, "Catch_Object2", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TakeFreeGem")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(32, "Catch_Object2", 0.2, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TakeGem")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(30, "Catch_Object2", 0.2, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TakeKey")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Catch_Object2", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TakeWater")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 74, 1, 0.09, 0, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "PowerCatch3", 0.45, 0, 0, 0, 0)
    am:ActSound(66, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TbCatched")
  if am ~= nil then
    am:ActSound(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, -8, 0, 0, 0)
  end
  am = ac:GetAct("TbCatchedInit")
  if am ~= nil then
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(32, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "TbCatchedInit_1|TbCatchedInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Catch_Object1", 0.85, 0, 0, 0, 0)
  end
  am = ac:GetAct("TbCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 94, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 105, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(24, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSound(65, "Fall_BelmotBig2", 0.4, 0, 0, 0, 0)
    am:ActSound(65, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(65, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.19, 0, 0, 0, 0)
    am:ActSound(91, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "TbCatchedLose_1|TbCatchedLose_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("TbCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 37, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(11, "Fall_Belmot2", 0.3, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.19, 0, 0, 0, 0)
    am:ActSound(12, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "TbCatchedWin_1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("Turn180")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TurnLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("TurnRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("UseKey")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 75, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 88, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(85, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("UsePengoSwitch")
  if am ~= nil then
  end
  am = ac:GetAct("UsePengoSwitchEnd")
  if am ~= nil then
  end
  am = ac:GetAct("UsePengoSwitchInit")
  if am ~= nil then
  end
  am = ac:GetAct("UseRune")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 75, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 88, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(85, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("Walk")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WalkEndLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WalkEndRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WalkInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WalkInitTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WalkTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WebDestroy")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "SawWin_1|SawWin_2|SawWin_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Web_Break_01", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Web_Break_02", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WebRelax")
  if am ~= nil then
    am:ActSoundNoRepeat(14, "Web_pull_01|Web_pull_02", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Web_pull_03|Web_pull_04", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Web_pull_05|Web_pull_01", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "Web_pull_02|Web_pull_03", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Web_pull_04|Web_pull_05", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Web_pull_01|Web_pull_02", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "Web_pull_03|Web_pull_04", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(104, "Web_pull_05|Web_pull_01", 0.9, 0, 0, 0, 0)
  end
  am = ac:GetAct("WebRelaxInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatch")
  if am ~= nil then
    am:ActSoundNoRepeat(53, "MetalSqueak_BelmontAa_02", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatch2")
  if am ~= nil then
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipAaCatchInit_2A|WhipAaCatchInit_1A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "HitMetal_BelmontAa_01", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipAaCatchInit_1B|WhipAaCatchInit_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "MetalSqueak_BelmontAa_01", 0.55, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 102, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 107, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 114, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Catch_Object1", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipAaCatchLose_1|WhipAaCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "HitThud_3|HitThud_4|HitThud_5", 0.95, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Rodar_Belmont3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Fall_Belmot1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(99, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 65, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 79, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 94, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "HitThud_3|HitThud_4|HitThud_5", 0.95, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "WhipAaCatchLose2_1|WhipAaCatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Rodar_Belmont3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchShield")
  if am ~= nil then
  end
  am = ac:GetAct("WhipAaCatchShieldInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "AnimArmourWhipAaCatchShieldInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 75, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 81, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 89, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, -6, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, -4, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "WhipAaCatchShieldLose_2|WhipAaCatchShieldLose_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock3|Punch_meleeblock4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "hit-fall1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Rodar_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Rodar_Belmont4", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(79, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(87, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 82, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 84, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.4, -4, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, -4, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, -4, 0, 0, 0)
    am:ActSoundNoRepeat(68, "Chain_GabrielA", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "WhipAaCatchShieldWin_1|WhipAaCatchShieldWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    am:ActSoundNoRepeat(92, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(111, "WhipAaCatchWin_1|WhipAaCatchWin_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Catch_Object2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Catch_Object2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(120, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    SoundUtils.AddStep(am, 208, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 214, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 229, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(180, "WhipAaCatchWin2_2|WhipAaCatchWin2_1", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(181, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(208, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(208, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(213, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(228, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk11Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBk11CatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "AnimArmourWhipAaCatchShieldInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 129, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 132, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(70, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "hit-fall1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk11CatchLose_4|WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk11CatchLose_4|WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock3|Punch_meleeblock4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk12CatchLose_1|WhipBk12CatchLose_2|WhipBk12CatchLose_3|WhipBk12CatchLose_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk12CatchLose_1|WhipBk12CatchLose_2|WhipBk12CatchLose_3|WhipBk12CatchLose_4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Rodar_Belmont3", 0.2, -2, 0, 0, 0)
    am:ActSoundNoRepeat(122, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(126, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(130, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 38, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipBk2CatchWin_1|WhipBk2CatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "BlackKnight_Attack2_3_f", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipBk2CatchWin_1|WhipBk2CatchWin_2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk12Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBk12CatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "AnimArmourWhipAaCatchShieldInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 130, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(70, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "hit-fall1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock3|Punch_meleeblock4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3|WhipBk11CatchLose_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3|WhipBk11CatchLose_4", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(100, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(100, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(100, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Rodar_Belmont3", 0.2, -2, 0, 0, 0)
    am:ActSoundNoRepeat(122, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(126, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(130, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 38, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipBk12CatchLose_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipBk12CatchLose_3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "BlackKnight_Attack2_3_f", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk2Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBk2CatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "AnimArmourWhipAaCatchShieldInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 122, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 130, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(70, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "hit-fall1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock3|Punch_meleeblock4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3|WhipBk11CatchLose_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3|WhipBk11CatchLose_4", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "Rodar_Belmont3", 0.2, -2, 0, 0, 0)
    am:ActSoundNoRepeat(111, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(119, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(127, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 37, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipBk2CatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipBk2CatchWin_2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "BlackKnight_Attack2_3_f", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk3Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 24, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 45, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Pasada_Magica2|Pasada_Magica1", 0.06, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "WhipBk12CatchLose_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "WhipBk12CatchLose_4", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 146, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 153, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(79, "Catch_Object1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(79, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipBk11CatchLose_1|WhipBk11CatchLose_2|WhipBk11CatchLose_3|WhipBk11CatchLose_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "HitThud_3|HitThud_5|HitThud_4", 0.55, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(114, "WhipBk12CatchLose_1|WhipBk12CatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(136, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(145, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(152, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlind")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6", 1, 0, 100, 100000, 0)
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 100, 100000, 0)
  end
  am = ac:GetAct("WhipBlock")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 32, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 34, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 69, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 80, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(36, "Cross_Fly1", 0.5, 0, 0, 0, 0)
    am:ActSound(38, "Golpe_Rojo1", 1, 0, 0, 0, 0)
    am:ActSound(38, "Golpe_Rojo1", 0.7, 0, 0, 0, 0)
    am:ActSound(68, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(77, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3|WhipBlockComboAEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "LightPowerOn1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "LightPowerOn1", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 8, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipBlockComboAInit_1|WhipBlockComboAInit_2|WhipBlockComboAInit_3|WhipBlockComboAInit_4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockComboALoop")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 34, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 64, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(31, "Cross_Fly2", 0.5, 0, 0, 0, 0)
    am:ActSound(33, "Golpe_Rojo2", 1, 0, 0, 0, 0)
    am:ActSound(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "WhipBlockComboDEnd_1|WhipBlockComboDEnd_2|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Golpe_Rojo2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "LightPowerOn1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "LightPowerOn1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipBlockComboAInit_1|WhipBlockComboAInit_2|WhipBlockComboAInit_3|WhipBlockComboAInit_4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockComboDLoop")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBlockComboUppercut")
  if am ~= nil then
    SoundUtils.AddStep(am, 27, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 29, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "WhipBlockComboUppercut_3|WhipBlockComboUppercut_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipBlockComboUppercut_02", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipBlockComboUppercut_02", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockComboUppercutJ")
  if am ~= nil then
    SoundUtils.AddStep(am, 36, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 37, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(9, "WhipBlockComboUppercutJ_2|WhipBlockComboUppercutJ_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "ala3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "ExplosionAirBelmont_02", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(13, "ExplosionAirBelmont_02", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "ala4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockComboUppercutL")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBlockEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 56, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 61, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(54, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockHit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockHitBreak")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "hit-fall1|hit-fall2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockHitSync")
  if am ~= nil then
    am:ActSound(0, "Impact_Belmont_Soft1|Impact_Belmont_Soft2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(1, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.35, 0, 0, 0, 0)
    am:ActSound(1, "Pasada_Magica2|Pasada_Magica1", 0.06, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    SoundUtils.AddStep(am, 21, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 23, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_Magica2|Pasada_Magica1", 0.24, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipBlockSommerJump_2|WhipBlockSommerJump_4|WhipBlockSommerJump_5||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Fall_BelmotBig2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_Bloqueo11", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockSommerJumpD")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 39, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Chain_GabrielAA|Chain_GabrielBB", 0, 0, 0, 0, 0)
    am:ActSound(12, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(14, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(14, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 9, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 12, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 14, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 16, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipBlockSommerJumpD|WhipBlockSommerJumpD_1||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_FuegoA", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockSommerJumpDD")
  if am ~= nil then
    am:ActSound(32, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(33, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(53, "Chain_Cierre1|Chain_Cierre2", 0, 0, 0, 0, 0)
    am:ActSound(55, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 31, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 31, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 33, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 33, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 38, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 38, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "WhipBlockSommerJump_1|WhipBlockSommerJump_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_GabrielB", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBlockSommerJumpDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 49, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 74, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 80, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(45, "Pasada_Magica_Latigo11", 0.6, 0, 0, 0, 0)
    am:ActSound(45, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(46, "Pasada_FriaA", 0.25, 0, 0, 0, 0)
    am:ActSound(46, "Pasada_Final1", 1, 0, 0, 0, 0)
    am:ActSound(55, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(76, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 45, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 45, "Pasada_CadenaC", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 45, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 45, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "WhipBlockComboDEnd_1|WhipBlockComboDEnd_2|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBtCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipBtCatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(26, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipBtCatchInit_1|WhipBtCatchInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "WhipBtCatchInit_1B|WhipBtCatchInit_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(60, "ButcherFoley_03", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 43, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 49, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 53, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 88, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 100, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 108, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "15", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "WhipBtCatchLose_1|WhipBtCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "hit-fall1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Punch_meleeblock1|Punch_meleeblock2|Punch_meleeblock3|Punch_meleeblock4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Rodar_Belmont3", 0.2, -2, 0, 0, 0)
    am:ActSoundNoRepeat(86, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 66, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 195, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 198, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 233, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 297, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 361, 1, 0.2, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipBtCatchWin_1|WhipBtCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_GabrielA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(192, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(195, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(200, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(203, "Pasada_Magica2|Pasada_Magica1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(203, "WhipBtCatchWin_1B|WhipBtCatchWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(217, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(218, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(232, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(234, "WhipBtCatchWin_1C|WhipBtCatchWin_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(253, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(274, "WhipBtCatchWin_1D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(275, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(281, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(296, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(312, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(313, "WhipBtCatchWin_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(345, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(360, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCcHold")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Catch_Object1", 0.6, 0, 0, 0, 0)
    am:ActSound(74, "hit-fall1", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCfCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipCoCatchedWin_2A|WhipCoCatchedWin_2B|WhipCoCatchedWin_2C|WhipCoCatchedWin_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipCfCatchInit_1|WhipCfCatchInit_2|WhipCfCatchInit_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Zombie_HitWood_E", 0.65, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 29, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "WhipCfCatchLose_1|WhipCfCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "hit-fall1", 0.9, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 27, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipCfCatchWin_1|WhipCfCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Pasada_Fuego1|Pasada_Fuego2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "hit-fall2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "HitThud_3|HitThud_2|HitThud_1", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCharge")
  if am ~= nil then
  end
  am = ac:GetAct("WhipChargeEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 60, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(60, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipChargeInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 32, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A", 0.7, 0, 0, 0, 0)
    am:ActSound(9, "Chain_Gabriel1|Chain_Gabriel2", 0.5, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSound(14, "hit-fall2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 27, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.07, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "hit-fall1", 0.15, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 106, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 124, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 144, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(19, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipCoCatchedLose_1|WhipCoCatchedLose_2|WhipCoCatchedLose_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "WhipCoCatchedLose_11|WhipCoCatchedLose_33", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(123, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 27, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 61, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 85, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "WhipCoCatchedLose2_1|WhipCoCatchedLose2_2|WhipCoCatchedLose2_3|WhipCoCatchedLose2_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "HitThud_4|HitThud_3|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Rodar_Belmont1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "WhipCoCatchedLose2_222|WhipCoCatchedLose2_111|WhipCoCatchedLose2_444", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 57, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 71, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 97, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Fall_Belmot2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipCoCatchedWin_2I", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "WhipCoCatchedWin_2A|WhipCoCatchedWin_2B|WhipCoCatchedWin_2C|WhipCoCatchedWin_2D|WhipCoCatchedWin_2F", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Cross_Fly1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipCoCatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 23, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 29, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 106, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 122, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 143, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Fall_Belmot2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipCoCatchedLose_1|WhipCoCatchedLose_2|WhipCoCatchedLose_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "WhipCoCatchedLose_11|WhipCoCatchedLose_33", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(94, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(104, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(120, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 144, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 160, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 183, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "WhipCoCatchedLose2_1|WhipCoCatchedLose2_2|WhipCoCatchedLose2_3|WhipCoCatchedLose2_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "HitThud_4|HitThud_3|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Rodar_Belmont1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "WhipCoCatchedLose2_11|WhipCoCatchedLose2_22|WhipCoCatchedLose2_33", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(136, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(141, "WhipCoCatchedLose2_111|WhipCoCatchedLose2_222|WhipCoCatchedLose2_444", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(151, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(156, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 57, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 71, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 97, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Fall_Belmot2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipCoCatchedWin_1F|WhipCoCatchedWin_1G|WhipCoCatchedWin_1H", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "WhipCoCatchedWin_1|WhipCoCatchedWin_1B|WhipCoCatchedWin_1C|WhipCoCatchedWin_1D|WhipCoCatchedWin_1E", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboA")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(5, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 0, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 5, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipComboA|WhipComboA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAA")
  if am ~= nil then
    am:ActSound(17, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(18, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(35, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 16, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 19, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 21, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 23, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipComboAA|WhipComboAA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 35, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 41, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 69, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 77, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(25, "Pasada_Magica_Latigo11", 0.6, 0, 0, 0, 0)
    am:ActSound(26, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(32, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(39, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(43, "Pasada_FriaA", 0.25, 0, 0, 0, 0)
    am:ActSound(49, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(66, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(76, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 25, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 25, "Pasada_Fria11", 0.4, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 27, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 29, "Pasada_CadenaC", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 32, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 32, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 34, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 36, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 39, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 39, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 41, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 43, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "WhipComboAAA|WhipComboAAA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 17, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(0, "Pasada_Magica_Latigo22", 0.6, 0, 0, 0, 0)
    am:ActSound(1, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 0, "Pasada_Fria22", 0.4, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 1, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 2, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 4, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 7, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 7, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 9, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 11, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipComboAAAA|WhipComboAAAA_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 27, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 38, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 19, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 19, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipComboAAAAA|WhipComboAAAAA_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 35, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(34, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(38, "Pasada_FriaA", 0.25, 0, 0, 0, 0)
    am:ActSound(44, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 34, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 34, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 36, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 38, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "WhipComboAAAAAA|WhipComboAAAAAA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAAAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 88, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(52, "Pasada_Magica_Latigo22", 0.6, 0, 0, 0, 0)
    am:ActSound(53, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(62, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(69, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(73, "Pasada_FriaB", 0.25, 0, 0, 0, 0)
    am:ActSound(79, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(86, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(92, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 52, "Pasada_Fria22", 0.4, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 52, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 54, "", 0, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 55, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 57, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 62, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 62, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 64, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 66, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 69, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 69, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 71, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 73, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "WhipComboAAAAAAA|WhipComboAAAAAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "WhipComboAAAAAAAA", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAAAAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 82, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 108, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(75, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(79, "Pasada_FriaA", 0.25, 0, 0, 0, 0)
    am:ActSound(85, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(106, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 75, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 75, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 77, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 79, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "WhipComboAA|WhipComboAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Pasada_Final1", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAAh")
  if am ~= nil then
  end
  am = ac:GetAct("WhipComboAAAAhEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 63, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(48, "WhipComboDAD_04", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "WhipComboDAD_02", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAAAAhInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipComboA|WhipComboA_2|WhipComboAA|WhipComboAA_2|WhipComboAAA|WhipComboAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipComboDADInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "WhipComboDAD_02", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboADLh")
  if am ~= nil then
  end
  am = ac:GetAct("WhipComboADLhEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 71, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(60, "WhipComboADLhEnd", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(60, "WhipComboADLhEnd", 1, 2, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboADLhInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipComboAAAA|WhipComboAAAA_2|WhipComboAAAAA|WhipComboAAAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "WhipComboADLhInit", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAJ")
  if am ~= nil then
    am:ActSound(23, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(23, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 24, "Pasada_CadenaA", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 24, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 24, "Pasada_CadenaA", 0.7, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 24, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipComboAJ_1|WhipComboAJ_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipComboAJ", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAJJ")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "WhipComboAJJ_1|WhipComboAJJ_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_Belmont1", 0.85, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_Final1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "ala3", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboAhAAlt")
  if am ~= nil then
    am:ActSoundIf("NOMAGIC", 0, "", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboCatchTry")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboD")
  if am ~= nil then
    am:ActSound(4, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 4, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 9, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipComboD||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDA")
  if am ~= nil then
    am:ActSound(12, "WhipComboD||", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 1, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 1, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 4, "Pasada_CadenaB", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 4, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 9, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 10, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 13, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 13, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "WhipComboA_2|WhipComboA||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 55, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 16, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 16, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 21, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 21, "Pasada_CadenaB", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 28, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 29, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 33, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 33, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "WhipComboAAAA||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "WhipComboAAA||WhipComboDDD", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Pasada_Final1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDAD")
  if am ~= nil then
  end
  am = ac:GetAct("WhipComboDADEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 88, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 93, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(77, "WhipComboDAD_04", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "WhipComboDAD_02", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(87, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 25, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "WhipComboDADInit", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(25, "Chain_1|Chain_2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "WhipComboDrDrDrD_2|WhipComboDrDrDrDrDrD|WhipComboDDD", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 40, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(9, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 0, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 1, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 4, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipComboDD|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 8, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 42, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 48, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(10, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(10, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(48, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 10, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 11, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 11, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 12, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipComboDDD||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 47, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 50, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(9, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(26, "Chain_GabrielAA|Chain_GabrielBB", 0, 0, 0, 0, 0)
    am:ActSound(26, "Pasada_Magica_Latigo22", 0, 0, 0, 0, 0)
    am:ActSound(33, "Chain_Cierre1|Chain_Cierre2", 0, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 9, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 10, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 11, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 13, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 26, "Pasada_Fria22", 0, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 26, "Pasada_FuegoB", 0, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 28, "Pasada_Cadena2", 0, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 30, "Pasada_CadenaB", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipComboDDD||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 45, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 52, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(16, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(24, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(49, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 16, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 16, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 18, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 20, "Pasada_CadenaA", 0.125, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipComboDDhD_22|WhipComboDDhD_33|WhipComboDDhD_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDDDDD")
  if am ~= nil then
    am:ActSoundNoRepeat(29, "Pasada_FuegoA|Pasada_FuegoB", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDDDDDEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 52, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 56, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDDDDDInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "WhipComboAAAAAA|WhipComboAAAAAA_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_FuegoA|Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "WhipBlockComboUppercut_01", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDh")
  if am ~= nil then
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 14, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 14, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 21, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 21, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, " Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDhD")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 0, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 17, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 13, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 13, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 15, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 15, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipComboDDhD_2|WhipComboDDhD_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipComboDDhD_22|WhipComboDDhD_33|WhipComboDDhD_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDhEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 41, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDDhInit")
  if am ~= nil then
    am:ActSoundIf("DARK", 2, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDJ")
  if am ~= nil then
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 10, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 10, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 12, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 14, "Pasada_CadenaA", 0.125, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDJJ")
  if am ~= nil then
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 10, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 10, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 12, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 14, "Pasada_CadenaB", 0.125, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "ala3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDhDAlt")
  if am ~= nil then
  end
  am = ac:GetAct("WhipComboDrD")
  if am ~= nil then
    SoundUtils.AddStep(am, 31, 1, 0.09, 0, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 34, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 13, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 13, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 15, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 15, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipComboDrD|WhipComboDrD_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrDrD")
  if am ~= nil then
    SoundUtils.AddStep(am, 30, 1, 0.09, 0, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 52, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 27, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 27, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 32, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 32, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "WhipComboDrDrD|WhipComboDrDrD_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrDrDrD")
  if am ~= nil then
    SoundUtils.AddStep(am, 45, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 60, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 41, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 41, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 47, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 47, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "WhipComboDrDrDrD|WhipComboDrDrDrD_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(43, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrDrDrDrD")
  if am ~= nil then
    SoundUtils.AddStep(am, 80, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 84, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 57, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 57, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 62, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 62, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "WhipComboDrDrDrDrD|WhipComboDrDrDrDrD_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrDrDrDrDrD")
  if am ~= nil then
    SoundUtils.AddStep(am, 66, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 73, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 74, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 94, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 73, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 73, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 77, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 77, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(74, "WhipComboDrDrDrDrDrD|WhipComboDrDrDrDrDrD_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Chain_On_Flor", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "HitThud_3|HitThud_5|HitThud_4", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrMh")
  if am ~= nil then
    am:ActSoundIf("DARK", 55, "Chain_GabrielAA", 0.4, -4, 0, 0, 1)
    am:ActSoundIf("DARK", 55, "Pasada_FuegoA", 0.7, -2, 0, 0, 1)
    am:ActSoundIf("DARK", 90, "Pasada_FuegoB", 0.7, -4, 0, 0, 1)
    am:ActSoundIf("DARK", 90, "Chain_GabrielBB", 0.4, -4, 0, 0, 1)
    am:ActSoundIf("DARK", 122, "Chain_GabrielAA", 0.4, -4, 0, 0, 1)
    am:ActSoundIf("DARK", 122, "Pasada_FuegoA", 0.7, -4, 0, 0, 1)
    am:ActSoundIf("DARK", 153, "Chain_GabrielBB", 0.4, -4, 0, 0, 1)
    am:ActSoundIf("DARK", 153, "Pasada_FuegoB", 0.7, -4, 0, 0, 1)
    am:ActSoundNoRepeat(57, "Pasada_Cadena2", 0.35, -4, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Pasada_CadenaB", 0.35, -4, 0, 0, 1)
    am:ActSoundNoRepeat(92, "Pasada_CadenaA", 0.35, -4, 0, 0, 1)
    am:ActSoundNoRepeat(92, "Pasada_Cadena1", 0.35, -4, 0, 0, 1)
    am:ActSoundNoRepeat(124, "Pasada_Cadena2", 0.35, -4, 0, 0, 1)
    am:ActSoundNoRepeat(124, "Pasada_CadenaB", 0.35, -4, 0, 0, 1)
    am:ActSoundNoRepeat(155, "Pasada_Cadena1", 0.35, -4, 0, 0, 1)
    am:ActSoundNoRepeat(155, "Pasada_CadenaA", 0.35, -4, 0, 0, 1)
  end
  am = ac:GetAct("WhipComboDrMhEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 192, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(180, "WhipComboDrMhInit", 1, -8, 0, 0, 0)
    am:ActSoundNoRepeat(180, "WhipComboDrMhInit", 0.7, -8, 0, 0, 0)
    am:ActSoundNoRepeat(190, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrMhInit")
  if am ~= nil then
    am:ActSoundIf("DARK", 22, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 22, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipComboDrMhInit", 1, -8, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipComboDrMhInit", 0.7, -8, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Blast_Power2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipComboDrMhs_2|WhipComboDrMhs_1||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 6, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Blast_Power2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipComboDrMhss_1|WhipComboDrMhss_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_CadenaB", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Blast_Power2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipComboDrMhsss_1|WhipComboDrMhsss_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboExpl")
  if am ~= nil then
  end
  am = ac:GetAct("WhipComboExplEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 79, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(74, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboExplHitEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 131, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(73, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "WhipComboExplHitEnd_1|WhipComboExplHitEnd_2|WhipComboExplHitEnd_3|WhipComboExplHitEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Golpe_Rojo2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Golpe_Rojo1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(123, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboExplInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipComboExplHitEnd_1|WhipComboExplHitEnd_2|WhipComboExplHitEnd_3|WhipComboExplHitEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "step_sprint2|step_sprint1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipWallImpact_SNOW_01|WhipWallImpact_SNOW_02|WhipWallImpact_SNOW_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipWallImpact_GROUND_03|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_01", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "step_sprint44|step_sprint33", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboLMh")
  if am ~= nil then
  end
  am = ac:GetAct("WhipComboLMhEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(30, "WhipComboDAD_04", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "WhipComboDAD_02", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipComboLMhInit")
  if am ~= nil then
    am:ActSoundNoRepeat(15, "WhipComboDrMhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipComboDADInit", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCrossOneSelf")
  if am ~= nil then
    SoundUtils.AddStep(am, 17, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 76, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCrossOneSelfKey")
  if am ~= nil then
  end
  am = ac:GetAct("WhipCrystalPower")
  if am ~= nil then
  end
  am = ac:GetAct("WhipCrystalPowerEnd")
  if am ~= nil then
    am:ActSound(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(100, "PowerCrystalEnd", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipCrystalPowerInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Catch_Object2", 0.4, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipComboExplHitEnd_1|WhipComboExplHitEnd_2|WhipComboExplHitEnd_3|WhipComboExplHitEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "PowerCrystal22", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2Catch")
  if am ~= nil then
    am:ActSoundNoRepeat(78, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(85, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "WhipDL2CatchWin_1|WhipDL2CatchWin_11|WhipDL2CatchWin_111|WhipDL2CatchWin_1111|WhipDL2CatchWin_11111", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Punch_melee1|Punch_melee2|Punch_melee3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "WhipDL2CatchWin_22|WhipDL2CatchWin_222|WhipDL2CatchWin_2222|WhipDL2CatchWin_22222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(111, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Punch_melee1|Punch_melee2|Punch_melee3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(115, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 23, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 30, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(21, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Catch_Object2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "WhipDL2CatchWin_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Punch_melee1|Punch_melee2|Punch_melee3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Cross_Stab3|Cross_Stab4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 99, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 106, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 110, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipDL2CatchLose_3|WhipDL2CatchLose_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(74, "hit-fall2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "WhipDL2CatchLose_33|WhipDL2CatchLose_44", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "HitThud_3|HitThud_4|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 130, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 152, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 197, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 223, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 271, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 297, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(147, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(127, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(134, "WhipDL2CatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(144, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(145, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(147, "Punch_melee1|Punch_melee2|Punch_melee3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(160, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(174, "WhipDL2CatchWin_11|WhipDL2CatchWin_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(174, "Cross_Fly1|Cross_Fly2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(174, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(177, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(177, "Punch_melee1|Punch_melee2|Punch_melee3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(214, "WhipDL2CatchWin_111|WhipDL2CatchWin_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(215, "Cross_Fly1|Cross_Fly2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(217, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(217, "Punch_melee1|Punch_melee2|Punch_melee3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(230, "Cross_Fly1|Cross_Fly2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(233, "WhipDL2CatchWin_1111|WhipDL2CatchWin_2222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(233, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(233, "Cross_Stab1|Cross_Stab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(255, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(271, "WhipDL2CatchWin_11111|WhipDL2CatchWin_22222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(272, "Cross_Fly1|Cross_Fly2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(272, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(273, "step_sprint33", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(273, "WhipWallImpact_GROUND_02", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(293, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(304, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2Catched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipDL2CatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 51, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 62, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 85, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(17, "WhipDL2CatchedInit_1|WhipDL2CatchedInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Punch_melee3|Punch_melee2|Punch_melee1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Hit_Normal1|Hit_Normal2|Hit_Normal3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "HitThud_3|HitThud_4|HitThud_5", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "WhipDL2CatchedInit_11|WhipDL2CatchedInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Catch_Object2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Hit_Normal1|Hit_Normal2|Hit_Normal3", 0, 1, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Punch_melee3|Punch_melee2|Punch_melee1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Punch_sword33", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 261, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 279, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(155, "WhipDL2CatchLose_1|WhipDL2CatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(155, "hit-fall1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(155, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(169, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(204, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(227, "WhipDL2CatchLose_11|WhipDL2CatchLose_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(229, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(229, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(230, "Rodar_Belmont3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(250, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(259, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(276, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 204, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 212, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(155, "WhipDL2CatchedInit_1|WhipDL2CatchWin_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(155, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(155, "hit-fall1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(175, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "WhipDL2CatchedWin_1|WhipDL2CatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(197, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(202, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(210, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDL2FallDown")
  if am ~= nil then
  end
  am = ac:GetAct("WhipDarkDodgeFront")
  if am ~= nil then
    am:ActSound(0, "Blast_Power2", 1, 0, 0, 0, 0)
    am:ActSound(5, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipComboDrMhs_2|WhipComboDrMhs_1||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDeathLava")
  if am ~= nil then
  end
  am = ac:GetAct("WhipDl2Catched2")
  if am ~= nil then
  end
  am = ac:GetAct("WhipDl2Catched2Init")
  if am ~= nil then
    SoundUtils.AddStep(am, 70, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(60, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipComboADLhInit", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    SoundUtils.AddStep(am, 62, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 68, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "WhipComboADLhEnd", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipDl2Catched2Lose_1|WhipDl2Catched2Lose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "HitThud_3|HitThud_4|HitThud_5", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Rodar_Belmont1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Rodar_Belmont2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDl2Catched2Win")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 33, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeBack")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.4, 0, 0, 0, 0)
    am:ActSound(0, "Pasada_Magica2|Pasada_Magica1", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Rodar_Belmont1|Rodar_Belmont2", 0.125, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeBackRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 19, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeBackToRelax")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 29, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeComboA")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 3, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_GabrielA", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeComboD")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 3, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_GabrielB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeFront")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Pasada_Magica2|Pasada_Magica1", 0.1, 0, 0, 0, 0)
    am:ActSound(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.4, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(4, "Rodar_Belmont3|Rodar_Belmont4", 0.125, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeFrontRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.4, 0, 0, 0, 0)
    am:ActSound(0, "Pasada_Magica2|Pasada_Magica1", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Rodar_Belmont1|Rodar_Belmont2", 0.125, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeLeftRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 17, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeLeftToRelax")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Pasada_Magica2|Pasada_Magica1", 0.1, 0, 0, 0, 0)
    am:ActSound(0, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.4, 0, 0, 0, 0)
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Rodar_Belmont3|Rodar_Belmont4", 0.125, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeRightRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 17, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipDodgeRightToRelax")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 25, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEggThrow")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEggThrowFail")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEva1Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 53, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Catch_Object2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipEva1CatchInit_1|WhipEva1CatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Cross_Fly1|Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "WhipEva1CatchInit_11|WhipEva1CatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "WhipEva1CatchInit_111|WhipEva1CatchInit_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 200, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 204, 2, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 211, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 214, 3, 0, 0, "FLOOR-NOFX")
    am:ActSoundNoRepeat(162, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(162, "Catch_Object1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "WhipEva1CatchLose_1|WhipEva1CatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "HitThud_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(187, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(187, "Fall_Belmot2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(197, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(209, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEva1CatchLose0")
  if am ~= nil then
    SoundUtils.AddStep(am, 87, 1, 0.2, 2, "FLOOR")
    SoundUtils.AddStep(am, 97, 3, 0.25, 2, "FLOOR")
    am:ActSoundNoRepeat(58, "WhipHitHardBack_1|WhipHitHardBack_2|WhipHitHardBack_3|WhipHitHardBack_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "Fall_Belmot3|Fall_Belmot1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "HitThud_3|HitThud_4|HitThud_5", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(58, "Mov_Gab2|Mov_Gab1|Mov_Gab3", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(61, "Rodar_Belmont1|Rodar_Belmont2", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab2|Mov_Gab1|Mov_Gab3", 0.25, 0, 0, 3000, 0)
  end
  am = ac:GetAct("WhipEva1CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 180, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 209, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(162, "WhipEva1CatchWin_1|WhipEva1CatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(180, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(205, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEva2Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 19, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 35, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 38, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 51, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 54, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 60, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 61, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 72, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 90, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 92, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Cross_Fly1|Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipEva2CatchInit_1|WhipEva2CatchInit_11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Fall_Belmot2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Cross_Fly1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Punch_melee1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "WhipEva2CatchInit_2|WhipEva2CatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Fall_Belmot3", 0.25, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 310, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 318, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 325, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(166, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(166, "WhipEva2CatchLose_1|WhipEva2CatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(202, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(275, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(288, "Fall_Belmot2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(289, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(289, "WhipEva2CatchLose_11|WhipEva2CatchLose_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(290, "Rodar_Belmont1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(305, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(315, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEva2CatchLose0")
  if am ~= nil then
    SoundUtils.AddStep(am, 69, 1, 0.25, 2, "FLOOR")
    SoundUtils.AddStep(am, 77, 3, 0.25, 2, "FLOOR")
    am:ActSoundNoRepeat(19, "WhipComboA_2|WhipComboA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Pasada_Cadena2", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(23, "Pasada_CadenaB", 0.45, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(28, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "WhipHitHardBack_5|WhipHitHardBack_6", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "HitThud_3|HitThud_4|HitThud_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab2|Mov_Gab3", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Rodar_Belmont1|Rodar_Belmont2|Rodar_Belmont3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab2|Mov_Gab3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab2|Mov_Gab3", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "Mov_Gab1|Mov_Gab2|Mov_Gab3", 0.25, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEva2CatchLose1")
  if am ~= nil then
    SoundUtils.AddStep(am, 98, 1, 0.2, 2, "FLOOR")
    SoundUtils.AddStep(am, 106, 3, 0.2, 1, "FLOOR")
    am:ActSoundNoRepeat(61, "WhipHitHardBack_3|WhipHitHardBack_4|WhipHitHardBack_2", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(61, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(71, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4", 0.45, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(71, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Rodar_Belmont1|Rodar_Belmont2|Rodar_Belmont3|Rodar_Belmont4", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(88, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4", 0.45, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(96, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4", 0.25, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(104, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4", 0.25, 0, 0, 3000, 0)
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 161, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 180, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 195, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 207, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 208, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 225, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 238, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 260, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 275, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 322, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 335, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 371, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 381, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(156, "WhipEva2CatchWin_1|WhipEva2CatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(157, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(177, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(192, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(202, "WhipEva2CatchWin_11|WhipEva2CatchWin_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(204, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(221, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(233, "WhipEva2CatchWin_111|WhipEva2CatchWin_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(234, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(256, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(271, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(275, "WhipEva2CatchWin_1111|WhipEva2CatchWin_2222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(318, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(323, "WhipEva2CatchWin_11111|WhipEva2CatchWin_22222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(332, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(367, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(377, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvaCatched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEvaCatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Catch_Object2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 210, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 218, 3, 0, 0, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 227, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 231, 2, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(110, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Catch_Object1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "WhipEvaCatchedLose_1|WhipEvaCatchedLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "HitThud_5", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "Fall_Belmot3", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "WhipEvaCatchedLose_11|WhipEvaCatchedLose_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(204, "WhipEvaCatchedLose_111|WhipEvaCatchedLose_222", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(207, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(225, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 112, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 129, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 135, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 150, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 177, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 179, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 197, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 202, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(110, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(119, "WhipEvaCatchedWin_1|WhipEvaCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(126, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(133, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(148, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(152, "WhipEvaCatchedWin_11|WhipEvaCatchedWin_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(162, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(175, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(195, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 17, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipEvbCatchInit_1|WhipEvbCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Cross_Fly1|Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "WhipEvbCatchInit_11|WhipEvbCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipEvbCatchInit_111|WhipEvbCatchInit_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Cross_Fly1|Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Catch_Object2", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 19, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 32, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 59, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 89, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(14, "WhipEvbCatchLose_1|WhipEvbCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "WhipEvbCatchLose_11|WhipEvbCatchLose_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Fall_Belmot3", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "HitThud_5", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Rodar_Belmont2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "WhipEvbCatchLose_222", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(87, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    SoundUtils.AddStep(am, 107, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 123, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 134, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(36, "WhipEvbCatchLose0_|WhipEvbCatchLose0_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Rodar_Belmont2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Rodar_Belmont1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "WhipEvbCatchLose00|WhipEvbCatchLose0_22", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(121, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(132, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 189, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 201, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 473, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "WhipEvbCatchWin_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "WhipEvbCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(117, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(117, "WhipEvbCatchWin_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(156, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(156, "WhipEvbCatchWin_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(441, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(466, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipEvbCatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Catch_Object2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipEvbCatchedInit_1|WhipEvbCatchedInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 214, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 221, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 225, 2, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 232, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(108, "WhipEvbCatchedLose_1|WhipEvbCatchedLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Catch_Object1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(175, "WhipEvbCatchedLose_11|WhipEvbCatchedLose_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "HitThud_5", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(176, "Fall_Belmot3", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Fall_Belmot2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(209, "WhipEvbCatchedLose_111|WhipEvbCatchedLose_222", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(209, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(223, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 112, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 129, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 135, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 150, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 177, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 179, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 197, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 202, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(104, "WhipEvbCatchedWin_1|WhipEvbCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "WhipEvbCatchedWin_11|WhipEvbCatchedWin_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(126, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(133, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(148, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(162, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(163, "WhipEvbCatchedWin_111|WhipEvbCatchedWin_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(175, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(195, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFall")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 48, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 50, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(27, "WhipBlockComboUppercut_01", 1, 0, 0, 0, 0)
    am:ActSound(27, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3|WhipBlockComboAEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipFallBlockComboAEnd", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipFallBlockComboAEnd", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipBlockComboUppercut_01", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallBlockComboAInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "WhipBlockComboAInit_1|WhipBlockComboAInit_2|WhipBlockComboAInit_3|WhipBlockComboAInit_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 81, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(38, "Blast_Power1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3|WhipBlockComboAEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "WhipFallBlockComboDEnd", 0.5, 3, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Golpe_Rojo2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Golpe_Rojo1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(79, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallBlockComboDInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "WhipBlockComboAInit_1|WhipBlockComboAInit_2|WhipBlockComboAInit_3|WhipBlockComboAInit_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboA")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(5, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 0, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 5, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipComboAAAAAA|WhipComboAAA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboAA")
  if am ~= nil then
    am:ActSound(17, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(18, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(35, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 16, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 19, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 21, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 23, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipComboDrD|WhipComboAAAAAA_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboAh")
  if am ~= nil then
    SoundUtils.AddStep(am, 37, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 39, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 62, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 63, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(17, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSound(20, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(29, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSound(37, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(41, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(57, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 17, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 19, "Pasada_Fria11", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 20, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 22, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 25, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 27, "Pasada_Fria22", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 29, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 31, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 31, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 33, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 33, "Pasada_Fria11", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 35, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipBlockComboDEnd_1|WhipBlockComboDEnd_2|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboD")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 0, 0, 0, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 23, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 25, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 4, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 9, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipComboDrD|WhipComboDDhD_1||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "HitThud_3|HitThud_5|HitThud_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 2, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_CadenaB", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipComboDrMhs_2|WhipComboDrDrDrDrD_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "HitThud_3|HitThud_5|HitThud_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 57, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 29, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 29, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 32, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 32, "Pasada_CadenaA", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "WhipBlockComboUppercutJ_4|WhipBlockComboUppercutJ_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSoundIf("NOMAGIC", 0, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 0, "Pasada_Fria11", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 0, "", 0, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 3, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria11", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 7, "Pasada_Fria22", 1, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 7, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipBlockComboDEnd_4|WhipBlockComboDEnd_2|WhipComboDrDrDrDrDrD_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipFallComboDDDD_02", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipWallImpact_STONE_03", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipWallImpact_STONE_01", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipWallImpact_STONE_02", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipWallImpact_STONE_03", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipWallImpact_STONE_01", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Pasada_Cadena2", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipWallImpact_STONE_02", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipWallImpact_STONE_03", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipWallImpact_STONE_02", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Pasada_Cadena1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipWallImpact_STONE_01", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Pasada_Cadena2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipWallImpact_STONE_03", 0.65, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboDh")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallComboDhD")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "WhipComboExplHitEnd_2|WhipComboExplHitEnd_1|WhipComboExplHitEnd_3|WhipComboExplHitEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipFallBlockComboAEnd", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipBlockComboUppercut_01", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboDhEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 50, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 53, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(42, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(42, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(46, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(50, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboDhInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(12, "Pasada_Magica_Latigo11", 1, 3, 0, 0, 0)
    am:ActSound(16, "Pasada_Magica_Latigo22", 0.9, 0, 0, 0, 0)
    am:ActSound(16, "Chain_On_Flor2", 1, 0, 0, 0, 0)
    am:ActSound(17, "Chain_On_Flor\t", 1, 0, 0, 0, 0)
    am:ActSound(19, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 9, "Pasada_CadenaC", 0.5, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 11, "Pasada_Fria22", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 11, "Pasada_FuegoB", 1, 3, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 12, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 12, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 14, "Pasada_FuegoA", 1, 3, 0, 0, 0)
    am:ActSoundIf("LIGHT", 14, "Pasada_Fria11", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 16, "Hit_Fire1|Hit_Fire2|Hit_Fire3", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 16, "Hit_Magic2|Hit_Magic1|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 16, "Pasada_CadenaB", 0.5, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 16, "Pasada_Cadena3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipBlockComboAEnd_4|WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3|WhipBlockComboDEnd_2|WhipBlockComboDEnd_1|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_On_Flor2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboGripBig")
  if am ~= nil then
    SoundUtils.AddStep(am, 37, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 42, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 3, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipComboAAAA_2|WhipComboAAA_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Punch_melee1|Punch_melee2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "HitThud_3|HitThud_5|HitThud_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboGripSmall")
  if am ~= nil then
    am:ActSoundIf("DARK", 9, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 9, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 9, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 9, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 23, "Pasada_Fria22", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 23, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipBlockSommerJump_5|WhipBlockSommerJump_4|WhipBlockSommerJump_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Pasada_Cadena2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboGripSmallDown")
  if am ~= nil then
    SoundUtils.AddStep(am, 32, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 34, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipBlockSommerJumpD|WhipBlockSommerJumpD_1|WhipComboAAAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Pasada_Cadena1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "HitThud_3|HitThud_5|HitThud_4", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboKEnd")
  if am ~= nil then
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Cross_Fly1|Cross_Fly2", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboKInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboStomp")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 2, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "HitThud_3|HitThud_5|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipFallBlockComboAEnd", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "ExplosionAirBelmont_02", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallComboV")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipComboDrMhss_1|WhipComboDrMhsss_2|WhipComboAAAAAA_2|WhipComboDrMhs_2||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Cross_Fly2|Cross_Fly1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallDeath")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallEggThrow")
  if am ~= nil then
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 80, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(37, "WhipBlockComboDEnd_1|WhipBlockComboDEnd_2|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4|WhipBlockComboAEnd_4|WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "HitThud_3|HitThud_4|HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 36, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 38, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(36, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSound(37, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallHigh")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallHighEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 3, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "FallHighEnd_1|FallHighEnd_2|FallHighEnd_3|FallHighEnd_4|FallHighEnd_5|||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallHit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallHitEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 36, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 41, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "HitThud_4|HitThud_3|HitThud_5", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallHitHard")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallHitHardEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 42, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 65, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(8, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.75, 0, 0, 0, 0)
    am:ActSound(12, "Rodar_Belmont1|Rodar_Belmont2", 0.13, 0, 0, 0, 0)
    am:ActSound(15, "Rodar_Belmont3|Rodar_Belmont4", 0.13, 0, 0, 0, 0)
    am:ActSound(24, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(54, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(62, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "HitThud_4|HitThud_3|HitThud_5", 0.75, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallInit")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallRun")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallRunComboA")
  if am ~= nil then
    am:ActSound(2, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(5, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 2, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 3, "Pasada_Fria11", 0.45, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 6, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 8, "Pasada_CadenaC", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipComboDrMhss_1|WhipComboDrMhss_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallRunComboD")
  if am ~= nil then
    am:ActSound(4, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 4, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 9, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipComboDrMhs_2|WhipComboDrDrD||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallRunEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "HitThud_4|HitThud_3|HitThud_5", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "FallHighEnd_1|FallHighEnd_2|FallHighEnd_3|FallHighEnd_4|FallHighEnd_5|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFallShort")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFallShortEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 0, 0, 0, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4|FallEnd_5||||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFhCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipFhCatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Catch_Object2", 0.35, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    SoundUtils.AddStep(am, 21, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "WhipBlockComboAEnd_1|WhipComboDrDrD", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(9, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_Bloqueo11", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Pasada_Magica_Latigo22", 0.4, 2, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Chain_GabrielAA|Chain_GabrielBB", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipBlockComboDEnd_3|WhipBlockComboDEnd_2|WhipBlockComboDEnd_4", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(70, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(71, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(71, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFhCatchLose")
  if am ~= nil then
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFhCatchLoseEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipBlockComboAEnd_1|WhipComboAJJ_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Punch_meleeblock1|Punch_meleeblock2", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipFhCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 71, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 82, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipComboAAA_2|WhipComboAAAA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "WhipBlockComboDEnd_1|WhipComboDrMhss_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGbCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipGbCatchBomb")
  if am ~= nil then
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipGbCatchedWin_1|WhipGbCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "WhipGbCatchedWin_3|WhipGbCatchedWin_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Pasada_Magica_Latigo11", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 97, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 103, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(90, "Punch_melee1|Punch_melee2|Punch_melee3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "WhipGBCatchedLose_1|WhipGBCatchedLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "WhipGbCatchedWin_8|WhipGbCatchedWin_5|WhipGbCatchedWin_6|WhipGbCatchedWin_7|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Catch_Object1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Catch_Object2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipGbCatchedWin_10|WhipGbCatchedWin_11|WhipGbCatchedWin_12|WhipGbCatchedWin_9|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipGbCatchedWin_5|WhipGbCatchedWin_6|WhipGbCatchedWin_7|WhipGbCatchedWin_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Cross_Fly1|Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Cross_Fly1|Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipGbCatchedWin_9|WhipGbCatchedWin_10|WhipGbCatchedWin_11|WhipGbCatchedWin_12", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipGdCatch2")
  if am ~= nil then
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 128, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 150, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 184, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 192, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipGdCatchInit_1|WhipGdCatchInit_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Fall_Belmot2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(74, "WhipGdCatchInit_11|WhipGdCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Fall_Belmot1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "HitThud_3|HitThud_4|HitThud_5", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Rodar_Belmont2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Rodar_Belmont3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(124, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(147, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(167, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(170, "WhipGdCatchInit_111|WhipGdCatchInit_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(171, "Cross_Fly1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(174, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(184, "Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(184, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(190, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    am:ActSoundNoRepeat(52, "WhipGdCatchLose_1|WhipGdCatchLose_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    am:ActSoundNoRepeat(116, "WhipGdCatchLose2_1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    SoundUtils.AddStep(am, 298, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 320, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(112, "WhipGdCatchLose2_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(222, "WhipGdCatchInit_2|WhipGdCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(224, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(224, "HitThud_4|HitThud_5|HitThud_3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(224, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(236, "Fall_Belmot1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(236, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(277, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(295, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(317, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 69, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 116, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 134, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 161, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 220, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(58, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "WhipGdCatchWin_1|WhipGdCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(100, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(129, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(134, "WhipGdCatchWin_11|WhipGdCatchWin_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(157, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(203, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(205, "WhipGdCatchWin_111|WhipGdCatchWin_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(217, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    SoundUtils.AddStep(am, 231, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 236, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 337, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 338, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 395, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 404, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 419, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 436, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 479, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 491, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(220, "WhipGdCatchWin2_1|WhipGdCatchWin2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(221, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(251, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(321, "WhipGdCatchWin2_11|WhipGdCatchWin2_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(337, "Fall_Belmot2", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(337, "HitThud_4|HitThud_3|HitThud_5", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(366, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(390, "Mov_Gab6|Mov_Gab4|Mov_Gab", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(400, "WhipGdCatchWin2_111|WhipGdCatchWin2_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(400, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(414, "Mov_Gab6|Mov_Gab4|Mov_Gab", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(432, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(474, "Mov_Gab6|Mov_Gab4|Mov_Gab", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(487, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    SoundUtils.AddStep(am, 232, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 236, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 338, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 342, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 393, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 402, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 419, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 436, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 479, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 488, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 537, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 560, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 678, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 703, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 725, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 746, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundIf("NOMAGIC", 420, "", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(221, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(232, "WhipGdCatchWin2_1|WhipGdCatchWin2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(295, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(319, "WhipGdCatchWin2_11|WhipGdCatchWin2_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(330, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(338, "Fall_Belmot2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(384, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(392, "WhipGdCatchWin2_111|WhipGdCatchWin2_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(411, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(430, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(471, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(519, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(527, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(551, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(553, "WhipGdCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(614, "WhipGdCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(620, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(640, "HitThud_3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(640, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(640, "Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(671, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(694, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(717, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(739, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGetAmmo")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.1, 1, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 60, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 67, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Bag_01", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGhCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "WhipGhCatchInit_1|WhipGhCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipGhCatchInit_11|WhipGhCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Catch_Object1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Catch_Object2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipGhCatchInit_1|WhipGhCatchInit_11|WhipGhCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 113, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 119, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(103, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "WhipGhCatchLose2_1|WhipGhCatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(111, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(117, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 27, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 82, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 88, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "WhipGhCatchPunch_1|WhipGhCatchPunch_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "WhipGhCatchPunch_11|WhipGhCatchPunch_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "WhipGhCatchPunch_111|WhipGhCatchPunch_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(79, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 104, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "WhipGhCatchThrow_1|WhipGhCatchThrow_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "WhipComboADLhInit", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "WhipComboADLhInit", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipGhCatchThrow_11|WhipGhCatchThrow_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGlCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 97, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 111, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(93, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "WhipGhCatchLose2_1|WhipGhCatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(109, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipGhCatchInit_1|WhipGhCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Catch_Object1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGlCatchKick")
  if am ~= nil then
    SoundUtils.AddStep(am, 20, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 45, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipGlCatchKick_1|WhipGlCatchKick_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(43, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipGlCatchThrow")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 25, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 46, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipGlCatchThrow_1|WhipGlCatchThrow_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipGlCatchThrow_11|WhipGlCatchThrow_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "WhipGlCatchThrow_111|WhipGlCatchThrow_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Pasada_Magica_Latigo22", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitCrush")
  if am ~= nil then
  end
  am = ac:GetAct("WhipHitCrushEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 33, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 47, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 51, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(23, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(37, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(54, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitFall")
  if am ~= nil then
    am:ActSound(0, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitFallHard")
  if am ~= nil then
    am:ActSound(0, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardBack")
  if am ~= nil then
    SoundUtils.AddStep(am, 37, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 45, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 64, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.18, 0, 0, 0, 0)
    am:ActSound(0, "Impact_Belmont_Hard1|Impact_Belmont_Hard2", 0.7, 0, 0, 0, 0)
    am:ActSound(11, "Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitHardBack_1|WhipHitHardBack_2|WhipHitHardBack_3|WhipHitHardBack_4|WhipHitHardBack_5|WhipHitHardBack_6|WhipHitHardBack_7|WhipHitHardBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipHitHardBack_22|WhipHitHardBack_33|WhipHitHardBack_44|WhipHitHardBack_55|WhipHitHardBack_66|WhipHitHardBack_88", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardBackFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Pasada_Magica1|Pasada_Magica2", 0.14, 2, 0, 0, 0)
    am:ActSound(2, "Rodar_Belmont1", 0.225, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(12, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.15, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipHitHardBackFix_2|WhipHitHardBackFix_3|WhipHitHardBackFix_4|WhipHitHardBackFix_5|WhipHitHardBackFix_6", 0.78, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardFw")
  if am ~= nil then
    SoundUtils.AddStep(am, 30, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 34, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 48, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 53, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Impact_Belmont_Hard1|Impact_Belmont_Hard2", 0.3, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(47, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitHardBack_1|WhipHitHardBack_2|WhipHitHardBack_3|WhipHitHardBack_4|WhipHitHardBack_5|WhipHitHardBack_6|WhipHitHardBack_7|WhipHitHardBack_8", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardFwFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 12, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(2, "Rodar_Belmont1", 0.125, 0, 0, 0, 0)
    am:ActSound(2, "Pasada_Magica1|Pasada_Magica2", 0.14, 2, 0, 0, 0)
    am:ActSound(4, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(12, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipHitHardBackFix_2|WhipHitHardBackFix_3|WhipHitHardBackFix_4|WhipHitHardBackFix_5|WhipHitHardBackFix_6", 0.78, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 32, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 45, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(0, "Impact_Belmont_Hard1|Impact_Belmont_Hard2", 0.3, 0, 0, 0, 0)
    am:ActSound(9, "Fall_Belmot2|Fall_Belmot3", 0.75, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitHardBack_1|WhipHitHardBack_2|WhipHitHardBack_3|WhipHitHardBack_4|WhipHitHardBack_5|WhipHitHardBack_6|WhipHitHardBack_7|WhipHitHardBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "WhipHitHardBack_22|WhipHitHardBack_33|WhipHitHardBack_44|WhipHitHardBack_55|WhipHitHardBack_66|WhipHitHardBack_88||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardLeftFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(11, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(11, "Pasada_Magica1|Pasada_Magica2", 0.14, 2, 0, 0, 0)
    am:ActSound(12, "Rodar_Belmont1", 0.125, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipHitHardBackFix_2|WhipHitHardBackFix_3|WhipHitHardBackFix_4|WhipHitHardBackFix_5|WhipHitHardBackFix_6", 0.78, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 32, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 45, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 51, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(0, "Impact_Belmont_Hard1|Impact_Belmont_Hard2", 0.3, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(9, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(48, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitHardBack_1|WhipHitHardBack_2|WhipHitHardBack_3|WhipHitHardBack_4|WhipHitHardBack_5|WhipHitHardBack_6|WhipHitHardBack_7|WhipHitHardBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "WhipHitHardBack_22|WhipHitHardBack_33|WhipHitHardBack_44|WhipHitHardBack_55|WhipHitHardBack_66|WhipHitHardBack_88||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitHardRightFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(11, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(11, "Pasada_Magica1|Pasada_Magica2", 0.14, 2, 0, 0, 0)
    am:ActSound(12, "Rodar_Belmont1", 0.125, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSound(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipHitHardBackFix_2|WhipHitHardBackFix_3|WhipHitHardBackFix_4|WhipHitHardBackFix_5|WhipHitHardBackFix_6", 0.78, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot2|Fall_Belmot3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitMedBack")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Impact_Belmont_Med1|Impact_Belmont_Med2", 0.45, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitMedFw")
  if am ~= nil then
    SoundUtils.AddStep(am, 10, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 1, 0.15, 2, "FLOOR-NOFX")
    am:ActSound(0, "Impact_Belmont_Med1|Impact_Belmont_Med2", 0.45, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitMedLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Impact_Belmont_Med1|Impact_Belmont_Med2", 0.45, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitMedRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 22, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Impact_Belmont_Med1|Impact_Belmont_Med2", 0.45, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitMedBack_1|WhipHitMedBack_2|WhipHitMedBack_3|WhipHitMedBack_4|WhipHitMedBack_5|WhipHitMedBack_6|WhipHitMedBack_7", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitSoftBack")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Impact_Belmont_Soft1|Impact_Belmont_Soft2", 0.45, 0, 0, 0, 0)
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitSoftFw")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(0, "Impact_Belmont_Soft1|Impact_Belmont_Soft2", 0.45, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitSoftLeft")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(0, "Impact_Belmont_Soft1|Impact_Belmont_Soft2", 0.45, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitSoftRight")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(0, "Impact_Belmont_Soft1|Impact_Belmont_Soft2", 0.45, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipHitUseRune")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 37, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 44, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipJumpInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 2, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipJumpRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 3, 3, 0.09, 1, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipJumpShortInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 3, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLgCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 21, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 38, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipLgCatchInit_1|WhipLgCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "WhipLgCatchInit_11|WhipLgCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Cross_Fly1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "WhipLgCatchInit_111", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Cross_Fly2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(114, "WhipLgCatchInit_1111|WhipLgCatchInit_2222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(116, "Cross_Fly1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(116, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(132, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(157, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 130, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 141, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 148, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "WhipLgCatchLose_1|WhipLgCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipLgCatchLose_11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "HitThud_3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "HitThud_3|HitThud_4|HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "WhipLgCatchLose_222|WhipLgCatchLose_111", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(124, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(129, "WhipLgCatchLose_2222|WhipLgCatchLose_1111", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(138, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(145, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    SoundUtils.AddStep(am, 91, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 112, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(5, "WhipLgCatchLose0_1|WhipLgCatchLose0_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipLgCatchLose0_11|WhipLgCatchLose0_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "HitThud_3|HitThud_4|HitThud_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "WhipLgCatchLose0_111|WhipLgCatchLose0_222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "WhipLgCatchLose0_1111|WhipLgCatchLose0_2222", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(89, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 107, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(71, "WhipLgCatchWin_1|WhipLgCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLlCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipLlCatchEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 19, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 25, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(6, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "WhipBtCatchLose_1|WhipBtCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab1|Mov_Gab2|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipAaCatchInit_1A|WhipAaCatchInit_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "WhipAaCatchInit_2A|WhipAaCatchInit_2B", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Catch_Object1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Catch_Object2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipAaCatchInit_1A|WhipAaCatchInit_1B|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    SoundUtils.AddStep(am, 48, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 50, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipLlCatchKick_1|WhipLlCatchKick_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipLlCatchPunch_1|WhipLlCatchPunch_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipLlCatchPunch_22|WhipAaCatchInit_1A|WhipAaCatchInit_1B|WhipAaCatchInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "HitThud_3|HitThud_5|HitThud_4", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.19, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMdCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "WhipGlCatchKick_1|WhipGlCatchKick_2|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Catch_Object1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "WhipGlCatchThrow_1|WhipGlCatchThrow_2|", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Catch_Object2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipGlCatchThrow_1|WhipGlCatchThrow_2|WhipGlCatchKick_1|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    SoundUtils.AddStep(am, 65, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipMdCatchKick_1|WhipMdCatchKick_2|WhipMdCatchKick_3|WhipMdCatchKick_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "WhipMdCatchKick_11|WhipMdCatchKick_22|WhipMdCatchKick_33|WhipMdCatchKick_44", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 34, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 74, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipMdCatchLose_1|WhipMdCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Fall_Belmot2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "HitThud_3|HitThud_4|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Fall_Belmot3", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    SoundUtils.AddStep(am, 110, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 121, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 136, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Break_Bone3|", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Break_Bone1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(94, "Cross_Stab2|Cross_Stab1", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(94, "Flesh_Tear2|", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(94, "Break_Bone2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(133, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatch")
  if am ~= nil then
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(94, "WhipMmCatch_1|WhipMmCatch_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "MetalHit_022|MetalHit_033", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    SoundUtils.AddStep(am, 256, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 260, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 274, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(186, "WhipMmCatch2Lose_1|WhipMmCatch2Lose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(196, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(196, "HitThud_3|HitThud_4|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(196, "Fall_Belmot1", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(202, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(242, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(254, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(258, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(264, "WhipMmCatch2Lose_11|WhipMmCatch2Lose_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(272, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 32, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 35, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipMmCatchInit_1|WhipMmCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "WhipMmCatchInit_111|WhipMmCatchInit_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "WhipMmCatchInit_11|WhipMmCatchInit_222", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 149, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 167, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(96, "WhipMmCatchLose_1|WhipMmCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Fall_Belmot1", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "HitThud_3|HitThud_4|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(109, "Rodar_Belmont1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(109, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(119, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(121, "Rodar_Belmont2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(147, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(155, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(165, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 162, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 223, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 245, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 266, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 279, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 351, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 366, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(115, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(121, "WhipMmCatchWin_2|WhipMmCatchWin_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(159, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "Cross_Fly1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(179, "WhipMmCatchWin_11|WhipMmCatchWin_22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(209, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(224, "WhipMmCatchWin_222|WhipMmCatchWin_111", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(228, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(260, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(275, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(315, "Break_Bone3", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(330, "Break_Bone2", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(330, "Cross_Stab3", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(330, "Explosion_Sangre_01|Explosion_Sangre_02|Explosion_Sangre_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(346, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(361, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatch_2")
  if am ~= nil then
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "WhipMmCatch_2_2|WhipMmCatch_2_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "MetalHit_022|MetalHit_033", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipMmCatch_3")
  if am ~= nil then
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "WhipMmCatch_3_1|WhipMmCatch_3_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "MetalHit_022|MetalHit_033", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc1Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipNc1CatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 30, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 31, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipNc1CatchInit_1|WhipNc1CatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "HitThud_3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 74, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 78, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 201, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 207, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 235, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 245, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 256, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(62, "WhipNc1CatchLose_1A|WhipNc1CatchLose_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "HitThud_3|HitThud_4|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Fall_Belmot1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(121, "WhipNc1CatchLose_1B|WhipNc1CatchLose_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(125, "Fall_BelmotBig2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(162, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(163, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(186, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(198, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(204, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(220, "WhipNc1CatchLose_1C|WhipNc1CatchLose_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(233, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(242, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(253, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc1CatchLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 160, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 176, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 196, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(122, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "WhipNc1CatchLose2_1|WhipNc1CatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(148, "HitThud_3|HitThud_4|HitThud_5", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(148, "Fall_Belmot1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(148, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(169, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(194, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc1CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 61, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 77, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 86, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 96, 2, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 182, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 186, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 221, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 232, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 310, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 315, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(52, "WhipNc1CatchWin_1A|WhipNc1CatchWin_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(70, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Wing _Flap1|Wing _Flap2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(87, "Cross_Fly1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "WhipNc1CatchWin_1B|WhipNc1CatchWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Punch_sword3|Punch_sword2|Punch_sword1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(119, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(122, "WhipNc1CatchWin_1C|WhipNc1CatchWin_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(168, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(171, "WhipNc1CatchWin_1D|WhipNc1CatchWin_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(178, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(212, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(212, "Wing _Flap1|Wing _Flap2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(214, "Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(215, "WhipNc1CatchWin_1E|WhipNc1CatchWin_2E", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(217, "Punch_sword3|Punch_sword2|Punch_sword1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(238, "WhipNc1CatchWin_1F|WhipNc1CatchWin_2F", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(243, "Punch_sword1|Punch_sword2|Punch_sword3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(243, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(287, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(305, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc2Catch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipNc2Catch2")
  if am ~= nil then
  end
  am = ac:GetAct("WhipNc2CatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 30, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 31, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "WhipNc1CatchInit_1|WhipNc1CatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "HitThud_3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc2CatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 61, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(52, "WhipNc1CatchLose2_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(79, "WhipNc2CatchLose_1A|WhipNc2CatchLose_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "WhipNc2CatchLose_1B|WhipNc2CatchLose_2B", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Explosion_Sangre_01|Explosion_Sangre_02|Explosion_Sangre_03", 1, 0, 0, 3000, 0)
  end
  am = ac:GetAct("WhipNc2CatchLose2")
  if am ~= nil then
    am:ActSoundNoRepeat(171, "WhipNc2CatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(177, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(189, "Fall_Belmot2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(189, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(198, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc2CatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 60, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 75, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 87, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 96, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 247, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 251, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(52, "WhipNc2CatchWin2_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "Punch_melee1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(88, "WhipNc2CatchWin2_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(120, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(130, "Necromancer_WhipNc2CatchInit_1A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(158, "Necromancer_AttackAir_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(158, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(237, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(241, "WhipNc2CatchWin2_1C|WhipNc2CatchWin2_1C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(244, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    SoundUtils.AddStep(am, 399, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 413, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 427, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(282, "WhipNc2CatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(284, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(303, "WhipNc2CatchWin_1A|WhipNc2CatchWin_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(307, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(336, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(338, "WhipNc2CatchWin_2C|WhipNc2CatchWin_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(397, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(410, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(424, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipOpenChest")
  if am ~= nil then
  end
  am = ac:GetAct("WhipPlaceCrystal")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 75, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 89, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(87, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipPowerUp")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipPullLever")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 27, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 34, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 117, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 134, 3, 0.1, 0, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(115, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(132, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRaceComboA")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(5, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(7, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 0, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 5, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipComboAAA|WhipComboAAAAAA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRaceComboD")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 4, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 7, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 9, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipComboDDDDD|WhipComboDrD||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRelax")
  if am ~= nil then
  end
  am = ac:GetAct("WhipRelax0")
  if am ~= nil then
    SoundUtils.AddStep(am, 8, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 24, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Catch_Object2", 0.3, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRelicStolen")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.09, 3, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 82, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(41, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(77, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatch")
  if am ~= nil then
    am:ActSoundNoRepeat(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Cross_Fly1", 0.5, 0, 0, 0, 1)
    am:ActSoundNoRepeat(26, "WhipRgCatch1|WhipRgCatch2|WhipRgCatch3|WhipRgCatch4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Cross_Fly2", 0.5, 0, 0, 0, 1)
    am:ActSoundNoRepeat(34, "WhipRgCatch5|WhipRgCatch6|WhipRgCatch7|WhipRgCatch8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Cross_Fly1", 0.5, 0, 0, 0, 1)
    am:ActSoundNoRepeat(42, "WhipRgCatch1|WhipRgCatch2|WhipRgCatch3|WhipRgCatch4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Cross_Fly2", 0.5, 0, 0, 0, 1)
    am:ActSoundNoRepeat(51, "WhipRgCatch5|WhipRgCatch6|WhipRgCatch7|WhipRgCatch8", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatch2")
  if am ~= nil then
    am:ActSoundNoRepeat(212, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 22, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 23, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 89, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 90, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Cross_Fly1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipRgCatch1|WhipRgCatch2|WhipRgCatch3|WhipRgCatch4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "WhipRgCatchLose_1|WhipRgCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(89, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(89, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(110, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatchLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 48, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 71, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(10, "WhipRgCatchLose2_1|WhipRgCatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "HitThud_3|HitThud_4|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Fall_Belmot1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Fall_Belmot3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 75, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 84, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(63, "WhipRgCatchWin_1A|WhipRgCatchWin_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Cross_Fly1|Cross_Fly2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(120, "Pasada_Belmont1", 0.5, -2, 0, 0, 0)
    am:ActSoundNoRepeat(120, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(120, "WhipRgCatchWin_1B|WhipRgCatchWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(126, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(138, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(138, "WhipRgCatchWin_2BB", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(153, "WhipRgCatchWin_1C|WhipRgCatchWin_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(161, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(182, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(194, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(194, "WhipRgCatchWin_1D|WhipRgCatchWin_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(202, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    SoundUtils.AddStep(am, 237, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 239, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 300, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 322, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 333, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(229, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(229, "WhipRgCatchWin2_1A|WhipRgCatchWin2_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(237, "Fall_Belmot3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(237, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(266, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(266, "WhipRgCatchWin2_1AA|WhipRgCatchWin2_2AA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(294, "ExplosionAirBelmont_02", 1, 0, 0, 10000000, 0)
    am:ActSoundNoRepeat(294, "ExplosionAirBelmont_02", 1, 0, 0, 10000000, 0)
    am:ActSoundNoRepeat(298, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(320, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(331, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRingBell")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 33, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRockThrow")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipBlockComboDEnd_1|WhipBlockComboDEnd_2|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4|WhipBlockComboAEnd_4|WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRockThrowFail")
  if am ~= nil then
    am:ActSoundNoRepeat(37, "WhipHitSoftBack_1|WhipHitSoftBack_2|WhipHitSoftBack_3|WhipHitSoftBack_4|WhipHitSoftBack_5|WhipHitSoftBack_6|WhipHitSoftBack_7|WhipHitSoftBack_8", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRun")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 10, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 3, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("WhipRun0")
  if am ~= nil then
    SoundUtils.AddStep(am, 0, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 10, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunEndLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunEndRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFall")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFallFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4|FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4||||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFallHigh")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(3, "Rodar_Belmont4", 0.4, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "FallRunEnd_1|FallRunEnd_2|FallRunEnd_3|FallRunEnd_4|||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFallRun")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSound(4, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFallRunFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4|FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4||||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFallShort")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 5, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.7, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4|||", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitFallShortFix")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(7, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Hand_Belmont1|Hand_Belmont2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "FallShortEnd_1|FallShortEnd_2|FallShortEnd_3|FallShortEnd_4|FallEnd_1|FallEnd_2|FallEnd_3|FallEnd_4||||||", 0.7, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunInitTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipRunTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSMCatched")
  if am ~= nil then
    am:ActSound(46, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(46, "Chain_Squeak2|Chain_Squeak1", 0.12, 0, 0, 0, 0)
    am:ActSound(46, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(46, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.11, 0, 0, 0, 0)
    am:ActSound(72, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
    am:ActSound(72, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(113, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(113, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(113, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(113, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
    am:ActSound(113, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(113, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(113, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(113, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSMCatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Chain_A", 0.6, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A", 0.6, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.11, 0, 0, 0, 0)
    am:ActSound(16, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Squeak2|Chain_Squeak1", 0.12, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.11, 0, 0, 0, 0)
    am:ActSound(16, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Squeak2|Chain_Squeak1", 0.12, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(52, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(52, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipSmCatch_1A|WhipSmCatch_2A|WhipSmCatch_3A|WhipSmCatch_3A", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 92, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 98, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(0, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(0, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(0, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
    am:ActSound(15, "LightPowerOff", 0.5, 0, 0, 0, 0)
    am:ActSound(15, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(15, "Chain_Squeak2|Chain_Squeak1", 0.12, 0, 0, 0, 0)
    am:ActSound(15, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(15, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.11, 0, 0, 0, 0)
    am:ActSound(38, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(38, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(38, "Chain_SqueakB|Chain_SqueakC", 0.11, 0, 0, 0, 0)
    am:ActSound(40, "Chain_GabrielAA", 0.8, 0, 0, 0, 0)
    am:ActSound(42, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(48, "Spark_descarga1", 0.4, 0, 0, 0, 0)
    am:ActSound(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(89, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "WhipSMCatchedLose_1", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSMCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 127, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 127, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 149, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 149, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(116, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(116, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(117, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(117, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(125, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(125, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(146, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(146, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 33, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Catch_Object2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipScCatchInit_1A|WhipScCatchInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Catch_Object1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "WhipScCatchInit_1B|WhipScCatchInit_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(45, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "WhipScCatchInit_1C|WhipScCatchInit_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "WhipScCatchInit_1D|WhipScCatchInit_2D", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 121, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 129, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 147, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(74, "WhipScCatchLose_1|WhipScCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Fall_Belmot1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(119, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(127, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(145, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 114, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 119, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(72, "WhipScCatchWin_1|WhipScCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(75, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(117, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatched")
  if am ~= nil then
    am:ActSoundNoRepeat(60, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 27, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(16, "WhipScCatchedInit_1A|WhipScCatchedInit_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "WhipScCatchedInit_1B|WhipScCatchedInit_2B", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 97, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 109, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 144, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(52, "WhipScCatchedLose_1A|WhipScCatchedLose_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Fall_Belmot2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(102, "WhipScCatchedLose_1B|WhipScCatchedLose_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(107, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(123, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 93, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 107, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 115, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(72, "WhipScCatchedWin_1|WhipScCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(84, "Punch_melee1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(91, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgCatched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgCatchedInit")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "WhipSgCatchedInit_1|WhipSgCatchedInit_2|", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Fall_Belmot2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 130, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 137, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 142, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipSgCatchedLose_1|WhipSgCatchedLose_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "WhipSgCatchedLose_1B|WhipSgCatchedLose_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "WhipSgCatchedLose_1C|WhipSgCatchedLose_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(122, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(128, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(135, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 190, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 210, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 236, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 252, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(150, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(161, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(161, "WhipSgCatchedWin_1|WhipSgCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(175, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(184, "WhipSgCatchedWin_1B|WhipSgCatchedWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(187, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(206, "WhipSgCatchedWin_1C|WhipSgCatchedWin_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(208, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(234, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(250, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideAttack")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideAttack0")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideCharge")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideChargeEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideChargeInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideDoorInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideDoorLoop")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideDoorLose")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideDoorWin")
  if am ~= nil then
    am:ActSoundNoRepeat(40, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 62, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 64, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_GabrielAA|Chain_GabrielBB", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "ruede1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "WhipSgCatchedWin_2|WhipSgCatchedWin_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_GabrielAA|Chain_GabrielBB", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "ruede1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Flesh_Tear1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Flesh_Tear2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Break_Bone2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "WhipSgCatchedWin_1C|WhipSgCatchedWin_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Fall_Belmot2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Rodar_Belmont4|Rodar_Belmont1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideFail")
  if am ~= nil then
    SoundUtils.AddStep(am, 67, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 73, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(34, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "WhipBtCatchLose_1|WhipBtCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(71, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 38, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 41, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "HangLeftSwitch_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(52, "WhipSgCatchedWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Fall_Belmot1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "WhipSgCatchedLose_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "WhipComboAA|WhipComboAAA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "HangWallDown_10", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "WhipComboAAAAAA|WhipComboAAAAAAAA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideHitDeath")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 17, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 26, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "WhipSgCatchedWin_1", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Fall_Belmot3", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideHitMed")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideHitSoft")
  if am ~= nil then
    am:ActSoundNoRepeat(0, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideInit")
  if am ~= nil then
    am:ActSoundNoRepeat(10, "WhipHitHardBackFix_4|WhipHitHardBackFix_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "WhipHitHardBackFix_2|WhipHitHardBackFix_5", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "HangLeftSwitch_2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Fall_Belmot2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(74, "HangLeftSwitch_1", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Chain_Pull4|Chain_Pull2|Chain_Pull3", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(78, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(109, "HookLinear45FallInit_5", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(113, "Chain_Pull4|Chain_Pull2|Chain_Pull3", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Chain_Pull4|Chain_Pull2|Chain_Pull3", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Chain_Squeak2|Chain_Squeak1", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(142, "WhipComboAAAAAA_2", 0.75, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideRelax")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideRun")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideRunEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideRunInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideSpit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSgRideWalk")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideWalkEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSgRideWalkInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipSmCatch_1A|WhipSmCatch_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "WhipSmCatch_3A|WhipSmCatch_3A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Punch_sword2|Punch_sword1|Punch_sword3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "WhipSmCatch_1B|WhipSmCatch_2B", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 32, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 36, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 79, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(24, "LightPowerOff", 0.5, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(30, "Spark_descarga1", 0.4, 0, 0, 0, 0)
    am:ActSound(56, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(73, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipSmCatch_1A|WhipSmCatch_2A|WhipSmCatch_3A|WhipSmCatch_3A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "WhipSmFailInit_1|WhipSmFailInit_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSprint")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Pasada_FriaA", 0.22, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint1", 0.4, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint11|step_sprint22", 0.25, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(14, "Pasada_FriaB", 0.22, 0, 0, 0, 0)
    am:ActSound(16, "Pasada_CadenaB|Pasada_CadenaC", 0, 0, 0, 0, 0)
    am:ActSound(16, "step_sprint2", 0.4, 0, 0, 0, 0)
    am:ActSound(16, "step_sprint33|step_sprint44", 0.25, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 3, 0, 0, 0)
  end
  am = ac:GetAct("WhipSprintComboA")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 23, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundIf("DARK", 0, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 2, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipComboAAAAAA_2|WhipComboAAAAAA|WhipComboAAA_2|||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSprintComboAD")
  if am ~= nil then
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipBlockComboAEnd_4|WhipBlockComboAEnd_1|WhipBlockComboAEnd_2|WhipBlockComboAEnd_3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "step_sprint2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "step_sprint2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipWallImpact_GROUND_01|WhipWallImpact_GROUND_02|WhipWallImpact_GROUND_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Hit_Magic1|Hit_Magic2|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Hit_Magic1|Hit_Magic2|Hit_Magic3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSprintComboDDark")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 49, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(15, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSound(15, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipBlockComboDEnd_1|WhipBlockComboDEnd_2|WhipBlockComboDEnd_3|WhipBlockComboDEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipWallImpact_STONE_03", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "step_sprint11|step_sprint22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_FuegoB|Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Pasada_FuegoB|Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSprintEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 14, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 28, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(5, "step_sprint3|step_sprint4", 0.4, 0, 0, 0, 0)
    am:ActSound(5, "step_sprint11|step_sprint22", 0.25, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 3, 0, 0, 0)
    am:ActSound(24, "ApparitionPowerStep3", 0, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSprintInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 4, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 3, 0, 0, 0)
    am:ActSound(4, "ApparitionPowerStep4", 0, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint4|step_sprint3", 0.4, 0, 0, 0, 0)
    am:ActSound(4, "step_sprint33|step_sprint44", 0.25, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipStunned")
  if am ~= nil then
  end
  am = ac:GetAct("WhipStunnedEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 78, 1, 0.09, 3, "FLOOR-NOFX")
    am:ActSound(69, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(76, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipStunnedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 9, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 36, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 43, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 53, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 67, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 104, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 137, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(8, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipSwCatch2Init_1A|WhipSwCatch2Init_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Cross_Fly1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "WhipSwCatch2Init_1B|WhipSwCatch2Init_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(41, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "WhipSwCatch2Init_1C|WhipSwCatch2Init_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Cross_Fly1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(93, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Cross_Fly2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(96, "WhipSwCatch2Init_1D|WhipSwCatch2Init_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(99, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(134, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatch2Lose")
  if am ~= nil then
    SoundUtils.AddStep(am, 76, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 92, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(18, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "WhipSwCatch2Lose_1|WhipSwCatch2Lose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Fall_Belmot3", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "Rodar_Belmont1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(68, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(89, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatch2Lose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 115, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 134, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 141, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "WhipSwCatch2Lose2_1|WhipSwCatch2Lose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Fall_Belmot2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "Rodar_Belmont1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(132, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatch2Lose3")
  if am ~= nil then
    SoundUtils.AddStep(am, 110, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 132, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 173, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 186, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(95, "Cross_Fly1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(95, "WhipSwCatch2Lose3_1A|WhipSwCatch2Lose3_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(97, "Punch_meleeblock2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(125, "WhipSwCatch2Lose3_1B|WhipSwCatch2Lose3_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(130, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "WhipSwCatch2Lose3_1C|WhipSwCatch2Lose3_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(139, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(140, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(147, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(158, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(161, "WhipSwCatch2Lose3_1D|WhipSwCatch2Lose3_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(161, "Rodar_Belmont2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(161, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(171, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(184, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 58, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 71, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 85, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 110, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(5, "WhipSwCatchInit_1A|WhipSwCatchInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Cross_Fly1", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Punch_meleeblock2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "WhipSwCatchInit_1B|WhipSwCatchInit_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(34, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "WhipSwCatchInit_1C|WhipSwCatchInit_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(69, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "WhipSwCatchInit_1D|WhipSwCatchInit_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(83, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(108, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 155, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 188, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 192, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(152, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(171, "WhipSwCatchLose_1|WhipSwCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(171, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(171, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(178, "Fall_Belmot1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(178, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Rodar_Belmont1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(183, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(188, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(213, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 90, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 105, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "WhipSwCatchLose2_1|WhipSwCatchLose2_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Fall_Belmot3", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.18, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Rodar_Belmont3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(80, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(101, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 152, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 215, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 231, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(148, "WhipSwCatchWin_1|WhipSwCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(150, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(155, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(175, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(180, "WhipSwCatchWin_1B|WhipSwCatchWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(203, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(213, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(229, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboA")
  if am ~= nil then
    am:ActSound(7, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(10, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(12, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 6, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 8, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "WhipComboA|WhipComboA_2||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboAA")
  if am ~= nil then
    am:ActSound(18, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 18, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 20, "Pasada_Fria22", 0.4, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 23, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 24, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "WhipComboAA_2|WhipComboAA||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 45, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(39, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(41, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 39, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 41, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 43, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 44, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "WhipComboAAA_2|WhipComboDrDrD_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboAAAA")
  if am ~= nil then
    SoundUtils.AddStep(am, 66, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(54, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(56, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 54, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 55, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 56, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 57, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "WhipComboDrMhs_2|WhipComboAAAAAAAA||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboAAAAA")
  if am ~= nil then
    am:ActSound(62, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(64, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(66, "Pasada_FriaB", 0.25, 0, 0, 0, 0)
    am:ActSound(79, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(86, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(92, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 62, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 64, "Pasada_Fria22", 0.4, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 65, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 66, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "WhipComboAJJ_2|WhipBlockSommerJumpD", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboD")
  if am ~= nil then
    am:ActSound(2, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_CadenaA", 0, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSound(8, "Pasada_Cadena1", 0, 0, 0, 0, 0)
    am:ActSound(17, "Chain_Cierre1|Chain_Cierre2", 0.7, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.2, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 2, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 4, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipComboDD|WhipComboDDDDD||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 39, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(12, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(14, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 12, "Pasada_FuegoB", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 14, "Pasada_Fria22", 0.4, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 16, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 17, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipComboDDD|WhipComboDDhD_1||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipSyncComboDDD")
  if am ~= nil then
    SoundUtils.AddStep(am, 66, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(37, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSound(39, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundIf("DARK", 37, "Pasada_FuegoA", 1, 0, 0, 0, 0)
    am:ActSoundIf("LIGHT", 39, "Pasada_Fria11", 0.6, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 41, "Pasada_CadenaA", 0.35, 0, 0, 0, 0)
    am:ActSoundIf("NOMAGIC", 42, "Pasada_Cadena1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipBlockComboDEnd_3|WhipBlockComboDEnd_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_Cierre1|Chain_Cierre2", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTakeCrystal")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.15, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Catch_Object2", 0.15, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTakeFinger")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTakeFlower")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.15, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(26, "Catch_Object2", 0.15, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTakeFreeGem")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.15, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(33, "Catch_Object2", 0.15, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTakeGem")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.15, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(33, "Catch_Object2", 0.15, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTakeKey")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Catch_Object2", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTakeWater")
  if am ~= nil then
    SoundUtils.AddStep(am, 15, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 74, 1, 0.09, 0, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "PowerCatch3", 0.85, 0, 0, 0, 0)
    am:ActSound(66, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipTbCatchInit_1|WhipTbCatchInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(51, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(104, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(122, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(154, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(177, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(196, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(222, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(235, "WhipScCatchedWin_1|WhipScCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(244, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(244, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(249, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(274, "WhipScCatchWin_1|WhipScCatchWin_2", 0.7, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(276, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 116, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 138, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 146, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(0, "WhipTbCatchLose_1|WhipTbCatchLose_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipTbCatchLose_1B|WhipTbCatchLose_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(81, "WhipTbCatchLose_4B|WhipTbCatchLose_3B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(118, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(136, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(144, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbCatchLose1")
  if am ~= nil then
    SoundUtils.AddStep(am, 194, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 218, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 231, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(85, "WhipTbCatchLose_1B|WhipTbCatchLose_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(130, "WhipTbCatchLose_4B|WhipTbCatchLose_3B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(197, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(221, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(234, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    SoundUtils.AddStep(am, 464, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 485, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 502, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(354, "WhipTbCatchLose_4B|WhipTbCatchLose_3B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(400, "WhipTbCatchLose_1B|WhipTbCatchLose_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(467, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(487, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(505, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 348, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(326, "WhipTbCatchWin_1|WhipTbCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(348, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(348, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(381, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbFailFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 68, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A|Chain_B", 0.8, 0, 0, 0, 0)
    am:ActSound(10, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(10, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(10, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(10, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(28, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.11, 0, 0, 0, 0)
    am:ActSound(28, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(28, "Chain_Squeak2|Chain_Squeak1", 0.12, 0, 0, 0, 0)
    am:ActSound(28, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(37, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(37, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(37, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(37, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(41, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(42, "Impact_Belmont_Med2|Impact_Belmont_Med1", 1, 0, 0, 0, 0)
    am:ActSound(42, "Impact_Belmont_Hard2|Impact_Belmont_Hard1", 1, 0, 0, 0, 0)
    am:ActSound(47, "Chain_GabrielAA|Chain_GabrielBB", 0.6, 0, 0, 0, 0)
    am:ActSound(51, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(51, "Rodar_Belmont1|Rodar_Belmont4", 0.25, 0, 0, 0, 0)
    am:ActSound(52, "Chain_Cierre1|Chain_Cierre2", 0.5, 0, 0, 0, 0)
    am:ActSound(61, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(73, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipTbFailFarInit_1A|WhipTbFailFarInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(43, "WhipTbFailFarInit_1B|WhipTbFailFarInit_2B", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideAttack")
  if am ~= nil then
    am:ActSound(2, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(10, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(10, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(10, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(28, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(28, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(28, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(28, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(37, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(37, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(37, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(37, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(55, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(55, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(55, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(55, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideAttack0")
  if am ~= nil then
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(13, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideCharge")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbRideChargeEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbRideChargeInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbRideComboA")
  if am ~= nil then
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(19, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(19, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(29, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboAA")
  if am ~= nil then
    am:ActSound(31, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(31, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(31, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(54, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(54, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(54, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(54, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboAAA")
  if am ~= nil then
    am:ActSound(50, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(50, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(50, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(68, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(68, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(68, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(68, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboAAAA")
  if am ~= nil then
    am:ActSound(75, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(75, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(75, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(75, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(87, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(87, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(87, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(87, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(106, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(106, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(106, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(106, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSoundNoRepeat(100, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboAAAAA")
  if am ~= nil then
    am:ActSound(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(101, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(101, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(101, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(116, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(116, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(116, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(116, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSoundNoRepeat(104, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboD")
  if am ~= nil then
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(3, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(13, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(13, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(30, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(32, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboDD")
  if am ~= nil then
    am:ActSound(43, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(43, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(43, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(43, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(63, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(63, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(63, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(63, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(85, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(85, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(85, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(85, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboDDD")
  if am ~= nil then
    am:ActSound(87, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(87, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(87, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(87, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(118, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(118, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(118, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(118, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideComboDDDD")
  if am ~= nil then
    am:ActSound(96, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(96, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(96, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(96, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(134, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(134, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 152, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 155, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 166, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(28, "Chain_GabrielAA|Chain_GabrielBB", 0.3, 0, 0, 0, 0)
    am:ActSound(28, "ruede1", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(30, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Break_Bone2", 0.6, 0, 0, 0, 0)
    am:ActSound(67, "Flesh_Tear2", 0.5, 0, 0, 0, 0)
    am:ActSound(67, "Flesh_Tear1", 0.5, 0, 0, 0, 0)
    am:ActSound(67, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "ruede1", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_GabrielAA|Chain_GabrielBB", 0.3, 0, 0, 0, 0)
    am:ActSound(137, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(137, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(147, "Rodar_Belmont4|Rodar_Belmont1", 0.25, 0, 0, 0, 0)
    am:ActSound(147, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(150, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(159, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(165, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "WhipTbRideEnd_1|WhipTbRideEnd_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipTbRideEnd_1A|WhipTbRideEnd_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(134, "WhipTbRideEnd_2B", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideFail")
  if am ~= nil then
    SoundUtils.AddStep(am, 61, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 76, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 81, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(18, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(18, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(24, "hit-fall1|hit-fall2", 0.5, 0, 0, 0, 0)
    am:ActSound(26, "Impact_Belmont_Hard1|Impact_Belmont_Hard2", 0.6, 0, 0, 0, 0)
    am:ActSound(55, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(75, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(79, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipTbRideFail_1|WhipTbRideFail_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideFall")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbRideFallEnd")
  if am ~= nil then
    am:ActSound(33, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(33, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(33, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(33, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideFallInit")
  if am ~= nil then
    am:ActSound(2, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.12, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 41, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 43, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A", 0.7, 0, 0, 0, 0)
    am:ActSound(29, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(29, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(42, "hit-fall1", 0.1, 0, 0, 0, 0)
    am:ActSound(77, "hit-fall2", 0.35, 0, 0, 0, 0)
    am:ActSound(78, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(134, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "TbCatchedWin_1|TbCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "HangLeft_10", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "HangLeft_9", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "HangLeft_8", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "HangLeft_7", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(129, "WhipComboAJJ_2", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideHitSoft")
  if am ~= nil then
    am:ActSound(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSound(5, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSound(5, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSound(5, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideHitTb")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideHitTbDeath")
  if am ~= nil then
    SoundUtils.AddStep(am, 18, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(4, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(18, "Fall_Belmot3|Fall_Belmot1", 0.3, 0, 0, 0, 0)
    am:ActSound(36, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipTbRideHitTbDeath_1|WhipTbRideHitTbDeath_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 41, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 43, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A", 0.7, 0, 0, 0, 0)
    am:ActSound(29, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(29, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSound(29, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(42, "hit-fall1", 0.1, 0, 0, 0, 0)
    am:ActSound(77, "hit-fall2", 0.35, 0, 0, 0, 0)
    am:ActSound(78, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(134, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSound(134, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "TbCatchedWin_1|TbCatchedWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "HangLeft_10", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(72, "HangLeft_9", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(92, "HangLeft_8", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(112, "HangLeft_7", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(129, "WhipComboAJJ_2", 0.8, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideRelax")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbRideRun")
  if am ~= nil then
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideRunEnd")
  if am ~= nil then
    am:ActSound(3, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideRunInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTbRideTurnLeft")
  if am ~= nil then
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideTurnRight")
  if am ~= nil then
    am:ActSound(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(20, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(52, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideWalk")
  if am ~= nil then
    am:ActSound(14, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(14, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(14, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideWalkEnd")
  if am ~= nil then
    am:ActSound(3, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTbRideWalkInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipThrowDaggerEnd")
  if am ~= nil then
    am:ActSound(44, "Cross_Fly1|Cross_Fly2", 0, 0, 0, 0, 0)
    am:ActSound(44, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipThrowDaggerLoop")
  if am ~= nil then
  end
  am = ac:GetAct("WhipThrowFairy")
  if am ~= nil then
    am:ActSound(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipThrowVial")
  if am ~= nil then
    am:ActSound(10, "Cross_Fly1|Cross_Fly2", 0.4, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipThrowVialLM")
  if am ~= nil then
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Cross_Fly1|Cross_Fly2", 0.4, 0, 0, 0, 0)
    am:ActSound(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTombInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 17, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 25, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(23, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(33, "Hand_Belmont1|Hand_Belmont2", 0.4, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(44, "FallEnd_4|FallRunEnd_2|FallRunEnd_3", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(45, "SKW_Mov_08|SKW_Mov_07|SKW_Mov_06", 0.75, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(68, "SKW_Mov_05|SKW_Mov_04|SKW_Mov_03", 0.75, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(90, "Hand_Belmont1", 0.35, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(98, "Hand_Belmont2", 0.35, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(105, "SKW_Mov_01|SKW_Mov_02|SKW_Mov_05", 0.5, 0, 0, 3000, 0)
  end
  am = ac:GetAct("WhipTombLoop")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTombLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 161, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 166, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 184, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(158, "FallShortEnd_4", 1, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(159, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(160, "SKW_Mov_08|SKW_Mov_07|SKW_Mov_06", 0.75, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(164, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(174, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(174, "SKW_Mov_05|SKW_Mov_04|SKW_Mov_03", 0.75, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(179, "Fall_Belmot2", 0.5, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(179, "SKW_Mov_08|SKW_Mov_07|SKW_Mov_06", 0.75, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(194, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 5000, 0)
  end
  am = ac:GetAct("WhipTombOpen")
  if am ~= nil then
    SoundUtils.AddStep(am, 14, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 83, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(5, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(25, "Air_Reversed_01", 0.65, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(34, "Coffin_Open_01", 0.75, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(34, "HookRappelRun9|HookRappelRun10|WhipGhCatchInit_2", 0.75, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(60, "WhipGhCatchThrow_2", 1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(60, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(62, "Coffin_Open_02", 0.75, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(79, "PunchEstatue05", 0.75, 0, 0, 3000, 0)
  end
  am = ac:GetAct("WhipTombWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 135, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 140, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 234, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 245, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(128, "FallHighEnd_1", 0.75, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(129, "SKW_Mov_08|SKW_Mov_07|SKW_Mov_06", 0.5, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(129, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(135, "Fall_Belmot2", 0.5, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(135, "SKW_Mov_08|SKW_Mov_07|SKW_Mov_06", 0.75, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(138, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(156, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(174, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(194, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 5000, 0)
    am:ActSoundNoRepeat(232, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(260, "Catch_Object2", 0.25, 0, 0, 3000, 0)
    am:ActSoundNoRepeat(262, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 3000, 0)
  end
  am = ac:GetAct("WhipTsCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 97, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 103, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(85, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(90, "hit-fall1", 0.3, 0, 0, 0, 0)
    am:ActSound(95, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(101, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "WhipTbRideFail_1|WhipTbRideFail_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A", 0.7, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Chain_Gabriel1|Chain_Gabriel2", 0.5, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(24, "hit-fall1", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(21, "WhipTbFailFarInit_1A|WhipTbCatchInit_1|WhipTbCatchInit_2", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    SoundUtils.AddStep(am, 67, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSound(34, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSound(64, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipTsCatchHitA_1|WhipTsCatchHitA_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "WhipTsCatchHitA_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    SoundUtils.AddStep(am, 67, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(12, "Cross_Fly1", 0.2, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(40, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(41, "Cross_Fly1", 0.2, 0, 0, 0, 0)
    am:ActSound(62, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipTsCatchHitD_1|WhipTsCatchHitD_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "WhipTsCatchHitD_1B|WhipTsCatchHitD_2B", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTsCatchHitJ")
  if am ~= nil then
    SoundUtils.AddStep(am, 17, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 49, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(8, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Cross_Fly1", 0.2, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(35, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(45, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipTsCatchHitJ_1|WhipTsCatchHitJ_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    SoundUtils.AddStep(am, 17, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 48, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(13, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(46, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "WhipTsCatchHitK_1|WhipTsCatchHitK_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "hit-fall1", 0.15, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipTbRideHitTbDeath_2|WhipTbRideHitTbDeath_1||", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTurn180")
  if am ~= nil then
    SoundUtils.AddStep(am, 3, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 20, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTurnLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipTurnRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 9, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 16, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipUseKey")
  if am ~= nil then
  end
  am = ac:GetAct("WhipUseRune")
  if am ~= nil then
    SoundUtils.AddStep(am, 13, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 21, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 78, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 89, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(19, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(60, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(87, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipVwCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 10, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Catch_Object2", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "WhipNc1CatchWin_1D|WhipNc1CatchWin_2E||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 62, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 65, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 96, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(58, "WhipMdCatchLose_1|WhipMdCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(63, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(77, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(90, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 5, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 35, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 48, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipVwCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab2|Mov_Gab6", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Cross_Fly1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(25, "WhipVwCatchWin_1|WhipVwCatchWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Cross_Fly2", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(46, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipVwCatched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipVwCatchedInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 7, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 11, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Fall_BelmotBig2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipTbRideEnd_2B|WhipTbRideEnd_2A", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 166, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 185, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 200, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(37, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(64, "WhipVwCatchedLose_1|WhipVwCatchedLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(115, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(127, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(127, "Fall_Belmot3|Fall_Belmot1", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(159, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(181, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(197, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 116, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 136, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 147, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 152, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(22, "WhipVwCatchedWin_1A|WhipVwCatchedWin_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(31, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(58, "WhipVwCatchedWin_1B|WhipVwCatchedWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(66, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(98, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "WhipVwCatchedWin_1C|WhipVwCatchedWin_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(114, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(134, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(145, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(150, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWalk")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWalkEndLeft")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWalkEndRight")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(4, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWalkInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 1, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 18, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWalkInitTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 12, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWalkTurn")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 13, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(5, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWcCatch")
  if am ~= nil then
    am:ActSound(20, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    am:ActSound(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(15, "Catch_Object1", 0.2, 0, 0, 0, 0)
    am:ActSound(20, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(20, "Catch_Object2", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 6, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 15, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(0, "hit-fall1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipWcCatchLose_1|WhipWcCatchLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    am:ActSoundNoRepeat(10, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "WhipWcCatchWin_1|WhipWcCatchWin_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(48, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Pasada_vuelo1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWcFailFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 11, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 36, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(7, "Chain_Gabriel1", 0.6, 0, 0, 0, 0)
    am:ActSound(26, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgCatched")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgCatchedInit")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "hit-fall2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipWgCatchedInit_1|WhipWgCatchedInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(12, "Rodar_Belmont1", 0.4, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Rodar_Belmont4", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    SoundUtils.AddStep(am, 58, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 64, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(25, "WhipWgCatchedLose_1|WhipWgCatchedLose_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.65, 0, 0, 0, 0)
    am:ActSoundNoRepeat(33, "HitThud_4|HitThud_3|HitThud_5", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(62, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgCatchedWin")
  if am ~= nil then
    SoundUtils.AddStep(am, 41, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 44, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 52, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(2, "WhipWgCatchedWin_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "WhipWgCatchedWin_1B|WhipWgCatchedWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Fall_Belmot1|Fall_Belmot2|Fall_Belmot3", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(39, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideAttack")
  if am ~= nil then
    am:ActSound(8, "Chain_Squeak2|Chain_Squeak1", 0.05, 0, 0, 0, 0)
    am:ActSound(8, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(8, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(8, "Chain_SqueakB|Chain_SqueakC", 0.05, 0, 0, 0, 0)
    am:ActSound(9, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideAttack1")
  if am ~= nil then
    am:ActSound(11, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.05, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Squeak2|Chain_Squeak1", 0.052, 0, 0, 0, 0)
    am:ActSound(11, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.05, 0, 0, 0, 0)
    am:ActSound(11, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.051, 0, 0, 0, 0)
    am:ActSound(12, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideAttackDash")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideAttackDashEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideAttackDashInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideAttackDashShort")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideCharge")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideChargeEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideChargeInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 43, 1, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_GabrielAA|Chain_GabrielBB", 0.3, 0, 0, 0, 0)
    am:ActSound(3, "ruede1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Flesh_Tear2", 0.5, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Flesh_Tear1", 0.5, 0, 0, 0, 0)
    am:ActSound(4, "Break_Bone2", 0.6, 0, 0, 0, 0)
    am:ActSound(13, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(18, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(22, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(28, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(28, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(43, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(55, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "WhipTbRideEnd_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo11|Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipTbRideEnd_1A|WhipTbRideEnd_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(43, "Fall_Belmot2|Fall_Belmot3", 0.6, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideFail")
  if am ~= nil then
    SoundUtils.AddStep(am, 61, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 66, 3, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 76, 1, 0.09, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 80, 3, 0.09, 2, "FLOOR-NOFX")
    am:ActSound(2, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(17, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.3, 0, 0, 0, 0)
    am:ActSound(17, "Pasada_Magica1|Pasada_Magica2", 0.14, 0, 0, 0, 0)
    am:ActSound(24, "hit-fall1|hit-fall2", 0.6, 0, 0, 0, 0)
    am:ActSound(27, "Impact_Belmont_Hard1|Impact_Belmont_Hard2", 0.6, 0, 0, 0, 0)
    am:ActSound(30, "Rodar_Belmont1|Rodar_Belmont2", 0.45, 0, 0, 0, 0)
    am:ActSound(55, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(60, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(75, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.09, 0, 0, 0, 0)
    am:ActSound(79, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "WhipWgRideFail_1|WhipWgRideFail_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideFall")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideFallEnd")
  if am ~= nil then
    am:ActSound(43, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(43, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(43, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(43, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideFallInit")
  if am ~= nil then
    am:ActSound(3, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 32, 1, 0.1, 2, "FLOOR")
    am:ActSound(1, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(3, "Chain_A", 0.7, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(22, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Bloqueo11|Pasada_Bloqueo22", 0.2, 0, 0, 0, 0)
    am:ActSound(33, "Pasada_Magica1|Pasada_Magica2", 0.04, 0, 0, 0, 0)
    am:ActSound(36, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(44, "Fall_Belmot3|Fall_Belmot1", 0.1, 0, 0, 0, 0)
    am:ActSound(55, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(57, "Fall_Belmot2", 0.1, 0, 0, 0, 0)
    am:ActSound(65, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(66, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(66, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(66, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(66, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(0, "WhipWgRideFarInit_1A|WhipWgRideFarInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Pasada_Magica_Latigo22", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(32, "WhipWgRideFarInit_1B|WhipWgRideFarInit_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(42, "WhipWgRideFarInit_1C|WhipWgRideFarInit_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "WhipWgRideFarInit_1D|WhipWgRideFarInit_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "WhipWgRideFarInit_1E|WhipWgRideFarInit_1E", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideHitDeath")
  if am ~= nil then
    SoundUtils.AddStep(am, 16, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 26, 3, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(16, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(16, "Fall_Belmot3|Fall_Belmot1", 0.6, 0, 0, 0, 0)
    am:ActSoundNoRepeat(17, "WhipWgRideFarInit_1D|WhipWgRideFarInit_1C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideHitMed")
  if am ~= nil then
    am:ActSound(4, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideHitSoft")
  if am ~= nil then
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideInit")
  if am ~= nil then
    am:ActSound(6, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(16, "Fall_Belmot3|Fall_Belmot1", 0.65, 0, 0, 0, 0)
    am:ActSound(35, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.09, 0, 0, 0, 0)
    am:ActSound(55, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSound(57, "Fall_Belmot2", 0.45, 0, 0, 0, 0)
    am:ActSound(84, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(84, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(84, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(84, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(84, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(93, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(94, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(101, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(107, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(108, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(111, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(114, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "WhipWgRideFarInit_1A|WhipWgRideFarInit_2A", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "WhipWgRideFarInit_1B|WhipWgRideFarInit_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(55, "WhipWgRideFarInit_1C|WhipWgRideFarInit_2C", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "WhipWgRideFarInit_1D|WhipWgRideFarInit_2D", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "WhipWgRideFarInit_1E|WhipWgRideFarInit_1E", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideJump")
  if am ~= nil then
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(18, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideJumpAbort")
  if am ~= nil then
    am:ActSound(5, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(5, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(25, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(25, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(25, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(25, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideJumpShort")
  if am ~= nil then
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideRelax")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWgRideSprint")
  if am ~= nil then
    am:ActSound(36, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(36, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(62, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(62, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(62, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(62, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideSprintEnd")
  if am ~= nil then
    am:ActSound(67, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(67, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideSprintInit")
  if am ~= nil then
    am:ActSound(11, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(11, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideTurnLeft")
  if am ~= nil then
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideTurnRight")
  if am ~= nil then
    am:ActSound(3, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideWalk")
  if am ~= nil then
    am:ActSound(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(4, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(23, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(23, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(23, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(23, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideWalkEnd")
  if am ~= nil then
    am:ActSound(6, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(6, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideWalkInit")
  if am ~= nil then
    am:ActSound(2, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWgRideWalkTurn")
  if am ~= nil then
    am:ActSound(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(1, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_SqueakB|Chain_SqueakC", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSound(12, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideAttack")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideAttack0")
  if am ~= nil then
    am:ActSoundNoRepeat(10, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideAttack1")
  if am ~= nil then
    am:ActSoundNoRepeat(8, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(8, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(29, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideCharge")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWtRideChargeEnd")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWtRideChargeInit")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWtRideCrash")
  if am ~= nil then
    am:ActSoundNoRepeat(9, "Chain_SqueakB|Chain_SqueakC", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(9, "Chain_Squeak2|Chain_Squeak1", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(37, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideEnd")
  if am ~= nil then
    SoundUtils.AddStep(am, 56, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 58, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 75, 1, 0.1, 2, "FLOOR-NOFX")
    am:ActSound(23, "Cuello_Greater_01|Cuello_Greater_02", 0.6, -2, 0, 5000, 0)
    am:ActSoundNoRepeat(0, "WhipWgCatchedWin_2B|WhipWgCatchedWin_1B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "ruede1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(1, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(20, "WhipSgCatchedWin_1C|WhipSgCatchedWin_2B", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "ruede1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(23, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(24, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(54, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(56, "Fall_Belmot3|Fall_Belmot2", 0.75, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(73, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideFail")
  if am ~= nil then
    SoundUtils.AddStep(am, 84, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 87, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(11, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(11, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "Punch_melee1|Punch_melee2|Punch_melee3", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(26, "WhipWtRideFail_1|WhipWtRideFail_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Fall_Belmot3|Fall_Belmot1|Fall_Belmot2", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Rodar_Belmont1", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "HitThud_3|HitThud_4", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(53, "Rodar_Belmont2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(65, "Rodar_Belmont3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(76, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(82, "Mov_Gab1|Mov_Gab2|Mov_Gab3|Mov_Gab4|Mov_Gab5", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(86, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideFarInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 30, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 42, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "WhipGhCatchInit_1|WhipGhCatchThrow_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "WhipWtRideFarInit_11|WhipWtRideFarInit_22", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipWtRideFarInit_1|WhipWtRideFarInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "HitThud_1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Caida_Cuerpo_01", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "HangLeftSwitch_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideHitMed")
  if am ~= nil then
    am:ActSoundNoRepeat(10, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideHitSoft")
  if am ~= nil then
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideInit")
  if am ~= nil then
    SoundUtils.AddStep(am, 30, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 42, 3, 0.1, 2, "FLOOR-NOFX")
    am:ActSoundNoRepeat(2, "WhipGhCatchInit_1|WhipGhCatchThrow_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Pasada_Magica_Latigo22|Pasada_Magica_Latigo11", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_GabrielAA|Chain_GabrielBB", 0.8, 0, 0, 0, 0)
    am:ActSoundNoRepeat(5, "Pasada_Cadena3", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Pasada_CadenaB", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(28, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(35, "WhipWtRideFarInit_11|WhipWtRideFarInit_22", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(40, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(49, "WhipWtRideFarInit_1|WhipWtRideFarInit_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(57, "HitThud_1", 0.35, 0, 0, 0, 0)
    am:ActSoundNoRepeat(59, "Caida_Cuerpo_01", 0.25, 0, 0, 0, 0)
    am:ActSoundNoRepeat(67, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.15, 0, 0, 0, 0)
    am:ActSoundNoRepeat(103, "HangLeftSwitch_1", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakD|Chain_SqueakA|Chain_SqueakE|Chain_SqueakF|Chain_SqueakG", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_Fat1|Chain_Fat2|Chain_Fat3|Chain_Fat4", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.3, 0, 0, 0, 0)
    am:ActSoundNoRepeat(105, "Chain_Squeak2|Chain_Squeak1|Chain_Squeak4|Chain_Squeak3", 0.3, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideRelax")
  if am ~= nil then
  end
  am = ac:GetAct("WhipWtRideRunAttack")
  if am ~= nil then
    am:ActSoundNoRepeat(15, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideTurnLeft")
  if am ~= nil then
    am:ActSoundNoRepeat(6, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideTurnRight")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_SqueakB|Chain_SqueakC", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideWalk")
  if am ~= nil then
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideWalkEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(3, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(4, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipWtRideWalkInit")
  if am ~= nil then
    am:ActSoundNoRepeat(2, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(2, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(3, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(13, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.07, 0, 0, 0, 0)
    am:ActSoundNoRepeat(30, "Chain_Squeak2|Chain_Squeak1", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.12, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_Squeak2|Chain_Squeak1", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_Pull4|Chain_Pull3|Chain_Pull1|Chain_Pull2", 0.2, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Chain_SqueakB|Chain_SqueakC|Chain_SqueakG|Chain_SqueakF|Chain_SqueakA", 0.2, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipZbCatch")
  if am ~= nil then
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    am:ActSoundNoRepeat(95, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "WhipBtCatchLose_2|WhipGhCatchLose2_2|WhipSwCatch2Lose3_1A|WhipSwCatch2Lose3_1C||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(106, "Punch_melee1|Punch_melee2|Punch_melee3", 0.7, 0, 0, 0, 0)
    am:ActSoundNoRepeat(128, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    SoundUtils.AddStep(am, 2, 1, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 17, 3, 0.1, 2, "FLOOR-NOFX")
    SoundUtils.AddStep(am, 40, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 49, 3, 0.12, 2, "FLOOR")
    am:ActSoundNoRepeat(0, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(6, "WhipZbCatchHead_1|WhipZbCatchHead_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Cross_Fly1|Cross_Fly2", 0.5, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(38, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(47, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    am:ActSoundNoRepeat(1, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(10, "Catch_Object2", 0.45, 0, 0, 0, 0)
    am:ActSoundNoRepeat(14, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(15, "WhipCoCatchedWin_2A|WhipCoCatchedWin_2B|WhipCoCatchedWin_2C|WhipCoCatchedWin_2D||", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(27, "WhipCfCatchInit_1|WhipCfCatchInit_2|WhipCfCatchInit_3", 1, 0, 0, 0, 0)
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    SoundUtils.AddStep(am, 21, 1, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 53, 3, 0.1, 2, "FLOOR")
    SoundUtils.AddStep(am, 64, 1, 0.1, 2, "FLOOR")
    am:ActSoundNoRepeat(2, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(7, "WhipZbCatchThrow_1|WhipZbCatchThrow_2", 1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(18, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(44, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
    am:ActSoundNoRepeat(50, "Mov_Gab1|Mov_Gab5|Mov_Gab2", 0, 0, 0, 0, 0)
    am:ActSoundNoRepeat(61, "Mov_Gab6|Mov_Gab4|Mov_Gab3", 0.1, 0, 0, 0, 0)
  end
end
