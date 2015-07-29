local character = {
	model = "models/mossman.mdl",
	name = "Ellen Pow",
	desc = "After her great success with Reddit, Pow decided to take up martial arts!",
	quote = [[
		Some girls fight for their men
		Some girls fight for love
		Some girls fight for justice
		Some girls fight just to
		Strap on the gloves
		Get dirty with some other girls
		]],
	setup = function(ragdoll)
		ragdoll:SetSubMaterial(5, "!ragdoll_kombat_ellen_pow_face")
		ragdoll:SetSubMaterial(0, "!ragdoll_kombat_ellen_pow_body")
		ragdoll:SetSubMaterial(4, "!ragdoll_kombat_ellen_pow_hair")
	end,
	neg = "vo/npc/female01/help01.wav",
	pos = "vo/coast/odessa/female01/nlo_cheer01.wav"
}

table.insert(RagdollKombat.characters, character)