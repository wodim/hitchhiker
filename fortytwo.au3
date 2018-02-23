#NoTrayIcon
;#RequireAdmin
#Region
    #AutoIt3Wrapper_Icon=..\Ressource\icon_dp.ico
    #AutoIt3Wrapper_OutFile=World of Warcraft
    #AutoIt3Wrapper_Res_Comment=World of Warcraft
    #AutoIt3Wrapper_Res_Description=World of Warcraft
    #AutoIt3Wrapper_Res_Fileversion=1.2.3.4
    #AutoIt3Wrapper_Res_LegalCopyright=World of Warcraft
    #AutoIt3Wrapper_Res_Language=1033
#EndRegion
Global Const $basecd = 13890988
Global Const $cam_cameraoffsa = 32288
Global Const $cam_cameraoffsb = 280
Global Const $cam_camerastatic = 12010348
Global Const $cam_camerarotz = 8
Global Const $cam_camerarotx = 4
Global Const $posxcamera = 11330740
Global Const $playerbase_pbspectate = 8
Global Const $playerbase_ad2 = 4104
Global Const $dx_device = 12967816
Global Const $dx_device_idx = 14716
Global Const $endscene_idx = 168
Global Const $staticclientconnection = 13081824
Global Const $mgroffset = 11984
Global Const $targetguidstatic = 12388272
Global Const $ofs_first_obj = 172
Global Const $ofs_next_obj = 60
Global Const $ofs_obj_guid = 48
Global Const $ofs_obj_descriptor = 8
Global Const $ofs_obj_type = 20
Global Const $version = "3.3.5"
Global Const $build = "World of WarCraft (build 12340)"
Global Const $buildaddr = 10365464
Global Const $staticplayer = 13469608
Global Const $pbpointer1 = 52
Global Const $pbpointer2 = 36
Global Const $mapid = 11232188
Global Const $minimapname = 12388220
Global Const $mapname = 13502416
Global Const $timeminutes = 13860760
Global Const $timeheure = 13860764
Global Const $timespeed = 13860808
Global Const $posx = 1944
Global Const $posy = 1948
Global Const $posz = 1952
Global Const $posr = 1960
Global Const $hauteursaut = 2112
Global Const $wallclimb = 2136
Global Const $playerstate = 1999
Global Const $playerstate2 = 1996
Global Const $speedglobale = 2068
Global Const $speed = 2076
Global Const $speedswim = 2084
Global Const $flyspeed = 2092
Global Const $corps = 12388952
Global Const $hunt = 4088
Global Const $ressources = 4092
Global Const $faction = 220
Global Const $emote = 332
Global Const $playerscale = 156
Global Const $playerhauteur = 2132
Global Const $playerlargeur = 2128
Global Const $mapmask = 1044
Global Const $inebriation = 1288
Global Const $titre = 1284
Global Const $playerflags = 236
Global Const $playerflags2 = 240
Global Const $mount1 = 7578547
Global Const $mount2 = 7578629
Global Const $collisionm2s = 8016620
Global Const $collisionm2c = 8016079
Global Const $collisionwmo = 8054762
Global Const $waterwalkpatch = 7726137
Global Const $infinitejumppatch = 9995315
Global Const $clicktpx = 13242980
Global Const $clicktpy = 13242984
Global Const $clicktpz = 13242988

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

Func scpflymod()
    $priveflyspeedinputed = GUICtrlRead($priveflyspeedinput)
    If $scpriveflymodon = 0 Then
        $scpriveflymodon = 1
        GUICtrlSetState($priveflymodon, $gui_checked)
        _memorywrite($playerbase + $playerstate, $wowprocess, 129, "dword")
        _memorywrite($playerbase + $flyspeed, $wowprocess, $priveflyspeedinputed, "float")
    Else
        $scpriveflymodon = 0
        GUICtrlSetState($priveflymodon, $gui_unchecked)
        _memorywrite($playerbase + $playerstate, $wowprocess, 128, "dword")
        _memorywrite($playerbase + $flyspeed, $wowprocess, 7, "float")
    EndIf
