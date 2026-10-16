Belmont.CrystalPowerMusic = "1.3_WARG_INTRO_B"

function Belmont.EditableProps()
  local a = {
    CharPropertiesWindow.PropCamera,
    CharPropertiesWindow.PropClimb,
    CharPropertiesWindow.MakePropTurnNodes({
      "Head",
      "Neck",
      "Chest",
      "Torso"
    }, {"Relax", "Shot"}),
    {
      "Foot Position",
      {
        {
          "Left Relax",
          "oFootPosCheck._Left",
          "V2D",
          -1000,
          1000,
          1
        },
        {
          "Right Relax",
          "oFootPosCheck._Right",
          "V2D",
          -1000,
          1000,
          1
        },
        {
          "Left Whip",
          "oFootPosCheck.Whip_Left",
          "V2D",
          -1000,
          1000,
          1
        },
        {
          "Right Whip",
          "oFootPosCheck.Whip_Right",
          "V2D",
          -1000,
          1000,
          1
        }
      },
      "IK"
    },
    CharPropertiesWindow.PropFootTest,
    CharPropertiesWindow.PropLeftFoot,
    CharPropertiesWindow.PropRightFoot,
    {
      "Belmont Jump",
      {
        {
          "Vertical Speed",
          "uData.Belmont.JumpY",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Sprint Speed",
          "uData.Belmont.JumpXZSprint",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Run Speed",
          "uData.Belmont.JumpXZ",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Short Speed",
          "uData.Belmont.JumpXZShort",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Climb Speed",
          "uData.Belmont.JumpXZBack",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Air Combo Down",
          "uData.Belmont.AirComboDown",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Air Combo Down Plus",
          "uData.Belmont.AirComboDownPlus",
          "FLOAT",
          1,
          5000,
          10
        },
        {
          "Jump Buffer Caducity$tiempo que se guarda la pulsaci\243n del bot\243n de salto en el buffer si no tiene efecto inmediatamente",
          "uData.Belmont.JumpCaducity",
          "FLOAT",
          0,
          10,
          0.1
        }
      },
      "Design"
    },
    {
      "Explosions Attack",
      {
        {
          "Zone Radius$Los enemigos que se encuentren dentro de este radio podr\225n ser elegidos para recibir una explosi\243n",
          "uData.WeaponsAttacks.ExplosionsZoneRadius",
          "FLOAT",
          1,
          50000,
          1
        },
        {
          "Explosion Radius$Radio que alcanza cada explosi\243n",
          "uData.WeaponsAttacks.ExplosionRadius",
          "FLOAT",
          1,
          50000,
          1
        },
        {
          "Up Test$L\237mite superior del testeo para colocar la explosi\243n en el suelo",
          "uData.WeaponsAttacks.ExplosionUpTest",
          "FLOAT",
          -50000,
          50000,
          1
        },
        {
          "Down Test$L\237mite inferior del testeo para colocar la explosi\243n en el suelo",
          "uData.WeaponsAttacks.ExplosionDownTest",
          "FLOAT",
          -50000,
          50000,
          1
        },
        {
          "Random Shift Radius$Para que las explosiones no aparezcan ex\225ctamente debajo de los enemigos se dispersan aleatoriamente dentro de este radio",
          "uData.WeaponsAttacks.ExplosionRandomShiftRadius",
          "FLOAT",
          1,
          50000,
          1
        },
        {
          "Random Shift Inner Radius$Para que las explosiones no aparezcan ex\225ctamente debajo de los enemigos se dispersan aleatoriamente a part\237r de este radio",
          "uData.WeaponsAttacks.ExplosionRandomShiftInnerRadius",
          "FLOAT",
          1,
          50000,
          1
        },
        {
          "Hit Preset 1",
          "uData.WeaponsAttacks.ExplosionPresets.1",
          "HITPRESET",
          nil,
          nil,
          nil
        },
        {
          "Hit Preset 2",
          "uData.WeaponsAttacks.ExplosionPresets.2",
          "HITPRESET",
          nil,
          nil,
          nil
        },
        {
          "Hit Preset 3",
          "uData.WeaponsAttacks.ExplosionPresets.3",
          "HITPRESET",
          nil,
          nil,
          nil
        },
        {
          "Hit Preset 4",
          "uData.WeaponsAttacks.ExplosionPresets.4",
          "HITPRESET",
          nil,
          nil,
          nil
        }
      },
      "Design"
    },
    {
      "Sprint",
      {
        {
          "Max Sprint Time",
          "MaxSprintTime",
          "FLOAT",
          -1,
          1000,
          1
        }
      },
      "Design"
    },
    CharPropertiesWindow.NeutralEnergy,
    CharPropertiesWindow.GetNeutralEnergyPrizes(),
    CharPropertiesWindow.GetNeutralEnergyOnHit(),
    CharPropertiesWindow.GetLightVampirizeMult(),
    {
      "Light Power",
      {
        {
          "Slot Time Duration",
          "uData.LightPower.SlotTime",
          "INT",
          1,
          50,
          1
        },
        {
          "Regen Easy",
          "uData.LightPower.RegenStepEasy",
          "FLOAT",
          0,
          5,
          0.01
        },
        {
          "Regen Normal",
          "uData.LightPower.RegenStep",
          "FLOAT",
          0,
          5,
          0.01
        },
        {
          "Regen Hard",
          "uData.LightPower.RegenStepHard",
          "FLOAT",
          0,
          5,
          0.01
        },
        {
          "Cost BlockSync Blind$cantidad de magia que se gasta cada vez que ciegas a los enemigos haciendo un bloqueo sincronizado con la magia de luz activa",
          "uData.LightPower.BlockSyncBlindCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost Double Jump Blind$cantidad de magia que se gasta cada vez que haces un doble salto con la magia de luz activa",
          "uData.LightPower.DoubleJumpBlindCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost Light Whip/Melee$cantidad de magia consumida por cada punto de vida recuperado cada vez que golpeas a un enemigo con un golpe de melee o de whip con la magia de luz activa (usando vampiric)",
          "uData.LightPower.LightHitCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Blind Test Distance$Indica la distancia a la que afecta el bloqueo sincronizado con magia blanca para ifligir un blind a los enemigos",
          "uData.Belmont.BlindDistance.Value",
          "FLOAT",
          0,
          1000,
          50
        },
        {
          "Stamina Max Area Displa/Sec$Maximo desplazamineto por segundo en la estamina de area",
          "uData.LightPower.MaxAreaDisplacementSec",
          "FLOAT",
          0,
          75,
          0.1
        },
        {
          "Stamina Acceleration/Sec$Incremento del vector velocidad por segundo cuando se pulsa el Stick",
          "uData.LightPower.AreaIncrementSec",
          "FLOAT",
          0,
          200,
          0.1
        },
        {
          "Stamina Time Speed$Multiplicador de velocidado del juego al activar la estamina blanca",
          "uData.LightPower.StaminaTimeSpeed",
          "FLOAT",
          0,
          1,
          0.1
        },
        {
          "Stamina Relax Cost$Coste de estamina blanca en relax(u/sec)",
          "uData.LightPower.RelaxMagicConsume",
          "FLOAT",
          0,
          5,
          0.1
        },
        {
          "Stamina Movement Cost$Coste de estamina blanca en movimiento(u/sec)",
          "uData.LightPower.MovementMagicConsume",
          "FLOAT",
          0,
          5,
          0.1
        },
        {
          "Stamina PerHit Cost$Coste de estamina blanca en cada hit(u/hit)",
          "uData.LightPower.StaminaConsumePerHit",
          "FLOAT",
          0,
          5,
          0.1
        },
        {
          "Stamina Scroll$Pergamino para poder usar el poder",
          "uData.LightPower.CombatScroll",
          "COMBATSCROLLS"
        },
        {
          "Full Magic for SuperCombo $Necesaria barra de magia llena para el super combo?",
          "uData.LightPower.FullMagicNeeded",
          "BOOL"
        },
        {
          "Blind damage mult$Multiplica el da\241o efectuado a un enemigo cegado",
          "uData.LightPower.BlindedDamageMult",
          "FLOAT",
          0,
          50,
          0.1
        }
      },
      "Design"
    },
    {
      "Dark Power",
      {
        {
          "Slot Time Duration",
          "uData.DarkPower.SlotTime",
          "INT",
          1,
          50,
          1
        },
        {
          "Damage Multiplier$Cuando la magia oscura est\225 activa multiplica el da\241o de los golpes Whip y Melee por este n\250mero",
          "uData.DarkPower.DamageMultiplier",
          "FLOAT",
          0,
          10,
          0.01
        },
        {
          "Cost Dark Dagger$Magia que gasta cada vez que se lanza una daga oscura",
          "uData.DarkPower.DarkDaggerCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost Crystal Curse$Magia que se gasta cada vez que se usa el poder del cristal con la magia oscura activada",
          "uData.DarkPower.CrystalCurseCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost DarkCrystal Drain$Magia que se gasta al usar la absorci\243n del cristal con magia oscura",
          "uData.DarkPower.DarkCrystalDrainCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost Dark Whip/Melee$Cantidad de magia consumida por cada punto de da\241o causado al golpear con magia oscura activada",
          "uData.DarkPower.DarkHitCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost Dark Quick Charge$Magia que se gasta al utilizar los golpes de carga con la magia oscura",
          "uData.DarkPower.DarkQuickChargeCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Cost Dark Dodge$Magia que se gasta al utilizar el dodge con la magia oscura activada",
          "uData.DarkPower.DarkDodgeCost",
          "FLOAT",
          0,
          100,
          0.01,
          1
        },
        {
          "Stamina Time Speed$Multiplicador de velocidado del juego al activar la estamina oscura",
          "uData.DarkPower.StaminaTimeSpeed",
          "FLOAT",
          0,
          1,
          0.1
        },
        {
          "Stamina Directional response$Tiempo minimo que ha de pasar de una animacion de combo de estamina, para que sea efectivo el golpe de stick",
          "uData.DarkPower.DirectionalNoResponsePerc",
          "FLOAT",
          0,
          1,
          0.1
        },
        {
          "Stamina Relax Cost$Coste de estamina oscura en relax(u/sec)",
          "uData.DarkPower.RelaxMagicConsume",
          "FLOAT",
          0,
          5,
          0.1
        },
        {
          "Full Magic for SuperCombo $Necesaria barra de magia llena para el super combo?",
          "uData.DarkPower.FullMagicNeeded",
          "BOOL"
        },
        {
          "Stamina Scroll$Pergamino para poder usar el poder",
          "uData.DarkPower.CombatScroll",
          "COMBATSCROLLS"
        }
      },
      "Design"
    },
    CharPropertiesWindow.GetCrystalAbsortion(),
    CharPropertiesWindow.GetCrystalDrainRates(),
    CharPropertiesWindow.GetDarkCrystalDrainRates(),
    CharPropertiesWindow.GetCrystalExplosionDamages(),
    CharPropertiesWindow.GetCrystalCurseDamages(),
    {
      "Vials",
      {
        {
          "Picked Vials$viales que recoge cada vez que recoge un pack de viales",
          "uData.WeaponsVial.PickedVials",
          "INT",
          0,
          100,
          1
        },
        {
          "Initial Vials$valor por defecto, solo se aplica cuando no se sabe los viales que lleva Gabriel",
          "uData.Belmont.InitialVials",
          "FLOAT",
          1,
          5000,
          1
        },
        {
          "Explosion Radius",
          "uData.Belmont.VialExplosionRadius",
          "FLOAT",
          1,
          50000,
          1
        },
        {
          "Hit Data",
          "uData.Belmont.VialHitPreset",
          "HITPRESET",
          nil,
          nil,
          nil
        },
        {
          "Protective vial cost$cantidad de magia que cuesta usar un vial con magia de luz para que te proteja",
          "uData.Belmont.ProtectiveVialCost",
          "FLOAT",
          0,
          10000,
          0.1
        },
        {
          "Protective vial duration$tiempo que dura la protecci\243n del vial con magia de luz",
          "uData.Belmont.ProtectiveVialDuration",
          "FLOAT",
          0,
          10000,
          0.1
        }
      },
      "Design"
    },
    CharPropertiesWindow.GetVialDamageMult(),
    CharPropertiesWindow.GetVialProtectionMult(),
    {
      "Daggers",
      {
        {
          "Infinite daggers",
          "uData.WeaponsDagger.Infinite",
          "INT",
          0,
          1,
          1
        },
        {
          "Picked daggers$dagas que recoge cada vez que recoge un pack de dagas",
          "uData.WeaponsDagger.PickedDaggers",
          "INT",
          0,
          100,
          1
        },
        {
          "Base number of daggers$n\250mero de dagas m\225ximas sin ampliaciones",
          "uData.WeaponsDagger.MaxDaggersBase",
          "INT",
          0,
          100,
          1
        },
        {
          "Increment per expansion$cantidad de dagas que se amplia el m\225ximo por cada ampliaci\243n",
          "uData.WeaponsDagger.MaxDaggersInc",
          "INT",
          0,
          100,
          1
        },
        {
          "Standard Hit Data (giant)",
          "uData.Belmont.DaggerHitPreset.giant",
          "HITPRESET",
          nil,
          nil,
          nil,
          "Dagger"
        },
        {
          "Standard Hit Data (large)",
          "uData.Belmont.DaggerHitPreset.large",
          "HITPRESET",
          nil,
          nil,
          nil,
          "Dagger"
        },
        {
          "Standard Hit Data (average)",
          "uData.Belmont.DaggerHitPreset.average",
          "HITPRESET",
          nil,
          nil,
          nil,
          "Dagger"
        },
        {
          "Standard Hit Data (small)",
          "uData.Belmont.DaggerHitPreset.small",
          "HITPRESET",
          nil,
          nil,
          nil,
          "Dagger"
        },
        {
          "Dark Power Hit Data (giant)",
          "uData.Belmont.DarkDaggerHitPreset.giant",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DarkDagger"
        },
        {
          "Dark Power Hit Data (large)",
          "uData.Belmont.DarkDaggerHitPreset.large",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DarkDagger"
        },
        {
          "Dark Power Hit Data (average)",
          "uData.Belmont.DarkDaggerHitPreset.average",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DarkDagger"
        },
        {
          "Dark Power Hit Data (small)",
          "uData.Belmont.DarkDaggerHitPreset.small",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DarkDagger"
        },
        {
          "Daggers in a row to discharge$N\250mero de dagas que tienen que impactar a un mismo enemigo para que se produzca la descarga",
          "uData.Belmont.DaggersToDischarge",
          "INT",
          0,
          20,
          1
        },
        {
          "Daggers caducity for discharge$Tiempo m\225ximo que tiene que pasar entre impactos de dagas para que cuenten al contar para producir la descarga",
          "uData.Belmont.ExpDagCaducity",
          "FLOAT",
          0,
          5000,
          0.1
        },
        {
          "Discharge Hit Data (giant)",
          "uData.Belmont.DischargeHitPreset.giant",
          "HITPRESET",
          nil,
          nil,
          nil,
          "FiftDagger"
        },
        {
          "Discharge Hit Data (large)",
          "uData.Belmont.DischargeHitPreset.large",
          "HITPRESET",
          nil,
          nil,
          nil,
          "FiftDagger"
        },
        {
          "Discharge Hit Data (average)",
          "uData.Belmont.DischargeHitPreset.average",
          "HITPRESET",
          nil,
          nil,
          nil,
          "FiftDagger"
        },
        {
          "Discharge Hit Data (small)",
          "uData.Belmont.DischargeHitPreset.small",
          "HITPRESET",
          nil,
          nil,
          nil,
          "FiftDagger"
        },
        {
          "Wave Hit Data (giant)",
          "uData.Belmont.DaggersWaveHitPreset.giant",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Wave Hit Data (large)",
          "uData.Belmont.DaggersWaveHitPreset.large",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Wave Hit Data (average)",
          "uData.Belmont.DaggersWaveHitPreset.average",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Wave Hit Data (small)",
          "uData.Belmont.DaggersWaveHitPreset.small",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Dark Wave Hit Data (giant)",
          "uData.Belmont.DaggersDarkWaveHitPreset.giant",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Dark Wave Hit Data (large)",
          "uData.Belmont.DaggersDarkWaveHitPreset.large",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Dark Wave Hit Data (average)",
          "uData.Belmont.DaggersDarkWaveHitPreset.average",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        },
        {
          "Dark Wave Hit Data (small)",
          "uData.Belmont.DaggersDarkWaveHitPreset.small",
          "HITPRESET",
          nil,
          nil,
          nil,
          "DaggersWave"
        }
      },
      "Design"
    },
    CharPropertiesWindow.GetDarkDaggerDamages(),
    CharPropertiesWindow.GetDaggerDamages(),
    CharPropertiesWindow.GetDarkFairyDamages(),
    CharPropertiesWindow.GetDeadlyCondeDamageMults(),
    CharPropertiesWindow.GetDeadlyCondeBlindness(),
    {
      "Mud",
      {
        {
          "Sink Speed (cm/s)",
          "uData.Belmont.SinkSpeed",
          "FLOAT",
          1,
          50,
          1
        },
        {
          "Sink Speed Stopped (cm/s)",
          "uData.Belmont.SinkSpeedStopped",
          "FLOAT",
          0,
          50,
          1
        },
        {
          "Sink Death Distance (cm)",
          "uData.Belmont.SinkDeathDistance",
          "FLOAT",
          1,
          200,
          1
        },
        {
          "Sink Initial Distance (cm)",
          "uData.Belmont.SinkInitialDistance",
          "FLOAT",
          1,
          150,
          1
        },
        {
          "Sink Climb Distance (cm)",
          "uData.Belmont.SinkClimbDistance",
          "FLOAT",
          1,
          150,
          1
        }
      },
      "Design"
    },
    {
      "Equilibrium",
      {
        {
          "Slide Dist (cm)",
          "uData.Belmont.DistToSlide",
          "FLOAT",
          1,
          200,
          1
        },
        {
          "Slide Vel (cm/s)",
          "uData.Belmont.SlideVel",
          "FLOAT",
          1,
          200,
          1
        },
        {
          "Max Walk Speed Modifier",
          "uData.Belmont.MaxWalkSpeed",
          "FLOAT",
          0.1,
          2,
          0.1
        }
      },
      "Design"
    },
    {
      "Scorer",
      {
        {
          "Time before scorer disappears",
          "uData.Belmont.ScorerTimeToDisappear.Value",
          "FLOAT",
          1,
          15,
          0.5
        },
        {
          "Bar speed modifier (decr)",
          "uData.Belmont.BarSpeedModifier.Value",
          "FLOAT",
          0.1,
          2,
          0.1
        },
        {
          "Bar speed modifier (incr)",
          "uData.Belmont.BarSpeedModifierIncr.Value",
          "FLOAT",
          0.1,
          2,
          0.1
        },
        {
          "Bar speed modifier gems (incr)",
          "uData.Belmont.BarSpeedModifierIncrGems.Value",
          "FLOAT",
          0.1,
          3,
          0.1
        },
        {
          "Stamina Color",
          "uData.Belmont.StaminaColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Color",
          "uData.Belmont.LifeBarColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Overlay Color",
          "uData.Belmont.LifeBarOverlayColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Incr. Color",
          "uData.Belmont.LifeBarIncrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Decr. Color",
          "uData.Belmont.LifeBarDecrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Poisoned Color",
          "uData.Belmont.LifeBarPoisonedColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Poisoned Incr. Color",
          "uData.Belmont.LifeBarPoisonedIncrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Burnt Color",
          "uData.Belmont.LifeBarBurntColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Boss Life Bar Color",
          "uData.Belmont.BossLifeBarColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Boss Life Bar Overlay Color",
          "uData.Belmont.BossLifeBarOverlayColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Boss Life Bar Incr. Color",
          "uData.Belmont.BossLifeBarIncrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Boss Life Bar Decr. Color",
          "uData.Belmont.BossLifeBarDecrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Light Magic Color",
          "uData.Belmont.LightMagicColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Light Magic Overlay Color",
          "uData.Belmont.LightMagicOverlayColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Light Magic Incr. Color",
          "uData.Belmont.LightMagicIncrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Light Magic Decr. Color",
          "uData.Belmont.LightMagicDecrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Dark Magic Color",
          "uData.Belmont.DarkMagicColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Dark Magic Overlay Color",
          "uData.Belmont.DarkMagicOverlayColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Dark Magic Incr. Color",
          "uData.Belmont.DarkMagicIncrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Dark Magic Decr. Color",
          "uData.Belmont.DarkMagicDecrColor.Value",
          "COLOR",
          0,
          0,
          0,
          1
        },
        {
          "Life Bar Shine Color",
          "uData.Belmont.LifeBarShineColor.Value",
          "COLOR",
          1,
          1,
          1,
          1
        },
        {
          "Boss Life Bar Shine Color",
          "uData.Belmont.BossLifeBarShineColor.Value",
          "COLOR",
          1,
          1,
          1,
          1
        },
        {
          "Light Magic Shine Color",
          "uData.Belmont.LightMagicShineColor.Value",
          "COLOR",
          1,
          1,
          1,
          1
        },
        {
          "Dark Magic Shine Color",
          "uData.Belmont.DarkMagicShineColor.Value",
          "COLOR",
          1,
          1,
          1,
          1
        }
      },
      "Design"
    },
    {
      "Focus",
      {
        {
          "Maximum focus",
          "uData.Stamina.MaxStamina.Value",
          "INT",
          0,
          10000,
          1
        },
        {
          "Damage received by me$Incremento de focus (multiplicado por el da\241o) cuando se recibe un golpe",
          "uData.Stamina.StaminaDmgReceived",
          "FLOAT",
          -10,
          10,
          0.1
        },
        {
          "Demage blocked by me$Incremento de focus (multiplicado por el da\241o) se bloquea un golpe",
          "uData.Stamina.StaminaDmgBlocked",
          "FLOAT",
          -10,
          10,
          0.1
        },
        {
          "Damage sync blocked by me$Incremento de focus cuando se hace un bloqueo sincronizado",
          "uData.Stamina.StaminaDmgSyncBlocked",
          "FLOAT",
          -10,
          10,
          0.1
        },
        {
          "Damage received by enemy$Incremento de focus (multiplicado por el da\241o) cuando se golpea",
          "uData.Stamina.StaminaDmgEnemyReceived",
          "FLOAT",
          -10,
          10,
          0.1
        },
        {
          "Demage blocked by enemy$Incremento de focus (multiplicado por el da\241o) cuando se bloquea",
          "uData.Stamina.StaminaDmgEnemyBlocked",
          "FLOAT",
          -10,
          10,
          0.1
        },
        {
          "Activated Max Time$Tiempo que el focus se mantiene completo",
          "uData.Stamina.ActivatedMaxTime.Value",
          "FLOAT",
          0,
          60,
          0.1
        },
        {
          "Decrease Speed (Quantity/Sec)$Velocidad de decremento del focus",
          "uData.Stamina.DecreaseQuantityPerSec",
          "FLOAT",
          0,
          50,
          0.1
        },
        {
          "Magic activation max level$Porcentaje de focus que queda al activar la magia mientras est\225 el focus activo",
          "uData.Stamina.ActivatePowerLose",
          "FLOAT",
          0,
          100,
          1
        },
        {
          "Magic Glows Multiplier$Multiplicador de bolas de magia cuando est\225 el focus activo",
          "uData.Stamina.MagicMultiplier",
          "FLOAT",
          0,
          5,
          0.1
        },
        {
          "Global Coolness Multiplier$Multiplica la molonidad de todos los golpes (para modificar la molonidad de cada golpe ir al HitPreset)",
          "uData.Stamina.CoolnessMult",
          "FLOAT",
          0,
          50,
          0.1
        },
        {
          "Hit caducity time$Tiempo a partir del cual los golpes que se han dado dejan de importar para el conteo de molonidad",
          "uData.Stamina.HitCaducity",
          "FLOAT",
          0,
          5000,
          1
        },
        {
          "BufferSlots$N\250mero de golpes que se guardan en el buffer para contar sus repeticiones. Al sobrepasar este n\250mero se desechan los m\225s antiguos",
          "uData.Stamina.BufferSlots",
          "FLOAT",
          0,
          5000,
          1
        },
        {
          "First repetition mult$Multiplicador de la molonidad si se hace un golpe y ya est\225 una vez en el buffer",
          "uData.Stamina.RepMultipliers.2",
          "FLOAT",
          0,
          5000,
          0.1
        },
        {
          "Second repetition mult$Multiplicador de la molonidad si se hace un golpe y ya est\225 dos veces en el buffer",
          "uData.Stamina.RepMultipliers.3",
          "FLOAT",
          0,
          5000,
          0.1
        },
        {
          "Third repetition mult et al$Multiplicador de la molonidad si se hace un golpe y ya est\225 tres veces o m\225s en el buffer",
          "uData.Stamina.RepMultipliers.4",
          "FLOAT",
          0,
          5000,
          0.1
        },
        {
          "Inactivity Time",
          "uData.Stamina.MaxInactivityTime",
          "INT",
          0,
          10000,
          1
        }
      },
      "Design"
    },
    {
      "Energy",
      {
        {
          "Maximum Energy",
          "uData.Energy.MaxEnergy",
          "INT",
          0,
          1000,
          1
        },
        {
          "Increase Quantity/Sec",
          "uData.Energy.IncreaseQuantityPerSec",
          "FLOAT",
          0,
          1000,
          1
        },
        {
          "Magic Increase Quantity/Sec",
          "uData.Energy.MagicIncreaseQuantityPerSec",
          "FLOAT",
          0,
          1000,
          1
        },
        {
          "Tired Increase Quantity/Sec",
          "uData.Energy.TiredIncreaseQuantityPerSec",
          "FLOAT",
          0,
          1000,
          1
        },
        {
          "Magic Consume Multiplier",
          "uData.Energy.MagicConsumeMultiplier",
          "FLOAT",
          0,
          1,
          0.1
        }
      },
      "Design"
    },
    {
      "Poison",
      {
        {
          "Time poisoned",
          "uData.Belmont.TimePoisoned",
          "FLOAT",
          0,
          100,
          1
        },
        {
          "Life Decrease Speed",
          "uData.Belmont.PoisonSpeed",
          "FLOAT",
          0,
          10,
          0.1
        },
        {
          "Light magic cost",
          "uData.Belmont.LightCost",
          "FLOAT",
          0,
          10,
          0.1
        }
      },
      "Design"
    },
    {
      "Selection",
      {
        {
          "Sight Off$alpha = rot speed",
          "uData.SelectColor.SightOff.Value",
          "V4D",
          0,
          255,
          1
        },
        {
          "Sight On",
          "uData.SelectColor.SightOn.Value",
          "V3D",
          0,
          255,
          1
        },
        {
          "Sight Params$Inner(Mult/Exp) Edge(Mult/Exp)",
          "uData.SelectColor.SightParams.Value",
          "V4D",
          0,
          32,
          0.1
        },
        {
          "Use Off$alpha = rot speed",
          "uData.SelectColor.UseOff.Value",
          "V4D",
          0,
          255,
          1
        },
        {
          "Use On",
          "uData.SelectColor.UseOn.Value",
          "V3D",
          0,
          255,
          1
        },
        {
          "Use Params$Inner(Mult/Exp) Edge(Mult/Exp)",
          "uData.SelectColor.UseParams.Value",
          "V4D",
          0,
          32,
          0.1
        },
        {
          "Hint Off$alpha = rot speed",
          "uData.SelectColor.HintOff.Value",
          "V4D",
          0,
          255,
          1
        },
        {
          "Hint On",
          "uData.SelectColor.HintOn.Value",
          "V3D",
          0,
          255,
          1
        },
        {
          "Hint Params$Inner(Mult/Exp) Edge(Mult/Exp)",
          "uData.SelectColor.HintParams.Value",
          "V4D",
          0,
          32,
          0.1
        }
      },
      "Design"
    },
    {
      "Rumble",
      {
        {
          "Block Enemy",
          "uData.Rumble.BlockEnemy",
          "V4D",
          0,
          5,
          0.1
        },
        {
          "Hit Enemy",
          "uData.Rumble.HitEnemy",
          "V4D",
          0,
          5,
          0.1
        },
        {
          "Block User",
          "uData.Rumble.BlockUsr",
          "V4D",
          0,
          5,
          0.1
        },
        {
          "Sync User",
          "uData.Rumble.SyncUsr",
          "V4D",
          0,
          5,
          0.1
        },
        {
          "Hit User",
          "uData.Rumble.HitUsr",
          "V4D",
          0,
          5,
          0.1
        }
      },
      "Design"
    },
    {
      "Combos",
      {
        {
          "Press caducity$Tiempo que tarda una pulsaci\243n en eliminarse del buffer si no se est\225 empujando el stick",
          "uData.WeaponsCombo.Caducity",
          "FLOAT",
          0,
          10,
          0.1
        },
        {
          "Press caducity pressing stick$Tiempo que tarda una pulsaci\243n en eliminarse del buffer si se est\225 empujando el stick",
          "uData.WeaponsCombo.DinamicCaducity",
          "FLOAT",
          0,
          10,
          0.1
        },
        {
          "Caducity multiplier if no enemy$Multiplica el tiempo que tarda una pulsaci\243n en eliminarse si no estamos apuntando a un enemigo",
          "uData.WeaponsCombo.CaducityNoEnemyMult",
          "FLOAT",
          0,
          10,
          0.1
        },
        {
          "Press cad\250city parry$Tiempo que tarda una pulsaci\243n en eliminarse del buffer si se est\225 pulsando el parry (SOBREESCRIBE A TODO LO DEM\193S)",
          "uData.WeaponsCombo.CaducityParry",
          "FLOAT",
          0,
          10,
          0.1
        },
        {
          "Minimal floor dist to air attack$Por debajo de esta altura no se lanzan ataques a\233reos",
          "uData.WeaponsCombo.MinFloorDist",
          "FLOAT",
          0,
          1000,
          1
        },
        {
          "SyncBlockThreshold$Tiempo umbral para realizar bloqueo sincronizado",
          "uData.Belmont.SyncBlockThreshold.Value",
          "FLOAT",
          0.2,
          2,
          0.1
        },
        {
          "RapidCoverAvoidanceLimit$Tiempo umbral para considerar que este bloqueando en pulsaciones consecutivas",
          "uData.Belmont.RapidCoverAvoidanceLimit.Value",
          "FLOAT",
          0.5,
          5,
          0.1
        }
      },
      "Design"
    },
    {
      "AutoAim",
      {
        {
          "CentimetersVsDegreesRatio$Veces que cuenta m\225s un cent\237metro que un grado para elegir la entidad m\225s adecuada para apuntar",
          "uData.WeaponsCombo.CentimetersVsDegreesRatio.Value",
          "INT",
          0,
          1000,
          1
        },
        {
          "AutoAimObjectPenalization$Este n\250mero divide la puntuaci\243n de autoapuntado de los objetos para que as\237 los enemigos tengan preferencia",
          "uData.WeaponsCombo.AutoAimObjectPenalization.Value",
          "INT",
          0,
          1000,
          1
        },
        {
          "CentimetersVsDegreesRatioInStop$Veces que cuenta m\225s un cent\237metro que un grado para elegir la entidad m\225s adecuada para apuntar cuando no se pulsa el stick",
          "uData.WeaponsCombo.CentimetersVsDegreesRatioInStop.Value",
          "INT",
          0,
          1000,
          1
        },
        {
          "AutoAimObjectPenalizationInStop$Este n\250mero divide la puntuaci\243n de autoapuntado de los objetos cuando no se pulsa el stick para que as\237 los enemigos tengan preferencia",
          "uData.WeaponsCombo.AutoAimObjectPenalizationInStop.Value",
          "INT",
          0,
          1000,
          1
        },
        {
          "Distance Area$Si se usa un ataque con el bot\243n de area y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressArea",
          "INT",
          0,
          10000,
          1
        },
        {
          "Distance Direct$Si se usa un ataque con el bot\243n direccional y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressDirect",
          "INT",
          0,
          10000,
          1
        },
        {
          "Distance Dagger$Si se usa un ataque con el bot\243n de daga y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressDagger",
          "INT",
          0,
          10000,
          1
        },
        {
          "Distance Vial$Si se usa un ataque de area y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressVial",
          "INT",
          0,
          10000,
          1
        },
        {
          "Distance Crystal$Si se usa un ataque de area y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressCrystal",
          "INT",
          0,
          10000,
          1
        },
        {
          "Distance Grip$Si se usa un ataque de agarre y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressGrip",
          "INT",
          0,
          10000,
          1
        },
        {
          "Distance Jump$Si se usa un ataque de salto (SommerJump, Uppercut) y el enemigo est\225 a una distancia mayor que esta, no le autoapuntar\225",
          "uData.WeaponsCombo.Ranges.PressJump",
          "INT",
          0,
          10000,
          1
        }
      },
      "Design"
    },
    {
      "Life",
      {
        {
          "Base",
          "uData.Belmont.BaseLife",
          "INT",
          1,
          1000,
          1
        },
        {
          "Increment",
          "uData.Belmont.LifeInc",
          "INT",
          1,
          1000,
          1
        }
      },
      "Design"
    },
    {
      "Fairies",
      {
        {
          "Picked Fairies$haditas que recoge cada vez que recoge un pack de hadas",
          "uData.WeaponsFairy.PickedFairies",
          "INT",
          0,
          100,
          1
        },
        {
          "Max fairies base$m\225ximo de hadas cuando no se tiene ninguna expansi\243n",
          "uData.WeaponsFairy.MaxFairiesBase",
          "INT",
          1,
          100,
          1
        },
        {
          "Increment per expansion$cantidad de hadas que se amplia el m\225ximo por cada ampliaci\243n",
          "uData.WeaponsFairy.MaxFairiesInc",
          "INT",
          1,
          100,
          1
        }
      },
      "Design"
    },
    {
      "PickableItems",
      {
        {
          "SpinSpeed",
          "uData.PickableItems.SpinSpeed",
          "FLOAT",
          0,
          100,
          0.1
        },
        {
          "FloatingSpeed",
          "uData.PickableItems.FloatingSpeed",
          "FLOAT",
          0,
          100,
          0.1
        },
        {
          "FloatingAmplitude",
          "uData.PickableItems.FloatingAmplitude",
          "FLOAT",
          0,
          100,
          0.1
        },
        {
          "PickRadius",
          "uData.PickableItems.PickRadius",
          "FLOAT",
          0,
          1000,
          1
        }
      },
      "Design"
    }
  }
  CollectableItems.CollectableDataEditor(a)
  return a
