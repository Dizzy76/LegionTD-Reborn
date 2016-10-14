require("ai/ai_core")

function Spawn(entity)
    InitAI(thisEntity)
end

function InitAI( self )
	self:SetContextThink( "init_think", function()
		self.aiThink = aiThinkStandardSkill
		self.CheckIfHasAggro = CheckIfHasAggro
		self.Skill = UseSkillOnTargetPosition
		self.ability = self:GetAbilityByIndex(0)
		self.ability:SetLevel(1)
		self.NextWayPoint = NextWayPoint
		self.Unstuck = Unstuck
		self:SetContextThink( "ai_fatty.aiThink", Dynamic_Wrap( self, "aiThink" ), 0 )
	end, 0 )
end