local character = {
	model = "models/alyx.mdl",
	name = "Melon Senpai",
	desc = "Fruit Punch!",
	quote = [[
		Everybody stand and scream Bose! Bose!
		Even though he aint got nothing going in the USA
		His tight pants and his eyeliner will surely blow you away
		He always kills the night in the same way night kills the day
		]],
	setup = function(ragdoll)
		ragdoll:SetMaterial("models/debug/debugwhite")
		ragdoll:SetColor(Color(100, 255, 50))

		if SERVER then
			local m = ents.Create("prop_dynamic")
			m:SetModel("models/props_junk/watermelon01.mdl")
			m:Spawn()
			local p = ragdoll:GetBonePosition(6)
			m:SetPos(p + Vector(5, 0, -5))
			m:FollowBone(ragdoll, 6)
			ragdoll:DeleteOnRemove(m)
		end
	end,
	neg = "garrysmod/balloon_pop_cute.wav",
	pos = "ambient/alarms/razortrain_horn1.wav"
}

table.insert(RagdollKombat.characters, character)