end

function Belmont.EditableEvents()
  return {
    BelmontEvents = {
      Logic = {
        {
          "Belmont.CallbackCaller",
          V3D(64, 64, 128)
        },
        {
          "Callback",
          "STRING",
          ""
        }
      },
      AvoidMultipleDaggers = {
        {
          "Belmont.EventAvoidMultipleDaggers",
          V3D(200, 64, 128)
        },
        {
          "Action",
          "STRING",
          ""
        }
      },
      DarkQuickCharge = {
        {
          "Belmont.DarkQuickCharge",
          V3D(200, 64, 128)
        },
        {
          "Action",
          "STRING",
          ","
        },
        {
          "HitPreset1",
          "COMBOBOX",
          ",",
          {},
          "Editor_CombatEvents.OnChangeHitPreset",
          "Editor_CombatEvents.FillHitPresets"
        },
        {
          "HitPreset2",
          "COMBOBOX",
          ",",
          {},
          "Editor_CombatEvents.OnChangeHitPreset",
          "Editor_CombatEvents.FillHitPresets"
        },
        {
          "HitPreset3",
          "COMBOBOX",
          ",",
          {},
          "Editor_CombatEvents.OnChangeHitPreset",
          "Editor_CombatEvents.FillHitPresets"
        },
        {
          "HitPreset4",
          "COMBOBOX",
          "",
          {},
          "Editor_CombatEvents.OnChangeHitPreset",
          "Editor_CombatEvents.FillHitPresets"
        }
      },
      SetDoubleJumpCounter = {
        {
          "Belmont.SetDoubleJumpCounter",
          V3D(60, 230, 128)
        },
        {
          "Set",
          "INT",
          "",
          V3D(0, 1, 1)
        }
      },
      BrutalAim = {
        {
          "Belmont.BrutalAim",
          V3D(60, 230, 128)
        }
      }
    }
  }
end

Belmont.ExtraLibs = {
  {
    "Scripts/Player/Equilibrium.lua",
    "Equilibrium"
  },
  {
    "Scripts/Player/Tired.lua",
    "Tired"
  },
  {
    "Scripts/Player/LightPower.lua",
    "LightPower"
  },
  {
    "Scripts/Player/DarkPower.lua",
    "DarkPower"
  },
  {
    "Scripts/Player/NeutralEnergy.lua",
    "NeutralEnergy"
  },
  {
    "Scripts/Player/Stamina.lua",
    "Stamina"
  },
  {
    "Scripts/Player/Energy.lua",
    "Energy"
  },
  {
    "Scripts/Player/CollectableItems.lua",
    "CollectableItems"
  },
  {
    "Scripts/Player/PushBox.lua",
    "PushBox"
  },
  {
    "Scripts/Chars/Props/Player/DropPresets.lua",
    "DropPresets"
  },
  {
    "Scripts/Chars/Props/Player/PrizePresets.lua",
    "PrizePresets"
  },
  {
    "Scripts/Player/PickableItems.lua",
    "PickableItems"
  },
  {
    "Scripts/Weapons/WeaponsAttacks.lua",
    "WeaponsAttacks"
  },
  {
    "Scripts/Weapons/WeaponsWhip.lua",
    "WeaponsWhip"
  },
  {
    "Scripts/Weapons/WeaponsDagger.lua",
    "WeaponsDagger"
  },
  {
    "Scripts/Weapons/WeaponsVial.lua",
    "WeaponsVial"
  },
  {
    "Scripts/Weapons/WeaponsFairy.lua",
    "WeaponsFairy"
  },
  {
    "Scripts/Weapons/WeaponsCrystal.lua",
    "WeaponsCrystal"
  }
}

function Belmont.Preload()
  for i = 1, #Belmont.ExtraLibs do
    local a = Belmont.ExtraLibs[i]
    _G[a[2]] = {}
    Game.PreloadLibrary(a[1], a[2], false)
  end
  Belmont.CreateEffects()
  Belmont.main()
  local a = {
    "gvHasBeenPoisonedByGhoul",
    "gvHasBeenPoisonedBySpider",
    "gvGabrielSnakeVisor",
    "gvGabrielSnakeMoustache",
    "gvGabrielSnakeBandana"
  }
  for i = 1, #a do
    g = Game.CreateGvar(a[i], "bool")
    g.Value = false
    g.Default = false
  end
end

Belmont.DaggerHitPreset = {}
Belmont.DarkDaggerHitPreset = {}
Belmont.DischargeHitPreset = {}
Belmont.DaggersWaveHitPreset = {}
Belmont.DaggersDarkWaveHitPreset = {}
Belmont.MechanismPalancaGrandeOldCam = nil
Belmont.JumpEnabled = true
Belmont.SaveJumpTime = 0.1

