local character = {
	model = "models/odessa.mdl",
	name = "Mr. Crittersworth",
	desc = "Must try appealing to the judges. I don't even know at this point.",
	quote = [[
		Whoa oh I'm happy as a clam,
		Ever since I did the right thing and forgot who I am,
		The guy I used to work with,
		Became a prison whore,
		And ever since he got out,
		He wanna go back-back for more,
		]],
	setup = function(ragdoll)
		ragdoll:SetSubMaterial(0, "!ragdoll_kombat_crittersworth_face")
		ragdoll:SetSubMaterial(4, "!ragdoll_kombat_crittersworth_body")
		ragdoll:SetSubMaterial(2, "!ragdoll_kombat_crittersworth_hat")
	end,
	neg = "npc/crow/alert2.wav",
	pos = "npc/dog/dog_playfull1.wav"
}

print("Inserting crittersworth")
table.insert(RagdollKombat.characters, character)