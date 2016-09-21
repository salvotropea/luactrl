-- Developer:   Salvatore Tropea <tropea05@yahoo.de>
-- Date:        2016-09-20

--Globale table für die Versionierung
appVersion = {
  mv = 1,
  nv = 0,
  rv = 0,
  beta = true,
  
  printVersion = function (self)
    print("Version: "..self.mv.."."..self.nv.."."..self.rv)
    if self.beta then
      print("Dies ist eine Entwicklungsversion (beta)")
    end
  end,
}

appVersion:printVersion()

--Module laden
local mods = {
  "epis",
  "app",
  "gui",
}

local loadMods = function (mods)
  for _, mod in pairs (mods) do
    print("loading module: "..mod)
    local ok, err = pcall(require, mod)
    if not ok then
      print("Error loading module: "..mod)
    else
      print("Module "..mod.." loaded succsess!")
    end
  end
end

loadMods(mods)