EndFunc

Func scpfreezez()
    If $scprivefreezezon = 0 Then
        $scprivefreezezon = 1
        GUICtrlSetState($privefreezezon, $gui_checked)
        _memorywrite($playerbase + $playerstate2, $wowprocess, -2147482624, "ptr")
    Else
        $scprivefreezezon = 0
        GUICtrlSetState($privefreezezon, $gui_unchecked)
        _memorywrite($playerbase + $playerstate2, $wowprocess, -2147483648, "ptr")
    EndIf
EndFunc

Func scpspeed()
    $privespeedinputed = GUICtrlRead($privespeedinput)
    If $scprivespeedon = 0 Then
        $scprivespeedon = 1
        GUICtrlSetState($privespeedon, $gui_checked)
        _memorywrite($playerbase + $speed, $wowprocess, $privespeedinputed, "float")
        _memorywrite($playerbase + $speedswim, $wowprocess, $privespeedinputed, "float")
    Else
        $scprivespeedon = 0
        GUICtrlSetState($privespeedon, $gui_unchecked)
        _memorywrite($playerbase + $speed, $wowprocess, 7, "float")
        _memorywrite($playerbase + $speedswim, $wowprocess, 4.7, "float")
    EndIf
EndFunc

Func scpspeedglobale()
    If GUICtrlRead($privespeedon) = $gui_unchecked Then
        GUICtrlSetState($privespeedon, $gui_checked)
    ElseIf GUICtrlRead($privespeedon) = $gui_checked Then
        GUICtrlSetState($privespeedon, $gui_unchecked)
    EndIf
EndFunc

Func scpwallclimb()
    If $scprivewallclimbon = 0 Then
        $scprivewallclimbon = 1
        GUICtrlSetState($privewallclimbon, $gui_checked)
        GUICtrlSetState($wallclimbon, $gui_checked)
        _memorywrite($playerbase + $wallclimb, $wowprocess, 255, "float")
    Else
        $scprivewallclimbon = 0
        GUICtrlSetState($privewallclimbon, $gui_unchecked)
        GUICtrlSetState($wallclimbon, $gui_unchecked)
        _memorywrite($playerbase + $wallclimb, $wowprocess, 1, "float")
    EndIf
EndFunc

Func scpclicktp()
    If WinActive("World of Warcraft") Then
        If $scpriveclicktpon = 0 Then
            $scpriveclicktpon = 1
            GUICtrlSetState($priveclicktp, $gui_checked)
            If _ispressed(2) AND $scpriveclicktpon = 0 Then
                $playerstateorg = _memoryread($playerbase + $playerstate2, $wowprocess, "ptr")
                _memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg + 2048), "ptr")
                Sleep(245)
                _memorywrite($playerbase + $posx, $wowprocess, _memoryread($clicktpx, $wowprocess, "float"), "float")
                _memorywrite($playerbase + $posy, $wowprocess, _memoryread($clicktpy, $wowprocess, "float"), "float")
                _memorywrite($playerbase + $posz, $wowprocess, _memoryread($clicktpz, $wowprocess, "float"), "float")
                Sleep(245)
                _memorywrite($playerbase + $playerstate2, $wowprocess, $playerstateorg, "ptr")
                _memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg + 1024), "ptr")
                _memorywrite($playerbase + $playerstate2, $wowprocess, $playerstateorg, "ptr")
            EndIf
        Else
            $scpriveclicktpon = 0
            GUICtrlSetState($priveclicktp, $gui_unchecked)
        EndIf
    EndIf
EndFunc

