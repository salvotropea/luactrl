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

print("hallo welt")

