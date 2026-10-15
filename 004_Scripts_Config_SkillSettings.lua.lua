SkillSettings = {
  [0] = {
    Damage = 0.25,
    MinLife = 100,
    FocusGain = 2,
    Absorb = 20,
    Aim = 60,
    AimStop = 180
  },
  [1] = {
    Damage = 0.6,
    MinLife = 50,
    FocusGain = 1,
    Absorb = 15,
    Aim = 60,
    AimStop = 180
  },
  [2] = {
    Damage = 1,
    MinLife = 25,
    FocusGain = 1,
    Absorb = 5,
    Aim = 45,
    AimStop = 180
  },
  [3] = {
    Damage = 2,
    MinLife = 10,
    FocusGain = 1,
    Absorb = 1,
    Aim = 45,
    AimStop = 180
  }
}
SkillSettings.AutoAimAngle = Game.GVar("AutoAimAngle")
SkillSettings.AutoAimAngleInStop = Game.GVar("AutoAimAngleInStop")
for i = 0, 3 do
  SkillSettings.AutoAimAngle:SetValue(i, SkillSettings[i].Aim)
  SkillSettings.AutoAimAngleInStop:SetValue(i, SkillSettings[i].AimStop)
end
