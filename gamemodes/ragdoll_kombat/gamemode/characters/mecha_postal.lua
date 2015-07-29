local character = {
	model = "models/barney.mdl",
	name = "Mecha Postal",
	desc = "New and improved. Now with more ass.",
	quote = [[
		Loads can be made
		We should wrap this debate
		So decide under the covers where the good times await
		Every life needs a fate
		Every lad needs a mate
		Every seller needs a buyer
		Every oven needs a fire
		And if you're on fire, you're gonna need some water
		And if you're underwater, you're gonna need some air
		And if you're in the air, you're gonna need a place to land
		And if you're on land, you can come and see my piece of shit band!
		]],
	setup = function(ragdoll)
		ragdoll:SetSubMaterial(2, "!ragdoll_kombat_mecha_postal_face")
		ragdoll:SetSubMaterial(4, "!ragdoll_kombat_mecha_postal_body")

		if SERVER then
			local e1 = ents.Create("prop_dynamic")
			e1:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
			e1:Spawn()
			local p = ragdoll:GetBonePosition(6)
			e1:SetPos(p + Vector(6.5, -4.5, 0))
			e1:SetAngles(Angle(0, 0, 90))
			e1:SetModelScale(.08, 0)
			e1:FollowBone(ragdoll, 6)
			e1:DrawShadow(false)
			ragdoll:DeleteOnRemove(e1)

			local e2 = ents.Create("prop_dynamic")
			e2:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
			e2:Spawn()
			local p = ragdoll:GetBonePosition(6)
			e2:SetPos(p + Vector(6.5, -4.5, 3))
			e2:SetAngles(Angle(0, 0, 90))
			e2:SetModelScale(.08, 0)
			e2:FollowBone(ragdoll, 6)
			e2:DrawShadow(false)
			ragdoll:DeleteOnRemove(e1)
		end
	end,
	neg = "ragcom/postal_fall.wav",
	pos = "ragcom/postal_win.wav"
}

table.insert(RagdollKombat.characters, character)