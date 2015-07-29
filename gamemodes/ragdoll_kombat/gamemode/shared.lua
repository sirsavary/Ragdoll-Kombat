-- Gamemode information
GM.Name = "Ragdoll Kombat"
GM.Author = "SirSavary"
GM.Website = "https://modmountain.com"

RagdollKombat = {} or RagdollKombat

local function createCharacterMaterials(character)
	local folder = "materials/ragdoll_kombat/characters/" .. character
	local files = file.Find(folder .. "/*", "GAME")

	for k, v in pairs(files) do
		local item = folder .. "/" .. v
		print("Making material for " .. item)
		local m = Material(item)
		if CLIENT then
			local materialName = "ragdoll_kombat_" .. character .. "_" .. string.sub(v, 0, -5)
			CreateMaterial(materialName, "VertexLitGeneric", { ["$basetexture"] = item })
			print(materialName)
		end
	end
end

local function loadCharacters()
	print("Loading characters")
	RagdollKombat.characters = {}

	local folder, files
	if (SERVER) then
		folder = "gamemodes/ragdoll_kombat/gamemode/characters"
		files = file.Find(folder .. "/*", "GAME")
	else
		folder = "ragdoll_kombat/gamemode/characters"
		files = file.Find(folder .. "/*", "LUA")
	end

	for k, v in pairs(files) do
		local file = "characters/" .. v
		local name = string.sub(v, 0, -5) -- Remove .lua extension
		print("Loading character '" .. name .. "'")
		if SERVER then
			AddCSLuaFile(file)
		end
		include(file)
		createCharacterMaterials(name)
	end
end

loadCharacters()