Func scpsupersaut()
    If $scprivesupersauton = 0 Then
        $scprivesupersauton = 1
        GUICtrlSetState($privesupersauton, $gui_checked)
        GUICtrlSetState($supersauton, $gui_checked)
        If _ispressed(20) Then
            $privesupersautinputed = GUICtrlRead($privesupersautinput) * (-1)
            _memorywrite($playerbase + $hauteursaut, $wowprocess, $privesupersautinputed, "float")
        EndIf
    ElseIf $scprivesupersauton = 1 Then
        $scprivesupersauton = 0
        GUICtrlSetState($privesupersauton, $gui_unchecked)
        GUICtrlSetState($supersauton, $gui_unchecked)
    EndIf
EndFunc

Func scpspeedspeedn()
    GUICtrlSetData($privespeedinput, 7)
    GUICtrlSetData($privespeedglobaleinput, 7)
    _memorywrite($playerbase + $speed, $wowprocess, 7, "float")
    _memorywrite($playerbase + $speedswim, $wowprocess, 4.7, "float")
EndFunc

Func scpspeedspeed100()
    GUICtrlSetData($privespeedinput, 14)
    GUICtrlSetData($privespeedglobaleinput, 14)
EndFunc

Func scpspeedspeedcustom()
    $privespeedcustominputed = GUICtrlRead($privesettinginputspeedcustominput)
    GUICtrlSetData($privespeedinput, $privespeedcustominputed)
    GUICtrlSetData($privespeedglobaleinput, $privespeedcustominputed)
EndFunc

Func scpspeedspeedp()
    $privespeedinputed = GUICtrlRead($privespeedinput)
    $priveincrement = GUICtrlRead($privesettinginputspeedincr)
    GUICtrlSetData($privespeedinput, $privespeedinputed + $priveincrement)
    GUICtrlSetData($privespeedglobaleinput, $privespeedinputed + $priveincrement)
EndFunc

Func scpspeedspeedm()
    $privespeedinputed = GUICtrlRead($privespeedinput)
    $priveincrement = GUICtrlRead($privesettinginputspeedincr)
    GUICtrlSetData($privespeedinput, $privespeedinputed - $priveincrement)
    GUICtrlSetData($privespeedglobaleinput, $privespeedinputed - $priveincrement)
EndFunc

Func scpspeedspeedflyn()
    GUICtrlSetData($priveflyspeedinput, 7)
EndFunc

Func scpspeedspeedfly280()
    GUICtrlSetData($priveflyspeedinput, 26.6)
EndFunc

Func scpspeedspeedflycustom()
    $privespeedflycustominputed = GUICtrlRead($privesettinginputspeedflycustominput)
    GUICtrlSetData($priveflyspeedinput, $privespeedflycustominputed)
EndFunc

Func scpspeedspeedflyp()
    $privespeedflyinputed = GUICtrlRead($priveflyspeedinput)
    $priveincrement = GUICtrlRead($privesettinginputspeedflyincr)
    GUICtrlSetData($priveflyspeedinput, $privespeedflyinputed + $priveincrement)
EndFunc

Func scpspeedspeedflym()
    $privespeedflyinputed = GUICtrlRead($priveflyspeedinput)
    $priveincrement = GUICtrlRead($privesettinginputspeedflyincr)
    GUICtrlSetData($priveflyspeedinput, $privespeedflyinputed - $priveincrement)
EndFunc

Func scpspeedsupersautp()
    $privesupersautinputed = GUICtrlRead($privesupersautinput)
    $priveincrement = GUICtrlRead($privesettinginputsupersautincr)
    GUICtrlSetData($privesupersautinput, $privesupersautinputed + $priveincrement)
    GUICtrlSetData($supersautinput, $privesupersautinputed + $priveincrement)
EndFunc

Func scpspeedsupersautm()
    $privesupersautinputed = GUICtrlRead($privesupersautinput)
    $priveincrement = GUICtrlRead($privesettinginputsupersautincr)
    GUICtrlSetData($privesupersautinput, $privesupersautinputed - $priveincrement)
    GUICtrlSetData($supersautinput, $privesupersautinputed - $priveincrement)