function Belmont.main()
  Belmont.ChainModelInUse = Game.GVar("ChainModelInUse")
  Belmont.ChainModelInUse.Value = 1
  Game.Set("IsSpiderMinigameActive", 0)
  Belmont.RideTutorialPassed = Game.GVar("RideTutorialPassed")
  Belmont.TimePoisoned = 10
  Belmont.PoisonSpeed = 1
  Belmont.LightCost = 0.5
  Game.Set("BelmontPoisonedTimeLeft", 0)
  for i = 1, #Belmont.ExtraLibs do
    local a = Belmont.ExtraLibs[i]
    if _G[a[2]] then
      _G[a[2]].main()
    else
      Game.PreloadLibrary(a[1], a[2])
    end
  end
  Belmont.DagaFile = "Models/Chars/Belmont/GabrielDagaA.M3D"
  Belmont.VialFile = "Models/Chars/Belmont/Pear.M3D"
  Game.Preload3DObject(Belmont.DagaFile)
  Game.Preload3DObject(Belmont.VialFile)
  local ac, am, typo, ev, arr, i, ActList
  typo = ""
  ac = MakeChar.InitChar("Belmont", "Belmont")
  ac.oFootPosCheck:AddFootPosCheck("", -20, -30, 15, 35)
  ac.oFootPosCheck:AddFootPosCheck("Whip", -44, -26, 43, 30)
  Belmont.BaseLife = 100
  Belmont.LifeInc = 20
  ac.bStopOnWall = true
  ac.GrabNode = "DC_Grab"
  ac.HitNode = "DC_WHIP_HIT"
  ac.WhipNode1 = "DC_WHIP_01"
  ac.WhipNode2 = "DC_WHIP_02"
  ac.WhipNode3 = "DC_WHIP_03"
  ac.WhipNode4 = "DC_WHIP_04"
  ac.uData.Belmont = Belmont
  ac.uData.NeutralEnergy = NeutralEnergy
  ac.uData.WeaponsCrystal = WeaponsCrystal
  ac.uData.WeaponsVial = WeaponsVial
  ac.uData.WeaponsDagger = WeaponsDagger
  ac.uData.WeaponsFairy = WeaponsFairy
  ac.uData.LightPower = LightPower
  ac.uData.DarkPower = DarkPower
  ac.uData.Stamina = Stamina
  ac.uData.Energy = Energy
  ac.uData.WeaponsCombo = WeaponsCombo
  ac.uData.CollectableItems = CollectableItems
  ac.uData.PickableItems = PickableItems
  ac.uData.WeaponsAttacks = WeaponsAttacks
  ac.uData.SelectColor = {
    SightOff = Game.GVar("SelectedSightColorOff"),
    SightOn = Game.GVar("SelectedSightColorOn"),
    SightParams = Game.GVar("SelectedSightParams"),
    UseOff = Game.GVar("SelectedUseColorOff"),
    UseOn = Game.GVar("SelectedUseColorOn"),
    UseParams = Game.GVar("SelectedUseParams"),
    HintOff = Game.GVar("SelectedHintColorOff"),
    HintOn = Game.GVar("SelectedHintColorOn"),
    HintParams = Game.GVar("SelectedHintParams")
  }
  ac.uData.Rumble = Weapons.Rumble
  ac.uData.Belmont.ScorerTimeToDisappear = Game.GVar("ScorerTimeToDisappear")
  ac.uData.Belmont.BarSpeedModifier = Game.GVar("BarSpeedModifier")
  ac.uData.Belmont.BarSpeedModifierIncr = Game.GVar("BarSpeedModifierIncr")
  ac.uData.Belmont.BarSpeedModifierIncrGems = Game.GVar("BarSpeedModifierIncrGems")
  ac.uData.Belmont.StaminaColor = Game.GVar("StaminaColor")
  ac.uData.Belmont.LifeBarColor = Game.GVar("LifeBarColor")
  ac.uData.Belmont.LifeBarOverlayColor = Game.GVar("LifeBarOverlayColor")
  ac.uData.Belmont.LifeBarIncrColor = Game.GVar("LifeBarIncrColor")
  ac.uData.Belmont.LifeBarDecrColor = Game.GVar("LifeBarDecrColor")
  ac.uData.Belmont.LifeBarPoisonedColor = Game.GVar("LifeBarPoisonedColor")
  ac.uData.Belmont.LifeBarPoisonedIncrColor = Game.GVar("LifeBarPoisonedIncrColor")
  ac.uData.Belmont.LifeBarBurntColor = Game.GVar("LifeBarBurntColor")
  ac.uData.Belmont.BossLifeBarColor = Game.GVar("BossLifeBarColor")
  ac.uData.Belmont.BossLifeBarOverlayColor = Game.GVar("BossLifeBarOverlayColor")
  ac.uData.Belmont.BossLifeBarIncrColor = Game.GVar("BossLifeBarIncrColor")
  ac.uData.Belmont.BossLifeBarDecrColor = Game.GVar("BossLifeBarDecrColor")
  ac.uData.Belmont.LightMagicColor = Game.GVar("LightMagicColor")
  ac.uData.Belmont.LightMagicOverlayColor = Game.GVar("LightMagicOverlayColor")
  ac.uData.Belmont.LightMagicIncrColor = Game.GVar("LightMagicIncrColor")
  ac.uData.Belmont.LightMagicDecrColor = Game.GVar("LightMagicDecrColor")
  ac.uData.Belmont.DarkMagicColor = Game.GVar("DarkMagicColor")
  ac.uData.Belmont.DarkMagicOverlayColor = Game.GVar("DarkMagicOverlayColor")
  ac.uData.Belmont.DarkMagicIncrColor = Game.GVar("DarkMagicIncrColor")
  ac.uData.Belmont.DarkMagicDecrColor = Game.GVar("DarkMagicDecrColor")
  ac.uData.Belmont.LifeBarShineColor = Game.GVar("LifeBarShineColor")
  ac.uData.Belmont.BossLifeBarShineColor = Game.GVar("BossLifeBarShineColor")
  ac.uData.Belmont.LightMagicShineColor = Game.GVar("LightMagicShineColor")
  ac.uData.Belmont.DarkMagicShineColor = Game.GVar("DarkMagicShineColor")
  Belmont.JumpY = 1150
  Belmont.JumpXZSprint = 1400
  Belmont.JumpXZ = 600
  Belmont.JumpXZShort = 350
  Belmont.JumpXZBack = 700
  Belmont.AirComboDown = 30
  Belmont.AirComboDownPlus = 20
  Belmont.BlindDistance = Game.GVar("BelmontBlindDistance")
  Belmont.SyncBlockThreshold = Game.GVar("SyncBlockThreshold")
  Belmont.RapidCoverAvoidanceLimit = Game.GVar("RapidCoverAvoidanceLimit")
  MakeChar.LoadProperties(ac)
  Energy.Reset()
  Stamina.Reset()
  MakeChar.NewTurn = true
  MakeChar.Turn180 = 1
  ac.RagDollFilePath = "Models/Chars/Belmont/Belmont.pxs"
  ac.CreateRagDollParts = 0
  MakeChar.Fake_Prefix.Belmont = "B"
  MakeChar.MaxSpeed = 1.1
  MakeChar.MinSpeed = 0.7
  ac.VisibleSlotTime = 0.01666666753590107
  ac.UserSlotTime = 0.01666666753590107
  ac.HiddenNearSlotTime = 0.01666666753590107
  ac.HiddenFarSlotTime = 0.01666666753590107
  ac.RCVisibleSlotTime = 0.01666666753590107
  ac.RCHiddenSlotTime = 0.01666666753590107
  ac.UseRagdollToDie = 0
  ac.DispCrouch = 0
  ac.UseWhip = 1
  ac.UseParrying = 1
  ac.bIntensiveOnPlatform = true
  ac.FreeCameraPress = "Camera.SwitchFreeCamera"
  ac.JumpPress = "Belmont.JumpPress"
  ac.JumpRelease = "Belmont.JumpRelease"
  ac.GripAction = "Hook.GripAction"
  ac.ParryPress = "Belmont.ParryPress"
  ac.ParryRelease = "Belmont.ParryRelease"
  Hook.AddGripAnm(ac)
  PushPull.AddAnm(ac)
  ac.DoExtraRelaxCallback = "Belmont.DoExtraRelaxCallback"
  ac.OnSufixChange = "Belmont.OnSufixChange"
  ac.AreaAttackPress = "Belmont.AreaAttackPress"
  ac.AreaAttackRelease = "Belmont.AreaAttackRelease"
  ac.OnSwitchFall = "Belmont.OnSwitchFall"
  ac.OnSurfaceChange = "Belmont.OnSurfaceChange"
  ac.DirectionalAttackPress = "Belmont.DirectAttackPress"
  ac.DirectionalAttackRelease = "Belmont.DirectAttackRelease"
  ac.GripPress = "Belmont.GripPress"
  ac.RangedAttackPress = "Belmont.RangedAttackPress"
  ac.RangedAttackRelease = "Belmont.RangedAttackRelease"
  ac.DigitalUpPress = "Belmont.SelectFairies"
  ac.DigitalDownPress = "Belmont.SelectVial"
  ac.DigitalLeftPress = "Belmont.SelectCrystal"
  ac.DigitalRightPress = "Belmont.SelectDaggers"
  ac.OnDoubleTap = "Belmont.OnDoubleTap"
  ac.OnCreate = "Belmont.OnCreate"
  ac.OnDamage = "Belmont.OnDamage"
  ac.OnPreHit = "!PreHit"
  ac.AI_NodeVision = "Bip Gabriel Head"
  Belmont.AddBasicAnims(ac, typo, 2)
  Belmont.AddFallActions(ac, typo)
  MakeChar.AddFallActions(ac, {
    {
      "HangWallFallInit",
      0
    },
    {
      "BalanceShakeFall",
      0
    },
    {
      "HangWallShakeFall",
      0
    },
    {
      "HangWallShakeFall0",
      0
    },
    {
      "HangFallInit",
      0
    },
    {
      "HangWallLookDownFall",
      0
    },
    {
      "HangLookDownFall",
      0
    }
  }, 0, typo)
  MakeChar.SetAirActionProperties(ac:GetAct("BalanceShakeFall"))
  MakeChar.SetAirActionProperties(ac:GetAct("HangWallShakeFall"))
  MakeChar.SetAirActionProperties(ac:GetAct("HangWallShakeFall0"))
  ActList = {
    "JumpInit",
    "JumpRunInit",
    "JumpShortInit"
  }
  Belmont.AddJumpActions(ac, typo, ActList)
  ActList = {
    "JumpBackInit",
    "JumpLeftInit",
    "JumpRightInit"
  }
  Belmont.AddJumpActions(ac, typo, ActList)
  for i = 1, table.getn(ActList) do
    am = ac:GetAct(typo .. ActList[i])
    am.UseFallCtrl = 0
    am.RotSpeed = 0
  end
  Equilibrium.AddEquilibriumAnims(ac)
  am = MakeChar.AddMove(ac, "StillDie", "StillDie", 0, 1, 0)
  am.MaxSpeed = 4
  am.MinSpeed = 4
  am.PriorityLevel = 1024
  MakeChar.CreateTakeAction("PullLever", ac, 10)
  am = ac:GetAct("PullLever")
  am.UseDisp = 1
  MakeChar.CreateTakeAction("WhipPullLever", ac, 10)
  am = ac:GetAct("WhipPullLever")
  am.UseDisp = 1
  MakeChar.CreateTakeAction("WhipRingBell", ac, 10)
  am = ac:GetAct("WhipRingBell")
  am.UseDisp = 1
  MakeChar.CreateTakeAction("WhipGetAmmo", ac, 10)
  am = ac:GetAct("WhipGetAmmo")
  am.UseDisp = 1
  MakeChar.MakeEvent(ac, "WhipGetAmmo", "", "PickableItems.EventPickFromObj", 53)
  MakeChar.MakeEvent(ac, "WhipGetAmmo", "", "PickableItems.ResetPickingFromObj", nil, 0)
  MakeChar.CreateTakeAction("GetAmmo", ac, 10)
  am = ac:GetAct("GetAmmo")
  am.UseDisp = 1
  MakeChar.MakeEvent(ac, "GetAmmo", "", "PickableItems.EventPickFromObj", 53)
  MakeChar.MakeEvent(ac, "GetAmmo", "", "PickableItems.ResetPickingFromObj", nil, 0)
  typo = "Whip"
  Belmont.AddBasicAnims(ac, typo, 1)
  Belmont.AddFallActions(ac, typo)
  MakeChar.AddFallActions(ac, {
    {"FallDeath", 1}
  }, 0, typo)
  am = ac:GetAct("WhipFallDeath")
  am.PriorityLevel = 1024
  am.InterpTime = 0.075
  MakeChar.AddWalkActions(ac, 540, 0, 1, {"Run0"}, typo)
  MakeChar.MakeEvent(ac, "WhipRun", "3:>WhipRun0", "!AnmSetRndAction")
  MakeChar.MakeEvent(ac, "WhipRun0", "ExtraSufix=", "!AnmSetStrVal").Discardable = 0
  MakeChar.MakeEvent(ac, "WhipRun0", "#Run", "!AnmSetAction")
  ActList = {
    "JumpInit",
    "JumpRunInit",
    "JumpShortInit"
  }
  Belmont.AddJumpActions(ac, typo, ActList)
  MakeChar.MakeEvent(ac, "WhipRelax0", "ExtraSufix=", "!AnmSetStrVal", 20)
  MakeChar.AddBlockActions(ac, typo)
  MakeChar.AddDodgeAction(ac, "DodgeRight", typo, 26, true)
  MakeChar.AddDodgeAction(ac, "DodgeLeft", typo, 26, true)
  MakeChar.AddDodgeAction(ac, "DodgeFront", typo, 26, true)
  MakeChar.AddDodgeAction(ac, "DodgeBack", typo, 26, true)
  am = MakeChar.AddMove(ac, typo .. "DodgeBackToRelax", typo .. "DodgeBackToRelax", 0, 1, 0)
  am.PriorityLevel = 40
  am.NextToLaunch = "WhipRelax"
  am = MakeChar.AddMove(ac, typo .. "DodgeLeftToRelax", typo .. "DodgeLeftToRelax", 0, 1, 0)
  am.PriorityLevel = 40
  am.NextToLaunch = "WhipRelax"
  am = MakeChar.AddMove(ac, typo .. "DodgeRightToRelax", typo .. "DodgeRightToRelax", 0, 1, 0)
  am.PriorityLevel = 40
  am.NextToLaunch = "WhipRelax"
  Belmont.Hits = {
    Fall = {
      [""] = {
        [""] = 2
      },
      Hard = {
        [""] = 2
      }
    },
    Block = {
      [""] = {
        [""] = 2
      },
      Sync = {
        [""] = 2
      },
      Break = {
        [""] = 2
      }
    },
    [""] = {
      Soft = {
        Right = 12,
        Left = 12,
        Fw = 12,
        Back = 12
      },
      Med = {
        Right = 12,
        Left = 12,
        Fw = 12,
        Back = 12
      },
      Hard = {
        Right = 37,
        Left = 37,
        Fw = 40,
        Back = 55
      },
      Crush = {
        [""] = -1,
        End = 40
      }
    }
  }
  MakeChar.AddFallActions(ac, {
    {
      "WhipFallHit",
      1
    },
    {
      "WhipFallHitEnd",
      0
    }
  }, 0, "")
  am = ac:GetAct("WhipFallHitEnd")
  am.PriorityLevel = 1024
  am.IgnoreAI = 1
  am.UseDisp = 1
  MakeChar.MakeEvent(ac, "WhipFallHitEnd", "!WhipRelax", "!AnmSetDefaultLoop", nil, 0)
  am = MakeChar.AddMove(ac, "WhipHitFall", "WhipHitFall", 0, 1, 0)
  am.PriorityLevel = 1024
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  MakeChar.MakeEvent(ac, "WhipHitFall", "WhipFallHit", "!AnmSetDefaultLoop")
  MakeChar.MakeEvent(ac, "WhipHitFall", "ExtraSufix=Whip", "!AnmSetStrVal")
  am.IgnoreAI = 1
  MakeChar.AddFallActions(ac, {
    {
      "WhipFallHitHard",
      1
    },
    {
      "WhipFallHitHardEnd",
      0
    }
  }, 0, "")
  am = ac:GetAct("WhipFallHitHardEnd")
  am.PriorityLevel = 1024
  am.IgnoreAI = 1
  am.UseDisp = 1
  MakeChar.MakeEvent(ac, "WhipFallHitHardEnd", "!WhipRelax", "!AnmSetDefaultLoop", nil, 0)
  am = MakeChar.AddMove(ac, "WhipHitFallHard", "WhipHitFallHard", 0, 1, 0)
  am.PriorityLevel = 1024
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  MakeChar.MakeEvent(ac, "WhipHitFallHard", "WhipFallHitHard", "!AnmSetDefaultLoop")
  MakeChar.MakeEvent(ac, "WhipHitFallHard", "ExtraSufix=Whip", "!AnmSetStrVal")
  am.IgnoreAI = 1
  MakeChar.AddHitActions(ac, Belmont.Hits, typo)
  am = ac:GetAct("WhipFallHit")
  am.PriorityLevel = 1
  am.IgnoreAI = 1
  am.OnObjSlot = "Belmont.CheckFallHit"
  am = ac:GetAct("WhipFallHitHard")
  am.PriorityLevel = 1
  am.IgnoreAI = 1
  am.OnObjSlot = "Belmont.CheckFallHit"
  am = ac:GetAct("WhipHitCrush")
  am.isLoop = 1
  typo = ""
  ac.OnSwitchAnmGroup = "Belmont.OnSwitchAnmGroup"
  ac.ClimbType = "Six"
  ac.OnClimb = "!HeroinClimbWall"
  ac.OnFall = "!HeroinFallEvent"
  ac.OnSlideFallLimit = "Belmont.OnSlideFallLimit"
  ac.SlideFallLimit = 1
  ac.OnSlideFallLimitBreak = "Belmont.OnSlideFallLimitBreak"
  ac.SlideFallLimitBreak = 0.45
  ActList = {
    {
      "RunInitFallFix",
      3,
      "!AnmSetDefaultLoop",
      ">Run"
    },
    {
      "RunInitFallRunFix",
      3,
      "!AnmSetDefaultLoop",
      ">Run"
    },
    {
      "RunInitFallShortFix",
      3,
      "!AnmSetDefaultLoop",
      ">Run"
    },
    {
      "WhipRunInitFallFix",
      3,
      "!AnmSetDefaultLoop",
      ">WhipRun"
    },
    {
      "WhipRunInitFallRunFix",
      3,
      "!AnmSetDefaultLoop",
      ">WhipRun"
    },
    {
      "WhipRunInitFallShortFix",
      3,
      "!AnmSetDefaultLoop",
      ">WhipRun"
    },
    {
      "Hang",
      1,
      1
    },
    {
      "HangSoftRight",
      0
    },
    {
      "HangSoftLeft",
      0
    },
    {
      "HangLeft",
      2,
      "!HeroinStopLoopEvent",
      "lHangLeftEnd"
    },
    {
      "HangRight",
      2,
      "!HeroinStopLoopEvent",
      "rHangRightEnd"
    },
    {
      "HangLeftSwitch",
      0
    },
    {
      "HangRightSwitch",
      0
    },
    {
      "RunInitWallClimb",
      2,
      "!AnmSetDefaultLoop",
      ">Run"
    },
    {
      "RunInitClimb",
      2,
      "!AnmSetDefaultLoop",
      ">Run"
    },
    {
      "HangHighInit",
      0
    },
    {
      "HangRunInit",
      0
    },
    {
      "HangRunInitInit",
      0
    },
    {"HangInit", 0},
    {
      "HangShortInit",
      0
    },
    {
      "HangInitInit",
      0
    },
    {
      "HangShortInitInit",
      0
    },
    {
      "HangWallLookLeftFarLeftSwitch",
      0
    },
    {
      "HangWallLookRightFarRightSwitch",
      0
    },
    {
      "HangWall",
      1,
      1
    },
    {
      "HangWallFarRight0",
      0
    },
    {
      "HangWallFarRight",
      0
    },
    {
      "HangWallFarRightSwitch",
      0
    },
    {
      "HangWallFarLeft",
      0
    },
    {
      "HangWallFarLeft0",
      0
    },
    {
      "HangWallFarLeftSwitch",
      0
    },
    {
      "HangRightEnd",
      1,
      0
    },
    {
      "HangLeftEnd",
      1,
      0
    },
    {
      "HangWallRightEnd",
      1,
      0
    },
    {
      "HangWallLeftEnd",
      1,
      0
    },
    {
      "HangClimb",
      2,
      "!AnmSetDefaultLoop",
      ">Relax"
    },
    {
      "HangWallInit",
      0
    },
    {
      "HangWallInitMid",
      0
    },
    {
      "HangWallInitInit",
      0
    },
    {
      "HangWallHighInit",
      0
    },
    {
      "HangWallRunInit",
      0
    },
    {
      "HangWallShortInit",
      0
    },
    {
      "HangWallShortInitInit",
      0
    },
    {
      "HangWallSoftRight",
      0
    },
    {
      "HangWallSoftLeft",
      0
    },
    {
      "HangWallLeft",
      2,
      "!HeroinStopLoopEvent",
      "lHangWallLeftEnd"
    },
    {
      "HangWallRight",
      2,
      "!HeroinStopLoopEvent",
      "rHangWallRightEnd"
    },
    {
      "HangWallLeftSwitch",
      0
    },
    {
      "HangWallRightSwitch",
      0
    },
    {
      "HangWallFromEdge",
      2,
      "!CharTurnAction",
      " 180HangWall|HangWall"
    },
    {
      "HangWallFromEdge0",
      2,
      "!CharTurnAction",
      " 180HangWall|HangWall"
    },
    {
      "HangFromEdge",
      2,
      "!CharTurnAction",
      " 180Hang|Hang"
    },
    {
      "HangFromEdge0",
      2,
      "!CharTurnAction",
      " 180Hang|Hang"
    },
    {
      "HangCorner90Left",
      2,
      "!CharTurnAction",
      " 270Hang|Hang"
    },
    {
      "HangCorner270Left",
      2,
      "!CharTurnAction",
      "  90Hang|Hang"
    },
    {
      "HangCorner90Right",
      2,
      "!CharTurnAction",
      "  90Hang|Hang"
    },
    {
      "HangCorner270Right",
      2,
      "!CharTurnAction",
      " 270Hang|Hang"
    },
    {
      "HangWallCorner90Left",
      2,
      "!CharTurnAction",
      " 270HangWall|HangWall"
    },
    {
      "HangWallCorner270Left",
      2,
      "!CharTurnAction",
      "  90HangWall|HangWall"
    },
    {
      "HangWallCorner90Right",
      2,
      "!CharTurnAction",
      "  90HangWall|HangWall"
    },
    {
      "HangWallCorner270Right",
      2,
      "!CharTurnAction",
      " 270HangWall|HangWall"
    },
    {"HangWallUp", 0},
    {
      "HangWallUp0",
      0
    },
    {
      "HangWallDown",
      0
    },
    {
      "HangWallDownSwitch",
      0
    },
    {
      "HangWallDown0",
      0
    },
    {
      "HangWallDownSwitch0",
      0
    },
    {
      "HangWallFarDownJump",
      2,
      "!CharTurnAction",
      " 180JumpBackInit|Fall"
    },
    {
      "HangWallFarLeftJump",
      2,
      "!CharTurnAction",
      " 270JumpLeftInit|Fall"
    },
    {
      "HangWallFarRightJump",
      2,
      "!CharTurnAction",
      "  90JumpRightInit|Fall"
    },
    {
      "HangWallLookFarBackJump",
      2,
      "!CharTurnAction",
      " 180JumpBackInit|Fall"
    },
    {
      "HangWallLookFarLeftJump",
      2,
      "!CharTurnAction",
      " 270JumpLeftInit|Fall"
    },
    {
      "HangWallLookFarRightJump",
      2,
      "!CharTurnAction",
      "  90JumpRightInit|Fall"
    },
    {
      "HangWallClimb",
      2,
      "!AnmSetDefaultLoop",
      ">Relax"
    },
    {
      "HangWallLookRight",
      1,
      1
    },
    {
      "HangWallLookRightInit",
      1,
      0
    },
    {
      "HangWallLookRightEnd",
      1,
      0
    },
    {
      "HangWallLookRightFarRight",
      0
    },
    {
      "HangWallLookRightFarRight0",
      0
    },
    {
      "HangWallLookLeft",
      1,
      1
    },
    {
      "HangWallLookLeftInit",
      1,
      0
    },
    {
      "HangWallLookLeftEnd",
      1,
      0
    },
    {
      "HangWallLookLeftFarLeft",
      0
    },
    {
      "HangWallLookLeftFarLeft0",
      0
    },
    {
      "HangWallLookBack",
      1,
      1
    },
    {
      "HangWallLookBackInit",
      1,
      0
    },
    {
      "HangWallLookBackEnd",
      1,
      0
    },
    {
      "HangWallLookDown",
      1,
      1
    },
    {
      "HangWallLookDownInit",
      1,
      0
    },
    {
      "HangWallLookDownEnd",
      1,
      0
    },
    {
      "HangLookDown",
      1,
      1
    },
    {
      "HangLookDownInit",
      1,
      0
    },
    {
      "HangLookDownEnd",
      1,
      0
    },
    {
      "HangWallShake",
      1,
      0
    },
    {
      "HangWallShake0",
      1,
      0
    },
    {
      "HangWallShake1",
      1,
      0
    },
    {
      "HangWallShake2",
      1,
      0
    },
    {
      "HangWallAttackInit",
      1,
      0
    },
    {
      "HangWallAttack",
      1,
      1
    },
    {
      "HangWallAttackEnd",
      1,
      0
    },
    {
      "HangWallFromBalance",
      0
    },
    {
      "BalanceFromHangWall",
      0
    },
    {
      "HangWallToBalance",
      0
    },
    {
      "BalanceToHangWall",
      0
    },
    {
      "BalanceFallEnd",
      1,
      0
    },
    {
      "BalanceDodge",
      1,
      0
    },
    {
      "Balance",
      1,
      1
    },
    {
      "Balance0",
      1,
      0
    },
    {
      "Balance1",
      1,
      0
    },
    {
      "BalanceRun",
      1,
      1
    },
    {
      "BalanceRun0",
      1,
      0
    },
    {
      "BalanceRunTurn",
      1,
      0
    },
    {
      "BalanceTurn",
      1,
      0
    },
    {
      "BalanceRunInit",
      1,
      0
    },
    {
      "BalanceRunEndLeft",
      1,
      0
    },
    {
      "BalanceRunEndRight",
      1,
      0
    },
    {
      "BalanceAttackInit",
      1,
      0
    },
    {
      "BalanceAttack",
      1,
      1
    },
    {
      "BalanceAttackEnd",
      1,
      0
    },
    {
      "BalanceShakeInit",
      1,
      0
    },
    {
      "BalanceShake",
      1,
      1
    },
    {
      "BalanceShakeEnd",
      1,
      0
    }
  }
  MakeChar.AddHangPlatformActions(ac, ActList)
  MakeChar.MakeEvent(ac, "Balance", "Balance0,Balance1,", "!AnmSetAction")
  MakeChar.MakeEvent(ac, "BalanceRun", "BalanceRun0,", "!AnmSetAction")
  MakeChar.MakeEvent(ac, "BalanceRunTurn", ",", "!BalanceEndTurnEvent")
  MakeChar.MakeEvent(ac, "BalanceTurn", ",", "!BalanceEndTurnEvent")
  am = ac:GetAct("HangWallToBalance")
  am.LinkLineXAngle = 0
  am.LinkLineZAngle = 0
  am = ac:GetAct("BalanceToHangWall")
  am.LinkLineXAngle = 1
  am.LinkLineZAngle = 1
  arr = {
    "HangLeft",
    "HangRight",
    "HangWallLeft",
    "HangWallRight"
  }
  for i = 1, table.getn(arr) do
    am = ac:GetAct(arr[i])
    am.isLoop = 1
    am.CheckClimb = 1
    ac:GetAct(arr[i] .. "End").InterpTime = 0
  end
  arr = {
    "HangLeft",
    "HangRight",
    "HangWallLeft",
    "HangWallRight",
    "HangSoftRight",
    "HangSoftLeft",
    "HangWallSoftRight",
    "HangWallSoftLeft",
    "HangLeftSwitch",
    "HangRightSwitch",
    "HangWallLeftSwitch",
    "HangWallRightSwitch"
  }
  for i = 1, table.getn(arr) do
    am = ac:GetAct(arr[i])
    am.OnObjSlot = "!HeroinStickyHang"
    am.OnObjSlotParam = 1
  end
  arr = {
    {
      "HangWallFarLeft",
      40
    },
    {
      "HangWallFarLeft0",
      40
    },
    {
      "HangWallFarLeftSwitch",
      43
    },
    {
      "HangWallLookLeftFarLeftSwitch",
      42
    },
    {
      "HangWallLookLeftFarLeft",
      40
    },
    {
      "HangWallLookLeftFarLeft0",
      40
    },
    {
      "HangWallLeftSwitch",
      22
    },
    {
      "HangWallSoftLeft",
      20
    },
    {
      "HangLeftSwitch",
      30
    },
    {
      "HangSoftLeft",
      18
    },
    {
      "HangWallFarRight",
      40
    },
    {
      "HangWallFarRight0",
      40
    },
    {
      "HangWallFarRightSwitch",
      43
    },
    {
      "HangWallLookRightFarRightSwitch",
      42
    },
    {
      "HangWallLookRightFarRight",
      40
    },
    {
      "HangWallLookRightFarRight0",
      40
    },
    {
      "HangWallRightSwitch",
      30
    },
    {
      "HangWallSoftRight",
      20
    },
    {
      "HangRightSwitch",
      30
    },
    {
      "HangSoftRight",
      18
    },
    {
      "HangWallDown",
      22
    },
    {
      "HangWallDown0",
      22
    },
    {
      "HangWallDownSwitch",
      36
    },
    {
      "HangWallDownSwitch0",
      36
    },
    {"HangWallUp", 15},
    {
      "HangWallUp0",
      15
    },
    {
      "HangHighInit",
      20
    },
    {
      "HangRunInit",
      20
    },
    {
      "HangRunInitInit",
      20
    },
    {"HangInit", 20},
    {
      "HangShortInit",
      20
    },
    {
      "HangInitInit",
      20
    },
    {
      "HangShortInitInit",
      20
    },
    {
      "HangWallInit",
      15
    },
    {
      "HangWallInitMid",
      12
    },
    {
      "HangWallInitInit",
      10
    },
    {
      "HangWallHighInit",
      30
    },
    {
      "HangWallRunInit",
      10
    },
    {
      "HangWallShortInit",
      10
    },
    {
      "HangWallShortInitInit",
      12
    }
  }
  for i = 1, #arr do
    am = ac:GetAct(arr[i][1])
    am.OnObjSlotParam = arr[i][2] / am.LastFrame
    for j = arr[i][2], am.LastFrame - 1, 5 do
      MakeChar.ActEvent(am, "I", "!HeroinHangEvent", j)
    end
  end
  arr = {
    {
      "HangWallCorner270Left",
      25,
      65
    },
    {
      "HangWallCorner90Right",
      25,
      65
    },
    {
      "HangWallCorner270Right",
      -65,
      -25
    },
    {
      "HangWallCorner90Left",
      -65,
      -25
    },
    {
      "HangWallFromEdge",
      65,
      -65
    },
    {
      "HangWallFromEdge0",
      65,
      -65
    },
    {
      "HangCorner270Left",
      25,
      65
    },
    {
      "HangCorner90Right",
      25,
      65
    },
    {
      "HangCorner270Right",
      -65,
      -25
    },
    {
      "HangCorner90Left",
      -65,
      -25
    },
    {
      "HangFromEdge",
      65,
      -65
    },
    {
      "HangFromEdge0",
      65,
      -65
    }
  }
  for i = 1, table.getn(arr) do
    am = ac:GetAct(arr[i][1])
    am.MinCamHAng = arr[i][2]
    am.MaxCamHAng = arr[i][3]
  end
  arr = {
    "RunInitFallFix",
    "RunInitFallRunFix",
    "RunInitFallShortFix",
    "WhipRunInitFallFix",
    "WhipRunInitFallRunFix",
    "WhipRunInitFallShortFix"
  }
  for i = 1, table.getn(arr) do
    am = ac:GetAct(arr[i])
    am.DefLoopRunFactor = 0.5
    MakeChar.ActEvent(am, "", "!ResetFixPlatform", nil, 0)
  end
  MakeChar.ModifyParams(ac, {
    "HangWallFromEdge",
    "HangWallFromEdge0",
    "HangFromEdge",
    "HangFromEdge0"
  }, {PriorityLevel = 30}, "")
  ac:GetAct("HangWallShake").PriorityLevel = 11
  ac:GetAct("HangWallShake0").PriorityLevel = 11
  ac:GetAct("HangWallShake1").PriorityLevel = 11
  ac:GetAct("HangWallShake2").PriorityLevel = 11
  ac:GetAct("BalanceShakeEnd").PriorityLevel = 11
  ac:GetAct("BalanceShakeInit").PriorityLevel = 11
  ac:GetAct("BalanceShake").PriorityLevel = 11
  MakeChar.MakeEvent(ac, "BalanceShakeInit", "Begin", "!HangShakeFallEvent", 0)
  MakeChar.MakeEvent(ac, "BalanceShakeInit", "Check", "!HangShakeFallEvent", 25, 0)
  MakeChar.MakeEvent(ac, "BalanceShake", "Begin", "!HangShakeFallEvent", 60)
  MakeChar.MakeEvent(ac, "BalanceShake", "Check", "!HangShakeFallEvent", 70, 0)
  MakeChar.MakeEvent(ac, "BalanceShake", "Begin", "!HangShakeFallEvent", 90)
  MakeChar.MakeEvent(ac, "BalanceShake", "Check", "!HangShakeFallEvent", 100, 0)
  MakeChar.MakeEvent(ac, "BalanceShakeEnd", "", "Belmont.ResetFallDamageEvent", nil, 0)
  MakeChar.MakeEvent(ac, "HangWallShake", "", "Belmont.ResetFallDamageEvent")
  MakeChar.MakeEvent(ac, "HangWallShake0", "", "Belmont.ResetFallDamageEvent")
  MakeChar.MakeEvent(ac, "HangWallShake1", "", "Belmont.ResetFallDamageEvent")
  MakeChar.MakeEvent(ac, "HangWallShake2", "", "Belmont.ResetFallDamageEvent")
  ac:GetAct("HangWallAttackInit").NextToLaunch = "HangWallAttack"
  MakeChar.MakeEvent(ac, "HangWallAttackInit", "Belmont.CallOnRuneHit", "!HangRuneDamage", 20)
  MakeChar.MakeEvent(ac, "HangWallAttack", "Belmont.CallOnRuneHit", "!HangRuneDamage", 46)
  ac:GetAct("BalanceAttackInit").NextToLaunch = "BalanceAttack"
  MakeChar.MakeEvent(ac, "BalanceAttackInit", "Belmont.CallOnRuneHit", "!HangRuneDamage", 24)
  MakeChar.MakeEvent(ac, "BalanceAttack", "Belmont.CallOnRuneHit", "!HangRuneDamage", 51)
  MakeChar.MakeEvent(ac, "HangWallShake", "Begin", "!HangShakeFallEvent", 0)
  MakeChar.MakeEvent(ac, "HangWallShake", "Check", "!HangShakeFallEvent", 21, 0)
  MakeChar.MakeEvent(ac, "HangWallShake0", "Begin", "!HangShakeFallEvent", 0)
  MakeChar.MakeEvent(ac, "HangWallShake0", "Check", "!HangShakeFallEvent", 21, 0)
  MakeChar.MakeEvent(ac, "HangWallShake1", "Begin", "!HangShakeFallEvent", 0)
  MakeChar.MakeEvent(ac, "HangWallShake1", "Check", "!HangShakeFallEvent", 21, 0)
  MakeChar.MakeEvent(ac, "HangWallShake2", "Begin", "!HangShakeFallEvent", 0)
  MakeChar.MakeEvent(ac, "HangWallShake2", "Check", "!HangShakeFallEvent", 21, 0)
  MakeChar.MakeEvent(ac, "HangWallClimb", "URunInitWallClimb", "!AnmSetActionIf", 24)
  MakeChar.MakeEvent(ac, "HangClimb", "URunInitClimb", "!AnmSetActionIf", 24)
  MakeChar.MakeEvent(ac, "HangWallFarDownJump", "", "Belmont.JumpBack")
  MakeChar.MakeEvent(ac, "HangWallLookFarBackJump", "", "Belmont.JumpBack")
  MakeChar.MakeEvent(ac, "HangWallFarLeftJump", "", "Belmont.JumpBack")
  MakeChar.MakeEvent(ac, "HangWallFarRightJump", "", "Belmont.JumpBack")
  MakeChar.MakeEvent(ac, "HangWallLookFarLeftJump", "", "Belmont.JumpBack")
  MakeChar.MakeEvent(ac, "HangWallLookFarRightJump", "", "Belmont.JumpBack")
  MakeChar.FillEvents(ac, "HangWallLeft", "", "!HeroinFarJumpInLine", nil, nil, 4)
  MakeChar.FillEvents(ac, "HangWallRight", "", "!HeroinFarJumpInLine", nil, nil, 4)
  MakeChar.CreateTakeAction("WhipTakeFlower", ac, 10)
  MakeChar.CreateTakeAction("TakeFlower", ac, 10)
  MakeChar.CreateTakeAction("WhipTakeCrystal", ac, 10)
  MakeChar.CreateTakeAction("TakeCrystal", ac, 10)
  MakeChar.CreateTakeAction("WhipTakeWater", ac, 4096, "WhipPlaceCrystal")
  MakeChar.CreateTakeAction("TakeWater", ac, 4096, "PlaceCrystal")
  MakeChar.CreateTakeAction("WhipTakeWater", ac, 4096)
  MakeChar.CreateTakeAction("TakeWater", ac, 4096)
  MakeChar.CreateTakeAction("WhipTakeGem", ac, 10)
  MakeChar.CreateTakeAction("TakeGem", ac, 10)
  MakeChar.CreateTakeAction("WhipTakeGem", ac, 10, "WhipTakeFreeGem")
  MakeChar.CreateTakeAction("TakeGem", ac, 10, "TakeFreeGem")
  MakeChar.CreateTakeAction("CrossOneSelf", ac, 10, "WhipCrossOneSelf")
  MakeChar.CreateTakeAction("CrossOneSelf", ac, 10)
  Belmont.JumpBackVec = V3D(0, Belmont.JumpY, -Belmont.JumpXZBack)
  LightPower.AddAnm(ac)
  MakeChar.AddMove(ac, "WhipRelicStolen", "WhipRelicStolen", 720, 0, 0).PriorityLevel = 4096
  MakeChar.MakeEvent(ac, "WhipRelicStolen", "", "Belmont.EndRelicStolen")
  action = MakeChar.AddMove(ac, "WebRelax", "WebRelax", 0, 0, 1)
  action.PriorityLevel = 1024
  action.RotSpeed = 0
  action.Group = "Hook"
  action = MakeChar.AddMove(ac, "WebRelaxInit", "WebRelaxInit", 0, 0, 0)
  action.RotSpeed = 0
  action.PriorityLevel = 1024
  action.Group = "Hook"
  action = MakeChar.AddMove(ac, "WebDestroy", "WebDestroy", 0, 0, 0)
  action.PriorityLevel = 1024
  action.RotSpeed = 0
  action.Group = "Hang"
  action.OnObjSlot = "Belmont.WebDestroySync"
  action.UseDisp = 0
  MakeChar.MakeEvent(ac, "WebRelaxInit", "", "Belmont.BeginSplash").Discardable = 0
  MakeChar.MakeEvent(ac, "WebDestroy", "", "Belmont.EndSpiderMinigame").Discardable = 0
  action = MakeChar.AddMove(ac, "RagDollRelax", "WebRelax", 0, 0, 1)
  action.PriorityLevel = 1024
  action.RotSpeed = 0
  action.Group = "Hook"
  action.UseDisp = 0
  action = MakeChar.AddMove(ac, "RagDollRelaxInit", "WebRelaxInit", 0, 0, 0)
  action.RotSpeed = 0
  action.PriorityLevel = 1024
  action.Group = "Hook"
  action.UseDisp = 0
  action = MakeChar.AddMove(ac, "RagDollDestroy", "WebDestroy", 0, 0, 0)
  action.PriorityLevel = 1024
  action.RotSpeed = 0
  action.InterpTime = 0.5
  action.Group = "Hang"
  action.UseDisp = 0
  MakeChar.MakeEvent(ac, "RagDollRelaxInit", "", "RagDollBugs.BeginRagDollMg", 0).Discardable = 0
  MakeChar.MakeEvent(ac, "RagDollDestroy", "", "RagDollBugs.EndRagdollMg", 21).Discardable = 0
  am = ac:GetAct("Jump2")
  am.PriorityLevel = 1
  am.OnObjSlot = "Belmont.JumpChangeVel"
  am = ac:GetAct("Jump2Run")
  am.PriorityLevel = 1
  am.OnObjSlot = "Belmont.JumpChangeVel"
  NeutralEnergy.AddAnm(ac)
  MakeChar.LoadActions(ac)
  DarkPower.AddAnm(ac)
  action = ac:GetAct("WhipGdCatchInit")
  if action then
    MakeChar.SetNodeRotation(ac, 10, 0, 0, 0)
    MakeChar.SetNodeRotation(ac, 10, 1, 0, 0)
    MakeChar.SetNodeRotation(ac, 10, 2, 0, 0)
    MakeChar.SetNodeRotation(ac, 10, 3, 0, 0)
    action.NodeModifier = 10
    action = ac:GetAct("WhipGdCatch")
    action.NodeModifier = 10
    action = ac:GetAct("WhipGdCatchLose")
    action.NodeModifier = 10
    action = ac:GetAct("WhipGdCatchWin")
    action.NodeModifier = 10
    action = ac:GetAct("WhipGdCatch2")
    action.NodeModifier = 10
    action = ac:GetAct("WhipGdCatchLose2")
    action.NodeModifier = 10
    action = ac:GetAct("WhipGdCatchWin2")
    action.NodeModifier = 10
  end
  action = ac:GetAct("WhipComboLMh")
  if action ~= nil then
    action.OnObjSlot = "LightPower.StaminaAreaControl"
    action.RotSpeed = 0
  end
  WeaponsCombo.AddCheckBufferEvents(ac)
  MakeChar.MakeEvent(ac, "Jump2", "", "Belmont.FXJumpWingsOn", 7)
  MakeChar.MakeEvent(ac, "Jump2Run", "", "Belmont.FXJumpRunWingsOn", 7)
  MakeChar.MakeEvent(ac, "Jump2", "", "Belmont.FXWingsFadeIn", 4)
  MakeChar.MakeEvent(ac, "Jump2", "", "Belmont.FXWingsFadeOut", 20, 0)
  MakeChar.MakeEvent(ac, "Jump2Run", "", "Belmont.FXWingsFadeIn", 4)
  MakeChar.MakeEvent(ac, "Jump2Run", "", "Belmont.FXWingsFadeOut", 20, 0)
  MakeChar.MakeEvent(ac, "SprintInit", "", "Belmont.FXBootsOn", 7)
  MakeChar.MakeEvent(ac, "SprintEnd", "", "Belmont.FXBootsOff", 6, 0)
  MakeChar.MakeEvent(ac, "WhipSprintInit", "", "Belmont.FXBootsOn", 7)
  MakeChar.MakeEvent(ac, "WhipSprintEnd", "", "Belmont.FXBootsOff", 6, 0)
  MakeChar.MakeEvent(ac, "Sprint", "", "Belmont.FXBootsLStep", 7, 0)
  MakeChar.MakeEvent(ac, "Sprint", "", "Belmont.FXBootsRStep", 15, 0)
  MakeChar.MakeEvent(ac, "WhipSprint", "", "Belmont.FXBootsLStep", 7, 0)
  MakeChar.MakeEvent(ac, "WhipSprint", "", "Belmont.FXBootsRStep", 15, 0)
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "", "Belmont.FXBootsFloorImpactOn", 1)
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "", "Belmont.FXBootsFloorImpactTrailOn", 6)
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "", "Belmont.FXBootsFloorImpactOff", 12, 0)
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "", "Belmont.FXBootsSealOn", 4)
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "", "Belmont.FXBootsSealOff", 6, 0)
  Game.Preload3DObject("models/chars/belmont/gabriel_halo_cross_dark/gabriel_halo_cross_dark.m3d")
  Game.Preload3DObject("models/chars/belmont/gabriel_halo_cross_light/gabriel_halo_cross_light.m3d")
  Game.Preload3DObject("models/fx/WindWave/windwave.m3d")
  Game.Preload3DObject("models/fx/CrystalWitch/CrystalWitch.M3D")
  MakeChar.MakeEvent(ac, "WhipCrystalPowerInit", "SafePower", "WeaponsCrystal.SafePower")
  MakeChar.MakeEvent(ac, "WhipStunned", "CancelGame", "Witch.CancelGame").Discardable = 0
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "BeginCharge", "WeaponsCharge.OnBeginCharge", 5, 1)
  MakeChar.MakeEvent(ac, "WhipDarkDodgeFront", "", "Belmont.EventConsumeDarkDodgeMagic", 3)
  MakeChar.MakeEvent(ac, "WhipBlockComboDInit", "BeginBoxPunch", "PushBox.OnBeginPunch", 1, 1)
  MakeChar.MakeEvent(ac, "WhipBlockComboDEnd", "EndBoxPunch", "PushBox.OnEndPunch", 35, 0)
  MakeChar.MakeEvent(ac, "WhipBlockComboAEnd", "EndFloorPunch", "PushBox.OnEndFloorPunch", 41, 0)
  MakeChar.MakeEvent(ac, "WhipFallBlockComboDEnd", "EndFloorPunch", "PushBox.OnEndFloorPunch", 43, 0)
  MakeChar.MakeEvent(ac, "WhipLgCatchInit", "ExtraSufix=", "!AnmSetStrVal", 1)
  MakeChar.MakeEvent(ac, "SprintEnd", "", "Belmont.ResetDoubleTap", nil, 0)
  ac:PrecalcFK()
  MakeChar.MakeFacialRelax(ac)
  MakeChar.MakeFacialTalk(ac, "", {"_Talk"})
  MakeChar.MakeFacialAction(ac, "CrystalPowerInit", 0)
  MakeChar.MakeFacialAction(ac, "CrystalPower", 1)
  MakeChar.MakeFacialAction(ac, "CrystalPowerEnd", 0)
  MakeChar.MakeFacialAction(ac, "Death", 1)
  action = ac:GetAct("KickGrenade")
  if action ~= nil then
    action.RotSpeed = 0
    MakeChar.MakeEvent(ac, "KickGrenade", "", "Goblin.BelmontDropGrenade").Discardable = 0
    MakeChar.MakeEvent(ac, "KickGrenade", "", "Belmont.KickGrenade", 38)
    action.oAI.bForceNonHitable = true
  end
  action = ac:GetAct("KickBoom")
  if action ~= nil then
    MakeChar.MakeEvent(ac, "KickBoom", "", "EliteVampA.BelmontDoKickBoom", 23)
    action.oAI.bForceNonHitable = true
  end
  MakeChar.MakeEvent(ac, "WhipNc2CatchInit", "", "Necromancer.StartCatch", 1)
  MakeChar.MakeEvent(ac, "WhipNc1CatchInit", "", "Necromancer.StartCatch", 1)
  Belmont.TimeLastCrystalDrain = 0
  MakeChar.LoadEvents(ac)
  MakeChar.MakeEvent(ac, "WhipSgRideEnd", " 180Relax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipSgRideHitDeath", " 180Relax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipWgRideEnd", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipWgRideHitDeath", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipWgCatchedLose", "  90WhipRelax", "!CharTurnEvent", nil, 0)
  MakeChar.MakeEvent(ac, "WhipWtRideEnd", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipEva1CatchLose0", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipEva1CatchInit", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipEva2CatchLose0", " 270WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipEva2CatchLose", " 270WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipNc2CatchWin2", " 180Relax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipNc1CatchWin", " 180Relax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipSwCatchWin", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipSwCatchLose", " 180WhipRelax", "!CharTurnEvent", nil, 0)
  MakeChar.MakeEvent(ac, "WhipSwCatch2Lose2", "  90Relax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipSwCatch2Lose3", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipSwCatch2Init", "  90WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipScCatchInit", "", "Scarecrow.PollasReposition", 0, 0)
  MakeChar.MakeEvent(ac, "WhipDL2CatchInit", "", "Darklord2V.StartGrip", 0, 0)
  MakeChar.MakeEvent(ac, "WhipMmCatchWin", "", "Feto.ForceDeath", 331)
  MakeChar.MakeEvent(ac, "WhipMmCatchWin", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipEvbCatchLose0", " 270WhipRelax", "!CharTurnEvent")
  local myEv = MakeChar.MakeEvent(ac, "WhipTbCatchLose", " 180Relax", "!CharTurnEvent")
  if myEv then
    myEv.Discardable = 0
  end
  myEv = MakeChar.MakeEvent(ac, "WhipTbCatchLose1", " 310WhipRelax", "!CharTurnEvent")
  if myEv then
    myEv.Discardable = 0
  end
  myEv = MakeChar.MakeEvent(ac, "WhipTbCatchLose2", " 310WhipRelax", "!CharTurnEvent")
  if myEv then
    myEv.Discardable = 0
  end
  myEv = MakeChar.MakeEvent(ac, "WhipTbCatchWin", " 180WhipRelax", "!CharTurnEvent")
  if myEv then
    myEv.Discardable = 0
  end
  MakeChar.MakeEvent(ac, "WhipNc1CatchLose2", " 180WhipRelax", "!CharTurnEvent")
  MakeChar.MakeEvent(ac, "WhipSgCatchedLose", "", "Belmont.BeginSpiderPoison", 14)
  am = ac:GetAct("WhipBlockSommerJumpD")
  am.RotDirection = -1
end

function Belmont.IgnoreUsrControl()
  player.uData.JumpReleaseTime = 0
  player.IgnoreUsrControl = 1
  player.isFalling = 0
  player:SetOnFloor()
  player.uData.ComboBuffer = {}
end

function Belmont.CanPerformFocusCombo()
  if not (not string.find(player.Action, "Saw") and not string.find(player.Action, "Gear") and not string.find(player.Action, "Roll") and (not string.find(player.Action, "Catch") or string.find(player.Action, "Lose") or string.find(player.Action, "Win"))) or Actions.PlayerInCatch.Value == 1 then
    return false
  end
  return true
end

function Belmont.ReturnUsrControl()
  player.IgnoreUsrControl = 0
end

function Belmont.SetDoubleJumpCounter(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.JumpCounter = tonumber(EventName)
end

function Belmont.KickGrenade()
  Goblin.BelmontDoKickGrenade(player.Name, false)
end

function Belmont.ResetDoubleTap(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.owc.DoubleTap = 0
end

function Belmont.OnSlideFallLimit(me)
  local ce = me.CollideEntity
  if ce ~= "" then
    Game.GetEntity(ce).GhostTime = 0.5
    me.Vel = V3D(me.Vel.x, 10, me.Vel.z)
  end
end

function Belmont.OnSlideFallLimitBreak(me)
  if me.CollideEntity == "" then
    if me.uData.OnSlideFallStamp == nil then
      me.uData.OnSlideFallStamp = 0
    end
    local dif = me.SlidingAndFallingTime - me.uData.OnSlideFallStamp
    if 0.2 < dif or dif < 0 then
      me.uData.OnSlideFallStamp = me.SlidingAndFallingTime
    else
      return
    end
    Weapons.MeleeHit(me.Name, {"BreakObj"}, 0, -100, 0, 100, nil, true, 0, 0)
    Game.Log("Dispositivo de seguridad omega ha Fallado!" .. me.SlidingAndFallingTime .. "\n", 0)
  end
end

function Belmont.DoExtraRelaxCallback(o)
  if DarkPower.PowerUse.Value > 0 or 0 < LightPower.PowerUse.Value or Game.Get("AreEnemiesNear") then
    return 0
  else
    return 1
  end
end

Belmont.RunActions = {
  "WhipRun",
  "WhipRunInit",
  "WhipRunInitTurn",
  "Run",
  "RunInit",
  "RunInitTurn"
}
Belmont.DodgeRunActions = {
  "WhipDodgeFrontRunInit",
  "WhipDodgeBackRunInit",
  "WhipDodgeRightRunInit",
  "WhipDodgeLeftRunInit"
}
Belmont.SprintActions = {
  "Sprint",
  "SprintInit",
  "WhipSprint",
  "WhipSprintInit"
}

function Belmont.OnSufixChange(char)
  if char.ExtraSufix == "Whip" then
    if DarkPower.PowerUse.Value > 0 then
      Belmont.FXDarkPowerOn(char.Name)
    elseif 0 < LightPower.PowerUse.Value then
      Belmont.FXLightPowerOn(char.Name)
    end
  elseif DarkPower.PowerUse.Value > 0 then
    DarkPower.DeactivatePower(char.Name, false)
  elseif 0 < LightPower.PowerUse.Value then
    LightPower.DeactivatePower(char.Name, false)
  end
end

function Belmont.AddBasicAnims(ac, typo, extranum)
  MakeChar.AddRelaxActions(ac, 0, extranum, typo)
  MakeChar.AddWalkActions(ac, 540, 0, 1, {
    "Walk",
    "Run",
    "WalkTurn",
    "RunTurn",
    "Sprint"
  }, typo)
  MakeChar.AddInitWalkActions(ac, 540, 0, 1, {
    "RunInit",
    "WalkInit",
    "RunInitTurn",
    "WalkInitTurn",
    "SprintInit"
  }, typo)
  MakeChar.AddInitWalkActions(ac, 135, 0, 1, {
    "RunInitFallShort",
    "RunInitFallRun",
    "RunInitFallHigh",
    "RunInitFall"
  }, typo)
  MakeChar.AddEndWalkActions(ac, 45, 0, 1, {
    "RunEndLeft",
    "RunEndRight",
    "WalkEndLeft",
    "WalkEndRight",
    "SprintEnd"
  }, typo)
  ac:GetAct(typo .. "Sprint").RotSpeed = 180
  ac:GetAct(typo .. "SprintEnd").RotSpeed = 180
  am = ac:GetAct(typo .. "WalkTurn")
  am.RotSpeed = 180 / am.AnmTotalTime
  am.isLoop = 0
  am.DispType = 2
  am.RotDirection = 1
  am.InitVel = ac:GetAct(typo .. "Walk").AnmVel * 0.3
  am.EndVel = -ac:GetAct(typo .. "Walk").AnmVel
  am = ac:GetAct(typo .. "RunTurn")
  am.RotSpeed = 180 / am.AnmTotalTime
  am.isLoop = 0
  am.DispType = 2
  am.RotDirection = 1
  am.InitVel = ac:GetAct(typo .. "Run").AnmVel
  am.EndVel = -ac:GetAct(typo .. "Run").AnmVel
  am = ac:GetAct(typo .. "RunInitTurn")
  am.RotSpeed = 180 / am.AnmTotalTime
  am.isLoop = 0
  am.DispType = 2
  am.RotDirection = 1
  am.InitVel = -ac:GetAct(typo .. "Run").AnmVel * 0.2
  am.EndVel = -ac:GetAct(typo .. "Run").AnmVel
  am = ac:GetAct(typo .. "WalkInitTurn")
  am.RotSpeed = 180 / am.AnmTotalTime
  am.isLoop = 0
  am.DispType = 2
  am.RotDirection = 1
  am.InitVel = -ac:GetAct(typo .. "Walk").AnmVel * 0.2
  am.EndVel = -ac:GetAct(typo .. "Walk").AnmVel
  ActList = {
    typo .. "Run"
  }
  for i = 1, table.getn(ActList) do
    am = ac:GetAct(ActList[i])
    am.ZTurnAng = 10
    am.ZRotSpeed = 45
  end
end

function Belmont.AddFallActions(ac, typo)
  Game.Set("OnActionCreation", "Belmont.AssignJumpGroup")
  Belmont.g_ac = ac
  MakeChar.AddFallActions(ac, {
    {"Fall", 1},
    {"FallHigh", 1},
    {"FallShort", 1},
    {"FallRun", 1},
    {"FallInit", 0}
  }, 60, typo)
  MakeChar.AddFallActions(ac, {
    {"FallRunEnd", 0},
    {
      "FallShortEnd",
      0
    },
    {
      "FallHighEnd",
      0
    },
    {"FallEnd", 0}
  }, 0, typo)
  ac:GetAct(typo .. "FallRunEnd").UseDisp = 1
  ac:GetAct(typo .. "FallShortEnd").UseDisp = 1
  ac:GetAct(typo .. "FallHigh").InterpTime = 0.5
  ac:GetAct(typo .. "FallEnd").FKMethod = 1
  ac:GetAct(typo .. "RunInitFallHigh").PriorityLevel = 1
  ac:GetAct(typo .. "FallHighEnd").PriorityLevel = 1
  ac:GetAct(typo .. "FallHighEnd").UseDisp = 1
  Game.Set("OnActionCreation", "")
  Belmont.g_ac = nil
end

function Belmont.AssignJumpGroup(actionName)
  local action = Belmont.g_ac:GetAct(actionName)
  action.Group = "Jump"
end

function Belmont.AddJumpActions(ac, typo, ActList)
  for i = 1, table.getn(ActList) do
    am = ac:NewAct(typo .. ActList[i])
    am.AnmFilePath = MakeChar.BuildPrefName("Belmont") .. typo .. ActList[i] .. ".M3D"
    am.isLoop = 0
    am.RotSpeed = 30
    am.UseDisp = 0
    am.MaxSpeed = 1
    am.MinSpeed = 1
    am.Group = "Jump"
    cad = string.sub(ActList[i], 1, 4)
    if cad == "Jump" then
      am.CheckClimb = 1
    elseif cad == "Dual" then
      am.NodeModifier = 1
    else
      am.NodeModifier = -1
    end
  end
end

function Belmont.SetupLinks(ac, typo)
  MakeChar.AddLinkActionList(ac, typo, {
    Walk = {
      End = {
        "WalkEnd",
        {
          "Left",
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left",
          "Left"
        }
      },
      Turn = {
        "Walk",
        {
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    },
    WalkInit = {
      End = {
        "WalkEnd",
        {
          "Left",
          "Left",
          "Left",
          "Right",
          "Right",
          "Right",
          "Right",
          "Left"
        }
      },
      Turn = {
        "Walk",
        {
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    },
    WalkInitTurn = {
      End = {
        "",
        {
          "Turn180",
          "Turn180",
          "TurnRight",
          "TurnRight",
          "TurnRight",
          "WalkEndRight",
          "WalkEndLeft",
          "WalkEndLeft"
        }
      }
    },
    WalkTurn = {
      End = {
        "WalkEnd",
        {
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left",
          "Right",
          "Right"
        }
      }
    },
    WalkEndRight = {
      Turn = {
        "Walk",
        {
          "Turn",
          "Turn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn"
        }
      }
    },
    WalkEndLeft = {
      Turn = {
        "Walk",
        {
          "Turn",
          "Turn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn"
        }
      }
    },
    Run = {
      End = {
        "RunEnd",
        {
          "Left",
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left",
          "Left"
        }
      },
      Turn = {
        "Run",
        {
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    },
    RunInit = {
      End = {
        "RunEnd",
        {
          "Left",
          "Left",
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left"
        }
      },
      Turn = {
        "Run",
        {
          "InitTurn",
          "InitTurn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    },
    RunInitTurn = {
      End = {
        "",
        {
          "Turn180",
          "Turn180",
          "TurnRight",
          "TurnRight",
          "TurnRight",
          "RunEndLeft",
          "RunEndLeft",
          "RunEndLeft"
        }
      }
    },
    RunTurn = {
      End = {
        "RunEnd",
        {
          "Left",
          "Left",
          "Left",
          "Left",
          "Left",
          "Left",
          "Left",
          "Left"
        }
      }
    },
    RunEndRight = {
      Turn = {
        "Run",
        {
          "Turn",
          "Turn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn"
        }
      }
    },
    RunEndLeft = {
      Turn = {
        "Run",
        {
          "Turn",
          "Turn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn",
          "InitTurn"
        }
      }
    },
    RunInitFallShort = {
      End = {
        "RunEnd",
        {
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left",
          "Left",
          "Left"
        }
      },
      Turn = {
        "Run",
        {
          "InitTurn",
          "InitTurn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    },
    RunInitFallRun = {
      End = {
        "RunEnd",
        {
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left",
          "Left",
          "Left"
        }
      },
      Turn = {
        "Run",
        {
          "InitTurn",
          "InitTurn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    },
    RunInitFall = {
      End = {
        "RunEnd",
        {
          "Right",
          "Right",
          "Right",
          "Right",
          "Left",
          "Left",
          "Left",
          "Left"
        }
      },
      Turn = {
        "Run",
        {
          "InitTurn",
          "InitTurn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn",
          "Turn"
        }
      }
    }
  })
end

function Belmont.AddFingerAnimations(actClass)
  if nil == actClass:GetAct("WhipTakeFinger") then
    local action = MakeChar.CreateTakeAction("WhipTakeGem", actClass, 10, "WhipTakeFinger")
    MakeChar.ActEvent(action, "", "CollectableItems.OnFingerPicked", 37, 0)
  end
  if nil == actClass:GetAct("TakeFinger") then
    local action = MakeChar.CreateTakeAction("TakeGem", actClass, 10, "TakeFinger")
    MakeChar.ActEvent(action, "", "CollectableItems.OnFingerPicked", 37, 0)
  end
end

function Belmont.InitRelics()
  local LevelName = string.lower(Game.GetSaveVar("LevelName"))
  if NeutralEnergy.MapTable[LevelName] then
    if NeutralEnergy.MapTable[LevelName].DarkGauntlet ~= nil then
      player.uData.bGauntlet = NeutralEnergy.MapTable[LevelName].DarkGauntlet
    else
      player.uData.bGauntlet = true
    end
    if NeutralEnergy.MapTable[LevelName].LightShoulders ~= nil then
      player.oActCtrl.oActClass.uData.bWings = NeutralEnergy.MapTable[LevelName].LightShoulders
    else
      player.oActCtrl.oActClass.uData.bWings = true
    end
    if NeutralEnergy.MapTable[LevelName].SpeedBoots ~= nil then
      player.oActCtrl.oActClass.SprintOnDoubleTap = NeutralEnergy.MapTable[LevelName].SpeedBoots
    else
      player.oActCtrl.oActClass.SprintOnDoubleTap = 1
    end
  else
    player.uData.bGauntlet = false
    player.oActCtrl.oActClass.uData.bWings = false
    player.oActCtrl.oActClass.SprintOnDoubleTap = 0
  end
end

function Belmont.ObtainRelics()
  player.uData.bGauntlet = true
  player.oActCtrl.oActClass.uData.bWings = true
  player.oActCtrl.oActClass.SprintOnDoubleTap = 1
  Belmont.VialActive.Value = true
  Belmont.FairiesActive.Value = true
  Belmont.ChainModelInUse.Value = 3
  Belmont.UpdateRelicModels("Belmont")
  DarkPower.PowerOn.Value = true
  LightPower.PowerOn.Value = true
end

function Belmont.UpdateRelicModels(entityName)
  local entity
  if type(entityName) == "userdata" then
    entity = entityName
  elseif type(entityName) == "string" then
    entity = Game.GetEntity(entityName)
  elseif entityName == nil then
    entity = player
  end
  if player.uData then
    if player.uData.bGauntlet == true then
      entity.bShowNode_CH_Gabriel_Guante_Esp = true
      entity.bShowNode_CH_Gabriel_Guante = false
    else
      entity.bShowNode_CH_Gabriel_Guante_Esp = false
      entity.bShowNode_CH_Gabriel_Guante = true
    end
    if player.oActCtrl.oActClass.uData.bWings == true then
      entity.bShowNode_CH_Gabriel_Hombreras_Esp = true
      entity.bShowNode_CH_Gabriel_Hombreras = false
    else
      entity.bShowNode_CH_Gabriel_Hombreras_Esp = false
      entity.bShowNode_CH_Gabriel_Hombreras = true
    end
    if player.oActCtrl.oActClass.SprintOnDoubleTap == 1 then
      entity.bShowNode_CH_Gabriel_Botas_Esp = true
      entity.bShowNode_CH_Gabriel_Botas = false
    else
      entity.bShowNode_CH_Gabriel_Botas_Esp = false
      entity.bShowNode_CH_Gabriel_Botas = true
    end
    if Belmont.VialActive.Value then
      entity.bShowNode_CH_Gabriel_Correa_Llena_Esp = true
    else
      entity.bShowNode_CH_Gabriel_Correa_Llena_Esp = false
    end
    if Belmont.FairiesActive.Value then
      entity.bShowNode_CH_Gabriel_Tarro_Tapa = true
      entity.bShowNode_CH_Gabriel_Tarro = true
      entity.bShowNode_BoB_Gabriel_Tarro_Tapa = true
      entity.bShowNode_BoB_Gabriel_Tarro = true
    else
      entity.bShowNode_CH_Gabriel_Tarro_Tapa = false
      entity.bShowNode_CH_Gabriel_Tarro = false
      entity.bShowNode_BoB_Gabriel_Tarro_Tapa = false
      entity.bShowNode_BoB_Gabriel_Tarro = false
    end
  end
  entity.bShowNode_CH_Gabriel_Xtra_Bandana = false
  entity.bShowNode_CH_Gabriel_Xtra_Cinta = false
  entity.bShowNode_CH_Gabriel_Xtra_Mostacho = false
  entity.bShowNode_CH_Gabriel_Xtra_EyeVisor = false
end

function Belmont.InitItems(entityName)
  if player.uData.nVials then
    Belmont.InitialVials = player.uData.nVials
  end
  WeaponsVial.Set(entityName, Belmont.VialFile)
  WeaponsVial.VialProtection.Value = 0
  WeaponsDagger.Set(entityName, Belmont.DagaFile)
  Belmont.UpdatePocketNodes(entityName)
  local entName = Game.GetEntity(entityName)
  if entName.oAI then
    entName.oAI:StartFairies()
  end
  Stamina.Slot()
  local mountGroup = Game.GetSaveVar("MountGroup")
  local mountClass = Game.GetSaveVar("MountClass")
  if mountGroup and mountGroup ~= "" then
    Actions.CreateAndSetMount(mountClass, mountGroup)
  end
end

function Belmont.OnCreate(EntityName)
  WeaponsWhip.Set(EntityName)
  if EntityName == "Belmont" then
    player = Game.GetEntity(EntityName)
    player.uData.InMiniGame = false
  end
  local char = Game.GetEntity(EntityName)
  char.OnSwitchActive = "Belmont.OnSwitchActive"
  char.uData.DefaultLinks = GabrielCombos.DefaultLinks
  char.uData.PressCount = 0
  char.uData.InitialJustYModelDisp = char.JustYModelDisp
  Belmont.BeginEffects(EntityName)
  char:SetCollisionEnvironment(true, true, false)
  char.oPlatformLinker.SpeedLimit = 500
  char.uData.OnHitted = Belmont.OnHitted
  char.Action = "Facial_Relax"
  MakeChar.SetMaxMinSpeeds("Belmont", Belmont.RunActions, GetParam("Gabriel", "Speed Run"), 0.1, -0.3)
  MakeChar.SetMaxMinSpeeds("Belmont", Belmont.DodgeRunActions, 0.8)
  MakeChar.SetMaxMinSpeeds("Belmont", Belmont.SprintActions, GetParam("Gabriel", "Speed Sprint"), 0.1, -0.3)
  Belmont.UpdateDaggerNodes(EntityName)
  Game.AddScheduledFunc(0, "Belmont", "Belmont.UpdateRelicModels", EntityName)
  Game.AddScheduledFunc(0, "", "Belmont.InitItems", EntityName)
  if Game.Get("gvNoDamageMode") then
    Cheats.SetNoDamage(true)
  end
  Game.Set("IsActionCurrentlyUsabe", "TravelBook.PyIsActionCurrentlyUsabe")
  Game.Set("PlayerCharName", char.Name)
  Game.Set("BlockSideHang", 0)
end

function Belmont.OnDamage(MyName, AttackerName, damage)
  local ent = Game.GetEntity(MyName)
  if init.LevelName == "level.4_1_fortress" and Trials.isTrial and MapTrial ~= nil and AttackerName == "Ogre3" then
    MapTrial.OnHittedByOgre()
  end
  if init.LevelName == "level.5_2_isolated_village_a" and Trials.isTrial and MapTrial ~= nil and AttackerName == "Enemy" then
    local vampi = Game.GetEntity("Enemy")
    if vampi then
      local action = vampi.Action
      if action == "AttackBoomInit" then
        MapTrial.OnHittedByBoomerang()
      end
    end
  end
  if ent.uData.CustomOnDamage then
    ent.uData.CustomOnDamage(MyName, AttackerName, damage)
  end
  local atk = Game.GetEntity(AttackerName)
  if atk ~= nil and TrollBigSwamp ~= nil and atk:IsType("WalkChar") and atk.oActCtrl.oActClass.Name == "TrollBigSwamp" then
    TrollBigSwamp.AttackGroundTutoEnd()
  end
end

function Belmont.OnHitted(MyName, AttackerName, damage, blocked, HitData)
  local attacker = Game.GetEntity(AttackerName)
  local ent = Game.GetEntity(MyName)
  if ent and ent.oActCtrl then
    local parentSync = ent.oActCtrl.oParentSync
    if parentSync and parentSync.oParent and parentSync.oParent.uData.OnHittedEntCatched then
      local cont = parentSync.oParent.uData.OnHittedEntCatched(parentSync.oParent, ent, attacker, damage, blocked, HitData)
      if not cont then
        return
      end
    end
  end
  if ent.Invulnerable == 1 then
    return
  end
  if player.Action == "RagDollRelaxInit" or player.Action == "RagDollRelax" or player.Action == "RagDollDestroy" then
    ent.Hit_Reaction = 3
  end
  if ent.Hit_Reaction ~= -1 and ent.Life <= 0 then
    ent.Hit_Reaction = 3
  end
  local act = ent.oActCtrl.oAction
  if not Game.Get("IsBelmontTired") then
    ent.ExtraSufix = "Whip"
  end
  AISpec.SetTimeStampOf("PlayerAttacked")
  if attacker and attacker.oActCtrl then
    AISpec.SetTimeStampOf("PlayerAttackedBy" .. attacker.oActCtrl.oActClass.Name)
  end
  local reactionability = ent.oActCtrl:GetTrackInfo("Reactionability")
  if ent.Hit_Reaction >= 0 and (not reactionability or ent.Hit_Reaction >= tonumber(reactionability) or blocked == 2 or ent.Life <= 0) then
    local reaction = "Med"
    reaction = Belmont.GetHitReaction(ent)
    local dir = ent.Hit_Direction
    local rot = Game.NormAng(dir:getrot().y - ent.Ang.y)
    local state
    if 0 < blocked then
      state = "Block"
      reaction = ""
      if blocked == 2 then
        reaction = "Sync"
      end
    elseif blocked == -1 then
      state = "Block"
      reaction = "Break"
    elseif ent.bIsFalling or ent.oActCtrl:GetTrackInfo("ForceIsJumping") == "Yes" then
      if attacker then
        ent.Ang = ent.Ang + V3D(0, rot, 0)
        ent.DisplAng = 0
      end
      state = ""
      if reaction == "Hard" then
        reaction = "FallHard"
      else
        reaction = "Fall"
      end
    else
      state = ""
    end
    local directionList = Belmont.Hits[state][reaction]
    local dirStr
    if not directionList then
      dirStr = ""
    else
      dirStr = Belmont.GetDirHitAnim(Belmont.Hits[state][reaction], rot)
    end
    if not (act.uData and act.uData.CD) or not act.uData.CD.NoHitAnim then
      local actionName = ent.ExtraSufix .. state .. "Hit" .. reaction .. dirStr
      if ent.Action == actionName then
        ent.oActCtrl:ResetPrimaryAction()
      else
        ent.Action = actionName
      end
    end
  end
  if Game.Get("IsBelmontUsingStamina") == 1 and player.Life - damage <= 0 then
    player.ForceAction = "WhipHitHardBack"
    return
  end
end

function Belmont.GetHitReaction(ent)
  local str
  if ent.Hit_Reaction == 0 then
    str = ent.Hit_ReactionAnim
  elseif ent.Hit_Reaction == 1 then
    str = "Soft"
  elseif ent.Hit_Reaction == 2 then
    str = "Med"
  elseif ent.Hit_Reaction == 3 then
    str = "Hard"
  elseif ent.Hit_Reaction == 4 then
    str = "Crush"
  else
    Game.ConsoleError("GetHitReaction() -> reaction not mapped\n")
    str = nil
  end
  return str
end

function Belmont.GetDirHitAnim(DirectionList, rot)
  local wanted = ""
  if rot < 45 and -45 < rot then
    wanted = "Fw"
  elseif rot < 160 and 45 < rot then
    wanted = "Right"
  elseif rot < -45 and -160 < rot then
    wanted = "Left"
  else
    wanted = "Back"
  end
  if DirectionList[wanted] then
    return wanted
  elseif DirectionList[""] then
    return ""
  elseif DirectionList.Fw then
    return "Fw"
  elseif DirectionList.Back then
    return "Back"
  end
end

function Belmont.SchCheckJumpPress(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent.uData.JumpReleaseTime == nil then
    return
  end
  if WeaponsCombo.LinkPressed(ent, "PressJump") or Game.GetTime() < ent.uData.JumpReleaseTime + Belmont.JumpCaducity then
    Belmont.JumpPress(EntityName, true)
  end
end

function Belmont.ProgramJumpCheck(EntityName)
  local ent = Game.GetEntity(EntityName)
  local group = ent.oActCtrl.oAction.Group
  if group ~= "Hook" and group ~= "Hang" then
    addSF(0.1, "SchCheckJumpPress", "Belmont.SchCheckJumpPress", EntityName)
  end
end

function Belmont.CheckJumpAngle(ent, NewFullAng)
  local tj = ent.uData.TriggerJump
  if tj then
    if tj:IsPointInside(player.Pos) then
      local correction = defparam(tj.uData.TargetJump.uData.JumpCorrection, V3D(0, 0, 0))
      local newAng = V3D(0, (ent.Pos - (tj.uData.TargetJump.Pos + correction)):getrot().y, 0)
      local angDiff = math.abs(Game.NormAng(newAng.y - NewFullAng.y))
      if angDiff < 45 then
        ent.Vel = ent.Vel:rot(V3D(0, newAng.y - NewFullAng.y, 0))
        return newAng
      end
    else
      ent.uData.TriggerJump = nil
    end
  end
  return NewFullAng
end

function Belmont.SetTriggerJump(TriggerName, Playerid, TargetJump)
  if Playerid == 0 then
    player.uData.TriggerJump = Game.GetEntity(TriggerName)
    player.uData.TriggerJump.uData.TargetJump = Game.GetEntity(TargetJump)
  end
end

function Belmont.SetTriggerJumpLavaPlatform(TriggerName, Playerid, TargetJump)
  if Playerid == 0 and TargetJump and TargetJump ~= "" then
    player.uData.TriggerJump = Game.GetEntity(TriggerName)
    local tgtJump = Game.GetEntity(TargetJump)
    player.uData.TriggerJump.uData.TargetJump = tgtJump
    tgtJump.uData.JumpCorrection = V3D(700, 0, 0)
  end
end

function Belmont.LavaPlatformSlot(entityName, timeDiff)
  local ent = Game.GetEntity(entityName)
  ent.uData.trig.Box00Pos = ent.Pos - V3D(0, -500, 0):rot(ent.Ang)
end

function Belmont.JumpPress(EntityName, repe)
  delSF("SchCheckJumpPress")
  if not Belmont.JumpEnabled then
    return
  end
  if Game.Get("IsBelmontTired") then
    return
  end
  local char, act, sufix, str, wlk, defloop
  char = Game.GetEntity(EntityName)
  if char.oActCtrl.oAction.Group == "Hang" then
    return
  end
  if not repe and WeaponsCombo.ProcessAction(EntityName, "PressJump") then
    char.ExtraSufix = "Whip"
    return
  end
  act = char.Action
  local currentAction = char.oActCtrl.oAction
  if currentAction.OnObjSlot ~= "" then
    Belmont.ProgramJumpCheck(EntityName)
    return
  end
  local forceCanJump = char.oActCtrl:GetTrackInfo("ForceCanJump")
  if forceCanJump == "Yes" then
    char.oActCtrl.AnimPriority = 0
  elseif forceCanJump == "No" then
    Belmont.ProgramJumpCheck(EntityName)
    return
  end
  if char.isStrafer == 1 then
    str, wlk = char.InCtrl_Str, char.InCtrl_Walk
  else
    str, wlk = 0, 0
  end
  if char.isFalling == 0 or Game.GetTime() < char.LastFallTime + Belmont.SaveJumpTime and string.find(player.Action, "Jump") == nil or char.SlidingAndFallingTime > 0.5 then
    char.DisplAng = char.Ang.y - char.ViewAng.y
    local VelVector = V3D(0, 0, 0)
    local RotVel = V2D(char.InCtrl_Str, char.InCtrl_Walk)
    if RotVel:mod() > 0.7 then
      local dist
      local isDodge = string.find(char.Action, "Dodge")
      local isInit = not isDodge and string.find(char.Action, "Init")
      if isDodge and char.oActCtrl.AnimPos < 0.2 or isInit and char.oActCtrl.AnimTime < 0.35 then
        dist = Belmont.JumpXZShort
        act = char.WeaponSufix .. "JumpShortInit"
        defloop = char.WeaponSufix .. "FallShort"
      elseif char.Action == "WhipSprint" or char.Action == "Sprint" or char.Action == "WhipSprintEnd" or char.Action == "SprintEnd" then
        dist = Belmont.JumpXZSprint
        act = char.WeaponSufix .. "JumpRunInit"
        defloop = char.WeaponSufix .. "FallRun"
      else
        dist = Belmont.JumpXZ
        act = char.WeaponSufix .. "JumpRunInit"
        defloop = char.WeaponSufix .. "FallRun"
      end
      RotVel = RotVel:norm()
      VelVector = V3D(-RotVel.x * dist, 0, -RotVel.y * dist):rot(V3D(0, char.ViewAng.y, 0)) + V3D(0, Belmont.JumpY, 0)
    else
      VelVector = V3D(0, Belmont.JumpY, 0)
      act = char.WeaponSufix .. "JumpInit"
      defloop = char.WeaponSufix .. "Fall"
    end
    local NewFullAng = V3D(0, char.ViewAng.y + math.atan2(RotVel.x, RotVel.y) * 180 / math.pi, 0)
    local nonadvance = VelVector.x == 0 and VelVector.z == 0
    if nonadvance then
      NewFullAng = char.Ang
    end
    if Game.TestLine(char.Pos, char.Pos + V3D(0, 0, -char.oActCtrl.oActClass.Radius - 30):rot(NewFullAng), "") then
      VelVector = V3D(0, Belmont.JumpY, 0)
      act = char.WeaponSufix .. "JumpInit"
      defloop = char.WeaponSufix .. "Fall"
    end
    char.Action = act
    if char.Action == act then
      char.TimeToCheckClimb = 0.15
      char.isFalling = 1
      char.Action = act
      char.Vel = VelVector
      char.ForceDefLoop = defloop
      if not nonadvance then
        char.DisplAng = 0
        char.JustFullAng = Belmont.CheckJumpAngle(char, NewFullAng)
      end
      WeaponsCombo.SortAndPurge(char, char.uData.ComboBuffer)
      if char.uData.ComboBuffer[1] and char.uData.ComboBuffer[1][2] == "PressJump" then
        table.remove(char.uData.ComboBuffer, 1)
      end
    else
      Belmont.ProgramJumpCheck(EntityName)
    end
  elseif not LightPower.DoubleJuump(char) then
    Belmont.ProgramJumpCheck(EntityName)
  else
    WeaponsCombo.SortAndPurge(char, char.uData.ComboBuffer)
    if char.uData.ComboBuffer[1] and char.uData.ComboBuffer[1][2] == "PressJump" then
      table.remove(char.uData.ComboBuffer, 1)
    end
  end
end

function Belmont.JumpRelease(EntityName)
  local ent
  ent = Game.GetEntity(EntityName)
  if ent.isFalling ~= 0 then
    LightPower.JumpRelease(char)
  end
  local releaseAction = ent.oActCtrl:GetTrackInfo("ReleaseButtonAction")
  if releaseAction then
    ent.ForceAction = releaseAction
  end
  if ent.uData.LastTrigeredLink == "PressJump" then
    ent.uData.ButtonReleased = true
    ent.uData.WaitingForRelease = nil
  end
  ent.uData.JumpReleaseTime = Game.GetTime()
end

function Belmont.CheckFallHit(char, SlotTime, Ipos)
  if char.isFalling == 0 then
    char.ForceAction = char.Action .. "End"
    char.ForceDefLoop = char.ExtraSufix .. "Relax"
  elseif char.SlidingAndFallingTime > 1 then
    char.ForceAction = "WhipFall"
    char.ForceDefLoop = "WhipFall"
  end
end

function Belmont.JumpChangeVel(char, SlotTime, Ipos)
  local ModVel = -V3D(char.InCtrl_Str, 0, char.InCtrl_Walk):rot(char.ViewAng):rot(-char.Ang)
  char.AddDispVel = char.AddDispVel + ModVel * 1800 * SlotTime * (1 - V3D(char.DispVel.x, 0, char.DispVel.z):mod() / 1100 * (1 - clamp(0, 1, ModVel.z)))
end

function Belmont.JumpBack(EntityName, EventName, Time)
  Game.GetEntity(EntityName).OnNextObjSlot = "Belmont.JumpBackFunc"
end

function Belmont.JumpBackFunc(EntityName, SlotTime)
  local char
  char = Game.GetEntity(EntityName)
  char.TimeToCheckClimb = 0.15
  char.isFalling = 1
  char.Vel = Belmont.JumpBackVec:rot(V3D(0, char.Ang.y, 0))
end

function Belmont.OnSwitchActive(entity, active)
  if active == 1 then
    Belmont.BeginEffects(entity.Name)
    Belmont.BeginEffectsNoPreloaded(entity.Name)
  else
    Game.DeleteScheduledFuncs("ConsumeDarkPower")
    Game.DeleteScheduledFuncs("ConsumeLightPower")
    DarkPower.DeactivatePower(entity.Name, true)
    LightPower.DeactivatePower(entity.Name, true)
    Belmont.EndEffects(entity.Name)
  end
end

Belmont.ChainModelA = true
Belmont.ChainModelB = false
Belmont.ChainModelC = false

function Belmont.ChainModelInUseString()
  if Belmont.ChainModelInUse.Value < 3 then
    return "A"
  elseif Belmont.ChainModelInUse.Value == 3 then
    return "B"
  elseif Belmont.ChainModelInUse.Value == 4 then
    return "C"
  end
end

function Belmont.CreateEffectsNoPreloaded()
  local level = string.sub(string.upper(Game.GetLevelPath()), 8)
  if level == "8_4_THE_THRONE_ROOM" then
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETGROUNDHIT", 2, "fx/belmont/bluegauntlet/gaunletgroundpunch/power_ring.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLET", 1, "fx/belmont/bluegauntlet/gaunletgroundpunch/gaunlet.ps.xml")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETGLOW", 1, "fx/belmont/bluegauntlet/gaunletgroundpunch/gaunletcharged.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETPUNCH", 1, "fx/belmont/bluegauntlet/gaunletpunch/energia.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETAIRFLOOR", 1, "fx/belmont/bluegauntlet/gaunletairfloor/floor.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETAIRTRAIL", 1, "fx/belmont/bluegauntlet/gaunletairfloor/trail.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETCLAW", 4, "FX/belmont/bluegauntlet/gaunletclaw/gaunlet_claw.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETCLAW_FREE", 4, "FX/belmont/bluegauntlet/gaunletclaw/gaunlet_claw_floor.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLETCLAW_HAND", 1, "FX/belmont/bluegauntlet/gaunletclaw/gaunlet_claw_hand.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_GAUNLET_CHARGED", 1, "FX/belmont/bluegauntlet/charged.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_UPPERCUT_TRAIL", 1, "fx/belmont/bluegauntlet/uppercut/uppercut_trail.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_UPPERCUT_FLOOR", 1, "fx/belmont/bluegauntlet/uppercut/uppercut_floor.ps.xml,0,1")
    FX.InitEffect("EFFECT_PARTICLES\183BLUE_UPPERCUT_PUNCH", 1, "fx/belmont/bluegauntlet/uppercut/uppercut_punch.ps.xml,0,1")
  end
  FX.InitEffect("EFFECT_PARTICLES\183POWCRYSATTACK", 1, "FX/belmont/powercristal/attack.ps.xml,0,1")
end

function Belmont.CreateEffects()
  FX.InitEffect("EFFECT_WHIP\183A", 2, "A")
  FX.InitEffect("EFFECT_WHIP\183B", 2, "B")
  FX.InitEffect("EFFECT_WHIP\183C", 2, "C")
  FX.InitEffect("EFFECT_MODELEFFECT\183BELMONT", 4)
  if Game.Get("toolmode") == 1 then
    FX.InitEffect("EFFECT_SPLINETRAIL\183STNeutral", 2, "FX/Belmont/whiptrail/neutral/whiptrailspline.ps.xml")
    FX.InitEffect("EFFECT_SPLINETRAIL\183STLight", 2, "FX/Belmont/whiptrail/light/whiptrailspline.ps.xml")
    FX.InitEffect("EFFECT_SPLINETRAIL\183STDark", 2, "FX/Belmont/whiptrail/dark/whiptrailspline.ps.xml")
  else
    FX.InitEffect("EFFECT_SPLINETRAIL\183STNeutral", 1, "FX/Belmont/whiptrail/neutral/whiptrailspline.ps.xml")
    FX.InitEffect("EFFECT_SPLINETRAIL\183STLight", 1, "FX/Belmont/whiptrail/light/whiptrailspline.ps.xml")
    FX.InitEffect("EFFECT_SPLINETRAIL\183STDark", 1, "FX/Belmont/whiptrail/dark/whiptrailspline.ps.xml")
  end
  FX.InitEffect("EFFECT_PARTICLES\183WING_FLASH", 1, "FX/Belmont/wings/wings_flash.PS.xml,0.25")
  FX.InitEffect("EFFECT_PARTICLES\183WING_RING", 1, "FX/Belmont/wings/wings_ring.PS.xml,0.2")
  FX.InitEffect("EFFECT_PARTICLES\183WING_FEATHER", 1, "FX/Belmont/wings/wings_feathers.PS.xml,1.5")
  FX.InitEffect("EFFECT_PARTICLES\183WING_FLOOR", 1, "FX/Belmont/wings/wings_floor.PS.xml,0.5")
  FX.InitEffect("EFFECT_PARTICLES\183WING_BLIND", 2, "FX/Belmont/wings/wings_blind.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183WING_FLASH_AJ", 1, "FX/Belmont/wings/wings_flash_aj.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183WING_DUST_AJ", 1, "FX/Belmont/wings/wing_dust_aj.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", 2, "FX/Belmont/boots/boots_trail.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", 2, "FX/Belmont/boots/boots_smoke.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_STEP", 5, "FX/Belmont/boots/boots_step.PS.xml,1")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", 3, "FX/Belmont/boots/boots_floor_impact.PS.xml,2")
  FX.InitEffect("EFFECT_RAGDOLL\183BOOTS_AURA", 2, "FX/Belmont/boots/aura.PS.xml")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_FLASH", 2, "FX/Belmont/boots/boots_flash.PS.xml,1")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", 1, "FX/Belmont/boots/boots_smokepower.PS.xml,1")
  FX.InitEffect("EFFECT_PARTICLES\183BOOTS_INI", 1, "FX/Belmont/boots/boots_ini.PS.xml,0,1")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactA", 4, "FX/Belmont/Whiptrail/Neutral/arco_impactoa.ps.xml")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactD", 4, "FX/Belmont/Whiptrail/Neutral/arco_impactod.ps.xml")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactFire", 4, "FX/Belmont/Whiptrail/Neutral/fire_impact.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183WhipCircularWindNeutral", 4, "FX/BELMONT/WHIPTRAIL/Neutral/viento.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183WhipCircularWindStrongNeutral", 4, "FX/BELMONT/WHIPTRAIL/Neutral/viento_fuerte.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183WhipFrontWindNeutral", 4, "FX/BELMONT/WHIPTRAIL/Neutral/wind2.ps.xml,0,1")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactNeutral", 4, "FX/Belmont/Whiptrail/neutral/impact_soft.ps.xml")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactFireDark", 4, "FX/Belmont/Whiptrail/Dark/fire_impact_dark.ps.xml")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactDarkA", 4, "FX/Belmont/Whiptrail/Dark/arco_impacto_dark.ps.xml")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactDark", 4, "FX/Belmont/Whiptrail/Dark/impact_soft.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183WhipCircularWindDark", 4, "FX/BELMONT/WHIPTRAIL/Dark/viento.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183WhipCircularWindStrongDark", 4, "FX/BELMONT/WHIPTRAIL/Dark/viento_fuerte.ps.xml,0,1")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactFireLight", 4, "FX/Belmont/Whiptrail/light/fire_impact.ps.xml")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactLightA", 4, "FX/Belmont/Whiptrail/light/arco_impactoA.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183WhipImpactLightCross", 4, "FX/Belmont/Whiptrail/light/impact_cross.ps.xml,0,1")
  FX.InitEffect("EFFECT_WHIPIMPACT\183WhipImpactLight", 4, "FX/Belmont/Whiptrail/light/impact_soft.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183WhipCircularWindLight", 4, "FX/BELMONT/WHIPTRAIL/Light/viento.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183WhipCircularWindStrongLight", 4, "FX/BELMONT/WHIPTRAIL/Light/viento_fuerte.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183VIAL_SHIELD", 1, "fx/belmont/vial/shield.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183VIAL_SHIELD_HIT", 4, "fx/belmont/vial/shield_hit.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DARK_POWER_B", 2, "FX/belmont/darkpower/dark_power2.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DARK_POWER_A", 2, "FX/belmont/darkpower/dark_power.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DARK_POWER_B2", 2, "FX/belmont/darkpower/dark_power22.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DARK_POWER_A2", 2, "FX/belmont/darkpower/dark_power21.ps.xml,0,1")
  FX.InitEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", 2, "FX/belmont/darkpower/aura.ps.xml")
  FX.InitEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", 2, "FX/belmont/darkpower/body.ps.xml")
  FX.InitEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", 2, "FX/belmont/darkpower/body_front.ps.xml")
  FX.InitEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", 2, "FX/belmont/darkpower/body_free.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183DARK_POWER_VIENTO", 2, "FX/belmont/darkpower/dark_power_viento.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", 2, "FX/belmont/lightpower/light_power2.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183LIGHT_POWER_A", 2, "FX/belmont/lightpower/light_power.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", 2, "FX/belmont/lightpower/light_power22.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", 2, "FX/belmont/lightpower/light_power21.ps.xml,0,1")
  FX.InitEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", 2, "FX/belmont/lightpower/aura.ps.xml")
  FX.InitEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", 2, "FX/belmont/lightpower/body.ps.xml")
  FX.InitEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", 2, "FX/belmont/lightpower/body_free.ps.xml")
  FX.InitEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", 2, "FX/belmont/lightpower/body_front.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183LIGHT_POWER_VIENTO", 2, "FX/belmont/lightpower/light_power_viento.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183POWCRYSINI", 1, "FX/belmont/powercristal/gas_explosion.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", 1, "FX/belmont/powercristal/attack_hand.ps.xml,0,1")
  FX.InitEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", 1, "models/chars/belmont/gabriel_halo_cross_dark/gabriel_halo_cross_dark.m3d")
  FX.InitEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", 1, "models/chars/belmont/gabriel_halo_cross_light/gabriel_halo_cross_light.m3d")
  FX.InitEffect("EFFECT_PARTICLES\183NENERGY_POWER", 1, "fx/belmont/neutralenergy/viento.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETGROUNDHIT", 2, "fx/belmont/gaunletgroundpunch/power_ring.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETGROUNDHIT_BASE", 2, "fx/belmont/gaunletgroundpunch/power_ring_base.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLET", 1, "fx/belmont/gaunletgroundpunch/gaunlet.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETGLOW", 1, "fx/belmont/gaunletgroundpunch/gaunletcharged.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETPUNCH", 1, "fx/belmont/gaunletpunch/energia.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETPUNCH_BASE", 1, "fx/belmont/gaunletpunch/energia_base.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETAIRFLOOR", 1, "fx/belmont/gaunletairfloor/floor.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETAIRTRAIL", 1, "fx/belmont/gaunletairfloor/trail.ps.xml,0,1")
  FX.InitEffect("EFFECT_BLOOD\183BLOOD_BELMONT", 10, "fx/impact/body/blood/redbloodlight/static.ps.xml#fx/impact/body/blood/redbloodlight/directed.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE", 1, "fx/belmont/vial/recharge.ps.xml,0,1")
  FX.InitEffect("EFFECT_SOULSUCKER\183BELMONT_CRYSTAL_DRAIN", 10, "fx/belmont/powercristal/soul.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_SOUL_GLOW", 10, "fx/belmont/powercristal/soul_arrive.ps.xml,0,1")
  FX.InitEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", 15, "fx/belmont/powercristal/ray.PS.xml")
  FX.InitEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", 10, "fx/belmont/powercristal/dynamic_thread.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", 2, "fx/belmont/powercristal/hand_glow.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", 10, "fx/Climb/generic_dust.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", 1, "fx/QuickSands/QuickSands.ps.xml,0")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", 1, "fx/QuickSands/QuickSandsTrail.ps.xml,0")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_SPLASH", 4, "fx/QuickSands/QuickSandsSplash.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", 1, "fx/QuickSands/deathly_fog.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", 1, "fx/belmont/breathing/breathing.ps.xml,0")
  FX.InitEffect("EFFECT_PARTICLES\183STAMINA_SMOKEPOWER", 2, "FX/Belmont/stamina/smokepower.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183STAMINA_FLASH", 2, "FX/Belmont/stamina/flash.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183STAMINA_FLOOR_IMPACT", 2, "FX/Belmont/stamina/floor_impact.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183STAMINA_TORNADO", 1, "FX/Belmont/stamina/light/tornado.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183STAMINA_TORNADO_DUST", 1, "FX/Belmont/stamina/light/dust.PS.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_RADIAL", 1, "FX/belmont/combos/radial.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", 1, "FX/belmont/combos/radial_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", 1, "FX/belmont/combos/radial_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", 1, "FX/belmont/combos/radial_free.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", 1, "FX/belmont/combos/sphere_chain.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL", 1, "FX/belmont/combos/air_radial.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_LIGHT", 1, "FX/belmont/combos/air_radial_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_DARK", 1, "FX/belmont/combos/air_radial_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_FREE", 1, "FX/belmont/combos/air_radial_free.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETCLAW", 4, "FX/belmont/combos/gaunlet_claw.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETCLAW_FREE", 4, "FX/belmont/combos/gaunlet_claw_floor.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183GAUNLETCLAW_HAND", 1, "FX/belmont/combos/gaunlet_claw_hand.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183TIMINGHIT", 5, "FX/belmont/combos/timing.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183TIMINGHIT_BASE", 5, "FX/belmont/combos/timing_base.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183TIMINGHIT_LIGHT", 5, "FX/belmont/combos/timing_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183TIMINGHIT_DARK", 5, "FX/belmont/combos/timing_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183AIRLOOPEND", 3, "FX/belmont/combos/air_loop_end.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183AIRLOOPEND_LIGHT", 3, "FX/belmont/combos/air_loop_end_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183AIRLOOPEND_DARK", 3, "FX/belmont/combos/air_loop_end_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", 1, "models/fx/windwave/windwave.m3d")
  FX.InitEffect("EFFECT_PARTICLES\183WINDWAVE", 2, "FX/belmont/combos/windwave.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183VCHAINTORNADO_DARK", 1, "FX/belmont/combos/vchaintornado_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183VCHAINTORNADO_LIGHT", 1, "FX/belmont/combos/vchaintornado_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183VCHAINTORNADO", 1, "FX/belmont/combos/vchaintornado.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183VCHAINTORNADO_FLOOR", 1, "FX/belmont/combos/vchaintornado_floor.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183UPPERCUT_TRAIL", 1, "fx/belmont/combos/uppercut_trail.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183UPPERCUT_FLOOR", 1, "fx/belmont/combos/uppercut_floor.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183UPPERCUT_PUNCH", 1, "fx/belmont/combos/uppercut_punch.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183HCHAINTORNADO", 1, "fx/belmont/combos/hchaintornado.ps.xml,0,1")
  FX.InitEffect("EFFECT_GLOBALLIGHT", 1, "")
  FX.InitEffect("EFFECT_PARTICLES\183COMBO_KAMEHA", 1, "fx/belmont/combos/kameha.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183UPPER_WING", 1, "fx/belmont/combos/upper_wings2.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FIRE_STORM", 30, "fx/belmont/combos/fire_storm.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183SS_CLAWS", 1, "fx/belmont/combos/sommersoul_claws.ps.xml,0,1")
  FX.InitEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", 1, "fx/belmont/combos/sommersoul_claw_trail.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183DOWN_DODGE", 1, "fx/belmont/combos/down_dodge.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183JUMP_GRIP", 1, "fx/belmont/combos/jump_grip.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183CHEST_UPGRADE", 1, "fx/belmont/chest_upgrade.ps.xml,0,1")
end

function Belmont.BeginEffectsNoPreloaded(entity)
  FX.BeginEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIP" .. entity, entity)
end

function Belmont.EndEffectsNoPreloaded(entity)
  FX.EndEffect("EFFECT_WHIP\183A")
  FX.EndEffect("EFFECT_WHIP\183B")
  FX.EndEffect("EFFECT_WHIP\183C")
end

function Belmont.BeginEffects(entity)
  if FX.BeginEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entity, entity) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STNeutral", "", "DeActive")
  end
  if FX.BeginEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entity, entity) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STLight", "", "DeActive")
  end
  if FX.BeginEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entity, entity) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STDark", "", "DeActive")
  end
  if MapEffects and MapEffects.IsCold then
    Belmont.FXBreathingOn(entity)
  end
  if FX.BeginEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail", entity .. ",DC_Trail_A,DC_Trail_B") then
    FX.SetEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "", "DeActive")
  end
end

function Belmont.EndEffects(entity)
  if FX.IsEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIP" .. entity) then
    FX.EndEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIP" .. entity)
  end
  if FX.IsEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entity) then
    FX.EndEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entity)
  end
  if FX.IsEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entity) then
    FX.EndEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entity)
  end
  if FX.IsEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entity) then
    FX.EndEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entity)
  end
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_DarkPower") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_DarkPower")
  end
  if FX.IsEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo")
  end
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_LightPower") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_LightPower")
  end
  if FX.IsEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2") then
    FX.EndEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2") then
    FX.EndEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2") then
    FX.EndEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2") then
    FX.EndEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER") then
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 0,0,0")
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 1,0,0")
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 2,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity) then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity)
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL", "Combo_Radial") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL", "Combo_Radial")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", "Combo_Radial_Dark") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", "Combo_Radial_Dark")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", "Combo_Radial_Light") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", "Combo_Radial_Light")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free", "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail") then
    FX.EndEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura") then
    FX.EndEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD") then
    FX.EndEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD")
  end
  Belmont.FXSphereChainOff(entity)
  Belmont.FXStaminaTornadoOff()
  Belmont.FXHChainTornadoOff(entity)
  Belmont.FXAirRadialOff(entity)
  Belmont.FXGaunletOff(entity)
  Belmont.FXGaunletBlueOff(entity)
  Belmont.FXWindWaveOff(entity)
  Belmont.FXKamehaOff(entity)
  Belmont.FXSommerSoulClawsOff(entity)
  Game.Set("R_GlobalMult", 1)
  Effects.RadialBlur(0, 0, 0)
  SoundUtils.FXStopSoundLoop("Belmont", "LoopBelmontNeutralEnergy", entity)
