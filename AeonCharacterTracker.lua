local frame = CreateFrame("Frame")

frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        local name, realm = UnitName("player")
        local level = UnitLevel("player")
        local class, classFile = UnitClass("player")

        AeonCharacterData = AeonCharacterData or {}
        AeonCharacterData[realm] = AeonCharacterData[realm] or {}
        AeonCharacterData[realm][name] = {
            level = level,
            class = class,
            classFile = classFile,
            lastLogin = date("%Y-%m-%d %H:%M:%S"),
        }

        print("|cff00ff00Aeon Character Tracker loaded.|r")
    end
end)