EndFunc

Func scpspeedtimespeedp()
    $vitessetempsinputed = GUICtrlRead($vitessetempsinput)
    $priveincrement = GUICtrlRead($privesettinginputtimespeedincr)
    GUICtrlSetData($vitessetempsinput, $vitessetempsinputed + $priveincrement)
    settimespeed()
EndFunc

Func scpspeedtimespeedm()
    $vitessetempsinputed = GUICtrlRead($vitessetempsinput)
    $priveincrement = GUICtrlRead($privesettinginputtimespeedincr)
    GUICtrlSetData($vitessetempsinput, $vitessetempsinputed - $priveincrement)
    settimespeed()
EndFunc

Func scpspeedtaillep()
    $priveincrement = GUICtrlRead($privesettinginputtailleincr)
    $playerscalevar = _memoryread($playerbase + $playerscale, $wowprocess, "float")
    $playernewtaille = $playerscalevar * $priveincrement
    _memorywrite(($playerbase + $playerscale), $wowprocess, $playernewtaille, "float")
    GUICtrlSetData($playerscaleinput, Round($playernewtaille, 5))
    $playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
    $playernewtaille = $playerhauteurvar * $priveincrement
    _memorywrite(($playerbase + $playerhauteur), $wowprocess, $playernewtaille, "float")
    GUICtrlSetData($playerhauteurinput, Round($playernewtaille, 5))
    $playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
    $playernewtaille = $playerlargeurvar * $priveincrement
    _memorywrite(($playerbase + $playerlargeur), $wowprocess, $playernewtaille, "float")
    GUICtrlSetData($playerlargeurinput, Round($playernewtaille, 5))
EndFunc

Func scpspeedtaillem()
    $priveincrement = GUICtrlRead($privesettinginputtailleincr)
    $playerscalevar = _memoryread($playerbase + $playerscale, $wowprocess, "float")
    $playernewtaille = $playerscalevar / $priveincrement
    _memorywrite(($playerbase + $playerscale), $wowprocess, $playernewtaille, "float")
    GUICtrlSetData($playerscaleinput, Round($playernewtaille, 5))
    $playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
    $playernewtaille = $playerhauteurvar / $priveincrement
    _memorywrite(($playerbase + $playerhauteur), $wowprocess, $playernewtaille, "float")
    GUICtrlSetData($playerhauteurinput, Round($playernewtaille, 5))
    $playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
    $playernewtaille = $playerlargeurvar / $priveincrement
    _memorywrite(($playerbase + $playerlargeur), $wowprocess, $playernewtaille, "float")
    GUICtrlSetData($playerlargeurinput, Round($playernewtaille, 5))
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