end

function Belmont.FXPlayScene()
  print("PlayScene")
  local entity = player.Name
  Belmont.FXWhipTrailOff(entity)
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_DarkPower") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_DarkPower")
  end
  if FX.IsEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo")
  end
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_LightPower") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_LightPower")
  end
  if FX.IsEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2") then
    FX.EndEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2") then
    FX.EndEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2") then
    FX.EndEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2") then
    FX.EndEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower") then
    FX.EndEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER") then
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 0,0,0")
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 1,0,0")
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 2,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity) then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity)
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL", "Combo_Radial") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL", "Combo_Radial")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", "Combo_Radial_Dark") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", "Combo_Radial_Dark")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", "Combo_Radial_Light") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", "Combo_Radial_Light")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free", "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail") then
    FX.EndEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD") then
    FX.EndEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183POWCRYSINI", "POWCRYSINI") then
    FX.EndEffect("EFFECT_PARTICLES\183POWCRYSINI", "POWCRYSINI")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183POWCRYSINI", "POWCRYSINI") then
    FX.EndEffect("EFFECT_PARTICLES\183POWCRYSINI", "POWCRYSINI")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183POWCRYSATTACK", "POWCRYSATTACK") then
    FX.EndEffect("EFFECT_PARTICLES\183POWCRYSATTACK", "POWCRYSATTACK")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "POWCRYSATTACK_HAND") then
    FX.EndEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "POWCRYSATTACK_HAND")
  end
  FX.EndEffect("EFFECT_GLOBALLIGHT", "")
  if FX.IsEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura") then
    FX.EndEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura")
  end
  FX.EndEffect("EFFECT_PARTICLES\183UPPERCUT_TRAIL")
  FX.EndEffect("EFFECT_PARTICLES\183UPPERCUT_PUNCH")
  FX.EndEffect("EFFECT_PARTICLES\183GAUNLETCLAW")
  FX.EndEffect("EFFECT_PARTICLES\183GAUNLETCLAW_FREE")
  FX.EndEffect("EFFECT_PARTICLES\183GAUNLETCLAW_HAND")
  FX.EndEffect("EFFECT_PARTICLES\183GAUNLETAIRTRAIL")
  FX.EndEffect("EFFECT_PARTICLES\183STAMINA_FLASH")
  FX.EndEffect("EFFECT_PARTICLES\183STAMINA_SMOKEPOWER")
  FX.EndEffect("EFFECT_PARTICLES\183WING_FLASH_AJ")
  FX.EndEffect("EFFECT_PARTICLES\183WING_BLIND")
  FX.EndEffect("EFFECT_PARTICLES\183DOWN_DODGE")
  Belmont.FXSphereChainOff(entity)
  Belmont.FXStaminaTornadoOff()
  Belmont.FXHChainTornadoOff(entity)
  Belmont.FXAirRadialOff(entity)
  Belmont.FXGaunletOff(entity)
  Belmont.FXGaunletBlueOff(entity)
  Belmont.FXWindWaveOff(entity)
  Belmont.FXKamehaOff(entity)
  Belmont.FXSommerSoulClawsOff(entity)
  Game.Set("R_GlobalMult", 1)
  Effects.RadialBlur(0, 0, 0)
  SoundUtils.FXStopSoundLoop("Belmont", "LoopBelmontNeutralEnergy", entity)
  Game.Set("RT_AberrationValue", 0)
  Game.Set("EagleViewFactorBegin", 0)
  Game.Set("EagleViewFactorEnd", 0)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0)
  Game.Set("BelmontPoisonedTimeLeft", 0)
  delSF("SpiderPoisonSlot")
  Belmont.FXDeathlyFogOff()
  SoundUtils.FXStopSoundLoop("Belmont", "VenomLoop", player.Name)
  delSF("HeartBeat")
