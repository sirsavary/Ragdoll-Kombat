local character = {
	model = "models/humans/group01/male_04.mdl",
	name = "Shia LaBeouf",
	desc = "I don't need an excuse to put Shia LaBeouf my damn gamemode. I have one. I just don't need it.",
	quote = [[
		Britney Spears and David Beckham. Paris Hilton and red skelton
		Every penny you spend helps them they take over the world
		Present, past and participle dale jr. and dick trickle
		And let us not forget Don Rickles scaring the young girls
		]],
	setup = function(ragdoll)
		ragdoll:SetSubMaterial(2, "!ragdoll_kombat_shia_labeouf_face")
		ragdoll:SetSubMaterial(4, "!ragdoll_kombat_shia_labeouf_body")
	end,
	neg = "vo/coast/odessa/male01/nlo_cubdeath01.wav",
	pos = "ragcom/shia_win.wav"
}

table.insert(RagdollKombat.characters, character)