Func settpname()
    $mapnamepath = _memoryread($mapname, $wowprocess, "char[30]")
    $mapname1 = StringReplace($mapnamepath, "World\Maps\", "")
    $mapname2 = StringReplace($mapname1, "Expansion01", "Outreterre")
    $mapnamefinal = StringReplace($mapname2, "Northrend", "Norfendre")
    $zonenameadr = _memoryread($minimapname + 0, $wowprocess, "ptr")
    $zonename = _memoryread($zonenameadr, $wowprocess, "char[30]")
    $zonenameaccai = StringReplace($zonename, "Ã©", "é")
    $zonenameaccgr = StringReplace($zonenameaccai, "Ã¨", "è")
    $zonenameaccci1 = StringReplace($zonenameaccgr, "ÃŽ", "Î")
    $zonenameaccci2 = StringReplace($zonenameaccci1, "Ãª", "ê")
    $zonenameaccci3 = StringReplace($zonenameaccci2, "Ã´", "ô")
    $zonenameaccci4 = StringReplace($zonenameaccci3, "Ã¢", "â")
    $zonenameaccai2 = StringReplace($zonenameaccci4, "Ã‰", "é")
    $zonenameoe = StringReplace($zonenameaccai2, "Å“", "oe")
    $zonenameapp = StringReplace($zonenameoe, "â€™", "'")
    $zonenameced = StringReplace($zonenameapp, "Ã§", "ç")
    GUICtrlSetData($addtpnameinput, $mapnamefinal & ": " & $zonenameced)
EndFunc

Func createlist()
    $number = 0
    Global $liste = @ScriptDir & "\ftwo_TPlist.ini"
    $line = 1
    $countlines = _filecountlines($liste)
    $countlinestotal = ($countlines - 6)
    For $line = 1 To $countlinestotal Step 8
        $number = $number + 1
        $file = FileReadLine($liste, $line)
        $delcaract1 = StringReplace($file, "[", "")
        $delcaract2 = StringReplace($delcaract1, "]", "")
        $nom1 = FileReadLine($liste, $line)
        $delcaractn1 = StringReplace($nom1, "[", "")
        $nom = StringReplace($delcaractn1, "]", "")
        $map = IniRead($liste, $delcaract2, "MapID:", "")
        $x = IniRead($liste, $delcaract2, "XPos:", "")
        $y = IniRead($liste, $delcaract2, "YPos:", "")
        $z = IniRead($liste, $delcaract2, "ZPos:", "")
        $comment = IniRead($liste, $delcaract2, "Comment:", "")
        GUICtrlCreateListViewItem($number & "|" & $nom & "|" & $map & "|" & $x & "|" & $y & "|" & $z & "|" & $comment, $previewlist)
    Next
EndFunc

Func gettp()
    $selected = _guictrllistview_getselectedindices(GUICtrlGetHandle($previewlist))
    $destination = ($selected * 8) + 1
    $filedes = FileReadLine($liste, $destination)
    $delcaractdes1 = StringReplace($filedes, "[", "")
    $delcaractdes2 = StringReplace($delcaractdes1, "]", "")
    Global $mapdes = IniRead($liste, $delcaractdes2, "MapID:", "")
    Global $xdes = IniRead($liste, $delcaractdes2, "XPos:", "")
    Global $ydes = IniRead($liste, $delcaractdes2, "YPos:", "")
    Global $zdes = IniRead($liste, $delcaractdes2, "ZPos:", "")
    If _memoryread($mapid, $wowprocess) = 4294967295 OR _memoryread($mapid, $wowprocess) = $mapdes Then
        godestp()
    ElseIf $mapdes = 530 Then
        If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
            MsgBox(0, "", "Vous devez être en Outreterre pour vous téléporter ici")
        Else
            MsgBox(0, "", "You must be on Outland to teleport there")
        EndIf
    ElseIf $mapdes = 571 Then
        If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
            MsgBox(0, "", "Vous devez être en Norfendre pour vous téléporter ici")
        Else
            MsgBox(0, "", "You must be on Norfendre to teleport there")
        EndIf
    ElseIf $mapdes = 0 Then
        If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
            MsgBox(0, "", "Vous devez être aux Royaumes de l'Est pour vous téléporter ici")
        Else
            MsgBox(0, "", "You must be on Eastern Kingdom to teleport there")
        EndIf
    ElseIf $mapdes = 1 Then
        If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
            MsgBox(0, "", "Vous devez être en Kalimdor pour vous téléporter ici")
        Else
            MsgBox(0, "", "You must be on Kalimdor to teleport there")
        EndIf
    ElseIf $mapdes = 4294967295 Then
        godestp()
    ElseIf _memoryread($mapid, $wowprocess)NOT  = $mapdes Then
        If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
            $msgboxtpmap = MsgBox(4, "", "Vous n'êtes pas sur la bonne carte pour vous téléporter." & @CRLF & " " & @CRLF & "Téléporter quand même ?")
        Else
            $msgboxtpmap = MsgBox(4, "", "You are on the wrong Map." & @CRLF & " " & @CRLF & "Do you really want to teleport ?")
        EndIf
        If $msgboxtpmap = 6 Then
            godestp()
        ElseIf $msgboxtpmap = 7 Then
        EndIf
    EndIf
EndFunc

Func godestp()
    If GUICtrlRead($wehcheckbox) = $gui_checked Then
        If $xdes = "" AND $ydes = "" AND $zdes = "" Then
        Else
            _memorywrite($playerbase + $posx, $wowprocess, $ydes, "float")
            _memorywrite($playerbase + $posy, $wowprocess, $xdes, "float")
            _memorywrite($playerbase + $posz, $wowprocess, $zdes, "float")
        EndIf
    ElseIf GUICtrlRead($wehcheckbox) = $gui_unchecked Then
        If $xdes = "" AND $ydes = "" AND $zdes = "" Then
        Else
            _memorywrite($playerbase + $posx, $wowprocess, $xdes, "float")
            _memorywrite($playerbase + $posy, $wowprocess, $ydes, "float")
            _memorywrite($playerbase + $posz, $wowprocess, $zdes, "float")
        EndIf
    EndIf
EndFunc

Func addtp()
    If GUICtrlRead($addtpnameinput) = "" Then
        MsgBox(0, "Erreur", "Vous devez indiquer un nom pour votre TP")
    Else
        FileWriteLine($liste, "[" & GUICtrlRead($addtpnameinput) & "]")
        FileWriteLine($liste, "Type:=")
        FileWriteLine($liste, "MapID:=" & _memoryread($mapid, $wowprocess, "dword"))
        FileWriteLine($liste, "XPos:=" & (Round(_memoryread($playerbase + $posx, $wowprocess, "float"), 3)))
        FileWriteLine($liste, "YPos:=" & (Round(_memoryread($playerbase + $posy, $wowprocess, "float"), 3)))
        FileWriteLine($liste, "ZPos:=" & (Round(_memoryread($playerbase + $posz, $wowprocess, "float"), 3)))
        FileWriteLine($liste, "Comment:=Destination ajoutée manuellement")
        FileWriteLine($liste, "")
        GUICtrlSetData($addtpnameinput, "")
        _guictrllistview_deleteallitems($previewlist)
        createlist()
    EndIf
EndFunc

Func deltp()
    $delline = 0
    If GUICtrlRead($deltpinput) = "" Then
        MsgBox(0, "Erreur", "Vous devez indiquer le n° du TP à supprimer (Colonne de gauche)")
    Else
        For $delline = 0 To ((GUICtrlRead($deltpinput) * 8) - 8)
        Next
        GUICtrlSetData($deltpinput, "")
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _filewritetoline($liste, $delline, "", 1)
        _guictrllistview_deleteallitems($previewlist)
        createlist()
    EndIf
EndFunc

#include "ini.au3"

#include "windows.au3"

setprivilege("SeDebugPrivilege", 1)
$wowprocesslist = ProcessList("wow.exe")
$wowpid1 = ProcessExists("wow.exe")
$dll = DllOpen("user32.dll")
Global Const $pi = 3.14159265
Global Const $timespeedorg = 0.0166666693985462
Global $setting = @ScriptDir & "\settings.ini"
Global $tracksaver = 0
Global $tracksaveh = 0
Global $keypressed = ""
$scpriveflymodon = 0
$scprivespeedon = 0
$scprivewallclimbon = 0
$scprivesupersauton = 0
$scpriveclicktpon = 0
$scprivefreezezon = 0
$x = 0
$trackvaluer = 0
$trackvalueh = 0

#include "guiinit.au3"

#include "guiloop.au3"

#include "eventloop.au3"

#include "cheatserver.au3"

#include "cheatclient.au3"

#include "guiaux.au3"
