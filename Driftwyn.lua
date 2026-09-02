local Games = {
    [137233438285284] = "https://raw.githubusercontent.com/Driftwyn/Chicken-farmv1/refs/heads/main/.lua",

    [81440632616906] = "https://raw.githubusercontent.com/Driftwyn/Dig-To-Earths-Corev1/refs/heads/main/.lua",

    [107778070777162] = "https://raw.githubusercontent.com/Driftwyn/Steal-A-Eggv1/refs/heads/main/.lua",
}

local ScriptURL = Games[game.PlaceId]

if ScriptURL then
    local success, err = pcall(function()
        loadstring(game:HttpGet(ScriptURL))()
    end)

    if not success then
        warn("Driftwyn Hub | Failed to load script:", err)
    end
else
    warn("Driftwyn Hub | Unsupported game")
    warn("PlaceId:", game.PlaceId)
end
