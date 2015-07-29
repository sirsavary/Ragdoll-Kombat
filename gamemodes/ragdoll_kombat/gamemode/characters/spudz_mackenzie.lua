local character = {
	name = "Space Captain Spudz Mackenzie",
	model = "models/barney.mdl",
	desc = "He is a certified idiot and founded Ragdoll Combat after being dishonorably discharged from the space navy.",
	quote = [[
		The leader's gonna make you party
		Preventing you from departing
		The leader is the party
		The party is the leader's mind
		]],
	setup = function(ragdoll)
		ragdoll:SetSubMaterial(2, "!ragdoll_kombat_spudz_mackenzie_face")
		ragdoll:SetSubMaterial(4, "!ragdoll_kombat_spudz_mackenzie_body")
	end,
	neg = "vo/npc/Barney/ba_ohshit03.wav",
	pos = "vo/npc/Barney/ba_laugh01.wav"
}

table.insert(RagdollKombat.characters, character)