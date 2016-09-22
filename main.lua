-- Developer:   Salvatore Tropea <tropea05@yahoo.de>
-- Date:        2016-09-20

--Globale table für die Versionierung
appVersion = {
  mv = 1,
  nv = 0,
  rv = 0,
  beta = true,
  
  printVersion = function (self)
    local version = self.mv.."."..self.nv.."."..self.rv
    if self.beta then
      version = "beta"..version
    end
    
    print("Version: "..version)
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

--Globale Funktion zum addieren add
_add = function (i,j)
  if type(i) == "number" and type(j) == "number" then
    return i + j
  else
    return nil
  end
end