end

function Belmont.FXJumpRunWingsOn(entity)
  Effects.RadialBlur(4, 0, 0.3, Game.GetEntity(entity).Pos, nil, V4D(2.4, 2.5, 2.6, 0.3))
  local LightRadius = 2000
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_Wing_Light", 0.2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entity .. "#DC_ROOT")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.8,0.8,1)] 0.2,[" .. LightRadius .. ",0,0,(0.8,0.8,1)]")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FLASH", "") then
    local rot = Game.GetEntity(entity).Ang
    rot.y = rot.y * 3.1416 / 180
    rot.x = -0.3926999866962433
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLASH", "", "PositionLinkToNode " .. entity .. "#Bip Gabriel Spine2")
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLASH", "", "MatrixEuler " .. rot:str3())
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_RING", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_RING", "", "LinkToNode " .. entity .. "#Bip Gabriel Spine2")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FEATHER", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_FEATHER", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FLOOR", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLOOR", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
  end
  if 0 < LightPower.PowerUse.Value and FX.BeginEffect("EFFECT_PARTICLES\183WING_BLIND", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 1,0 " .. entity .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 2,0 " .. entity .. "#Bip Gabriel Head")
  end
end

function Belmont.FXJumpWingsOn(entity)
  Effects.RadialBlur(4, 0, 0.3, Game.GetEntity(entity).Pos, nil, V4D(2.4, 2.5, 2.6, 0.3))
  local LightRadius = 2000
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_Wing_Light", 0.2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entity .. "#DC_ROOT")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.8,0.8,1)] 0.2,[" .. LightRadius .. ",0,0,(0.8,0.8,1)]")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FLASH", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLASH", "", "PositionLinkToNode " .. entity .. "#Bip Gabriel Spine2")
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLASH", "", "MatrixEuler (0,0,0)")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_RING", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_RING", "", "LinkToNode " .. entity .. "#Bip Gabriel Spine2")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FEATHER", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_FEATHER", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FLOOR", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLOOR", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
  end
  if 0 < LightPower.PowerUse.Value and FX.BeginEffect("EFFECT_PARTICLES\183WING_BLIND", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 1,0 " .. entity .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 2,0 " .. entity .. "#Bip Gabriel Head")
  end
