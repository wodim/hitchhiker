
Func scsettings()
    If ControlGetFocus("Raccourcis Officiel") = "Edit1" Then
        refreshsctext("Wallclimb", $settinginputwallclimb)
    ElseIf ControlGetFocus("Raccourcis Officiel") = "Edit2" Then
        refreshsctext("Supersaut", $settinginputsupersaut)
    ElseIf ControlGetFocus("Raccourcis Officiel") = "Edit3" Then
        refreshsctext("Noclipaction", $settinginputnoclipaction)
    EndIf
    Global $sciniempl = "Raccourcis - Officiel"
    writekeypress()
EndFunc

Func privescsettings()
    $ejectinput = 0
    Global $sciniempl = "Raccourcis - Prive"
    If ControlGetFocus("Raccourcis Privé") = "Edit1" Then
        refreshsctext("Flymod", $privesettinginputflymod)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit2" Then
        refreshsctext("Speedglobale", $privesettinginputspeedglobale)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit3" Then
        refreshsctext("Speed", $privesettinginputspeed)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit4" Then
        refreshsctext("Wallclimb", $privesettinginputwallclimb)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit5" Then
        refreshsctext("Supersaut", $privesettinginputsupersaut)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit6" Then
        refreshsctext("Debloperso", $privesettinginputdebloperso)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit7" Then
        refreshsctext("Clicktp", $privesettinginputclicktp)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit8" Then
        refreshsctext("Gocorps", $privesettinginputgocorps)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit9" Then
        refreshsctext("Stopfall", $privesettinginputstopfall)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit10" Then
        refreshsctext("Tpcibledos", $privesettinginputtpcibledos)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit11" Then
        refreshsctext("Tpcibleundermap", $privesettinginputtpcibleundermap)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit12" Then
        refreshsctext("FreezeZ", $privesettinginputfreezez)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit13" Then
        refreshsctext("SpeedN", $privesettinginputspeedn)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit14" Then
        refreshsctext("Speed100", $privesettinginputspeed100)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit15" Then
        refreshsctext("Speedcustom", $privesettinginputspeedcustom)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit17" Then
        refreshsctext("SpeedP", $privesettinginputspeedp)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit18" Then
        refreshsctext("SpeedM", $privesettinginputspeedm)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit20" Then
        refreshsctext("SpeedFlyN", $privesettinginputspeedflyn)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit21" Then
        refreshsctext("SpeedFly280", $privesettinginputspeedfly280)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit22" Then
        refreshsctext("SpeedFlycustom", $privesettinginputspeedflycustom)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit24" Then
        refreshsctext("SpeedFlyP", $privesettinginputspeedflyp)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit25" Then
        refreshsctext("SpeedFlyM", $privesettinginputspeedflym)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit27" Then
        refreshsctext("SupersautP", $privesettinginputsupersautp)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit28" Then
        refreshsctext("SupersautM", $privesettinginputsupersautm)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit30" Then
        refreshsctext("TimeSpeedP", $privesettinginputtimespeedp)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit31" Then
        refreshsctext("TimeSpeedM", $privesettinginputtimespeedm)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit33" Then
        refreshsctext("TailleP", $privesettinginputtaillep)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit34" Then
        refreshsctext("TailleM", $privesettinginputtaillem)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit36" Then
        refreshsctext("FlagA2", $privesettinginputgouletflaga2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit37" Then
        refreshsctext("RegenA2", $privesettinginputgouletregena2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit38" Then
        refreshsctext("BersekerA2", $privesettinginputgouletbersekera2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit39" Then
        refreshsctext("SprintA2", $privesettinginputgouletsprinta2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit40" Then
        refreshsctext("FlagH2", $privesettinginputgouletflagh2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit41" Then
        refreshsctext("RegenH2", $privesettinginputgouletregenh2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit42" Then
        refreshsctext("BersekerH2", $privesettinginputgouletbersekerh2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit43" Then
        refreshsctext("SprintH2", $privesettinginputgouletsprinth2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit44" Then
        refreshsctext("Ecurie", $privesettinginputarathiecurie)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit45" Then
        refreshsctext("Ferme", $privesettinginputarathiferme)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit46" Then
        refreshsctext("Mine", $privesettinginputarathimine)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit47" Then
        refreshsctext("Forge", $privesettinginputarathiforge)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit48" Then
        refreshsctext("Scierie", $privesettinginputarathiscierie)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit49" Then
        refreshsctext("OeilDrapeau", $privesettinginputoeildrapeau)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit50" Then
        refreshsctext("TourMages", $privesettinginputoeiltourmages)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit51" Then
        refreshsctext("RuinesDraenei", $privesettinginputoeilruinesdraenei)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit52" Then
        refreshsctext("TourElfes", $privesettinginputoeiltourelfes)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit53" Then
        refreshsctext("RuinesSaccageur", $privesettinginputoeilruinessaccageur)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit54" Then
        refreshsctext("A2", $privesettinginputalteraca2)
    ElseIf ControlGetFocus("Raccourcis Privé") = "Edit55" Then
        refreshsctext("H2", $privesettinginputalterach2)
    Else
        $ejectinput = 1
    EndIf
    If $ejectinput = 1 Then
    Else
        writekeypress()
    EndIf
EndFunc

Func writekeypress()
    If _ispressed(10, $dll) Then
        getkeypressed()
        If $keypressed = "+" OR $keypressed = "F12" OR $keypressed = "F11" OR $keypressed = "F10" OR $keypressed = "F9" OR $keypressed = "F8" OR $keypressed = "F7" OR $keypressed = "F6" OR $keypressed = "F5" OR $keypressed = "F4" OR $keypressed = "F3" OR $keypressed = "F2" OR $keypressed = "F1" Then
        ElseIf $keypressed = "" Then
            IniWrite($setting, $sciniempl, $scfonctionname, "")
        Else
            IniWrite($setting, $sciniempl, $scfonctionname, '"+' & $keypressed & '"')
        EndIf
    ElseIf _ispressed(11, $dll) Then
        getkeypressed()
        If $keypressed = "^" OR $keypressed = "F12" OR $keypressed = "F11" OR $keypressed = "F10" OR $keypressed = "F9" OR $keypressed = "F8" OR $keypressed = "F7" OR $keypressed = "F6" OR $keypressed = "F5" OR $keypressed = "F4" OR $keypressed = "F3" OR $keypressed = "F2" OR $keypressed = "F1" Then
        ElseIf $keypressed = "" Then
            IniWrite($setting, $sciniempl, $scfonctionname, "")
        Else
            IniWrite($setting, $sciniempl, $scfonctionname, '"^' & $keypressed & '"')
        EndIf
    ElseIf _ispressed(12, $dll) Then
        getkeypressed()
        If $keypressed = "!" OR $keypressed = "F12" OR $keypressed = "F11" OR $keypressed = "F10" OR $keypressed = "F9" OR $keypressed = "F8" OR $keypressed = "F7" OR $keypressed = "F6" OR $keypressed = "F5" OR $keypressed = "F4" OR $keypressed = "F3" OR $keypressed = "F2" OR $keypressed = "F1" Then
        ElseIf $keypressed = "" Then
            IniWrite($setting, $sciniempl, $scfonctionname, "")
        Else
            IniWrite($setting, $sciniempl, $scfonctionname, '"!' & $keypressed & '"')
        EndIf
    Else
        getkeypressed()
    EndIf
EndFunc

Func refreshsctext($scfonctionname2, $settinginputfonction)
    Global $scfonctionname = $scfonctionname2
    $settinginputfonctionbrut = IniRead($setting, $sciniempl, $scfonctionname, "Erreur")
    If StringMid($settinginputfonctionbrut, 1, 1) = "{" Then
        $settinginputfonction1 = StringReplace($settinginputfonctionbrut, "{", "")
        $settinginputfonctionini = StringReplace($settinginputfonction1, "}", "")
    ElseIf StringMid($settinginputfonctionbrut, 1, 1) = "+" Then
        $settinginputfonctionini = StringReplace($settinginputfonctionbrut, "+", "Maj + ")
    ElseIf StringMid($settinginputfonctionbrut, 1, 1) = "!" Then
        $settinginputfonctionini = StringReplace($settinginputfonctionbrut, "!", "Alt + ")
    ElseIf StringMid($settinginputfonctionbrut, 1, 1) = "^" Then
        $settinginputfonctionini = StringReplace($settinginputfonctionbrut, "^", "Ctrl + ")
    Else
        $settinginputfonctionini = "Aucun"
    EndIf
    GUICtrlSetData($settinginputfonction, $settinginputfonctionini)
EndFunc

Func assignsc()
    Global $settingscwallclimb = IniRead($setting, "Raccourcis - Officiel", "Wallclimb", "Erreur")
    Global $settingscsupersaut = IniRead($setting, "Raccourcis - Officiel", "Supersaut", "Erreur")
    Global $settingscnoclipaction = IniRead($setting, "Raccourcis - Officiel", "Noclipaction", "Erreur")
    HotKeySet($settingscwallclimb, "scpwallclimb")
    HotKeySet($settingscsupersaut, "scpsupersaut")
    HotKeySet($settingscnoclipaction, "sconoclipaction")
EndFunc

Func assignscprivate()
    Global $privesettingscflymod = IniRead($setting, "Raccourcis - Prive", "Flymod", "Erreur")
    Global $privesettingscspeedglobale = IniRead($setting, "Raccourcis - Prive", "Speedglobale", "Erreur")
    Global $privesettingscspeed = IniRead($setting, "Raccourcis - Prive", "Speed", "Erreur")
    Global $privesettingscwallclimb = IniRead($setting, "Raccourcis - Prive", "Wallclimb", "Erreur")
    Global $privesettingscsupersaut = IniRead($setting, "Raccourcis - Prive", "Supersaut", "Erreur")
    Global $privesettingscdebloperso = IniRead($setting, "Raccourcis - Prive", "Debloperso", "Erreur")
    Global $privesettingscclicktp = IniRead($setting, "Raccourcis - Prive", "Clicktp", "Erreur")
    Global $privesettingscgocorps = IniRead($setting, "Raccourcis - Prive", "Gocorps", "Erreur")
    Global $privesettingscstopfall = IniRead($setting, "Raccourcis - Prive", "Stopfall", "Erreur")
    Global $privesettingsctpcibledos = IniRead($setting, "Raccourcis - Prive", "Tpcibledos", "Erreur")
    Global $privesettingsctpcibleundermap = IniRead($setting, "Raccourcis - Prive", "Tpcibleundermap", "Erreur")
    Global $privesettingscfreezez = IniRead($setting, "Raccourcis - Prive", "FreezeZ", "Erreur")
    Global $privesettingscspeedn = IniRead($setting, "Raccourcis - Prive", "SpeedN", "Erreur")
    Global $privesettingscspeed100 = IniRead($setting, "Raccourcis - Prive", "Speed100", "Erreur")
    Global $privesettingscspeedcustom = IniRead($setting, "Raccourcis - Prive", "Speedcustom", "Erreur")
    Global $privesettingscspeedp = IniRead($setting, "Raccourcis - Prive", "SpeedP", "Erreur")
    Global $privesettingscspeedm = IniRead($setting, "Raccourcis - Prive", "SpeedM", "Erreur")
    Global $privesettingscspeedflyn = IniRead($setting, "Raccourcis - Prive", "SpeedFlyN", "Erreur")
    Global $privesettingscspeedfly280 = IniRead($setting, "Raccourcis - Prive", "SpeedFly280", "Erreur")
    Global $privesettingscspeedflycustom = IniRead($setting, "Raccourcis - Prive", "SpeedFlycustom", "Erreur")
    Global $privesettingscspeedflyp = IniRead($setting, "Raccourcis - Prive", "SpeedFlyP", "Erreur")
    Global $privesettingscspeedflym = IniRead($setting, "Raccourcis - Prive", "SpeedFlyM", "Erreur")
    Global $privesettingscsupersautp = IniRead($setting, "Raccourcis - Prive", "SupersautP", "Erreur")
    Global $privesettingscsupersautm = IniRead($setting, "Raccourcis - Prive", "SupersautM", "Erreur")
    Global $privesettingsctimespeedp = IniRead($setting, "Raccourcis - Prive", "TimeSpeedP", "Erreur")
    Global $privesettingsctimespeedm = IniRead($setting, "Raccourcis - Prive", "TimeSpeedM", "Erreur")
    Global $privesettingsctaillep = IniRead($setting, "Raccourcis - Prive", "TailleP", "Erreur")
    Global $privesettingsctaillem = IniRead($setting, "Raccourcis - Prive", "TailleM", "Erreur")
    Global $privesettingscgouletflaga2 = IniRead($setting, "Raccourcis - Prive", "FlagA2", "Erreur")
    Global $privesettingscgouletregena2 = IniRead($setting, "Raccourcis - Prive", "RegenA2", "Erreur")
    Global $privesettingscgouletbersekera2 = IniRead($setting, "Raccourcis - Prive", "BersekerA2", "Erreur")
    Global $privesettingscgouletsprinta2 = IniRead($setting, "Raccourcis - Prive", "SprintA2", "Erreur")
    Global $privesettingscgouletflagh2 = IniRead($setting, "Raccourcis - Prive", "FlagH2", "Erreur")
    Global $privesettingscgouletregenh2 = IniRead($setting, "Raccourcis - Prive", "RegenH2", "Erreur")
    Global $privesettingscgouletbersekerh2 = IniRead($setting, "Raccourcis - Prive", "BersekerH2", "Erreur")
    Global $privesettingscgouletsprinth2 = IniRead($setting, "Raccourcis - Prive", "SprintH2", "Erreur")
    Global $privesettingscarathiecurie = IniRead($setting, "Raccourcis - Prive", "Ecurie", "Erreur")
    Global $privesettingscarathiferme = IniRead($setting, "Raccourcis - Prive", "Ferme", "Erreur")
    Global $privesettingscarathimine = IniRead($setting, "Raccourcis - Prive", "Mine", "Erreur")
    Global $privesettingscarathiforge = IniRead($setting, "Raccourcis - Prive", "Forge", "Erreur")
    Global $privesettingscarathiscierie = IniRead($setting, "Raccourcis - Prive", "Scierie", "Erreur")
    Global $privesettingscoeildrapeau = IniRead($setting, "Raccourcis - Prive", "OeilDrapeau", "Erreur")
    Global $privesettingscoeilruinesdraenei = IniRead($setting, "Raccourcis - Prive", "RuinesDraenei", "Erreur")
    Global $privesettingscoeiltourmages = IniRead($setting, "Raccourcis - Prive", "TourMages", "Erreur")
    Global $privesettingscoeilruinessaccageur = IniRead($setting, "Raccourcis - Prive", "RuinesSaccageur", "Erreur")
    Global $privesettingscoeiltourelfes = IniRead($setting, "Raccourcis - Prive", "TourElfes", "Erreur")
    Global $privesettingscalteraca2 = IniRead($setting, "Raccourcis - Prive", "Forge", "Erreur")
    Global $privesettingscalterach2 = IniRead($setting, "Raccourcis - Prive", "Scierie", "Erreur")
    HotKeySet($privesettingscflymod, "scpflymod")
    HotKeySet($privesettingscspeed, "scpspeedglobale")
    HotKeySet($privesettingscspeed, "scpspeed")
    HotKeySet($privesettingscwallclimb, "scpwallclimb")
    HotKeySet($privesettingscsupersaut, "scpsupersaut")
    HotKeySet($privesettingscdebloperso, "debloperso")
    HotKeySet($privesettingscclicktp, "scpclicktp")
    HotKeySet($privesettingscgocorps, "gocorps")
    HotKeySet($privesettingscstopfall, "privestopfall")
    HotKeySet($privesettingsctpcibledos, "privetpcibledos")
    HotKeySet($privesettingsctpcibleundermap, "privetpcibleundermap")
    HotKeySet($privesettingscfreezez, "scpfreezez")
    HotKeySet($privesettingscspeedn, "scpspeedSpeedN")
    HotKeySet($privesettingscspeed100, "scpspeedSpeed100")
    HotKeySet($privesettingscspeedcustom, "scpspeedSpeedCustom")
    HotKeySet($privesettingscspeedp, "scpspeedSpeedP")
    HotKeySet($privesettingscspeedm, "scpspeedSpeedM")
    HotKeySet($privesettingscspeedflyn, "scpspeedSpeedFlyN")
    HotKeySet($privesettingscspeedfly280, "scpspeedSpeedFly280")
    HotKeySet($privesettingscspeedflycustom, "scpspeedSpeedFlyCustom")
    HotKeySet($privesettingscspeedflyp, "scpspeedSpeedFlyP")
    HotKeySet($privesettingscspeedflym, "scpspeedSpeedFlyM")
    HotKeySet($privesettingscsupersautp, "scpspeedSupersautP")
    HotKeySet($privesettingscsupersautm, "scpspeedSupersautM")
    HotKeySet($privesettingsctimespeedp, "scpspeedTimeSpeedP")
    HotKeySet($privesettingsctimespeedm, "scpspeedTimeSpeedM")
    HotKeySet($privesettingsctaillep, "scpspeedTailleP")
    HotKeySet($privesettingsctaillem, "scpspeedTailleM")
    HotKeySet($privesettingscgouletflaga2, "scppvpgouletflaga2")
    HotKeySet($privesettingscgouletregena2, "scppvpgouletregena2")
    HotKeySet($privesettingscgouletbersekera2, "scppvpgouletbersekera2")
    HotKeySet($privesettingscgouletsprinta2, "scppvpgouletsprinta2")
    HotKeySet($privesettingscgouletflagh2, "scppvpgouletflagh2")
    HotKeySet($privesettingscgouletregenh2, "scppvpgouletregenh2")
    HotKeySet($privesettingscgouletbersekerh2, "scppvpgouletbersekerh2")
    HotKeySet($privesettingscgouletsprinth2, "scppvpgouletsprinth2")
    HotKeySet($privesettingscarathiecurie, "scppvparathiecurie")
    HotKeySet($privesettingscarathiferme, "scppvparathiferme")
    HotKeySet($privesettingscarathimine, "scppvparathimine")
    HotKeySet($privesettingscarathiforge, "scppvparathiforge")
    HotKeySet($privesettingscarathiscierie, "scppvparathiscierie")
    HotKeySet($privesettingscoeildrapeau, "scppvpoeildrapeau")
    HotKeySet($privesettingscoeilruinesdraenei, "scppvpoeilRuinesDraenei")
    HotKeySet($privesettingscoeiltourmages, "scppvpoeilTourMages")
    HotKeySet($privesettingscoeilruinessaccageur, "scppvpoeilRuinesSaccageur")
    HotKeySet($privesettingscoeiltourelfes, "scppvpoeilTourElfes")
    HotKeySet($privesettingscalteraca2, "scppvpalteraca2")
    HotKeySet($privesettingscalterach2, "scppvpalterach2")
EndFunc

Func unassignsc()
    HotKeySet($settingscwallclimb)
    HotKeySet($settingscsupersaut)
    HotKeySet($settingscnoclipaction)
EndFunc

Func unassignscprivate()
    HotKeySet($privesettingscflymod)
    HotKeySet($privesettingscspeedglobale)
    HotKeySet($privesettingscspeed)
    HotKeySet($privesettingscwallclimb)
    HotKeySet($privesettingscsupersaut)
    HotKeySet($privesettingscdebloperso)
    HotKeySet($privesettingscclicktp)
    HotKeySet($privesettingscgocorps)
    HotKeySet($privesettingscstopfall)
    HotKeySet($privesettingsctpcibledos)
    HotKeySet($privesettingsctpcibleundermap)
    HotKeySet($privesettingscfreezez)
    HotKeySet($privesettingscspeedn)
    HotKeySet($privesettingscspeed100)
    HotKeySet($privesettingscspeedcustom)
    HotKeySet($privesettingscspeedp)
    HotKeySet($privesettingscspeedm)
    HotKeySet($privesettingscspeedflyn)
    HotKeySet($privesettingscspeedfly280)
    HotKeySet($privesettingscspeedflycustom)
    HotKeySet($privesettingscspeedflyp)
    HotKeySet($privesettingscspeedflym)
    HotKeySet($privesettingscsupersautp)
    HotKeySet($privesettingscsupersautm)
    HotKeySet($privesettingsctimespeedp)
    HotKeySet($privesettingsctimespeedm)
    HotKeySet($privesettingsctaillep)
    HotKeySet($privesettingsctaillem)
    HotKeySet($privesettingscgouletflaga2)
    HotKeySet($privesettingscgouletregena2)
    HotKeySet($privesettingscgouletbersekera2)
    HotKeySet($privesettingscgouletsprinta2)
    HotKeySet($privesettingscgouletflagh2)
    HotKeySet($privesettingscgouletregenh2)
    HotKeySet($privesettingscgouletbersekerh2)
    HotKeySet($privesettingscgouletsprinth2)
    HotKeySet($privesettingscarathiecurie)
    HotKeySet($privesettingscarathiferme)
    HotKeySet($privesettingscarathimine)
    HotKeySet($privesettingscarathiforge)
    HotKeySet($privesettingscarathiscierie)
    HotKeySet($privesettingscoeildrapeau)
    HotKeySet($privesettingscoeilruinesdraenei)
    HotKeySet($privesettingscoeiltourmages)
    HotKeySet($privesettingscoeilruinessaccageur)
    HotKeySet($privesettingscoeiltourelfes)
    HotKeySet($privesettingscalteraca2)
    HotKeySet($privesettingscalterach2)
EndFunc

Func scppvpgouletflaga2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "flagA2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "flagA2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "flagA2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletregena2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "regenA2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "regenA2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "regenA2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletbersekera2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "bersekerA2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "bersekerA2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "bersekerA2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletsprinta2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "sprintA2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "sprintA2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "sprintA2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletflagh2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "flagH2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "flagH2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "flagH2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletregenh2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "regenH2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "regenH2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "regenH2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletbersekerh2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "bersekerH2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "bersekerH2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "bersekerH2Z", "Erreur"), "float")
EndFunc

Func scppvpgouletsprinth2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Goulet", "sprintH2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Goulet", "sprintH2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Goulet", "sprintH2Z", "Erreur"), "float")
EndFunc

Func scppvparathiecurie()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Arathi", "ecurieX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Arathi", "ecurieY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Arathi", "ecurieZ", "Erreur"), "float")
EndFunc

Func scppvparathiferme()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Arathi", "fermeX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Arathi", "fermeY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Arathi", "fermeZ", "Erreur"), "float")
EndFunc

Func scppvparathimine()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Arathi", "mineX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Arathi", "mineY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Arathi", "mineZ", "Erreur"), "float")
EndFunc

Func scppvparathiforge()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Arathi", "forgeX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Arathi", "forgeY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Arathi", "forgeZ", "Erreur"), "float")
EndFunc

Func scppvparathiscierie()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Arathi", "scierieX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Arathi", "scierieY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Arathi", "scierieZ", "Erreur"), "float")
EndFunc

Func scppvpoeildrapeau()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Oeil", "eildrapeauX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Oeil", "eildrapeauY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Oeil", "eildrapeauZ", "Erreur"), "float")
EndFunc

Func scppvpoeilruinesdraenei()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Oeil", "RuinesDraeneiX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Oeil", "RuinesDraeneiY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Oeil", "RuinesDraeneiZ", "Erreur"), "float")
EndFunc

Func scppvpoeiltourmages()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Oeil", "TourMagesX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Oeil", "TourMagesY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Oeil", "TourMagesZ", "Erreur"), "float")
EndFunc

Func scppvpoeilruinessaccageur()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Oeil", "RuinesSaccageurX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Oeil", "RuinesSaccageurY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Oeil", "RuinesSaccageurZ", "Erreur"), "float")
EndFunc

Func scppvpoeiltourelfes()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Oeil", "TourElfesX", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Oeil", "TourElfesY", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Oeil", "TourElfesZ", "Erreur"), "float")
EndFunc

Func scppvpalteraca2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Alterac", "A2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Alterac", "A2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Alterac", "A2Z", "Erreur"), "float")
EndFunc

Func scppvpalterach2()
    _memorywrite($playerbase + $posx, $wowprocess, IniRead($setting, "Alterac", "H2X", "Erreur"), "float")
    _memorywrite($playerbase + $posy, $wowprocess, IniRead($setting, "Alterac", "H2Y", "Erreur"), "float")
    _memorywrite($playerbase + $posz, $wowprocess, IniRead($setting, "Alterac", "H2Z", "Erreur"), "float")
EndFunc

Func getkeypressed()
    If _ispressed(41, $dll) Then
        $keypressed = "a"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "a" & "}" & '"')
    ElseIf _ispressed(42, $dll) Then
        $keypressed = "b"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "b" & "}" & '"')
    ElseIf _ispressed(43, $dll) Then
        $keypressed = "c"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "c" & "}" & '"')
    ElseIf _ispressed(44, $dll) Then
        $keypressed = "d"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "d" & "}" & '"')
    ElseIf _ispressed(45, $dll) Then
        $keypressed = "e"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "e" & "}" & '"')
    ElseIf _ispressed(46, $dll) Then
        $keypressed = "f"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "f" & "}" & '"')
    ElseIf _ispressed(47, $dll) Then
        $keypressed = "g"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "g" & "}" & '"')
    ElseIf _ispressed(48, $dll) Then
        $keypressed = "h"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "h" & "}" & '"')
    ElseIf _ispressed(49, $dll) Then
        $keypressed = "i"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "i" & "}" & '"')
    ElseIf _ispressed("4A", $dll) Then
        $keypressed = "j"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "j" & "}" & '"')
    ElseIf _ispressed("4B", $dll) Then
        $keypressed = "k"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "k" & "}" & '"')
    ElseIf _ispressed("4C", $dll) Then
        $keypressed = "l"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "l" & "}" & '"')
    ElseIf _ispressed("4D", $dll) Then
        $keypressed = "m"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "m" & "}" & '"')
    ElseIf _ispressed("4E", $dll) Then
        $keypressed = "n"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "n" & "}" & '"')
    ElseIf _ispressed("4F", $dll) Then
        $keypressed = "o"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "o" & "}" & '"')
    ElseIf _ispressed(50, $dll) Then
        $keypressed = "p"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "p" & "}" & '"')
    ElseIf _ispressed(51, $dll) Then
        $keypressed = "q"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "q" & "}" & '"')
    ElseIf _ispressed(52, $dll) Then
        $keypressed = "r"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "r" & "}" & '"')
    ElseIf _ispressed(53, $dll) Then
        $keypressed = "s"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "s" & "}" & '"')
    ElseIf _ispressed(54, $dll) Then
        $keypressed = "t"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "t" & "}" & '"')
    ElseIf _ispressed(55, $dll) Then
        $keypressed = "u"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "u" & "}" & '"')
    ElseIf _ispressed(56, $dll) Then
        $keypressed = "v"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "v" & "}" & '"')
    ElseIf _ispressed(57, $dll) Then
        $keypressed = "w"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "w" & "}" & '"')
    ElseIf _ispressed(58, $dll) Then
        $keypressed = "x"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "x" & "}" & '"')
    ElseIf _ispressed(59, $dll) Then
        $keypressed = "y"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "y" & "}" & '"')
    ElseIf _ispressed("5A", $dll) Then
        $keypressed = "z"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "z" & "}" & '"')
    ElseIf _ispressed(70, $dll) Then
        $keypressed = "F1"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F1" & "}" & '"')
    ElseIf _ispressed(71, $dll) Then
        $keypressed = "F2"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F2" & "}" & '"')
    ElseIf _ispressed(72, $dll) Then
        $keypressed = "F3"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F3" & "}" & '"')
    ElseIf _ispressed(73, $dll) Then
        $keypressed = "F4"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F4" & "}" & '"')
    ElseIf _ispressed(74, $dll) Then
        $keypressed = "F5"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F5" & "}" & '"')
    ElseIf _ispressed(75, $dll) Then
        $keypressed = "F6"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F6" & "}" & '"')
    ElseIf _ispressed(76, $dll) Then
        $keypressed = "F7"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F7" & "}" & '"')
    ElseIf _ispressed(77, $dll) Then
        $keypressed = "F8"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F8" & "}" & '"')
    ElseIf _ispressed(78, $dll) Then
        $keypressed = "F9"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F9" & "}" & '"')
    ElseIf _ispressed(79, $dll) Then
        $keypressed = "F10"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F10" & "}" & '"')
    ElseIf _ispressed("7A", $dll) Then
        $keypressed = "F11"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F11" & "}" & '"')
    ElseIf _ispressed("7B", $dll) Then
        $keypressed = "F12"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "F12" & "}" & '"')
    ElseIf _ispressed(31, $dll) Then
        $keypressed = "&"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "&" & "}" & '"')
    ElseIf _ispressed(32, $dll) Then
        $keypressed = "é"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "é" & "}" & '"')
    ElseIf _ispressed(34, $dll) Then
        $keypressed = "'"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "'" & "}" & '"')
    ElseIf _ispressed(35, $dll) Then
        $keypressed = "("
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "(" & "}" & '"')
    ElseIf _ispressed(36, $dll) Then
        $keypressed = "-"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "-" & "}" & '"')
    ElseIf _ispressed(37, $dll) Then
        $keypressed = "è"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "è" & "}" & '"')
    ElseIf _ispressed(38, $dll) Then
        $keypressed = "_"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "_" & "}" & '"')
    ElseIf _ispressed(39, $dll) Then
        $keypressed = "ç"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "ç" & "}" & '"')
    ElseIf _ispressed(30, $dll) Then
        $keypressed = "à"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "à" & "}" & '"')
    ElseIf _ispressed("BA", $dll) Then
        $keypressed = "$"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "$" & "}" & '"')
    ElseIf _ispressed("BB", $dll) Then
        $keypressed = "="
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "=" & "}" & '"')
    ElseIf _ispressed("BC", $dll) Then
        $keypressed = ","
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "," & "}" & '"')
    ElseIf _ispressed("BE", $dll) Then
        $keypressed = ";"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & ";" & "}" & '"')
    ElseIf _ispressed("BF", $dll) Then
        $keypressed = ":"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & ":" & "}" & '"')
    ElseIf _ispressed("C0", $dll) Then
        $keypressed = "ù"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "ù" & "}" & '"')
    ElseIf _ispressed("DB", $dll) Then
        $keypressed = ")"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & ")" & "}" & '"')
    ElseIf _ispressed("DC", $dll) Then
        $keypressed = "*"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "*" & "}" & '"')
    ElseIf _ispressed("DD", $dll) Then
        $keypressed = "^"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "^" & "}" & '"')
    ElseIf _ispressed("DE", $dll) Then
        $keypressed = "²"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "²" & "}" & '"')
    ElseIf _ispressed("DF", $dll) Then
        $keypressed = "!"
        IniWrite($setting, $sciniempl, $scfonctionname, '"' & "{" & "!" & "}" & '"')
    ElseIf _ispressed(8, $dll) Then
        $settingscbrut = IniRead($setting, "Raccourcis - Prive", $scfonctionname, "Erreur")
        HotKeySet($settingscbrut)
        $keypressed = ""
        IniWrite($setting, $sciniempl, $scfonctionname, "")
    EndIf
EndFunc
