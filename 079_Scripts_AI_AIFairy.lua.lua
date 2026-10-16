AIFairy = {}

function AIFairy.main()
  AIFairy.Name = AISpec.GetFairyNmBehavAI()
  AIFairy.IniBehav()
end

function AIFairy.IniBehav()
  local behav = AISpec.CreateAIBehavSpec(AIFairy.Name)
  AISpec.SetBehavParamValue("Fairy", "Energy", 30, 5, 100)
  AISpec.SetBehavParamValue("Fairy", "Decrease/Sec", 1, 1, 100)
  AISpec.SetBehavParamValue("Fairy", "DamageRatio", 10, 0, 100)
  AISpec.SetBehavParamValue("Fairy", "LightConsume", 3, 0, 100)
  AIEnemy.LoadAIBehavParams("Fairy")
end

function AIFairy.Init(ent)
end