end

function Belmont.FXWingsFadeIn(entity)
  local time = 0.15
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. entity)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_PHANTOM)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
  end
end

function Belmont.FXWingsFadeOut(entity)
  local time = 0.15
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. entity)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_PHANTOM)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
  end
end

function Belmont.FXBootsOn(entity)
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail", "BirthEnabled 0,0,1")
  elseif FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "", "EmitterLinkToNode 0,0 Belmont#Bip Gabriel R Foot")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "", "BirthEnabled 0,0,1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail", "BirthEnabled 0,0,1")
  elseif FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "", "EmitterLinkToNode 0,0 Belmont#Bip Gabriel L Foot")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "", "BirthEnabled 0,0,1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke", "BirthEnabled 0,0,1")
  elseif FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "", "EmitterLinkToNode 0,0 Belmont#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "", "MatrixTranslation (0,-50,0)")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "", "BirthEnabled 0,0,1")
  end
  Belmont.FXBootsModelGlowOn(entity)
  SoundUtils.FXPlaySoundLoop("Belmont", "MagicBootsLoopOn", entity)
  SoundUtils.FXPlaySound("Belmont", "MagicBootsInit", Game.GetEntity(entity).Pos)
end

function Belmont.FXBootsOff(entity)
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke", "BirthEnabled 0,0,0")
  end
  Belmont.FXBootsModelGlowOff(entity)
  SoundUtils.FXStopSoundLoop("Belmont", "MagicBootsLoopOn", entity)
  SoundUtils.FXPlaySound("Belmont", "MagicBootsEnd", Game.GetEntity(entity).Pos)
end

function Belmont.FXBootsLStep(entity)
  if not FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    Belmont.FXBootsOn(entity)
  end
  local pos = FX.GetNodePosition(entity, "Bip Gabriel L Foot")
  if FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_STEP", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 0,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 1,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 2,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 3,0," .. pos:str3())
  end
  Weapons.QuakeFX(pos, 0.3, 0.1)
end

function Belmont.FXBootsRStep(entity)
  if not FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKE", "boot_trail_smoke") then
    Belmont.FXBootsOn(entity)
  end
  local pos = FX.GetNodePosition(entity, "Bip Gabriel R Foot")
  if FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_STEP", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 0,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 1,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 2,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_STEP", "", "EmitterMatrixTranslation 3,0," .. pos:str3())
  end
  Weapons.QuakeFX(pos, 0.3, 0.1)
end

function Belmont.FXBootsFloorImpactOn(entity)
  local pos = FX.GetNodePosition(entity, "DC_Root")
  if FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 0,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 1,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 2,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 3,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 4,0," .. pos:str3())
    pos.y = pos.y - 60
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 5,0," .. pos:str3())
    pos.y = pos.y - 70
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLOOR_IMPACT", "", "EmitterMatrixTranslation 6,0," .. pos:str3())
  end
  local LightRadius = 2000
  local LightIntensity = 3
  if FX.BeginEffect("EFFECT_LIGHT", "", 1) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entity .. "#DC_ROOT")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.35,0.15)] 0.2,[" .. LightRadius .. ",1,0,(1,0.35,0.15)] 0.8,[" .. LightRadius .. ",0,0,(1,0.35,0.15)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode Belmont#DC_Root")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower") then
    FX.EndEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "", "EmitterLinkToNode 0,0 Belmont#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "", "BirthEnabled 0,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "", "EmitterLinkToNode 1,0 Belmont#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "", "BirthEnabled 1,0,1")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura", entity) then
  end
  Weapons.QuakeFX(pos, 0.8, 0.3)
end

function Belmont.FXBootsFloorImpactTrailOn(entity)
  if FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_FLASH", "") then
    local rot = Game.GetEntity(entity).Ang
    rot.y = rot.y * 3.1416 / 180
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLASH", "", "PositionLinkToNode " .. entity .. "#Bip Gabriel Spine2")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_FLASH", "", "MatrixEuler " .. rot:str3())
  end
  Belmont.FXBootsModelGlowOn(entity)
end

function Belmont.FXBootsFloorImpactOff(entity)
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower", "BirthEnabled 0,0,0")
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_SMOKEPOWER", "boot_smokepower", "BirthEnabled 1,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_BODY_TRAIL", "boot_body_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_BODY_TRAIL", "boot_body_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura") then
    FX.EndEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "r_boot_trail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_TRAIL", "l_boot_trail", "BirthEnabled 0,0,0")
  end
  Belmont.FXBootsModelGlowOff(entity)
end

function Belmont.FXBootsSealOn(entity)
  Effects.RadialBlur(0, 2, 0, nil, entity .. "#Bip Gabriel")
end

function Belmont.FXBootsSealOff(entity)
  Effects.RadialBlur(2, 0, 0.2, nil, entity .. "#Bip Gabriel")
end

function Belmont.FXWhipTrailOn(entityName)
  if LightPower.PowerUse.Value > 0 then
    if FX.IsEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entityName) then
      FX.SetEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entityName, "Active")
    end
  elseif 0 < DarkPower.PowerUse.Value then
    if FX.IsEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entityName) then
      FX.SetEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entityName, "Active")
    end
  elseif FX.IsEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entityName) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entityName, "Active")
  end
end

function Belmont.FXWhipTrailOff(entityName)
  if FX.IsEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entityName) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STNeutral", "WhipTrail_N" .. entityName, "DeActive")
  end
  if FX.IsEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entityName) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STLight", "WhipTrail_L" .. entityName, "DeActive")
  end
  if FX.IsEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entityName) then
    FX.SetEffect("EFFECT_SPLINETRAIL\183STDark", "WhipTrail_D" .. entityName, "DeActive")
  end
end

function Belmont.SceneWhipOn(entityName)
  print(entityName .. "SCENE WHIP ON")
  if FX.IsEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIPBelmont") then
    FX.EndEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIPBelmont")
  end
  FX.BeginEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIP" .. entityName, entityName)
end

function Belmont.SceneWhipOff(entityName)
  print("SCENE WHIP OFFF")
  if FX.IsEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIP" .. entityName) then
    FX.EndEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIP" .. entityName)
  end
  FX.BeginEffect("EFFECT_WHIP\183" .. Belmont.ChainModelInUseString(), "WHIPBelmont", "Belmont")
end

function Belmont.FXDarkPowerOn(entityName)
  if Game.GetEntity(entityName).ExtraSufix == "Whip" then
    local LightRadius = 300
    local LightIntensity = 2
    if FX.BeginEffect("EFFECT_LIGHT", "Belmont_DarkPower", 99999) ~= nil then
      FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.35,0.15)]")
      FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
      FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.5 .. "," .. LightIntensity .. ",0.2")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_A", "") then
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_A", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2") then
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_B", "") then
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B", "", "MatrixTranslation (0,16,0)")
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B", "", "MatrixEuler (0,0,1.57)")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2") then
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "", "MatrixTranslation (0,16,0)")
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "", "MatrixEuler (0,0,1.57)")
    end
    if FX.BeginEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo") then
      FX.SetEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
  end
  if FX.IsEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power") then
    FX.EndEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power")
  end
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power", "2") ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. player.Name)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_BURN)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0 2,1")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "dark_power_aura") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "dark_power_aura")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "dark_power_aura", entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "", "LifeTimeRemain 1")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_VIENTO", "") then
    FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_VIENTO", "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
  FX.BeginEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body", entityName)
  if FX.BeginEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front", entityName .. ",0.0004") then
    FX.SetEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "", "DeActiveEmitter Bip Gabriel Head")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free", entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free", "LinkToEmitter")
  end
  local LightRadius = 500
  local LightIntensity = 5
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_DarkPower_Aura", 0.5) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.35,0.15)] 0.5,[" .. LightRadius .. ",0,0,(1,0.35,0.15)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.8")
  end
  SoundUtils.FXPlaySound("Belmont", "DarkPowerOn", nil)
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos, nil, V4D(1.5, 1.1, 0.9, 0.6))
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 0.7, 0.3)
end

function Belmont.FXDarkPowerOff(entityName, DoNotUseFX)
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_DarkPower") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_DarkPower")
  end
  if FX.IsEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_CROSSHALO_DARK", "BlackMagicHalo")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2") then
    FX.EndEffect("EFFECT_PARTICLES\183DARK_POWER_A2", "dark_power_a2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2") then
    FX.EndEffect("EFFECT_PARTICLES\183DARK_POWER_B2", "dark_power_b2")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY", "dark_power_body")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FRONT", "dark_power_body_front")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free") then
    FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_BODY_FREE", "dark_power_body_free")
  end
  if LightPower.PowerUse.Value > 0 then
    return
  end
  if FX.IsEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power") then
    FX.EndEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power")
  end
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power", "0.5") ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. player.Name)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_BURN)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0.6 0.7,0")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
  end
  if Game.GetEntity(entityName).ExtraSufix == "Whip" and not DoNotUseFX then
    if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_A", "") then
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_A", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DARK_POWER_B", "") then
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B", "", "MatrixTranslation (0,16,0)")
      FX.SetEffect("EFFECT_PARTICLES\183DARK_POWER_B", "", "MatrixEuler (0,0,1.57)")
    end
    if FX.IsEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "dark_power_aura") then
      FX.EndEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "dark_power_aura")
    end
    if FX.BeginEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "dark_power_aura", entityName) then
      FX.SetEffect("EFFECT_RAGDOLL\183DARK_POWER_AURA", "", "LifeTimeRemain 1")
    end
    local LightRadius = 500
    local LightIntensity = 5
    if FX.BeginEffect("EFFECT_LIGHT", "Belmont_DarkPower_Aura", 0.5) ~= nil then
      FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
      FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.35,0.15)] 0.5,[" .. LightRadius .. ",0,0,(1,0.35,0.15)]")
      FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.8")
    end
    SoundUtils.FXPlaySound("Belmont", "DarkPowerOff", nil)
  end
end

function Belmont.FXLightPowerOn(entityName)
  if Game.GetEntity(entityName).ExtraSufix == "Whip" then
    local LightRadius = 300
    local LightIntensity = 2
    if FX.BeginEffect("EFFECT_LIGHT", "Belmont_LightPower", 99999) ~= nil then
      FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.3,0.3,1)]")
      FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
      FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.5 .. "," .. LightIntensity .. ",0.2")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_A", "") then
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_A", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2") then
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "") then
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "", "MatrixTranslation (0,16,0)")
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "", "MatrixEuler (0,0,1.57)")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2") then
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "", "MatrixTranslation (0,16,0)")
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "", "MatrixEuler (0,0,1.57)")
    end
    if FX.BeginEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo") then
      FX.SetEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
  end
  if FX.IsEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power") then
    FX.EndEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power")
  end
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power", "2") ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. player.Name)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_BURN)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "BurnColor (150,150,255)")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0 2,1")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
  end
  SoundUtils.FXPlaySound("Belmont", "LightPowerOn", nil)
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "light_power_aura") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "light_power_aura")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "light_power_aura", entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "", "LifeTimeRemain 1")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_VIENTO", "") then
    FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_VIENTO", "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
  FX.BeginEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body", entityName)
  if FX.BeginEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free", entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free", "LinkToEmitter")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front", entityName .. ",0.0004") then
    FX.SetEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "", "DeActiveEmitter Bip Gabriel Head")
  end
  local LightRadius = 500
  local LightIntensity = 5
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_Light_Power_Aura", 0.5) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.35,0.35,1)] 0.5,[" .. LightRadius .. ",0,0,(0.35,0.35,1)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.8")
  end
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos, nil, V4D(1.3, 1.4, 1.5, 0.6))
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 0.7, 0.3)
end

function Belmont.FXLightPowerOff(entityName, DoNotUseFX)
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_LightPower") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_LightPower")
  end
  if FX.IsEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_CROSSHALO_LIGHT", "LightMagicHalo")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2") then
    FX.EndEffect("EFFECT_PARTICLES\183LIGHT_POWER_A2", "light_power_a2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2") then
    FX.EndEffect("EFFECT_PARTICLES\183LIGHT_POWER_B2", "light_power_b2")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY", "light_power_body")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FREE", "light_power_body_free")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front") then
    FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_BODY_FRONT", "light_power_body_front")
  end
  if DarkPower.PowerUse.Value > 0 then
    return
  end
  if FX.IsEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power") then
    FX.EndEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power")
  end
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "Burn_Power", "0.5") ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. player.Name)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_BURN)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "BurnColor (150,150,255)")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0.6 0.7,0")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
  end
  if Game.GetEntity(entityName).ExtraSufix == "Whip" and not DoNotUseFX then
    if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_A", "") then
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_A", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "") then
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "", "MatrixTranslation (0,16,0)")
      FX.SetEffect("EFFECT_PARTICLES\183LIGHT_POWER_B", "", "MatrixEuler (0,0,1.57)")
    end
    if FX.IsEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "light_power_aura") then
      FX.EndEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "light_power_aura")
    end
    if FX.BeginEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "light_power_aura", entityName) then
      FX.SetEffect("EFFECT_RAGDOLL\183LIGHT_POWER_AURA", "", "LifeTimeRemain 1")
    end
    local LightRadius = 500
    local LightIntensity = 5
    if FX.BeginEffect("EFFECT_LIGHT", "Belmont_Light_Power_Aura", 0.5) ~= nil then
      FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
      FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.35,0.35,1)] 0.5,[" .. LightRadius .. ",0,0,(0.35,0.35,1)]")
      FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.8")
    end
    SoundUtils.FXPlaySound("Belmont", "LightPowerOff", nil)
  end
end

function Belmont.FXWhipImpactAOn(entityName, pos)
  if DarkPower.PowerUse.Value > 0 then
    Belmont.FXWhipImpactDarkAOn(entityName, pos)
    SoundUtils.FXPlaySound("Belmont", "DarkImpact", pos)
  elseif 0 < LightPower.PowerUse.Value then
    Belmont.FXWhipImpactLightAOn(entityName, pos)
    SoundUtils.FXPlaySound("Belmont", "LightImpact", pos)
  else
    Belmont.FXWhipImpactNeutralAOn(entityName, pos)
    SoundUtils.FXPlaySound("Belmont", "NormalImpact", pos)
  end
end

function Belmont.FXWhipImpactNeutralAOn(entityName, pos)
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactA", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactA", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactFire", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactFire", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactNeutral", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactNeutral", "", "MatrixTranslation " .. pos:str3())
  end
  local LightRadius = 250
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_WhipImpact", 0.3) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[" .. LightRadius .. ",0,0,(1,0.6,0.3)] 0.1,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.6,0.3)] 0.3,[" .. LightRadius .. ",0,0,(1,0.6,0.3)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.3")
  end
end

function Belmont.FXWhipImpactDarkAOn(entityName, pos)
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactDarkA", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactDarkA", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactFireDark", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactFireDark", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactDark", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactDark", "", "MatrixTranslation " .. pos:str3())
  end
  local LightRadius = 250
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_WhipImpact", 0.3) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[" .. LightRadius .. ",0,0,(1,0.2,0.1)] 0.1,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.2,0.1)] 0.3,[" .. LightRadius .. ",0,0,(1,0.2,0.1)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.3")
  end
end

function Belmont.FXWhipImpactLightAOn(entityName, pos)
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactLightA", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactLightA", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactFireLight", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactFireLight", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WhipImpactLightCross", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WhipImpactLightCross", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Latigo")
  end
  if FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactLight", "") then
    FX.SetEffect("EFFECT_WHIPIMPACT\183WhipImpactLight", "", "MatrixTranslation " .. pos:str3())
  end
  local LightRadius = 250
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_WhipImpact", 0.3) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[" .. LightRadius .. ",0,0,(0.3,0.3,1)] 0.1,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.3,0.3,1)] 0.3,[" .. LightRadius .. ",0,0,(0.3,0.3,1)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.3")
  end
end

function Belmont.FXWhipImpactDOn(entityName)
  FX.BeginEffect("EFFECT_WHIPIMPACT\183WhipImpactD", "")
end

function Belmont.FXWhipTrailDVOn(entityName)
  Belmont.FXWhipFrontWind(entityName)
end

function Belmont.FXWhipTrailDHOn(entityName)
  Belmont.FXWhipFrontWind(entityName)
end

function Belmont.FXWhipCircularWind(entityName)
  local effect = "EFFECT_PARTICLES\183WhipCircularWind"
  if DarkPower.PowerUse.Value > 0 then
    effect = effect .. "Dark"
  elseif 0 < LightPower.PowerUse.Value then
    effect = effect .. "Light"
  else
    effect = effect .. "Neutral"
  end
  if FX.BeginEffect(effect, "") then
    FX.SetEffect(effect, "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXWhipCircularWindStrong(entityName)
  local effect = "EFFECT_PARTICLES\183WhipCircularWindStrong"
  if DarkPower.PowerUse.Value > 0 then
    effect = effect .. "Dark"
  elseif 0 < LightPower.PowerUse.Value then
    effect = effect .. "Light"
  else
    effect = effect .. "Neutral"
  end
  if FX.BeginEffect(effect, "") then
    FX.SetEffect(effect, "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXWhipFrontWind(entityName)
  local rot = Game.GetEntity(entityName).Ang
  rot.y = rot.y * 3.1416 / 180 + 1
  if FX.BeginEffect("EFFECT_PARTICLES\183WhipFrontWindNeutral", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WhipFrontWindNeutral", "", "MatrixFromNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183WhipFrontWindNeutral", "", "MatrixEuler " .. rot:str3())
  end
end

function Belmont.FXRadialBlur(entityName)
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos)
end

Belmont.FXPowerCrystalCallback = nil
Belmont.PowerCrystalActivated = false

function Belmont.FXPowerCrystalOn(entityName)
  if Belmont.FXPowerCrystalCallback then
    Belmont.FXPowerCrystalCallback("on")
  end
  Belmont.PowerCrystalActivated = true
  Game.GetEntity(entityName).uData.FXUsingCrystal = true
  Weapons.VibraPad("HitUsr")
  if FX.BeginEffect("EFFECT_PARTICLES\183POWCRYSINI", "POWCRYSINI") then
    FX.SetEffect("EFFECT_PARTICLES\183POWCRYSINI", "", "PositionLinkToNode " .. entityName .. "#OB_PowerCrystal")
  end
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos)
  Belmont.FXPowerCrystalLight1(entityName)
  addSF(1, "", "Belmont.FXPowerCrystalLight2", entityName)
  addSF(1.9, "", "Belmont.FXPowerCrystalLight3", entityName)
  addSF(3, "", "Belmont.FXPowerCrystalLight4", entityName)
  addSF(2.1, "", "Belmont.FXPowerCrystalVideo", entityName)
  if Belmont.CrystalPowerMusic then
    Sound.CombatMusicSetActive(0)
    Sound.SetMusicLoopCount(0)
    Sound.SetMusic("!Sounds/Stream/" .. Belmont.CrystalPowerMusic .. ".ogg", 1)
    Sound.SetMusicLoopCount(0)
  end
  FX.EndEffect("EFFECT_GLOBALLIGHT", "")
  if FX.BeginEffect("EFFECT_GLOBALLIGHT", "PowerCrystal") then
    FX.SetEffect("EFFECT_GLOBALLIGHT", "", "ValueRamp 1,0.1,1")
  end
  SoundUtils.FXPlaySound("Belmont", "PowerCrystalUse", Game.GetEntity(entityName).Pos)
  player.IgnoreUsrControl = 1
end

function Belmont.FXPowerCrystalLight1(entityName)
  local LightRadius = 2000
  local LightIntensity = 5
  local color = "(1,0.6,0.6)"
  if FX.BeginEffect("EFFECT_LIGHT", "PowerCrystalL1", 1) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#OB_PowerCrystal")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. ",0,0," .. color .. "] 1,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
    FX.SetEffect("EFFECT_LIGHT", "", "StencilMode 2")
  end
end

function Belmont.FXPowerCrystalLight2(entityName)
  local LightRadius = 2000
  local LightIntensity = 20
  local color = "(1,0.4,0.4)"
  if FX.BeginEffect("EFFECT_LIGHT", "PowerCrystalL2", 1) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#OB_PowerCrystal")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. ",5,0," .. color .. "] 0.5,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
    FX.SetEffect("EFFECT_LIGHT", "", "StencilMode 2")
  end
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 1.5, 1)
end

function Belmont.FXPowerCrystalLight3(entityName)
  Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 255), 0.2)
end

function Belmont.FXPowerCrystalLight4(entityName)
  local LightRadius = 3000
  local LightIntensity = 10
  local color = "(1,0.7,0.7)"
  if FX.BeginEffect("EFFECT_LIGHT", "PowerCrystalL4", 0.7) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#OB_PowerCrystal")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. color .. "] 0.7,[0,0,0," .. color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
  end
end

function Belmont.FXPowerCrystalLight5(entityName)
  Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 255), 0.3)
end

function Belmont.FXPowerCrystalVideo(entityName)
  Scene.Scenes["2_8_0_CrystalPower"] = {PlantPlayer = false, VideoCGI = true}
  Scene.EndOfSceneCallback = Belmont.FXPowerCrystalPostVideo
  Scene.ContinueMusicInVideo = true
  Game.Set("S_PauseMusicVolume", 1)
  Scene.PlayVideo("2_8_0_CrystalPower")
  local pos = Game.GetEntity(entityName).Pos
  if FX.IsEffect("EFFECT_PARTICLES\183POWCRYSATTACK", "POWCRYSATTACK") then
    FX.EndEffect("EFFECT_PARTICLES\183POWCRYSATTACK", "POWCRYSATTACK")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183POWCRYSATTACK", "POWCRYSATTACK") then
    FX.SetEffect("EFFECT_PARTICLES\183POWCRYSATTACK", "", "MatrixTranslation " .. pos:str3())
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "POWCRYSATTACK_HAND") then
    FX.SetEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "", "EmitterLinkToNode 0,0 " .. entityName .. "#OB_PowerCrystal")
    FX.SetEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "", "EmitterLinkToNode 1,0 " .. entityName .. "#OB_PowerCrystal")
    FX.SetEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "", "EmitterLinkToNode 2,0 " .. entityName .. "#OB_PowerCrystal")
    FX.SetEffect("EFFECT_PARTICLES\183POWCRYSATTACK_HAND", "", "EmitterLinkToNode 3,0 " .. entityName .. "#OB_PowerCrystal")
  end
end

function Belmont.FXPowerCrystalPostVideo()
  local entityName = player.Name
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 0.5, 5)
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  if "function" == type(Belmont.OnAfterCrystalUse) then
    Belmont.OnAfterCrystalUse()
  end
  SoundUtils.FXPlaySoundLoop("Belmont", "PowerCrystalLoop", entityName)
  if Belmont.FXPowerCrystalCallback then
    Belmont.FXPowerCrystalCallback("video")
  end
  Camera.ActionSetFocus(player.Name, "0.3000,,700,70,JUSTANG,0,0.0,Bip Gabriel L Hand,0,", nil)
  Game.Set("S_PauseMusicVolume", Game.Def("S_PauseMusicVolume"))
end

function Belmont.FXPowerCrystalRestore()
  if Belmont.FXPowerCrystalCallback and Belmont.PowerCrystalActivated then
    Belmont.FXPowerCrystalCallback("off")
  end
  Belmont.PowerCrystalActivated = false
  if Game.GetEntity(player.Name).uData.FXUsingCrystal then
    local entityName = player.Name
    local LightRadius = 3000
    local LightIntensity = 20
    local color = "(1,0.2,0.2)"
    if FX.BeginEffect("EFFECT_LIGHT", "pOWERcRYSTALl5", 0.3) ~= nil then
      FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#OB_PowerCrystal")
      FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0,[" .. LightRadius .. ",0,0," .. color .. "] 0.15,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. color .. "] 0.3,[0,0,0," .. color .. "]")
      FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
    end
    FX.EndEffect("EFFECT_GLOBALLIGHT", "")
    if FX.BeginEffect("EFFECT_GLOBALLIGHT", "PowerCrystal") then
      FX.SetEffect("EFFECT_GLOBALLIGHT", "", "ValueRamp 0.1,1,1")
    end
    SoundUtils.FXStopSoundLoop("Belmont", "PowerCrystalLoop", entityName)
    SoundUtils.FXPlaySound("Belmont", "PowerCrystalEnd", player.Pos)
  end
  Game.GetEntity(player.Name).uData.FXUsingCrystal = false
  player.IgnoreUsrControl = 0
  if Belmont.CrystalPowerMusic then
    SoundUtils.RestoreMusic()
  end
end

function Belmont.FXBootsModelGlowOn(entityName)
  local time = 0.2
  local material = "Gabriel_Botas_Especial (+glow)"
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_GLOW_A)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "MaterialName " .. material)
  end
end

function Belmont.FXBootsModelGlowOff(entityName)
  local time = 0.8
  local material = "Gabriel_Botas_Especial (+glow)"
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_GLOW_A)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "MaterialName " .. material)
  end
end

function Belmont.FXGaunletGlowOn(entityName)
  local time = 0.1
  local material = "Gabriel_Guante_Especial (+glow)"
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_GLOW_B)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "MaterialName " .. material)
  end
end

function Belmont.FXGaunletGlowOff(entityName)
  local time = 2
  local material = "Gabriel_Guante_Especial (+glow)"
  if FX.BeginEffect("EFFECT_MODELEFFECT\183BELMONT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "RenderEffect " .. FX.MODELEFFECT_GLOW_B)
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "FadeNull")
    FX.SetEffect("EFFECT_MODELEFFECT\183BELMONT", "", "MaterialName " .. material)
  end
end

function Belmont.FXGaunletAirFloor(entityName)
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  local pPos = Game.GetEntity(entityName).Pos
  local pos = Game.TestLine(pPos, pPos + V3D(0, -2000, 0), "", "", true, true)
  if pos and FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETAIRFLOOR", "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETAIRFLOOR", "", "MatrixTranslation " .. pos:str3())
  end
end

function Belmont.FXGaunletAirTrail(entityName)
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETAIRTRAIL", "") then
    local rot = Game.GetEntity(entityName).Ang
    rot.y = rot.y * 3.1416 / 180
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETAIRTRAIL", "", "PositionLinkToNode " .. entityName .. "#Bip Gabriel Spine2")
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETAIRTRAIL", "", "MatrixEuler " .. rot:str3())
  end
end

function Belmont.FXNeutralEnergyPowerOn(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER") then
    FX.EndEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER") then
    FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos)
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 0.3, 0.1)
  SoundUtils.FXPlaySoundLoop("Belmont", "LoopBelmontNeutralEnergy", entityName)
end

function Belmont.FXNeutralEnergyPowerOff(entityName)
  if Game.GetEntity(entityName).Action ~= "WhipCharge" then
    if FX.IsEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER") then
      FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 0,0,0")
      FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 1,0,0")
      FX.SetEffect("EFFECT_PARTICLES\183NENERGY_POWER", "NENERGY_POWER", "BirthEnabled 2,0,0")
    end
    SoundUtils.FXStopSoundLoop("Belmont", "LoopBelmontNeutralEnergy", entityName)
  end
end

function Belmont.FXNeutralEnergyPowerTest(entity)
  delSF("FXNeutralEnergyPowerTest")
  addSF(0.2, "FXNeutralEnergyPowerTest", "Belmont.FXNeutralEnergyPowerOff", entity)
end

