local character = {
	model = "models/player/skeleton.mdl",
	name = "Skeleton John",
	desc = "Spooky!",
	quote = [[
		Then we'll abandon wrong from right,
		And hear the heart beats of the dead tonight.
		]],
	setup = function(ragdoll)
		ragdoll:SetMaterial("models/debug/debugwhite")
		ragdoll:SetColor(Color(255, 100, 100))
	end,
	neg = "npc/zombie/zombie_die1.wav",
	pos = "npc/fast_zombie/fz_scream1.wav"
}

table.insert(RagdollKombat.characters, character)