function Belmont.FXGaunletGroundPunch(entityName)
  local base = "_BASE"
  if player.uData.GaunletSuperCharge then
    base = ""
  end
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
    base = ""
  end
  local pos = FX.GetNodePosition(entityName, "Bip Gabriel L Hand")
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 0,0," .. (pos + V3D(0, 20, 0)):str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 1,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 2,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 3,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 4,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 5,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGROUNDHIT" .. base, "", "EmitterMatrixTranslation 6,0," .. pos:str3())
  end
  local posIni = pos + V3D(0, 50, 0)
  local posEnd = pos - V3D(0, 100, 0)
  local hit, norm, material = Game.TestLine(posIni, posEnd, "", "", true, true)
  if hit ~= nil and type(material) == "number" and 0 < material then
    local surface = Impact.Surfaces[material]
    if surface ~= nil then
      Impact.DoImpact("Splash/" .. surface, "DoFixed " .. hit:str3() .. ",(0,1,0)")
      SoundUtils.FXPlaySound("Belmont", "Splash_" .. surface, hit)
    end
  end
  local LightRadius = 400
  local LightIntensity = 2
  local LightColor = "(1,0.6,0.4)"
  if player.uData.bGauntletCharged then
    LightColor = "(0.5,0.5,1)"
  end
  if FX.BeginEffect("EFFECT_LIGHT", "GaunletGroundPunchLight", 1) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[0,0,0," .. LightColor .. "] 0.2,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. LightColor .. "] 1,[" .. LightRadius .. ",0,0," .. LightColor .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
  end
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 1, 0.2)
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos)
  if FX.IsEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet") then
    FX.EndEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet")
  end
end

function Belmont.FXGaunletPunch(entityName)
  local base = "_BASE"
  if player.uData.GaunletSuperCharge then
    base = ""
  end
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
    base = ""
  end
  Effects.RadialBlur(4, 0, 0.4, Game.GetEntity(entityName).Pos)
  Weapons.QuakeFX(Game.GetEntity(entityName).Pos, 1, 0.2)
  if FX.IsEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet") then
    FX.EndEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETPUNCH" .. base, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETPUNCH" .. base, "", "MatrixFromNode " .. entityName .. "#Bip Gabriel L Hand")
  end
  local pos = FX.GetNodePosition(entityName, "Bip Gabriel L Hand")
  local LightRadius = 500
  local LightIntensity = 2
  local LightColor = "(1,0.6,0.4)"
  if player.uData.bGauntletCharged then
    LightColor = "(0.5,0.5,1)"
  end
  if FX.BeginEffect("EFFECT_LIGHT", "GaunletPunchLight", 0.5) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[0,0,0," .. LightColor .. "] 0.1,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. LightColor .. "] 0.5,[" .. LightRadius .. ",0,0," .. LightColor .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.3")
  end
end

function Belmont.FXGaunletBlueOn(entityName)
  player.uData.bGauntletCharged = true
  if FX.BeginEffect("EFFECT_PARTICLES\183BLUE_GAUNLET_CHARGED", "GaunletCharged") then
    FX.SetEffect("EFFECT_PARTICLES\183BLUE_GAUNLET_CHARGED", "", "LinkToNode " .. entityName .. "#Bip Gabriel L Forearm")
    FX.SetEffect("EFFECT_PARTICLES\183BLUE_GAUNLET_CHARGED", "", "MatrixEuler (0,0,-1.57)")
  end
  addSF(AISpec.GetBehavParamValue("Darklord2V", "SuperGauntletTime"), "", "Belmont.FXGaunletBlueOff", "Belmont")
end

function Belmont.FXGaunletBlueOff(entityName)
  player.uData.bGauntletCharged = false
  if FX.IsEffect("EFFECT_PARTICLES\183BLUE_GAUNLET_CHARGED", "GaunletCharged") then
    FX.EndEffect("EFFECT_PARTICLES\183BLUE_GAUNLET_CHARGED", "GaunletCharged")
  end
end

function Belmont.FXGaunletOn(entityName)
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "", "LinkToNode " .. entityName .. "#Bip Gabriel L Forearm")
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "", "MatrixEuler (0,0,-1.57)")
  end
  if not player.uData.bGauntletCharged then
    Belmont.FXGaunletGlowOn(entityName)
  end
end

function Belmont.FXGaunletTest(entityName)
  delSF("FXGaunletTest")
  addSF(0.2, "FXGaunletTest", "Belmont.FXGaunletOff", entityName)
end

function Belmont.FXGaunletOff(entityName)
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  local ent = Game.GetEntity(entityName)
  if ent == nil then
    Game.ConsoleError("Belmont.FXGaunletOff('" .. entityName .. "') : Entity does not exist!\n")
    return
  end
  if ent.Action ~= "WhipBlockComboAEnd" and ent.Action ~= "WhipBlockComboDEnd" then
    if FX.IsEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet") then
      FX.EndEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLET", "Gaunlet")
    end
    print("GaunletOFFF")
  end
  if FX.IsEffect("EFFECT_LIGHT", "GaunletLight") then
    FX.EndEffect("EFFECT_LIGHT", "GaunletLight")
  end
  if not player.uData.bGauntletCharged then
    Belmont.FXGaunletGlowOff(entityName)
  end
end

function Belmont.FXBodyImpact(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183GABRIEL_BODY_IMPACT") then
    FX.SetEffect("EFFECT_PARTICLES\183GABRIEL_BODY_IMPACT", "", "LinkToNode " .. entityName .. "#Bip Gabriel Spine2")
  end
end

function Belmont.FXVialRecharge(entityName)
  local nodelist = {
    {
      "Bip Gabriel Head",
      V3D(0, 0, 0)
    },
    {
      "Bip Gabriel L Forearm",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel L UpperArm",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel Spine",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel R Forearm",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel R UpperArm",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel L Thigh",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel L Calf",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel R Thigh",
      V3D(0, 0, -1.57)
    },
    {
      "Bip Gabriel R Calf",
      V3D(0, 0, -1.57)
    }
  }
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE", "") then
    local i
    for i = 1, 10 do
      local node = nodelist[i][1]
      local rot = nodelist[i][2]
      FX.SetEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE", "", "EmitterLinkToNode 0," .. i - 1 .. " " .. entityName .. "#" .. node)
      FX.SetEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE", "", "EmitterMatrixEuler 0," .. i - 1 .. "," .. rot:str3())
    end
  end
  local LightRadius = 500
  local LightIntensity = 2
  pos = Game.GetEntity(entityName).Pos
  local Color = "(0.65,0.9,0.65,1)"
  if FX.BeginEffect("EFFECT_LIGHT", "RechargeVial", 2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[0,0,0," .. Color .. "] 1,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "] 2,[" .. LightRadius .. ",0,0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0")
    FX.SetEffect("EFFECT_LIGHT", "", "Direction (0,-1,0)")
  end
end

function Belmont.FXSoulSuckerOnArrive(EntityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_SOUL_GLOW", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_SOUL_GLOW", "", "MatrixFromNode " .. EntityName .. "#Bip Gabriel L Hand")
  end
  SoundUtils.FXPlaySound("Belmont", "PowerCrystalDrain", nil)
end

function Belmont.FXPowerCrystalDrain(entity)
  local node = "Bip " .. Game.GetEntity(entity).ActCtrl
  local pos = FX.GetNodePosition(entity, node)
  if not pos then
    node = _G[Game.GetEntity(entity).ActCtrl].FXPowerCrystalNode
    pos = FX.GetNodePosition(entity, node)
    if not pos then
      print("El personaje " .. Game.GetEntity(entity).ActCtrl .. " necesita un FXVialNode en su script")
    end
  end
  if FX.BeginEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "0.2,0.05,2,20,100") then
    FX.SetEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "IniLinkToNode " .. player.Name .. "#Bip Gabriel L Hand")
    FX.SetEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "EndLinkToNode " .. entity .. "#" .. node)
    FX.SetEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "Launch")
  end
  if FX.BeginEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "0.2,0.05,2,20,100") then
    FX.SetEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "IniLinkToNode " .. player.Name .. "#Bip Gabriel L Hand")
    FX.SetEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "EndLinkToNode " .. entity .. "#Random")
    FX.SetEffect("EFFECT_RAY\183POWERCRYSTALDRAIN", "", "Launch")
  end
  FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow2")
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow2") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "", "LinkToNode " .. entity .. "#" .. node)
  end
  if FX.BeginEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name) then
    FX.SetEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name, "Fade 0.5,0,1")
  end
  if FX.IsEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name) then
    FX.SetEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name, "LinkToNodeIni " .. player.Name .. "#Bip Gabriel L Hand")
    FX.SetEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name, "LinkToNodeEnd " .. entity .. "#" .. node)
  end
end

function Belmont.FXCrystalDrainLightOn(entity, tgt)
  local LightRadius = 1000
  local LightIntensity = 2
  local Color = V3D(1, 0.2, 0.2)
  if FX.IsEffect("EFFECT_LIGHT", "belmontcristaldrain") then
    FX.EndEffect("EFFECT_LIGHT", "belmontcristaldrain")
  end
  if FX.BeginEffect("EFFECT_LIGHT", "belmontcristaldrain", 9999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. player.Name .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color:str3() .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.3,0.2")
    FX.SetEffect("EFFECT_LIGHT", "", "RandomInt 0.1," .. LightIntensity .. ",0.1")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "", "LinkToNode " .. player.Name .. "#Bip Gabriel L Hand")
  end
end

function Belmont.FXCrystalDrainLightOff(entity)
  if FX.IsEffect("EFFECT_LIGHT", "belmontcristaldrain") then
    FX.EndEffect("EFFECT_LIGHT", "belmontcristaldrain")
  end
  if FX.IsEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name) then
    FX.EndEffect("EFFECT_DYNAMICTHREAD\183BELMONT_STEAL_LIFE", "steal_thread_" .. player.Name)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow") then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow2") then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_CRYSTAL_HAND_GLOW", "Cristal_Hand_Glow2")
  end
end

function Belmont.FXClimbHandL(EntityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 0,0 " .. EntityName .. "#Bip Gabriel L Finger2")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 1,0 " .. EntityName .. "#Bip Gabriel L Finger2")
  end
end

function Belmont.FXClimbHandR(EntityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 0,0 " .. EntityName .. "#Bip Gabriel R Finger2")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 1,0 " .. EntityName .. "#Bip Gabriel R Finger2")
  end
end

function Belmont.FXClimbFootL(EntityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 0,0 " .. EntityName .. "#Bip Gabriel L Toe0")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 1,0 " .. EntityName .. "#Bip Gabriel L Toe0")
  end
end

function Belmont.FXClimbFootR(EntityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 0,0 " .. EntityName .. "#Bip Gabriel R Toe0")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_CLIMB_DUST", "", "EmitterLinkToNode 1,0 " .. EntityName .. "#Bip Gabriel R Toe0")
  end
end

function Belmont.FXDoFootStepL(EntityName)
  Impact.DoFootStep(EntityName, "Bip Gabriel L Toe0")
end

function Belmont.FXDoFootStepR(EntityName)
  Impact.DoFootStep(EntityName, "Bip Gabriel R Toe0")
end

function Belmont.FXBeginQuickSands()
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands") or FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "BirthEnabledAll 1")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "LifeTimeRemain -1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail") or FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "BirthEnabledAll 1")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "LifeTimeRemain -1")
  end
end

function Belmont.FXEndQuickSands()
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "LifeTimeRemain 2")
  end
end

function Belmont.FXEndQuickSandsInmediate()
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands") then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail") then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail")
  end
  player.uData.FXInmediateExit = true
end

function Belmont.FXSplashQuickSands()
  local pos = player.Pos
  local posIni = pos + V3D(0, 50, 0)
  local posEnd = pos - V3D(0, 150, 0)
  local hit, norm, material = Game.TestLine(posIni, posEnd, "", "", true, true)
  if hit ~= nil and type(material) == "number" and material == 5 and FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_SPLASH", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_SPLASH", "", "MatrixTranslation " .. hit:str3())
  end
end

function Belmont.FXDeathlyFogOn()
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog") then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog", "BirthEnabledAll 1")
  end
end

function Belmont.FXDeathlyFogOff()
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog", "AlphaFadeOutEmitterSpeed 0,0,1.5")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog", "BirthEnabledAll 0")
  end
end

function Belmont.FXUpdateQuickSands(enable)
  local pos = player.Pos - V3D(0, player.FloorDist, 0)
  local angle = V3D(0, player.Ang.y * 0.0175, 0)
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "BirthEnabledAll " .. enable)
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "EmitterMatrixTranslation 0,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_TRAIL", "Belmont_QuickSands_Trail", "EmitterMatrixTranslation 1,0," .. pos:str3())
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "BirthEnabledAll " .. enable)
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "MatrixTranslation " .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS", "Belmont_QuickSands", "MatrixEuler " .. angle:str3())
  end
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_QUICKSANDS_DEATHLY_FOG", "DeathlyFog", "EmitterMatrixTranslation 0,0," .. pos:str3())
  end
end

function Belmont.FXBreathingOn(entity)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity) then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "", "Periodic 0.5,0.1,0.8,0.1")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
  end
end

function Belmont.FXBreathingOff(entity)
  if FX.IsEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity) then
    FX.EndEffect("EFFECT_PARTICLES\183BELMONT_BREATHING", "Breathing_" .. entity)
  end
end

function Belmont.StopColdFX()
  if MapEffects then
    Belmont.FXBreathingOff(player.Name)
    MapEffects.IsCold = nil
  end
end

function Belmont.ResumeColdFX()
  if MapEffects then
    MapEffects.IsCold = true
    Belmont.FXBreathingOn(player.Name)
  end
end

function Belmont.FXStaminaOn()
  if LightPower.PowerUse.Value == 1 then
    Belmont.FXStaminaTornadoOn()
  end
end

function Belmont.FXStaminaOff()
  Belmont.FXStaminaTornadoOff()
end

function Belmont.FXStaminaOffSch()
  Game.Set("RT_FocusValue", 0)
end

function Belmont.FXStaminaTrail(entity)
  if FX.BeginEffect("EFFECT_PARTICLES\183STAMINA_FLASH", "") then
    local rot = Game.GetEntity(entity).Ang
    rot.y = rot.y * 3.1416 / 180
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_FLASH", "", "PositionLinkToNode " .. entity .. "#Bip Gabriel Spine2")
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_FLASH", "", "MatrixEuler " .. rot:str3())
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183STAMINA_SMOKEPOWER", "") then
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_SMOKEPOWER", "", "EmitterLinkToNode 0,0 Belmont#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_SMOKEPOWER", "", "EmitterLinkToNode 1,0 Belmont#DC_Root")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura") then
    FX.EndEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura", player.Name) then
    FX.SetEffect("EFFECT_RAGDOLL\183BOOTS_AURA", "boots_aura", "LifeTimeRemain 0.2")
  end
  local pos = FX.GetNodePosition(player.Name, "DC_Root")
  if FX.BeginEffect("EFFECT_PARTICLES\183STAMINA_FLOOR_IMPACT", "") then
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_FLOOR_IMPACT", "", "EmitterMatrixTranslation 0,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_FLOOR_IMPACT", "", "EmitterMatrixTranslation 1,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_FLOOR_IMPACT", "", "EmitterMatrixTranslation 2,0," .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_FLOOR_IMPACT", "", "EmitterMatrixTranslation 3,0," .. pos:str3())
  end
  local LightRadius = 2000
  local LightIntensity = 10
  if FX.BeginEffect("EFFECT_LIGHT", "", 1) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. player.Name .. "#DC_ROOT")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.85,0.35)] 0.2,[" .. LightRadius .. ",1,0,(1,0.85,0.35)] 0.8,[" .. LightRadius .. ",0,0,(1,0.85,0.35)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode Belmont#DC_Root")
  end
  Weapons.QuakeFX(pos, 0.8, 0.3)
end

function Belmont.FXStaminaTornadoOn()
  addSF(0.3, "FXStaminaTornadoOn", "Belmont.FXStaminaTornadoOnSch")
end

function Belmont.FXStaminaTornadoOnSch()
  if FX.BeginEffect("EFFECT_PARTICLES\183STAMINA_TORNADO", "StaminaTornado") then
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_TORNADO", "", "LinkToNode " .. player.Name .. "#DC_Root")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183STAMINA_TORNADO_DUST", "StaminaTornadoDust") then
    FX.SetEffect("EFFECT_PARTICLES\183STAMINA_TORNADO_DUST", "", "EmitterLinkToNode 0,0 " .. player.Name .. "#DC_Root")
  end
  Weapons.QuakeFX(player.Pos, 0.5, 999999)
end

function Belmont.FXStaminaTornadoOff()
  delSF("FXStaminaTornadoOn")
  if FX.IsEffect("EFFECT_PARTICLES\183STAMINA_TORNADO", "StaminaTornado") then
    FX.EndEffect("EFFECT_PARTICLES\183STAMINA_TORNADO", "StaminaTornado")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183STAMINA_TORNADO_DUST", "StaminaTornadoDust") then
    FX.EndEffect("EFFECT_PARTICLES\183STAMINA_TORNADO_DUST", "StaminaTornadoDust")
  end
  Weapons.QuakeFX(V3D(0, 0, 0), 0, 0)
  Input.Rumble(0, 0, 0, 0)
end

function Belmont.FXRadialOn(entityName)
  local node = "Bip Gabriel L Hand"
  local tipo = "COMBO_RADIAL"
  local name = "Combo_Radial"
  if DarkPower.PowerUse.Value == 1 then
    tipo = tipo .. "_DARK"
    name = name .. "_Dark"
  elseif LightPower.PowerUse.Value == 1 then
    tipo = tipo .. "_LIGHT"
    name = name .. "_Light"
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. tipo, name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. tipo, "", "LinkToNode " .. entityName .. "#" .. node)
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "", "EmitterLinkToNode 0,0 " .. entityName .. "#" .. node)
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "", "EmitterLinkToNode 1,0 " .. entityName .. "#" .. node)
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "", "EmitterLinkToNode 2,0 " .. entityName .. "#" .. node)
  end
end

function Belmont.FXRadialOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL", "Combo_Radial") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL", "Combo_Radial")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", "Combo_Radial_Dark") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL_DARK", "Combo_Radial_Dark")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", "Combo_Radial_Light") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_RADIAL_LIGHT", "Combo_Radial_Light")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_RADIAL_FREE", "Combo_Radial_Free", "BirthEnabledAll 0")
  end
end

function Belmont.FXSphereChainOn(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "SphereChain") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "", "MatrixFromNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "", "EmitterActivate 0,0")
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "", "EmitterActivate 1,0")
  end
  local pos = Game.GetEntity(entityName).Pos
  Weapons.QuakeFX(pos, 0.5, 999999)
end

function Belmont.FXSphereChainOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "SphereChain") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "SphereChain", "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "SphereChain", "EmitterDeActivate 0,0")
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_SPHERECHAIN", "SphereChain", "EmitterDeActivate 1,0")
  end
  Weapons.QuakeFX(pos, 0, 0)
  Input.Rumble(0, 0, 0, 0)
end

function Belmont.FXAirRadialOn(entityName)
  local tipo = "EFFECT_PARTICLES\183COMBO_AIRRADIAL"
  local name = "AirRadial"
  if DarkPower.PowerUse.Value == 1 then
    tipo = tipo .. "_DARK"
    name = name .. "_Dark"
  elseif LightPower.PowerUse.Value == 1 then
    tipo = tipo .. "_LIGHT"
    name = name .. "_Light"
  end
  if FX.BeginEffect(tipo, name) then
    FX.SetEffect(tipo, "", "LinkToNode " .. entityName .. "#DC_Root")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_FREE", "AirRadial_Free") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_FREE", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_FREE", "", "EmitterLinkToNode 1,0 " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXAirRadialOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL", "AirRadial") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL", "AirRadial")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_DARK", "AirRadial_Dark") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_DARK", "AirRadial_Dark")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_LIGHT", "AirRadial_Light") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_LIGHT", "AirRadial_Light")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_FREE", "AirRadial_Free") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_AIRRADIAL_FREE", "AirRadial_Free", "BirthEnabledAll 0")
  end
end

function Belmont.FXGaunletClaw(entityName)
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  local i
  for i = 1, 4 do
    if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW", "") then
      FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW", "", "LinkToNode " .. entityName .. "#DC_FIRE_0" .. i)
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW_FREE", "") then
      FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW_FREE", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_FIRE_0" .. i)
      FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW_FREE", "", "EmitterLinkToNode 1,0 " .. entityName .. "#DC_FIRE_0" .. i)
      FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW_FREE", "", "EmitterLinkToNode 2,0 " .. entityName .. "#DC_FIRE_0" .. i)
    end
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW_HAND", "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETCLAW_HAND", "", "LinkToNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXTimingBaseHit(entityName)
  local tipo = "EFFECT_PARTICLES\183TIMINGHIT_BASE"
  if FX.BeginEffect(tipo, "") then
    FX.SetEffect(tipo, "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXTimingHit(entityName)
  local tipo = "EFFECT_PARTICLES\183TIMINGHIT"
  if DarkPower.PowerUse.Value == 1 then
    tipo = tipo .. "_DARK"
  elseif LightPower.PowerUse.Value == 1 then
    tipo = tipo .. "_LIGHT"
  end
  if FX.BeginEffect(tipo, "") then
    FX.SetEffect(tipo, "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXAirLoopEnd(entityName)
  local tipo = "EFFECT_PARTICLES\183AIRLOOPEND"
  if DarkPower.PowerUse.Value == 1 then
    tipo = tipo .. "_DARK"
  elseif LightPower.PowerUse.Value == 1 then
    tipo = tipo .. "_LIGHT"
  end
  if FX.BeginEffect(tipo, "") then
    FX.SetEffect(tipo, "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXWindWaveOn(entityName)
  if FX.BeginEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "WindWave") then
    FX.SetEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "", "LinkToNode " .. entityName .. "#DC_WHIP_HIT")
    FX.SetEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "", "LifeTime 0.26")
    FX.SetEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "", "RenderEffect " .. FX.MODELEFFECT_BLEND)
    FX.SetEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "", "ValueRamp 2 0.1,1 0.26,0")
    FX.SetEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "", "FadeNull")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WINDWAVE", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WINDWAVE", "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
end

function Belmont.FXWindWaveOff(entityName)
  if FX.IsEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "WindWave") then
    FX.EndEffect("EFFECT_MODEL\183MODEL_WIND_WAVE", "WindWave")
  end
end

function Belmont.FXVChainTornadoOn(entityName)
  local pos = Game.GetEntity(entityName).Pos
  local ang = Game.GetEntity(entityName).Ang
  ang = V3D(0, math.rad(ang.y), 0)
  local tipo = "EFFECT_PARTICLES\183VCHAINTORNADO"
  local name = "VChainTornado"
  if DarkPower.PowerUse.Value == 1 then
    tipo = tipo .. "_DARK"
    name = name .. "_Dark"
  elseif LightPower.PowerUse.Value == 1 then
    tipo = tipo .. "_LIGHT"
    name = name .. "_Light"
  end
  if FX.BeginEffect(tipo, name) then
    FX.SetEffect(tipo, "", "MatrixTranslation " .. pos:str3())
    FX.SetEffect(tipo, "", "MatrixEuler " .. ang:str3())
  end
  local pos = pos + V3D(0, -300, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183VCHAINTORNADO_FLOOR", "VChainTorandoFloor") then
    FX.SetEffect("EFFECT_PARTICLES\183VCHAINTORNADO_FLOOR", "", "MatrixTranslation " .. pos:str3())
  end
  Effects.RadialBlur(4, 0, 0.3, Game.GetEntity(entityName).Pos)
end

function Belmont.FXVChainTornadoFadeOut()
end

function Belmont.FXVChainTornadoOff(entityName)
end

function Belmont.FXUppercut(entityName)
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_TRAIL", "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_TRAIL", "", "LinkToNode " .. entityName .. "#DC_Root")
  end
  local pos = Game.GetEntity(entityName).Pos + V3D(0, -150, 0)
  local ang = Game.GetEntity(entityName).Ang
  ang.y = ang.y * 3.1416 / 180
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_FLOOR", "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_FLOOR", "", "MatrixTranslation " .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_FLOOR", "", "MatrixEuler " .. ang:str3())
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_PUNCH", "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_PUNCH", "", "EmitterLinkToNode 0,0 " .. entityName .. "#Bip Gabriel L Hand")
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_PUNCH", "", "EmitterLinkToNode 1,0 " .. entityName .. "#Bip Gabriel L Hand")
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "UPPERCUT_PUNCH", "", "EmitterLinkToNode 2,0 " .. entityName .. "#Bip Gabriel L Hand")
  end
end

function Belmont.FXHChainTornadoOn(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "HChainTornado") then
    FX.SetEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "HChainTornado", "BirthEnabledAll 1")
    FX.SetEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "", "MatrixTranslation (0,0,-100)")
    FX.SetEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "", "MatrixEuler (-1.5,0,0)")
  end
  Belmont.FXWhipTrailOn(entityName)
end

function Belmont.FXHChainTornadoOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "HChainTornado") then
    FX.EndEffect("EFFECT_PARTICLES\183HCHAINTORNADO", "HChainTornado")
  end
  Belmont.FXWhipTrailOff(entityName)
end

function Belmont.FXKamehaOn(entityName)
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_Kameha") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_Kameha")
  end
  local pos = Game.GetEntity(entityName).Pos
  local ang = Game.GetEntity(entityName).Ang
  ang = V3D(0, 3.1416 + ang.y * 3.1416 / 180, 0)
  local radius = 5000
  local intensity = 10
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_Kameha", 99999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "Euler " .. ang:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. radius .. ",0,0,(0.5,0.5,1)] 1,[" .. radius .. "," .. intensity .. ",0,(0.5,0.5,1)]")
    FX.SetEffect("EFFECT_LIGHT", "", "SpotLight 60,10")
    FX.SetEffect("EFFECT_LIGHT", "", "CheckSector 0")
  end
  FX.EndEffect("EFFECT_GLOBALLIGHT", "")
  if FX.BeginEffect("EFFECT_GLOBALLIGHT", "Kameha_GL") then
    FX.SetEffect("EFFECT_GLOBALLIGHT", "", "ValueRamp 1,0.5,0.3")
  end
  pos = FX.GetNodePosition(entityName, "Bip Gabriel L Hand")
  if FX.BeginEffect("EFFECT_PARTICLES\183COMBO_KAMEHA", "Combo_Kameha") then
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_KAMEHA", "", "MatrixTranslation " .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183COMBO_KAMEHA", "", "MatrixEuler " .. ang:str3())
  end
  addSF(0, "Kameha", "Belmont.FXKamehaSch", 30)
end

function Belmont.FXKamehaSch(a)
  local cone = a
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_Kameha") then
    FX.SetEffect("EFFECT_LIGHT", "Belmont_Kameha", "SpotLight " .. cone .. ",10")
  end
  if cone < 120 then
    addSF(0.05, "Kameha", "Belmont.FXKamehaSch", cone + 2)
  end
end

function Belmont.FXKamehaOff(entityName)
  FX.EndEffect("EFFECT_GLOBALLIGHT", "")
  if FX.IsEffect("EFFECT_LIGHT", "Belmont_Kameha") then
    FX.EndEffect("EFFECT_LIGHT", "Belmont_Kameha")
  end
  if FX.BeginEffect("EFFECT_GLOBALLIGHT", "") then
    FX.SetEffect("EFFECT_GLOBALLIGHT", "", "ValueRamp 0.5,1,0.5")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183COMBO_KAMEHA", "Combo_Kameha") then
    FX.EndEffect("EFFECT_PARTICLES\183COMBO_KAMEHA", "Combo_Kameha")
  end
  delSF("Kameha")
end

function Belmont.FXUpperWing(entityName)
  if LightPower.PowerUse.Value == 1 and FX.BeginEffect("EFFECT_PARTICLES\183WING_BLIND", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 0,0 " .. entityName .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 1,0 " .. entityName .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 2,0 " .. entityName .. "#Bip Gabriel Head")
  end
  local pos = FX.GetNodePosition(entityName, "DC_Root")
  pos = pos + V3D(0, 50, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183UPPER_WING", "") then
    FX.SetEffect("EFFECT_PARTICLES\183UPPER_WING", "", "MatrixTranslation " .. pos:str3())
  end
  Effects.RadialBlur(4, 0, 0.3, Game.GetEntity(entityName).Pos, nil, V4D(2.4, 2.5, 2.6, 0.3))
end

function Belmont.FXFireStorm(pos)
  if FX.BeginEffect("EFFECT_PARTICLES\183FIRE_STORM", "") then
    FX.SetEffect("EFFECT_PARTICLES\183FIRE_STORM", "", "MatrixTranslation " .. pos:str3())
  end
  local posIni = pos + V3D(0, 50, 0)
  local posEnd = pos - V3D(0, 100, 0)
  local hit, norm, material = Game.TestLine(posIni, posEnd, "", "", true, true)
  if hit ~= nil and type(material) == "number" and 0 < material then
    local surface = Impact.Surfaces[material]
    if surface ~= nil then
      Impact.DoImpact("Splash/" .. surface, "DoFixed " .. hit:str3() .. ",(0,1,0)")
      SoundUtils.FXPlaySound("Belmont", "Splash_" .. surface, hit)
    end
  end
  SoundUtils.FXPlaySound("Belmont", "FireStorm", pos)
  Weapons.QuakeFX(pos, 1, 0.1)
  Input.Rumble(0, 0.75, 0.75, 0.5)
end

function Belmont.FXWingsComboAJ(entity)
  Effects.RadialBlur(4, 0, 0.3, Game.GetEntity(entity).Pos, nil, V4D(2.4, 2.5, 2.6, 0.3))
  local LightRadius = 2000
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Belmont_Wing_Light", 0.2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entity .. "#DC_ROOT")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.8,0.8,1)] 0.2,[" .. LightRadius .. ",0,0,(0.8,0.8,1)]")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_FLASH_AJ", "") then
    local rot = Game.GetEntity(entity).Ang
    rot.y = rot.y * 3.1416 / 180
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLASH_AJ", "", "PositionLinkToNode " .. entity .. "#Bip Gabriel Spine2")
    FX.SetEffect("EFFECT_PARTICLES\183WING_FLASH_AJ", "", "MatrixEuler " .. rot:str3())
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183WING_DUST_AJ", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_DUST_AJ", "", "MatrixFromNode " .. entity .. "#DC_Root")
  end
  if 0 < LightPower.PowerUse.Value and FX.BeginEffect("EFFECT_PARTICLES\183WING_BLIND", "") then
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 0,0 " .. entity .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 1,0 " .. entity .. "#Bip Gabriel Head")
    FX.SetEffect("EFFECT_PARTICLES\183WING_BLIND", "", "EmitterLinkToNode 2,0 " .. entity .. "#Bip Gabriel Head")
  end
end

function Belmont.FXSommerSoulClaws(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183SS_CLAWS", "") then
    FX.SetEffect("EFFECT_PARTICLES\183SS_CLAWS", "", "MatrixFromNode " .. entityName .. "#DC_Root")
  end
  local LightRadius = 1000
  local LightIntensity = 3
  if FX.BeginEffect("EFFECT_LIGHT", "", 0.5) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_ROOT")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.8,0.3,0.1)] 0.5,[" .. LightRadius .. ",0,0,(0.8,0.3,0.1)]")
  end
end

function Belmont.FXSommerSoulClawsOn(entityName)
  if FX.IsEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail") then
    FX.SetEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail", "Active")
  end
end

function Belmont.FXSommerSoulClawsOff(entityName)
  if FX.IsEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail") then
    FX.SetEffect("EFFECT_SMOOTHTRAIL\183SS_CLAWS_TRAIL", "Belmont_SS_Claws_Trail", "DeActive")
  end
end

function Belmont.FXDownDodge(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183DOWN_DODGE", "") then
    local rot = Game.GetEntity(entityName).Ang
    rot.y = rot.y * 3.1416 / 180
    rot.x = 0.15707999467849731
    FX.SetEffect("EFFECT_PARTICLES\183DOWN_DODGE", "", "PositionLinkToNode " .. entityName .. "#CH_Gabriel_Capucha")
    FX.SetEffect("EFFECT_PARTICLES\183DOWN_DODGE", "", "MatrixEuler " .. rot:str3())
  end
  Effects.RadialBlur(4, 0, 0.3, Game.GetEntity(entityName).Pos)
end

function Belmont.FXDashIni()
  if FX.BeginEffect("EFFECT_PARTICLES\183BOOTS_INI", "BootsIni") then
    FX.SetEffect("EFFECT_PARTICLES\183BOOTS_INI", "", "LinkToNode " .. player.Name .. "#DC_Root")
  end
  SoundUtils.FXPlaySound("Belmont", "Dash_Init", player.Pos)
  SoundUtils.FXPlaySoundLoop("Belmont", "Dash_Loop", player.Name)
end

function Belmont.FXDashEnd()
  if FX.IsEffect("EFFECT_PARTICLES\183BOOTS_INI", "BootsIni") then
    FX.EndEffect("EFFECT_PARTICLES\183BOOTS_INI", "BootsIni")
  end
  SoundUtils.FXStopSoundLoop("Belmont", "Dash_Loop", player.Name)
end

function Belmont.FXSawEvent(entityName)
  local arbol = player.uData.Arbol
  if arbol then
    local ac = arbol.ActCtrl
    if ac then
      _G[ac].FXSawEvent(arbol.Name)
    end
  end
end

Belmont.FairiesActive = Game.GVar("ScorerWeapon0Active")
Belmont.CrystalActive = Game.GVar("ScorerWeapon1Active")
Belmont.VialActive = Game.GVar("ScorerWeapon2Active")
Belmont.DaggersActive = Game.GVar("ScorerWeapon3Active")
Belmont.LastWeaponActive = -1

function Belmont.PlaySwitchWeaponSound()
  local weaponId = Game.Get("ScorerWeaponId")
  if weaponId ~= Belmont.LastWeaponActive then
    Sound.Play("SwitchWeapon", 1)
    Belmont.LastWeaponActive = weaponId
  end
end

function Belmont.SelectFairies(EntityName)
  if Belmont.FairiesActive.Value then
    WeaponsFairy.Set(EntityName)
    Game.Set("ForceShowScorer", 1)
    Belmont.PlaySwitchWeaponSound()
  end
end

function Belmont.SelectDaggers(EntityName)
  if Belmont.DaggersActive.Value then
    local ent = Game.GetEntity(EntityName)
    WeaponsDagger.Set(EntityName, Belmont.DagaFile)
    ent.oAI:ForceReturnFairies()
    Game.Set("ForceShowScorer", 1)
    Belmont.PlaySwitchWeaponSound()
  end
end

function Belmont.SelectCrystal(EntityName)
  if Belmont.CrystalActive.Value then
    local ent = Game.GetEntity(EntityName)
    WeaponsCrystal.Set(EntityName)
    ent.oAI:ForceReturnFairies()
    Game.Set("ForceShowScorer", 1)
    Belmont.PlaySwitchWeaponSound()
  end
end

function Belmont.SelectVial(EntityName)
  if Belmont.VialActive.Value then
    local ent = Game.GetEntity(EntityName)
    WeaponsVial.Set(EntityName, Belmont.VialFile)
    ent.oAI:ForceReturnFairies()
    Game.Set("ForceShowScorer", 1)
    Belmont.PlaySwitchWeaponSound()
  end
end

function Belmont.AreaAttackPress(EntityName)
  local ent = Game.GetEntity(EntityName)
  if not string.find(ent.Action, "Hook") and not ent.uData.InMiniGame then
    WeaponsWhip.AreaAttackPress(EntityName)
  end
  WeaponsCombo.IncPressCount(ent, "PressArea")
end

Belmont.OnFallDamage = nil

function Belmont.ResetFallDamageEvent(EntityName, EventName, Time)
  Belmont.OnFallDamage = nil
end

function Belmont.OnSwitchFall(o)
  o.uData.FlyActionsDown = nil
  if o.isFalling == 1 then
    print("SALTO")
    if init.LevelName == "level.10_3_cementery" and Trials.isTrial and MapTrial ~= nil then
      MapTrial.OnFloor()
    end
  else
    if Belmont.OnFallDamage then
      Weapons.DoDamage(Belmont.OnFallDamage.From, o, Belmont.OnFallDamage.HitData)
      Belmont.OnFallDamage = nil
    end
    print("CAIGO")
  end
end

function Belmont.OnSurfaceChange(o, prevSurface, newSurface)
  local SURFACE_WOOD_EQ = 20
  local SURFACE_WEB_EQ = 21
  if newSurface == SURFACE_WOOD_EQ then
    Equilibrium.OnNewPlayerEnter()
  elseif newSurface ~= SURFACE_WOOD_EQ and prevSurface == SURFACE_WOOD_EQ then
    Equilibrium.OnNewPlayerExit()
  end
  if newSurface == SURFACE_WEB_EQ then
    Equilibrium.OnWeb = true
    Equilibrium.OnNewPlayerEnter()
  elseif newSurface ~= SURFACE_WEB_EQ and prevSurface == SURFACE_WEB_EQ then
    Equilibrium.OnNewPlayerExit()
  end
  local SURFACE_MUD = 5
  local SURFACE_MUDFOG = 18
  if newSurface == SURFACE_MUD then
    o.ExtraSufix = "Mud"
    AreaTriggers.OnExitDamageTrigger()
  elseif newSurface == SURFACE_MUDFOG then
    o.ExtraSufix = "MudFog"
    AreaTriggers.OnEnterDamageTrigger(Mud.FogDamage, "Venom")
  elseif prevSurface == SURFACE_MUD or prevSurface == SURFACE_MUDFOG then
    o.ExtraSufix = ""
    AreaTriggers.OnExitDamageTrigger()
  end
  if (newSurface == SURFACE_MUD or newSurface == SURFACE_MUDFOG) and prevSurface ~= SURFACE_MUD and prevSurface ~= SURFACE_MUDFOG then
    Mud.OnPlayerEnter()
  elseif newSurface ~= SURFACE_MUD and newSurface ~= SURFACE_MUDFOG and (prevSurface == SURFACE_MUD or prevSurface == SURFACE_MUDFOG) then
    Mud.OnPlayerExit()
  end
end

function Belmont.AreaAttackRelease(EntityName)
  local ent = Game.GetEntity(EntityName)
  local releaseAction = ent.oActCtrl:GetTrackInfo("ReleaseButtonAction")
  if releaseAction then
    ent.ForceAction = releaseAction
  end
  if ent.uData.LastTrigeredLink == "PressArea" then
    ent.uData.ButtonReleased = true
    ent.uData.WaitingForRelease = nil
  end
  WeaponsCombo.SortAndPurge(ent, ent.uData.ComboBuffer)
  if ent.uData.ComboBuffer[1] and ent.uData.ComboBuffer[1][2] == "PressArea" then
    ent.uData.ComboBuffer[1][1] = Game.GetTime()
  end
end

function Belmont.DirectAttackPress(EntityName)
  local ent = Game.GetEntity(EntityName)
  if not string.find(ent.Action, "Hook") and not ent.uData.InMiniGame then
    WeaponsWhip.DirectAttackPress(EntityName)
  end
  WeaponsCombo.IncPressCount(ent, "PressDirect")
end

function Belmont.DirectAttackRelease(EntityName)
  local ent = Game.GetEntity(EntityName)
  local releaseAction = ent.oActCtrl:GetTrackInfo("ReleaseButtonAction")
  if releaseAction then
    ent.ForceAction = releaseAction
  end
  if ent.uData.LastTrigeredLink == "PressDirect" then
    ent.uData.ButtonReleased = true
    ent.uData.WaitingForRelease = nil
  end
  WeaponsCombo.SortAndPurge(ent, ent.uData.ComboBuffer)
  if ent.uData.ComboBuffer[1] and ent.uData.ComboBuffer[1][2] == "PressDirect" then
    ent.uData.ComboBuffer[1][1] = Game.GetTime()
  end
end

function Belmont.RangedAttackPress(EntityName)
  local char = Game.GetEntity(EntityName)
  if not string.find(char.Action, "Hook") and not char.uData.InMiniGame then
    if char.uData.RangedAction == "PressFairy" then
      if char.oActCtrl.oSync == nil and char.oActCtrl.oParentSync == nil and not char.oActCtrl:GetTrackInfo("FairiesNotAllowed") then
        if char.oAI:NumFairies() == 0 and MapInit.TutorialFairy == true then
          Scorer.SetMsgText(Game.GetLangStr("HELP_MESSAGE_3.0_E"), Game.GetTime() + 5)
          MapInit.TutorialFairy = false
        end
        char.oAI:SwitchFairies()
      end
    else
      if char.uData.RangedAction == "PressDagger" and 0 >= WeaponsDagger.Daggers.Value and WeaponsDagger.Infinite ~= 1 then
        return
      end
      if WeaponsCombo.ProcessAction(EntityName, char.uData.RangedAction) and not Game.Get("IsBelmontTired") then
        char.ExtraSufix = "Whip"
      end
      WeaponsCombo.IncPressCount(char, char.uData.RangedAction)
    end
  end
end

function Belmont.RangedAttackRelease(EntityName)
  local ent = Game.GetEntity(EntityName)
  local action = ent.oActCtrl.oAction
  local releaseAction = ent.oActCtrl:GetTrackInfo("ReleaseButtonAction")
  if releaseAction then
    ent.ForceAction = releaseAction
    player.owc.Walk = 0
    player.owc.Str = 0
  end
  if ent.uData.LastTrigeredLink == "PressFairy" or ent.uData.LastTrigeredLink == "PressDagger" or ent.uData.LastTrigeredLink == "PressVial" or ent.uData.LastTrigeredLink == "PressCrystal" then
    ent.uData.ButtonReleased = true
    ent.uData.WaitingForRelease = nil
  end
end

function Belmont.GripPress(EntityName)
  if Game.Get("IsBelmontTired") then
    return
  end
  local ent = Game.GetEntity(EntityName)
  if ent.SelectedEntity == "" and not Hook.isGripUse(ent) and not ent.uData.InMiniGame and WeaponsCombo.ProcessAction(EntityName, "PressGrip") then
    ent.ExtraSufix = "Whip"
  end
end

function Belmont.ParryPress(EntityName)
  local ent = Game.GetEntity(EntityName)
  if DarkPower.DarkDashActive and ent.oActCtrl:GetTrackInfo("BlockTimeControl") and ent.oActCtrl.oActClass.SprintOnDoubleTap == 1 then
    Belmont.DarkDodgeTestBegin(ent)
  end
end

function Belmont.ParryRelease(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.uData.ParryReleased = true
  Belmont.DarkDodgeTestEnd(ent)
end

function Belmont.DarkDodgeTestBegin(ent)
  if DarkPower.PowerUse.Value > 0 then
    ent.BlockTimeStamp = Game.GetTime()
    addSF(Game.Get("DodgeDashTime"), "Belmont.DarkDodgeBegin", "Belmont.DarkDodgeBegin", ent.Name)
    Game.Log("DarkDodgeTestBegin\n", 2)
  end
end

function Belmont.DarkDodgeBegin(EntityName)
  local ent = Game.GetEntity(EntityName)
  if DarkPower.PowerUse.Value > 0 then
    Belmont.FXDashIni()
    player.uData.DashIsPrepared = true
    Game.Log("DarkDodgeBegin\n", 2)
  end
end

function Belmont.DarkDodgeTestEnd(ent)
  ent.BlockTimeStamp = -1
  delSF("Belmont.DarkDodgeBegin")
  Belmont.FXDashEnd()
  player.uData.DashIsPrepared = false
  Game.Log("DarkDodgeTestEnd\n", 2)
end

function Belmont.OnSwitchAnmGroup(char, LastAnm, NewAnm)
  if LastAnm.Group == "Hook" or NewAnm.Group == "Hook" then
    Hook.OnSwitchAnmGroup(char, LastAnm, NewAnm)
  end
  if LastAnm.Group ~= "Hook" and NewAnm.Group == "Hook" then
    NeutralEnergy.DeactivateMagic(char.Name)
  end
  if LastAnm.Group ~= "Hang" and NewAnm.Group == "Hang" then
    NeutralEnergy.DeactivateMagic(char.Name)
  end
end

function Belmont.OnDoubleTap(EntityName)
  LightPower.OnDoubleTap(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.uData.LastDoubleTapTime = Game.GetTime()
end

function Belmont.UpdateVialNodes(belmontEntityName)
  local entity = Game.GetEntity(belmontEntityName)
  if not Belmont.VialActive.Value then
    entity.bShowNode_CH_Gabriel_Correa_Llena_Esp = false
    entity.bShowNode_CH_Gabriel_Correa_Vacia = true
  elseif nil ~= entity.uData.nVials then
    if entity.uData.nVials > 0 then
      entity.bShowNode_CH_Gabriel_Correa_Llena_Esp = true
      entity.bShowNode_CH_Gabriel_Correa_Vacia = false
    else
      entity.bShowNode_CH_Gabriel_Correa_Llena_Esp = false
      entity.bShowNode_CH_Gabriel_Correa_Vacia = true
    end
  end
end

function Belmont.UpdatePocketNodes(entityName)
  local entity = Game.GetEntity(entityName)
  if Belmont.FairiesActive.Value then
    entity.bShowNode_CH_Gabriel_Tarro_Tapa = true
    entity.bShowNode_CH_Gabriel_Tarro = true
    entity.bShowNode_BoB_Gabriel_Tarro_Tapa = true
    entity.bShowNode_BoB_Gabriel_Tarro = true
  else
    entity.bShowNode_CH_Gabriel_Tarro_Tapa = false
    entity.bShowNode_CH_Gabriel_Tarro = false
    entity.bShowNode_BoB_Gabriel_Tarro_Tapa = false
    entity.bShowNode_BoB_Gabriel_Tarro = false
  end
end

Belmont.DaggerNodes = {
  "BoB_Gabriel_Daga_X",
  "BoB_Gabriel_Daga_R_01",
  "BoB_Gabriel_Daga_R_02",
  "BoB_Gabriel_Daga_L_01",
  "BoB_Gabriel_Daga_L_02"
}

function Belmont.EndRelicStolen()
  player.IgnoreUsrControl = 0
end

function Belmont.UpdateDaggerNodes(belmontEntityName, doFX)
  local entity = Game.GetEntity(belmontEntityName)
  if nil == entity.uData.DaggersOut then
    return
  end
  local storedDaggers = GabrielCombos.MaxDaggers - entity.uData.DaggersOut
  for i = 1, math.min(storedDaggers, #Belmont.DaggerNodes) do
    if doFX and not entity["bShowNode_" .. Belmont.DaggerNodes[i]] then
      WeaponsDagger.FXReturnBelt(belmontEntityName, Belmont.DaggerNodes[i])
    end
    entity["bShowNode_" .. Belmont.DaggerNodes[i]] = true
  end
  for i = storedDaggers + 1, #Belmont.DaggerNodes do
    entity["bShowNode_" .. Belmont.DaggerNodes[i]] = false
  end
end

Game.Set("SwitchFreeCameraCallBack", "Camera.SwitchFreeCamera")

function Belmont.RideGameResolveCallback(entityName)
  local ent = Game.GetEntity(entityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  tgt.oAI:SetCrazy(false)
  if ent.uData.TbRideSucces == true then
    ent.uData.TbRideSucces = false
  else
    ent.oActCtrl:SetAction("WhipTbRideFail")
    tgt.oActCtrl:SetAction("WhipTbRideFail")
  end
end

function Belmont.CallbackCaller(entityName, callbackFullName)
  local callback = parseGlobalExpression(callbackFullName)
  if "function" == type(callback) then
    callback(entityName)
  else
    Game.ConsoleError("Event callback '" .. callbackFullName .. "'could not be called\n")
  end
end

function Belmont.WebDestroySync(Entity, timeDiff)
  local tgt = Game.GetEntity(Entity.TgtEntity)
  if tgt then
    tgt.Pos = Entity.Pos + V3D(0, -25, 0)
    tgt.Ang = Entity.Ang
    tgt.Action = Entity.Action
    tgt.oActCtrl:ResetPrimaryAction()
    tgt.oActCtrl:IncActionTime(0, Entity.oActCtrl.AnimTime)
  end
end

function Belmont.SetupSpiderMinigame()
  if Game.Get("IsBelmontUsingStamina") == 1 then
    Stamina.EndUsing()
  end
  Game.Set("IsSpiderMinigameActive", 1)
  player.oActCtrl:SetAction("WebRelaxInit", true)
  local ctrl = player.oActCtrl
  local mact = ctrl.oActClass:GetAct("WebRelaxInit")
  ctrl:ResetPrimaryAction()
  ctrl:IncActionTime(0, mact.AnmTotalTime - 0.01)
end

function Belmont.BeginSplash()
  player.oActCtrl:SetAction("WebRelax", true)
  local thePos = V3D(player.Pos.x, player.Pos.y - 25, player.Pos.z)
  local webSplash = PhysicsObj.CreateObj("SpiderWebSplash", "SpiderWebSplash", thePos, player.Ang)
  player.TgtEntity = "SpiderWebSplash"
end

function Belmont.EndSpiderMinigame()
  local webSplash = Game.GetEntity("SpiderWebSplash")
  if webSplash then
    webSplash:Del()
  end
  AISpec.SetTimeStampOf("SpiderLastSpitAttack")
  Game.Set("IsSpiderMinigameActive", 0)
  Game.ConsoleError("End Ok\n")
end

function Belmont.DisaleStaminaIfEnabled()
  if Game.Get("IsBelmontUsingStamina") == 1 then
    Stamina.EndUsing()
  end
end

function Belmont.EventConsumeDarkDodgeMagic(EntityName, EventName, Time)
  DarkPower.Consume(EntityName, DarkPower.DarkDodgeCost)
end

function Belmont.EventConsumeDarkDodgeMagic(EntityName, EventName, Time)
  DarkPower.Consume(EntityName, DarkPower.DarkDodgeCost)
end

function Belmont.DarkQuickCharge(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  char.uData.DarkPowerPunch = false
  if char.uData.bGauntletCharged then
    char.uData.VariableHitPreset = "VampiressCharge"
    char.ForceAction = a[1]
  elseif DarkPower.PowerUse.Value == 1 then
    char.uData.VariableHitPreset = a[2] .. "," .. a[3] .. "," .. a[4] .. "," .. a[5]
    char.ForceAction = a[1]
    char.uData.DarkPowerPunch = true
    DarkPower.Consume(EntityName, DarkPower.DarkQuickChargeCost)
  end
end

function Belmont.EventQuickChargeBlockArea(EntityName)
  local char = Game.GetEntity(EntityName)
  if DarkPower.PowerUse.Value == 1 then
    char.uData.VariableHitPreset = "BlockAStrong"
    char.ForceAction = "WhipBlockComboAEnd"
    DarkPower.Consume(EntityName, DarkPower.DarkQuickChargeCost)
  end
end

function Belmont.EventQuickChargeBlockDirect(EntityName)
  local char = Game.GetEntity(EntityName)
  if DarkPower.PowerUse.Value == 1 then
    char.uData.VariableHitPreset = "BlockDStrong"
    char.ForceAction = "WhipBlockComboDEnd"
    DarkPower.Consume(EntityName, DarkPower.DarkQuickChargeCost)
  end
end

function Belmont.EventAvoidMultipleDaggers(EntityName, EventName)
  local char = Game.GetEntity(EntityName)
  if char and not Experience.isCombatScroll("MultipleDaggers") then
    char.uData.ChargedDaggers = 1
    char.ForceAction = EventName
  end
end

function Belmont.BeginSpiderPoison(isAGhoulNotASpider)
  if LightPower.PowerUse.Value == 1 then
    LightPower.Consume("Belmont", Belmont.LightCost)
    return
  end
  Game.Set("BelmontPoisonedTimeLeft", Belmont.TimePoisoned)
  Belmont.FXVenomStart()
  Belmont.SpiderPoisonSlot()
  if isAGhoulNotASpider then
    if not Game.Get("gvHasBeenPoisonedByGhoul") then
      Scorer.SetMsgText(Game.GetLangStr("HELP_MESSAGE_2.3_A"), Game.GetTime() + Belmont.TimePoisoned)
      Game.Set("gvHasBeenPoisonedByGhoul", true)
    end
  elseif not Game.Get("gvHasBeenPoisonedBySpider") then
    Scorer.SetMsgText(Game.GetLangStr("HELP_MESSAGE_2.3_A"), Game.GetTime() + Belmont.TimePoisoned)
    Game.Set("gvHasBeenPoisonedBySpider", true)
  end
end

function Belmont.EndSpiderPoison()
  Game.Set("BelmontPoisonedTimeLeft", 0)
  delSF("SpiderPoisonSlot")
  Belmont.FXVenomEnd()
  Scorer.SetMsgText("", 0)
end

function Belmont.SpiderPoisonSlot()
  local timeDiff = 1
  if AISpec.AreAttackersStopped() == 1 or Actions.PlayerInCatch.Value == 1 then
    addSF(timeDiff, "SpiderPoisonSlot", "Belmont.SpiderPoisonSlot")
    return
  end
  if LightPower.PowerUse.Value == 1 then
    Scorer.SetMsgText("", 0)
  end
  player.Life = player.Life - Belmont.PoisonSpeed * timeDiff
  local timeLeft = Game.Get("BelmontPoisonedTimeLeft") - timeDiff
  if timeLeft <= 0 then
    Belmont.EndSpiderPoison()
  else
    Game.Set("BelmontPoisonedTimeLeft", timeLeft)
    addSF(timeDiff, "SpiderPoisonSlot", "Belmont.SpiderPoisonSlot")
  end
  if 0 >= player.Life then
    player.ForceAction = "StillDie"
  end
end

function Belmont.IsUsingMagicStamina()
  return DarkPower.UsingStamina or LightPower.UsingStamina
end

function Belmont.MagicStaminaReset()
  DarkPower.UsingStamina = false
  LightPower.UsingStamina = false
  DarkPower.CanUseStamina = false
  Game.ConsoleError("Reinitializing Stamina...\n")
end

function Belmont.CanUseTemplarFountain()
  local belmont = Game.GetEntity("Belmont")
  return belmont.Life < belmont.oActCtrl.oActClass.Life
end

function Belmont.FakeUseTemplarFountainOnce()
  CollectableItems.ContainerInfo.TemplarFountain.CanPickFunc = Belmont.CanUseTemplarFountain
  return true
end

function Belmont.BrutalAim(EntityName, EventName)
  local ent = Game.GetEntity(EntityName)
  local tgt = Game.GetEntity(ent.AimEntity)
  if tgt and (not tgt:IsType("WalkChar") or not tgt.bUseDodgeFakePos) then
    local angToTgt = (tgt.Pos - ent.Pos):getrot()
    ent.JustAng = V3D(0, Game.NormAng(angToTgt.y + 180), 0)
  end
end

function Belmont.FXVenomStart()
  Game.Set("RT_AberrationValue", 0.2)
  Game.Set("EagleViewFactorBegin", 0)
  Game.Set("EagleViewEndTime", 0.5)
  Game.Set("EagleViewFactorEnd", 1)
  local level = string.sub(string.upper(Game.GetLevelPath()), 8)
  print("level" .. level)
  if level == "1_5_SWAMP" or level == "10_1_MARSH_OF_SILENCE" or level == "5_11_SEWERS" then
    Camera.ActionSetFocus(player.Name, "1.000,s,900,50,NO,0", 0)
    Belmont.FXDeathlyFogOn()
  end
  SoundUtils.FXPlaySoundLoop("Belmont", "VenomLoop", player.Name)
  SoundUtils.FXPlaySound("Belmont", "VenomBegin", player.Pos)
  Belmont.FXHeartBeat()
end

function Belmont.FXVenomEnd()
  Game.Set("RT_AberrationValue", 0)
  Game.Set("EagleViewFactorBegin", 1)
  Game.Set("EagleViewEndTime", 2)
  Game.Set("EagleViewFactorEnd", 0)
  local level = string.sub(string.upper(Game.GetLevelPath()), 8)
  if level == "1_5_SWAMP" or not "10_1_MARSH_OF_SILENCE" then
  end
  Camera.ActionLoseFocus(player.Name, "0.5000,s,")
  Belmont.FXDeathlyFogOff()
  SoundUtils.FXStopSoundLoop("Belmont", "VenomLoop", player.Name)
  SoundUtils.FXPlaySound("Belmont", "VenomEnd", player.Pos)
  delSF("HeartBeat")
end

function Belmont.FXHeartBeat()
  SoundUtils.FXPlaySound("Belmont", "HeartBeat", player.Pos)
  local minTime = 0.5
  local relTime = player.Life / player.oActCtrl.oActClass.Life * 1
  addSF(minTime + relTime, "HeartBeat", "Belmont.FXHeartBeat")
end

function Belmont.FXGaunletSuperChargeOn(entityName)
  print("CHARGE ON")
  local color = ""
  if player.uData.bGauntletCharged then
    color = "BLUE_"
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGLOW", "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. color .. "GAUNLETGLOW", "", "MatrixFromNode " .. entityName .. "#Bip Gabriel L Hand")
  end
  SoundUtils.FXPlaySound("Belmont", "GauntletFlash", FX.GetNodePosition(player.Name, "Bip Gabriel L Hand"))
  Game.GetEntity(entityName).uData.GaunletSuperCharge = true
end

function Belmont.FXGaunletSuperChargeTest(entityName)
  if DarkPower.PowerUse.Value > 0 then
    Game.GetEntity(entityName).uData.GaunletSuperCharge = true
    print("CHARGE ON")
  else
    Game.GetEntity(entityName).uData.GaunletSuperCharge = false
    print("CHARGE OFF")
  end
end

function Belmont.RelaxAndDisappear()
  if not player then
    return
  end
  Scene.DoPlantPlayer()
  player.ForceAction = "Relax"
  addSF(0, "", "Belmont.Disappear")
  if LightPower.PowerUse.Value == 1 then
    LightPower.DeactivatePower(player.Name, true)
  elseif DarkPower.PowerUse.Value == 1 then
    DarkPower.DeactivatePower(player.Name, true)
  end
end

function Belmont.Disappear()
  if not player then
    return
  end
  player.Active = 0
  print("PrePlaySCene")
  Belmont.FXPlayScene()
end
