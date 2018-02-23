#NoTrayIcon
#RequireAdmin
#Region
	#AutoIt3Wrapper_Icon=..\Ressource\icon_dp.ico
	#AutoIt3Wrapper_OutFile=The Hitchhiker's Hack 3.3.5.exe
	#AutoIt3Wrapper_Res_Comment=The Hitchhiker's Hack 3.3.5
	#AutoIt3Wrapper_Res_Description=The Hitchhiker's Hack par Bob_74
	#AutoIt3Wrapper_Res_Fileversion=3.3.5.0
	#AutoIt3Wrapper_Res_LegalCopyright=Bob_74
	#AutoIt3Wrapper_Res_Language=1036
	#AutoIt3Wrapper_Res_Field=Programme|The Hitchhiker's Hack
	#AutoIt3Wrapper_Res_Field=Créé par|Bob_74
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

Func language()
	If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
		$section = "Francais"
	ElseIf IniRead($setting, "Langue", "Langue", "Erreur") = 1 Then
		$section = "English"
	Else
		$section = "Espanol"
	EndIf
	$inipriveontop = IniRead($setting, $section, "Ontop", "Erreur")
	GUICtrlSetData($priveontop, $inipriveontop)
	GUICtrlSetData($listeontop, $inipriveontop)
	$initransparencegeneral = IniRead($setting, $section, "Transparence", "Erreur")
	GUICtrlSetData($transparencegeneral, $initransparencegeneral)
	GUICtrlSetData($transparencedeblo, $initransparencegeneral)
	GUICtrlSetData($transparencestopchute, $initransparencegeneral)
	GUICtrlSetData($transparencetp, $initransparencegeneral)
	$iniabout = IniRead($setting, $section, "About", "Erreur")
	GUICtrlSetData($about, $iniabout)
	$inioptions = IniRead($setting, $section, "Options", "Erreur")
	GUICtrlSetData($optionsbutton, $inioptions)
	$initabprive = IniRead($setting, $section, "OngletPrive", "Erreur")
	GUICtrlSetData($tab0, $initabprive)
	$inigrplblteleportation = IniRead($setting, $section, "GROUPTeleportation", "Erreur")
	GUICtrlSetData($priveteleportationgrp, $inigrplblteleportation)
	$inigrplbljcj = IniRead($setting, $section, "GROUPPvP", "Erreur")
	GUICtrlSetData($privepvpgrp, $inigrplbljcj)
	$inigrplblpistage = IniRead($setting, $section, "GROUPTracking", "Erreur")
	GUICtrlSetData($privetrackinggrp, $inigrplblpistage)
	GUICtrlSetData($trackinggrp, $inigrplblpistage)
	$inilblcooactuel = IniRead($setting, $section, "CooActuel", "Erreur")
	GUICtrlSetData($lblcooactuel, $inilblcooactuel)
	$inilblteleport = IniRead($setting, $section, "Teleporter", "Erreur")
	GUICtrlSetData($privegotp, $inilblteleport)
	$inilbltpcorps = IniRead($setting, $section, "TPcorps", "Erreur")
	GUICtrlSetData($privegocorps, $inilbltpcorps)
	$inilblactiverxyz = IniRead($setting, $section, "ActiverXYZ", "Erreur")
	GUICtrlSetData($lblactiverxyz, $inilblactiverxyz)
	$inilblvitessexyz = IniRead($setting, $section, "VitesseXYZ", "Erreur")
	GUICtrlSetData($lblvitessexyz, $inilblvitessexyz)
	$inilblliste = IniRead($setting, $section, "Liste", "Erreur")
	GUICtrlSetData($listouvrir, $inilblliste)
	$inilbltpcibledos = IniRead($setting, $section, "TPcibledos", "Erreur")
	GUICtrlSetData($privetpcibledos, $inilbltpcibledos)
	$inilbltpcibleundermap = IniRead($setting, $section, "TPcibleundermap", "Erreur")
	GUICtrlSetData($privetpcibleundermap, $inilbltpcibleundermap)
	$inilblscspeedglobale = IniRead($setting, $section, "Speedglobale", "Erreur")
	GUICtrlSetData($lblspeedglobale, $inilblscspeedglobale)
	$inilblspeed = IniRead($setting, $section, "Speed", "Erreur")
	GUICtrlSetData($lblspeed, $inilblspeed)
	$inilblflymod = IniRead($setting, $section, "Flymod", "Erreur")
	GUICtrlSetData($lblflymod, $inilblflymod)
	$inilblwalkonwater = IniRead($setting, $section, "Walkonwater", "Erreur")
	GUICtrlSetData($lblwalkonwater, $inilblwalkonwater)
	$inilblunderwaterwalk = IniRead($setting, $section, "Walkunderwater", "Erreur")
	GUICtrlSetData($lblunderwaterwalk, $inilblunderwaterwalk)
	$inilblmount = IniRead($setting, $section, "Mount", "Erreur")
	GUICtrlSetData($lblmount, $inilblmount)
	$inilblmultijump = IniRead($setting, $section, "Multijump", "Erreur")
	GUICtrlSetData($lblinfinitejump, $inilblmultijump)
	$inilblnoclip = IniRead($setting, $section, "NoClip", "Erreur")
	GUICtrlSetData($lblnoclip, $inilblnoclip)
	$inilblfreezez = IniRead($setting, $section, "Freezez", "Erreur")
	GUICtrlSetData($lblfreezez, $inilblfreezez)
	$inilblwallclimb = IniRead($setting, $section, "Wallclimb", "Erreur")
	GUICtrlSetData($lblwallclimb, $inilblwallclimb)
	$inilblsupersaut = IniRead($setting, $section, "Super-Saut", "Erreur")
	GUICtrlSetData($lblsupersaut, $inilblsupersaut)
	$inilblcollisionsm2 = IniRead($setting, $section, "CollisionsM2", "Erreur")
	GUICtrlSetData($lblprivecollisionsm2, $inilblcollisionsm2)
	$inilblcollisionswmo = IniRead($setting, $section, "CollisionsWMO", "Erreur")
	GUICtrlSetData($lblprivecollisionswmo, $inilblcollisionswmo)
	$inilbldebloperso = IniRead($setting, $section, "DebloPerso", "Erreur")
	GUICtrlSetData($privedebloperso, $inilbldebloperso)
	$inilblstopchute = IniRead($setting, $section, "Stopchute", "Erreur")
	GUICtrlSetData($stopchuteon, $inilblstopchute)
	$inilblherbes = IniRead($setting, $section, "Herbes", "Erreur")
	GUICtrlSetData($privetrackherbes, $inilblherbes)
	$inilblfilons = IniRead($setting, $section, "Filons", "Erreur")
	GUICtrlSetData($privetrackfilons, $inilblfilons)
	$inilblcoffres = IniRead($setting, $section, "Coffres", "Erreur")
	GUICtrlSetData($privetrackcoffres, $inilblcoffres)
	$inilblpoissons = IniRead($setting, $section, "Poissons", "Erreur")
	GUICtrlSetData($privetrackpoissons, $inilblpoissons)
	$inilblbetes = IniRead($setting, $section, "Betes", "Erreur")
	GUICtrlSetData($privetrackbetes, $inilblbetes)
	$inilbldragons = IniRead($setting, $section, "Dragons", "Erreur")
	GUICtrlSetData($privetrackdragons, $inilbldragons)
	$inilbldemons = IniRead($setting, $section, "Demons", "Erreur")
	GUICtrlSetData($privetrackdemons, $inilbldemons)
	$inilblelementaires = IniRead($setting, $section, "Elementaires", "Erreur")
	GUICtrlSetData($privetrackelementaires, $inilblelementaires)
	$inilblgeants = IniRead($setting, $section, "Geants", "Erreur")
	GUICtrlSetData($privetrackgeants, $inilblgeants)
	$inilblmortsvivants = IniRead($setting, $section, "Morts-vivants", "Erreur")
	GUICtrlSetData($privetrackmortsvivants, $inilblmortsvivants)
	$inilblhumanoides = IniRead($setting, $section, "Humanoides", "Erreur")
	GUICtrlSetData($privetrackhumanoides, $inilblhumanoides)
	$inilblbestioles = IniRead($setting, $section, "Bestioles", "Erreur")
	GUICtrlSetData($privetrackbestioles, $inilblbestioles)
	$inilbltout = IniRead($setting, $section, "Tout", "Erreur")
	GUICtrlSetData($privetrackallbet, $inilbltout)
	GUICtrlSetData($privetrackallres, $inilbltout)
	$inilblraccourcis = IniRead($setting, $section, "Raccourcis", "Erreur")
	GUICtrlSetData($privescsettings, $inilblraccourcis)
	$inilblpourcents = IniRead($setting, $section, "Pourcents", "Erreur")
	GUICtrlSetData($lblspeedpourcent1, $inilblpourcents)
	$initabofficiel = IniRead($setting, $section, "OngletOfficiel", "Erreur")
	GUICtrlSetData($lblactiverxyzof, $inilblactiverxyz)
	$inilblautoof = IniRead($setting, $section, "Automatique", "Erreur")
	GUICtrlSetData($tpauto, $inilblautoof)
	$inilblmanuof = IniRead($setting, $section, "Manuel", "Erreur")
	GUICtrlSetData($lblwaterwalkof, $inilblwalkonwater)
	GUICtrlSetData($lblunderwaterwalkof, $inilblunderwaterwalk)
	GUICtrlSetData($lblcollisionsm2of, $inilblcollisionsm2)
	GUICtrlSetData($lblcollisionswmoof, $inilblcollisionswmo)
	GUICtrlSetData($tpmanu, $inilblmanuof)
	GUICtrlSetData($lblwallclimbof, $inilblwallclimb)
	GUICtrlSetData($lblsupersautof, $inilblsupersaut)
	GUICtrlSetData($scsettings, $inilblraccourcis)
	GUICtrlSetData($tab1, $initabofficiel)
	GUICtrlSetData($trackherbes, $inilblherbes)
	GUICtrlSetData($trackfilons, $inilblfilons)
	GUICtrlSetData($trackcoffres, $inilblcoffres)
	GUICtrlSetData($trackpoissons, $inilblpoissons)
	GUICtrlSetData($trackbetes, $inilblbetes)
	GUICtrlSetData($trackdragons, $inilbldragons)
	GUICtrlSetData($trackdemons, $inilbldemons)
	GUICtrlSetData($trackelementaires, $inilblelementaires)
	GUICtrlSetData($trackgeants, $inilblgeants)
	GUICtrlSetData($trackmortsvivants, $inilblmortsvivants)
	GUICtrlSetData($trackhumanoides, $inilblhumanoides)
	GUICtrlSetData($trackbestioles, $inilblbestioles)
	GUICtrlSetData($trackallbet, $inilbltout)
	GUICtrlSetData($trackallres, $inilbltout)
	$initabaffichage = IniRead($setting, $section, "OngletAffichage", "Erreur")
	GUICtrlSetData($tab2, $initabaffichage)
	$inilblscalegrp = IniRead($setting, $section, "Taille", "Erreur")
	GUICtrlSetData($playertaillegrp, $inilblscalegrp)
	$inilblscalep = IniRead($setting, $section, "Taillep", "Erreur")
	GUICtrlSetData($playertaillep, $inilblscalep)
	$inilblscalem = IniRead($setting, $section, "Taillem", "Erreur")
	GUICtrlSetData($playertaillem, $inilblscalem)
	$inilblscale = IniRead($setting, $section, "Taille", "Erreur")
	GUICtrlSetData($lbltaille, $inilblscale)
	$inilblhauteur = IniRead($setting, $section, "Hauteur", "Erreur")
	GUICtrlSetData($lblhauteur, $inilblhauteur)
	$inilbllargeur = IniRead($setting, $section, "Largeur", "Erreur")
	GUICtrlSetData($lbllargeur, $inilbllargeur)
	$inilblalcool = IniRead($setting, $section, "Alcool", "Erreur")
	GUICtrlSetData($lblalcool, $inilblalcool)
	$inilblaffichage = IniRead($setting, $section, "GROUPAffichage", "Erreur")
	GUICtrlSetData($playershowgrp, $inilblaffichage)
	$inilblmort = IniRead($setting, $section, "Mort", "Erreur")
	GUICtrlSetData($lblmort, $inilblmort)
	$inilbldevoilercarte = IniRead($setting, $section, "DevoilerCarte", "Erreur")
	GUICtrlSetData($mapshow, $inilbldevoilercarte)
	$inilblcamera = IniRead($setting, $section, "GROUPCamera", "Erreur")
	GUICtrlSetData($cameragrp, $inilblcamera)
	$inilblspectateur = IniRead($setting, $section, "Spectateur", "Erreur")
	GUICtrlSetData($lblspectateur, $inilblspectateur)
	$inilblfollowtar = IniRead($setting, $section, "Suivrecible", "Erreur")
	GUICtrlSetData($lblfollowtar, $inilblfollowtar)
	GUICtrlSetData($lblnoclipcamera, $inilblnoclip)
	$inilbltemps = IniRead($setting, $section, "Temps", "Erreur")
	GUICtrlSetData($tempsgrp, $inilbltemps)
	$inilblheures = IniRead($setting, $section, "Heures", "Erreur")
	GUICtrlSetData($lblheure, $inilblheures)
	GUICtrlSetData($lblvitessetemps, $inilblspeed)
	$inilbltpcam = IniRead($setting, $section, "TPcam", "Erreur")
	GUICtrlSetData($priveteleportcamera, $inilbltpcam)
	$inilblemote = IniRead($setting, $section, "Emote", "Erreur")
	GUICtrlSetData($lblemote, $inilblemote)
	$inilblstopchutebutton = IniRead($setting, $section, "Stopchutebutton", "Erreur")
	GUICtrlSetData($stopchutebutton, $inilblstopchutebutton)
	GUICtrlSetData($listteleportgo, $inilblteleport)
	$inilbllisteweh = IniRead($setting, $section, "Listeweh", "Erreur")
	GUICtrlSetData($lvllisteweh, $inilbllisteweh)
	$inilbladdtp = IniRead($setting, $section, "AddTP", "Erreur")
	GUICtrlSetData($addtp, $inilbladdtp)
	$inilbladdtpgrp = IniRead($setting, $section, "GROUPAddTP", "Erreur")
	GUICtrlSetData($addtpgrp, $inilbladdtpgrp)
	$inilbldeltp = IniRead($setting, $section, "DelTP", "Erreur")
	GUICtrlSetData($deltp, $inilbldeltp)
	$inilbldeltpgrp = IniRead($setting, $section, "GROUPDelTP", "Erreur")
	GUICtrlSetData($deltpgrp, $inilbldeltpgrp)
	$inilblnomtp = IniRead($setting, $section, "NomTP", "Erreur")
	GUICtrlSetData($lblnomtp, $inilblnomtp)
	$inilbltpnumber = IniRead($setting, $section, "TPNumber", "Erreur")
	GUICtrlSetData($lbltpnumber, $inilbltpnumber)
	$inilblmapactuelle = IniRead($setting, $section, "MapActuelle", "Erreur")
	GUICtrlSetData($lblmapactuelle, $inilblmapactuelle)
	$inilbldeblopersobutton = IniRead($setting, $section, "Deblopersobutton", "Erreur")
	GUICtrlSetData($deblopersobutton, $inilbldeblopersobutton)
	GUICtrlSetData($lblscwallclimbof, $inilblwallclimb)
	GUICtrlSetData($lblscsupersautof, $inilblsupersaut)
	GUICtrlSetData($lblscflymod, $inilblflymod)
	GUICtrlSetData($lblscspeed, $inilblspeed)
	GUICtrlSetData($lblscwallclimb, $inilblwallclimb)
	GUICtrlSetData($lblscsupersaut, $inilblsupersaut)
	GUICtrlSetData($lblscdebloperso, $inilbldebloperso)
	GUICtrlSetData($lblscgocorps, $inilbltpcorps)
	GUICtrlSetData($lblscstopchute, $inilblstopchute)
	GUICtrlSetData($lblsctpcibledos, $inilbltpcibledos)
	GUICtrlSetData($lblsctpcibleundermap, $inilbltpcibleundermap)
	GUICtrlSetData($lblscfreezez, $inilblfreezez)
	GUICtrlSetData($privescsettingsguigrpspeed, $inilblspeed)
	GUICtrlSetData($lblscspeedglobale, $inilblscspeedglobale)
	$inilblscspeedn = IniRead($setting, $section, "SpeedN", "Erreur")
	GUICtrlSetData($lblscspeedn, $inilblscspeedn)
	$inilblscspeed100 = IniRead($setting, $section, "Speed100", "Erreur")
	GUICtrlSetData($lblscspeed100, $inilblscspeed100)
	$inilblscspeedp = IniRead($setting, $section, "SpeedP", "Erreur")
	GUICtrlSetData($lblscspeedp, $inilblscspeedp)
	$inilblscspeedm = IniRead($setting, $section, "SpeedM", "Erreur")
	GUICtrlSetData($lblscspeedm, $inilblscspeedm)
	$inilblscspeedflyn = IniRead($setting, $section, "SpeedFlyN", "Erreur")
	GUICtrlSetData($lblscspeedflyn, $inilblscspeedflyn)
	$inilblscspeedfly280 = IniRead($setting, $section, "SpeedFly280", "Erreur")
	GUICtrlSetData($lblscspeedfly280, $inilblscspeedfly280)
	$inilblscspeedflyp = IniRead($setting, $section, "SpeedFlyP", "Erreur")
	GUICtrlSetData($lblscspeedflyp, $inilblscspeedflyp)
	$inilblscspeedflym = IniRead($setting, $section, "SpeedFlyM", "Erreur")
	GUICtrlSetData($lblscspeedflym, $inilblscspeedflym)
	$iniprivescsettingsguigrpdivers = IniRead($setting, $section, "GRPDivers", "Erreur")
	GUICtrlSetData($privescsettingsguigrpdivers, $iniprivescsettingsguigrpdivers)
	$inilblscsupersautp = IniRead($setting, $section, "SupersautP", "Erreur")
	GUICtrlSetData($lblscsupersautp, $inilblscsupersautp)
	$inilblscsupersautm = IniRead($setting, $section, "SupersautM", "Erreur")
	GUICtrlSetData($lblscsupersautm, $inilblscsupersautm)
	$inilblsctimespeedp = IniRead($setting, $section, "TimeSpeedP", "Erreur")
	GUICtrlSetData($lblsctimespeedp, $inilblsctimespeedp)
	$inilblsctimespeedm = IniRead($setting, $section, "TimeSpeedM", "Erreur")
	GUICtrlSetData($lblsctimespeedm, $inilblsctimespeedm)
	$iniprivescsettingsguigrppvp = IniRead($setting, $section, "JcjSC", "Erreur")
	GUICtrlSetData($privescsettingsguigrppvp, $iniprivescsettingsguigrppvp)
	$iniprivescsettingsguigrpgoulet = IniRead($setting, $section, "Goulet", "Erreur")
	GUICtrlSetData($privescsettingsguigrpgoulet, $iniprivescsettingsguigrpgoulet)
	$iniprivescsettingsguigrpoeil = IniRead($setting, $section, "Oeil", "Erreur")
	GUICtrlSetData($privescsettingsguigrpoeil, $iniprivescsettingsguigrpoeil)
	$inillblscgouletflaga2 = IniRead($setting, $section, "FlagA2", "Erreur")
	GUICtrlSetData($lblscgouletflaga2, $inillblscgouletflaga2)
	$inillblscgouletregena2 = IniRead($setting, $section, "RegenA2", "Erreur")
	GUICtrlSetData($lblscgouletregena2, $inillblscgouletregena2)
	$inillblscgouletbersekera2 = IniRead($setting, $section, "BersekerA2", "Erreur")
	GUICtrlSetData($lblscgouletbersekera2, $inillblscgouletbersekera2)
	$inillblscgouletsprinta2 = IniRead($setting, $section, "SprintA2", "Erreur")
	GUICtrlSetData($lblscgouletsprinta2, $inillblscgouletsprinta2)
	$inillblscgouletflagh2 = IniRead($setting, $section, "FlagH2", "Erreur")
	GUICtrlSetData($lblscgouletflagh2, $inillblscgouletflagh2)
	$inillblscgouletregenh2 = IniRead($setting, $section, "RegenH2", "Erreur")
	GUICtrlSetData($lblscgouletregenh2, $inillblscgouletregenh2)
	$inillblscgouletbersekerh2 = IniRead($setting, $section, "BersekerH2", "Erreur")
	GUICtrlSetData($lblscgouletbersekerh2, $inillblscgouletbersekerh2)
	$inillblscgouletsprinth2 = IniRead($setting, $section, "SprintH2", "Erreur")
	GUICtrlSetData($lblscgouletsprinth2, $inillblscgouletsprinth2)
	$inilblscarathiecurie = IniRead($setting, $section, "Ecurie", "Erreur")
	GUICtrlSetData($lblscarathiecurie, $inilblscarathiecurie)
	$inilblscarathiferme = IniRead($setting, $section, "Ferme", "Erreur")
	GUICtrlSetData($lblscarathiferme, $inilblscarathiferme)
	$inilblscarathimine = IniRead($setting, $section, "Mine", "Erreur")
	GUICtrlSetData($lblscarathimine, $inilblscarathimine)
	$inilblscarathiforge = IniRead($setting, $section, "Forge", "Erreur")
	GUICtrlSetData($lblscarathiforge, $inilblscarathiforge)
	$inilblscarathiscierie = IniRead($setting, $section, "Scierie", "Erreur")
	GUICtrlSetData($lblscarathiscierie, $inilblscarathiscierie)
	$inilblscoeildrapeau = IniRead($setting, $section, "Flag", "Erreur")
	GUICtrlSetData($lblscoeildrapeau, $inilblscoeildrapeau)
	$inilblscoeiltourmages = IniRead($setting, $section, "TourMages", "Erreur")
	GUICtrlSetData($lblscoeiltourmages, $inilblscoeiltourmages)
	$inilblscoeilruinesdraenei = IniRead($setting, $section, "RuinesDraenei", "Erreur")
	GUICtrlSetData($lblscoeilruinesdraenei, $inilblscoeilruinesdraenei)
	$inilblscoeiltourelfes = IniRead($setting, $section, "TourElfes", "Erreur")
	GUICtrlSetData($lblscoeiltourelfes, $inilblscoeiltourelfes)
	$inilblscoeilruinessaccageur = IniRead($setting, $section, "RuinesSaccageur", "Erreur")
	GUICtrlSetData($lblscoeilruinessaccageur, $inilblscoeilruinessaccageur)
	$inilblscalteraca2 = IniRead($setting, $section, "CoteA2", "Erreur")
	GUICtrlSetData($lblscalteraca2, $inilblscalteraca2)
	$inilblscalterach2 = IniRead($setting, $section, "CoteH2", "Erreur")
	GUICtrlSetData($lblscalterach2, $inilblscalterach2)
	GUICtrlSetData($lblsctaillep, $inilblscalep)
	GUICtrlSetData($lblsctaillem, $inilblscalem)
	$inilblinterfaceoff = IniRead($setting, $section, "InterfaceOff", "Erreur")
	GUICtrlSetData($lblinterfaceoff, $inilblinterfaceoff)
	$inilblcontinueonexit = IniRead($setting, $section, "ContinueOnExit", "Erreur")
	GUICtrlSetData($lblcontinueonexit, $inilblcontinueonexit)
	$inilblsavesettings = IniRead($setting, $section, "SaveSettings", "Erreur")
	$inilanguegrp = IniRead($setting, $section, "Langage", "Erreur")
	GUICtrlSetData($languegrp, $inilanguegrp)
	GUICtrlSetData($lblsavesettings, $inilblsavesettings)
	GUICtrlSetData($launchprivategrp, $initabprive)
	GUICtrlSetData($lbllaunchraccourcisprivate, $inilblraccourcis)
	GUICtrlSetData($lbllaunchspeed, $inilblspeed)
	GUICtrlSetData($lbllaunchfly, $inilblflymod)
	GUICtrlSetData($lbllaunchwallclimbprivate, $inilblwallclimb)
	GUICtrlSetData($lbllaunchtrackprivate, $inigrplblpistage)
	GUICtrlSetData($lbllaunchxyzprivate, $inilblactiverxyz)
	GUICtrlSetData($lbllaunchsupersautprivate, $inilblsupersaut)
	GUICtrlSetData($launchofficielgrp, $initabofficiel)
	GUICtrlSetData($lbllaunchraccourcisofficiel, $inilblraccourcis)
	GUICtrlSetData($lbllaunchsupersautofficiel, $inilblsupersaut)
	GUICtrlSetData($lbllaunchwallclimbofficiel, $inilblwallclimb)
	GUICtrlSetData($lbllaunchtrackofficiel, $inigrplblpistage)
	GUICtrlSetData($lbllaunchxyzofficiel, $inilblactiverxyz)
	GUICtrlSetData($lblscspeedcustom, $inilblspeed & " =")
	$inilblscspeedflycustom = IniRead($setting, $section, "FlySpeedCustom", "Erreur")
	GUICtrlSetData($lblscspeedflycustom, $inilblscspeedflycustom)
EndFunc

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
	Global $liste = @ScriptDir & "\thhh_TPlist.ini"
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

Func reglageslancement()
	If IniRead($setting, "Reglages", "pspeed", "Erreur") = 1 Then
		GUICtrlSetState($launchspeed, $gui_checked)
		GUICtrlSetState($privespeedon, $gui_checked)
		speed()
	EndIf
	If IniRead($setting, "Reglages", "pflymod", "Erreur") = 1 Then
		GUICtrlSetState($launchfly, $gui_checked)
		GUICtrlSetState($priveflymodon, $gui_checked)
		flymod()
	EndIf
	If IniRead($setting, "Reglages", "pSupersaut", "Erreur") = 1 Then
		GUICtrlSetState($launchsupersautprivate, $gui_checked)
		GUICtrlSetState($privesupersauton, $gui_checked)
	EndIf
	If IniRead($setting, "Reglages", "oSupersaut", "Erreur") = 1 Then
		GUICtrlSetState($launchsupersautofficiel, $gui_checked)
		GUICtrlSetState($supersauton, $gui_checked)
	EndIf
	If IniRead($setting, "Reglages", "pXYZActivate", "Erreur") = 1 Then
		GUICtrlSetState($launchxyzprivate, $gui_checked)
		GUICtrlSetState($privexyzon, $gui_checked)
	EndIf
	If IniRead($setting, "Reglages", "pWallclimb", "Erreur") = 1 Then
		GUICtrlSetState($launchwallclimbprivate, $gui_checked)
		GUICtrlSetState($privewallclimbon, $gui_checked)
		privewallclimbfunc()
	EndIf
	If IniRead($setting, "Reglages", "oWallclimb", "Erreur") = 1 Then
		GUICtrlSetState($launchwallclimbofficiel, $gui_checked)
		GUICtrlSetState($wallclimbon, $gui_checked)
		wallclimbfunc()
	EndIf
	If IniRead($setting, "Reglages", "pNocooldown", "Erreur") = 1 Then
		GUICtrlSetState($launchnocd, $gui_checked)
		GUICtrlSetState($nocooldowncheck, $gui_checked)
		nocooldown()
	EndIf
	If IniRead($setting, "Reglages", "pRaccourcis", "Erreur") = 1 Then
		GUICtrlSetState($launchraccourcisprivate, $gui_checked)
		GUICtrlSetState($priveraccourcis, $gui_checked)
		assignscprivate()
	EndIf
	If IniRead($setting, "Reglages", "pclicktotp", "Erreur") = 1 Then
		GUICtrlSetState($launchclicktotp, $gui_checked)
		GUICtrlSetState($priveclicktp, $gui_checked)
	EndIf
	If IniRead($setting, "Reglages", "oXYZActivate", "Erreur") = 1 Then
		GUICtrlSetState($launchxyzofficiel, $gui_checked)
		GUICtrlSetState($tpon, $gui_checked)
	EndIf
	If IniRead($setting, "Reglages", "oXYZActivate", "Erreur") = 1 Then
		GUICtrlSetState($launchxyzofficiel, $gui_checked)
		GUICtrlSetState($tpon, $gui_checked)
	EndIf
	If IniRead($setting, "Reglages", "oRaccourcis", "Erreur") = 1 Then
		GUICtrlSetState($launchraccourcisofficiel, $gui_checked)
		GUICtrlSetState($raccourcis, $gui_checked)
		assignsc()
	EndIf
	If IniRead($setting, "Reglages", "ptrack", "Erreur") = 1 Then
		GUICtrlSetState($launchtrackprivate, $gui_checked)
		If IniRead($setting, "Reglages", "pRTout", "Erreur") = 1 Then
			GUICtrlSetState($privetrackallres, $gui_checked)
			privetrackallres()
		Else
			If IniRead($setting, "Reglages", "pHerbes", "Erreur") = 1 Then
				GUICtrlSetState($privetrackherbes, $gui_checked)
				privetrackherbes()
			EndIf
			If IniRead($setting, "Reglages", "pFilons", "Erreur") = 1 Then
				GUICtrlSetState($privetrackfilons, $gui_checked)
				privetrackfilons()
			EndIf
			If IniRead($setting, "Reglages", "pCoffres", "Erreur") = 1 Then
				GUICtrlSetState($privetrackcoffres, $gui_checked)
				privetrackcoffres()
			EndIf
			If IniRead($setting, "Reglages", "pPoissons", "Erreur") = 1 Then
				GUICtrlSetState($privetrackpoissons, $gui_checked)
				privetrackpoissons()
			EndIf
		EndIf
		If IniRead($setting, "Reglages", "pHTout", "Erreur") = 1 Then
			GUICtrlSetState($privetrackallbet, $gui_checked)
			privetrackallbet()
		Else
			If IniRead($setting, "Reglages", "pBetes", "Erreur") = 1 Then
				GUICtrlSetState($privetrackbetes, $gui_checked)
				privetrackbetes()
			EndIf
			If IniRead($setting, "Reglages", "pDragons", "Erreur") = 1 Then
				GUICtrlSetState($privetrackdragons, $gui_checked)
				privetrackdragons()
			EndIf
			If IniRead($setting, "Reglages", "pDemons", "Erreur") = 1 Then
				GUICtrlSetState($privetrackdemons, $gui_checked)
				privetrackdemons()
			EndIf
			If IniRead($setting, "Reglages", "pElementaires", "Erreur") = 1 Then
				GUICtrlSetState($privetrackelementaires, $gui_checked)
				privetrackelementaires()
			EndIf
			If IniRead($setting, "Reglages", "pGeants", "Erreur") = 1 Then
				GUICtrlSetState($privetrackgeants, $gui_checked)
				privetrackgeants()
			EndIf
			If IniRead($setting, "Reglages", "pMorts-vivants", "Erreur") = 1 Then
				GUICtrlSetState($privetrackmortsvivants, $gui_checked)
				privetrackmortsvivants()
			EndIf
			If IniRead($setting, "Reglages", "pHumanoides", "Erreur") = 1 Then
				GUICtrlSetState($privetrackhumanoides, $gui_checked)
				privetrackhumanoides()
			EndIf
			If IniRead($setting, "Reglages", "pBestioles", "Erreur") = 1 Then
				GUICtrlSetState($privetrackbestioles, $gui_checked)
				privetrackbestioles()
			EndIf
		EndIf
	EndIf
	If IniRead($setting, "Reglages", "otrack", "Erreur") = 1 Then
		GUICtrlSetState($launchtrackprivate, $gui_checked)
		If IniRead($setting, "Reglages", "oRTout", "Erreur") = 1 Then
			GUICtrlSetState($trackallres, $gui_checked)
			trackallres()
		Else
			If IniRead($setting, "Reglages", "oHerbes", "Erreur") = 1 Then
				GUICtrlSetState($trackherbes, $gui_checked)
				trackherbes()
			EndIf
			If IniRead($setting, "Reglages", "oFilons", "Erreur") = 1 Then
				GUICtrlSetState($trackfilons, $gui_checked)
				trackfilons()
			EndIf
			If IniRead($setting, "Reglages", "oCoffres", "Erreur") = 1 Then
				GUICtrlSetState($trackcoffres, $gui_checked)
				trackcoffres()
			EndIf
			If IniRead($setting, "Reglages", "oPoissons", "Erreur") = 1 Then
				GUICtrlSetState($trackpoissons, $gui_checked)
				trackpoissons()
			EndIf
		EndIf
		If IniRead($setting, "Reglages", "oHTout", "Erreur") = 1 Then
			GUICtrlSetState($trackallbet, $gui_checked)
			trackallbet()
		Else
			If IniRead($setting, "Reglages", "oBetes", "Erreur") = 1 Then
				GUICtrlSetState($trackbetes, $gui_checked)
				trackbetes()
			EndIf
			If IniRead($setting, "Reglages", "oDragons", "Erreur") = 1 Then
				GUICtrlSetState($trackdragons, $gui_checked)
				trackdragons()
			EndIf
			If IniRead($setting, "Reglages", "oDemons", "Erreur") = 1 Then
				GUICtrlSetState($trackdemons, $gui_checked)
				trackdemons()
			EndIf
			If IniRead($setting, "Reglages", "oElementaires", "Erreur") = 1 Then
				GUICtrlSetState($trackelementaires, $gui_checked)
				trackelementaires()
			EndIf
			If IniRead($setting, "Reglages", "oGeants", "Erreur") = 1 Then
				GUICtrlSetState($trackgeants, $gui_checked)
				trackgeants()
			EndIf
			If IniRead($setting, "Reglages", "oMorts-vivants", "Erreur") = 1 Then
				GUICtrlSetState($trackmortsvivants, $gui_checked)
				trackmortsvivants()
			EndIf
			If IniRead($setting, "Reglages", "oHumanoides", "Erreur") = 1 Then
				GUICtrlSetState($trackhumanoides, $gui_checked)
				trackhumanoides()
			EndIf
			If IniRead($setting, "Reglages", "oBestioles", "Erreur") = 1 Then
				GUICtrlSetState($trackbestioles, $gui_checked)
				trackbestioles()
			EndIf
		EndIf
	EndIf
EndFunc

Func enablesettingchoice()
	GUICtrlSetState($launchspeed, $gui_enable)
	GUICtrlSetState($launchfly, $gui_enable)
	GUICtrlSetState($launchwallclimbprivate, $gui_enable)
	GUICtrlSetState($launchnocd, $gui_enable)
	GUICtrlSetState($launchraccourcisprivate, $gui_enable)
	GUICtrlSetState($launchsupersautprivate, $gui_enable)
	GUICtrlSetState($launchtrackprivate, $gui_enable)
	GUICtrlSetState($launchclicktotp, $gui_enable)
	GUICtrlSetState($launchxyzprivate, $gui_enable)
	GUICtrlSetState($launchsupersautofficiel, $gui_enable)
	GUICtrlSetState($launchwallclimbofficiel, $gui_enable)
	GUICtrlSetState($launchtrackofficiel, $gui_enable)
	GUICtrlSetState($launchxyzofficiel, $gui_enable)
	GUICtrlSetState($launchraccourcisofficiel, $gui_enable)
EndFunc

Func disablesettingchoice()
	GUICtrlSetState($launchspeed, $gui_disable)
	GUICtrlSetState($launchfly, $gui_disable)
	GUICtrlSetState($launchwallclimbprivate, $gui_disable)
	GUICtrlSetState($launchnocd, $gui_disable)
	GUICtrlSetState($launchraccourcisprivate, $gui_disable)
	GUICtrlSetState($launchsupersautprivate, $gui_disable)
	GUICtrlSetState($launchtrackprivate, $gui_disable)
	GUICtrlSetState($launchclicktotp, $gui_disable)
	GUICtrlSetState($launchxyzprivate, $gui_disable)
	GUICtrlSetState($launchsupersautofficiel, $gui_disable)
	GUICtrlSetState($launchwallclimbofficiel, $gui_disable)
	GUICtrlSetState($launchtrackofficiel, $gui_disable)
	GUICtrlSetState($launchxyzofficiel, $gui_disable)
	GUICtrlSetState($launchraccourcisofficiel, $gui_disable)
EndFunc

Func savevalues()
	IniWrite($setting, "Reglages", "pspeed", GUICtrlRead($launchspeed))
	IniWrite($setting, "Reglages", "pflymod", GUICtrlRead($launchfly))
	IniWrite($setting, "Reglages", "pWallclimb", GUICtrlRead($launchwallclimbprivate))
	IniWrite($setting, "Reglages", "pNocooldown", GUICtrlRead($launchnocd))
	IniWrite($setting, "Reglages", "pRaccourcis", GUICtrlRead($launchraccourcisprivate))
	IniWrite($setting, "Reglages", "pSupersaut", GUICtrlRead($launchsupersautprivate))
	IniWrite($setting, "Reglages", "ptrack", GUICtrlRead($launchtrackprivate))
	IniWrite($setting, "Reglages", "pclicktotp", GUICtrlRead($launchclicktotp))
	IniWrite($setting, "Reglages", "pXYZActivate", GUICtrlRead($launchxyzprivate))
	IniWrite($setting, "Reglages", "oSupersaut", GUICtrlRead($launchsupersautofficiel))
	IniWrite($setting, "Reglages", "oWallclimb", GUICtrlRead($launchwallclimbofficiel))
	IniWrite($setting, "Reglages", "otrack", GUICtrlRead($launchtrackofficiel))
	IniWrite($setting, "Reglages", "oXYZActivate", GUICtrlRead($launchxyzofficiel))
	IniWrite($setting, "Reglages", "oRaccourcis", GUICtrlRead($launchraccourcisofficiel))
	IniWrite($setting, "Reglages", "pHerbes", GUICtrlRead($privetrackherbes))
	IniWrite($setting, "Reglages", "pFilons", GUICtrlRead($privetrackfilons))
	IniWrite($setting, "Reglages", "pCoffres", GUICtrlRead($privetrackcoffres))
	IniWrite($setting, "Reglages", "pPoissons", GUICtrlRead($privetrackpoissons))
	IniWrite($setting, "Reglages", "pRTout", GUICtrlRead($privetrackallres))
	IniWrite($setting, "Reglages", "pBetes", GUICtrlRead($privetrackbetes))
	IniWrite($setting, "Reglages", "pDragons", GUICtrlRead($privetrackdragons))
	IniWrite($setting, "Reglages", "pDemons", GUICtrlRead($privetrackdemons))
	IniWrite($setting, "Reglages", "pElementaires", GUICtrlRead($privetrackelementaires))
	IniWrite($setting, "Reglages", "pGeants", GUICtrlRead($privetrackgeants))
	IniWrite($setting, "Reglages", "pMorts-vivants", GUICtrlRead($privetrackmortsvivants))
	IniWrite($setting, "Reglages", "pHumanoides", GUICtrlRead($privetrackhumanoides))
	IniWrite($setting, "Reglages", "pBestioles", GUICtrlRead($privetrackbestioles))
	IniWrite($setting, "Reglages", "pHTout", GUICtrlRead($privetrackallbet))
	IniWrite($setting, "Reglages", "oHerbes", GUICtrlRead($trackherbes))
	IniWrite($setting, "Reglages", "oFilons", GUICtrlRead($trackfilons))
	IniWrite($setting, "Reglages", "oCoffres", GUICtrlRead($trackcoffres))
	IniWrite($setting, "Reglages", "oPoissons", GUICtrlRead($trackpoissons))
	IniWrite($setting, "Reglages", "oRTout", GUICtrlRead($trackallres))
	IniWrite($setting, "Reglages", "oBetes", GUICtrlRead($trackbetes))
	IniWrite($setting, "Reglages", "oDragons", GUICtrlRead($trackdragons))
	IniWrite($setting, "Reglages", "oDemons", GUICtrlRead($trackdemons))
	IniWrite($setting, "Reglages", "oElementaires", GUICtrlRead($trackelementaires))
	IniWrite($setting, "Reglages", "oGeants", GUICtrlRead($trackgeants))
	IniWrite($setting, "Reglages", "oMorts-vivants", GUICtrlRead($trackmortsvivants))
	IniWrite($setting, "Reglages", "oHumanoides", GUICtrlRead($trackhumanoides))
	IniWrite($setting, "Reglages", "oBestioles", GUICtrlRead($trackbestioles))
	IniWrite($setting, "Reglages", "oHTout", GUICtrlRead($trackallbet))
EndFunc

Func _memorywritegcd($iv_address, $ah_handle, $sv_type, $subj)
	If NOT IsArray($ah_handle) Then
		SetError(1)
		Return 0
	EndIf
	Local $v_buffer = DllStructCreate($sv_type)
	If @error Then
		SetError(@error + 1)
		Return 0
	EndIf
	DllStructSetData($v_buffer, 1, $subj)
	DllCall($ah_handle[0], "int", "WriteProcessMemory", "int", $ah_handle[1], "int", $iv_address, "ptr", DllStructGetPtr($v_buffer), "int", DllStructGetSize($v_buffer), "int", "")
	If NOT @error Then
		Return -1
	Else
		SetError(6)
		Return 0
	EndIf
EndFunc

Global Const $bs_groupbox = 7
Global Const $bs_bottom = 2048
Global Const $bs_center = 768
Global Const $bs_defpushbutton = 1
Global Const $bs_left = 256
Global Const $bs_multiline = 8192
Global Const $bs_pushbox = 10
Global Const $bs_pushlike = 4096
Global Const $bs_right = 512
Global Const $bs_rightbutton = 32
Global Const $bs_top = 1024
Global Const $bs_vcenter = 3072
Global Const $bs_flat = 32768
Global Const $bs_icon = 64
Global Const $bs_bitmap = 128
Global Const $bs_notify = 16384
Global Const $bs_splitbutton = 12
Global Const $bs_defsplitbutton = 13
Global Const $bs_commandlink = 14
Global Const $bs_defcommandlink = 15
Global Const $bcsif_glyph = 1
Global Const $bcsif_image = 2
Global Const $bcsif_style = 4
Global Const $bcsif_size = 8
Global Const $bcss_nosplit = 1
Global Const $bcss_stretch = 2
Global Const $bcss_alignleft = 4
Global Const $bcss_image = 8
Global Const $button_imagelist_align_left = 0
Global Const $button_imagelist_align_right = 1
Global Const $button_imagelist_align_top = 2
Global Const $button_imagelist_align_bottom = 3
Global Const $button_imagelist_align_center = 4
Global Const $bs_3state = 5
Global Const $bs_auto3state = 6
Global Const $bs_autocheckbox = 3
Global Const $bs_checkbox = 2
Global Const $bs_radiobutton = 4
Global Const $bs_autoradiobutton = 9
Global Const $bs_ownerdraw = 11
Global Const $gui_ss_default_button = 0
Global Const $gui_ss_default_checkbox = 0
Global Const $gui_ss_default_group = 0
Global Const $gui_ss_default_radio = 0
Global Const $bcm_first = 5632
Global Const $bcm_getidealsize = ($bcm_first + 1)
Global Const $bcm_getimagelist = ($bcm_first + 3)
Global Const $bcm_getnote = ($bcm_first + 10)
Global Const $bcm_getnotelength = ($bcm_first + 11)
Global Const $bcm_getsplitinfo = ($bcm_first + 8)
Global Const $bcm_gettextmargin = ($bcm_first + 5)
Global Const $bcm_setdropdownstate = ($bcm_first + 6)
Global Const $bcm_setimagelist = ($bcm_first + 2)
Global Const $bcm_setnote = ($bcm_first + 9)
Global Const $bcm_setshield = ($bcm_first + 12)
Global Const $bcm_setsplitinfo = ($bcm_first + 7)
Global Const $bcm_settextmargin = ($bcm_first + 4)
Global Const $bm_click = 245
Global Const $bm_getcheck = 240
Global Const $bm_getimage = 246
Global Const $bm_getstate = 242
Global Const $bm_setcheck = 241
Global Const $bm_setdontclick = 248
Global Const $bm_setimage = 247
Global Const $bm_setstate = 243
Global Const $bm_setstyle = 244
Global Const $bcn_first = -1250
Global Const $bcn_dropdown = ($bcn_first + 2)
Global Const $bcn_hotitemchange = ($bcn_first + 1)
Global Const $bn_clicked = 0
Global Const $bn_paint = 1
Global Const $bn_hilite = 2
Global Const $bn_unhilite = 3
Global Const $bn_disable = 4
Global Const $bn_doubleclicked = 5
Global Const $bn_setfocus = 6
Global Const $bn_killfocus = 7
Global Const $bn_pushed = $bn_hilite
Global Const $bn_unpushed = $bn_unhilite
Global Const $bn_dblclk = $bn_doubleclicked
Global Const $bst_checked = 1
Global Const $bst_indeterminate = 2
Global Const $bst_unchecked = 0
Global Const $bst_focus = 8
Global Const $bst_pushed = 4
Global Const $bst_dontclick = 128
Global Const $gui_event_close = -3
Global Const $gui_event_minimize = -4
Global Const $gui_event_restore = -5
Global Const $gui_event_maximize = -6
Global Const $gui_event_primarydown = -7
Global Const $gui_event_primaryup = -8
Global Const $gui_event_secondarydown = -9
Global Const $gui_event_secondaryup = -10
Global Const $gui_event_mousemove = -11
Global Const $gui_event_resized = -12
Global Const $gui_event_dropped = -13
Global Const $gui_rundefmsg = "GUI_RUNDEFMSG"
Global Const $gui_avistop = 0
Global Const $gui_avistart = 1
Global Const $gui_aviclose = 2
Global Const $gui_checked = 1
Global Const $gui_indeterminate = 2
Global Const $gui_unchecked = 4
Global Const $gui_dropaccepted = 8
Global Const $gui_nodropaccepted = 4096
Global Const $gui_acceptfiles = $gui_dropaccepted
Global Const $gui_show = 16
Global Const $gui_hide = 32
Global Const $gui_enable = 64
Global Const $gui_disable = 128
Global Const $gui_focus = 256
Global Const $gui_nofocus = 8192
Global Const $gui_defbutton = 512
Global Const $gui_expand = 1024
Global Const $gui_ontop = 2048
Global Const $gui_fontitalic = 2
Global Const $gui_fontunder = 4
Global Const $gui_fontstrike = 8
Global Const $gui_dockauto = 1
Global Const $gui_dockleft = 2
Global Const $gui_dockright = 4
Global Const $gui_dockhcenter = 8
Global Const $gui_docktop = 32
Global Const $gui_dockbottom = 64
Global Const $gui_dockvcenter = 128
Global Const $gui_dockwidth = 256
Global Const $gui_dockheight = 512
Global Const $gui_docksize = 768
Global Const $gui_dockmenubar = 544
Global Const $gui_dockstatebar = 576
Global Const $gui_dockall = 802
Global Const $gui_dockborders = 102
Global Const $gui_gr_close = 1
Global Const $gui_gr_line = 2
Global Const $gui_gr_bezier = 4
Global Const $gui_gr_move = 6
Global Const $gui_gr_color = 8
Global Const $gui_gr_rect = 10
Global Const $gui_gr_ellipse = 12
Global Const $gui_gr_pie = 14
Global Const $gui_gr_dot = 16
Global Const $gui_gr_pixel = 18
Global Const $gui_gr_hint = 20
Global Const $gui_gr_refresh = 22
Global Const $gui_gr_pensize = 24
Global Const $gui_gr_nobkcolor = -2
Global Const $gui_bkcolor_default = -1
Global Const $gui_bkcolor_transparent = -2
Global Const $gui_bkcolor_lv_alternate = -33554432
Global Const $gui_ws_ex_parentdrag = 1048576
Global Const $cb_err = -1
Global Const $cb_errattribute = -3
Global Const $cb_errrequired = -4
Global Const $cb_errspace = -2
Global Const $cb_okay = 0
Global Const $state_system_invisible = 32768
Global Const $state_system_pressed = 8
Global Const $cbs_autohscroll = 64
Global Const $cbs_disablenoscroll = 2048
Global Const $cbs_dropdown = 2
Global Const $cbs_dropdownlist = 3
Global Const $cbs_hasstrings = 512
Global Const $cbs_lowercase = 16384
Global Const $cbs_nointegralheight = 1024
Global Const $cbs_oemconvert = 128
Global Const $cbs_ownerdrawfixed = 16
Global Const $cbs_ownerdrawvariable = 32
Global Const $cbs_simple = 1
Global Const $cbs_sort = 256
Global Const $cbs_uppercase = 8192
Global Const $cbm_first = 5888
Global Const $cb_addstring = 323
Global Const $cb_deletestring = 324
Global Const $cb_dir = 325
Global Const $cb_findstring = 332
Global Const $cb_findstringexact = 344
Global Const $cb_getcomboboxinfo = 356
Global Const $cb_getcount = 326
Global Const $cb_getcuebanner = ($cbm_first + 4)
Global Const $cb_getcursel = 327
Global Const $cb_getdroppedcontrolrect = 338
Global Const $cb_getdroppedstate = 343
Global Const $cb_getdroppedwidth = 351
Global Const $cb_geteditsel = 320
Global Const $cb_getextendedui = 342
Global Const $cb_gethorizontalextent = 349
Global Const $cb_getitemdata = 336
Global Const $cb_getitemheight = 340
Global Const $cb_getlbtext = 328
Global Const $cb_getlbtextlen = 329
Global Const $cb_getlocale = 346
Global Const $cb_getminvisible = 5890
Global Const $cb_gettopindex = 347
Global Const $cb_initstorage = 353
Global Const $cb_limittext = 321
Global Const $cb_resetcontent = 331
Global Const $cb_insertstring = 330
Global Const $cb_selectstring = 333
Global Const $cb_setcuebanner = ($cbm_first + 3)
Global Const $cb_setcursel = 334
Global Const $cb_setdroppedwidth = 352
Global Const $cb_seteditsel = 322
Global Const $cb_setextendedui = 341
Global Const $cb_sethorizontalextent = 350
Global Const $cb_setitemdata = 337
Global Const $cb_setitemheight = 339
Global Const $cb_setlocale = 345
Global Const $cb_setminvisible = 5889
Global Const $cb_settopindex = 348
Global Const $cb_showdropdown = 335
Global Const $cbn_closeup = 8
Global Const $cbn_dblclk = 2
Global Const $cbn_dropdown = 7
Global Const $cbn_editchange = 5
Global Const $cbn_editupdate = 6
Global Const $cbn_errspace = (-1)
Global Const $cbn_killfocus = 4
Global Const $cbn_selchange = 1
Global Const $cbn_selendcancel = 10
Global Const $cbn_selendok = 9
Global Const $cbn_setfocus = 3
Global Const $cbes_ex_casesensitive = 16
Global Const $cbes_ex_noeditimage = 1
Global Const $cbes_ex_noeditimageindent = 2
Global Const $cbes_ex_nosizelimit = 8
Global Const $cbes_ex_pathwordbreakproc = 4
Global Const $__comboboxconstant_wm_user = 1024
Global Const $cbem_deleteitem = $cb_deletestring
Global Const $cbem_getcombocontrol = ($__comboboxconstant_wm_user + 6)
Global Const $cbem_geteditcontrol = ($__comboboxconstant_wm_user + 7)
Global Const $cbem_getexstyle = ($__comboboxconstant_wm_user + 9)
Global Const $cbem_getextendedstyle = ($__comboboxconstant_wm_user + 9)
Global Const $cbem_getimagelist = ($__comboboxconstant_wm_user + 3)
Global Const $cbem_getitema = ($__comboboxconstant_wm_user + 4)
Global Const $cbem_getitemw = ($__comboboxconstant_wm_user + 13)
Global Const $cbem_getunicodeformat = 8192 + 6
Global Const $cbem_haseditchanged = ($__comboboxconstant_wm_user + 10)
Global Const $cbem_insertitema = ($__comboboxconstant_wm_user + 1)
Global Const $cbem_insertitemw = ($__comboboxconstant_wm_user + 11)
Global Const $cbem_setexstyle = ($__comboboxconstant_wm_user + 8)
Global Const $cbem_setextendedstyle = ($__comboboxconstant_wm_user + 14)
Global Const $cbem_setimagelist = ($__comboboxconstant_wm_user + 2)
Global Const $cbem_setitema = ($__comboboxconstant_wm_user + 5)
Global Const $cbem_setitemw = ($__comboboxconstant_wm_user + 12)
Global Const $cbem_setunicodeformat = 8192 + 5
Global Const $cbem_setwindowtheme = 8192 + 11
Global Const $cben_first = (-800)
Global Const $cben_last = (-830)
Global Const $cben_beginedit = ($cben_first - 4)
Global Const $cben_deleteitem = ($cben_first - 2)
Global Const $cben_dragbegina = ($cben_first - 8)
Global Const $cben_dragbeginw = ($cben_first - 9)
Global Const $cben_endedita = ($cben_first - 5)
Global Const $cben_endeditw = ($cben_first - 6)
Global Const $cben_getdispinfo = ($cben_first - 0)
Global Const $cben_getdispinfoa = ($cben_first - 0)
Global Const $cben_getdispinfow = ($cben_first - 7)
Global Const $cben_insertitem = ($cben_first - 1)
Global Const $cbeif_di_setitem = 268435456
Global Const $cbeif_image = 2
Global Const $cbeif_indent = 16
Global Const $cbeif_lparam = 32
Global Const $cbeif_overlay = 8
Global Const $cbeif_selectedimage = 4
Global Const $cbeif_text = 1
Global Const $__comboboxconstant_ws_vscroll = 2097152
Global Const $gui_ss_default_combo = BitOR($cbs_dropdown, $cbs_autohscroll, $__comboboxconstant_ws_vscroll)
Global Const $ddl_archive = 32
Global Const $ddl_directory = 16
Global Const $ddl_drives = 16384
Global Const $ddl_exclusive = 32768
Global Const $ddl_hidden = 2
Global Const $ddl_readonly = 1
Global Const $ddl_readwrite = 0
Global Const $ddl_system = 4
Global Const $tagpoint = "long X;long Y"
Global Const $tagrect = "long Left;long Top;long Right;long Bottom"
Global Const $tagsize = "long X;long Y"
Global Const $tagmargins = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagfiletime = "dword Lo;dword Hi"
Global Const $tagsystemtime = "word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds"
Global Const $tagtime_zone_information = "long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias"
Global Const $tagnmhdr = "hwnd hWndFrom;uint_ptr IDFrom;INT Code"
Global Const $tagcomboboxexitem = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $tagnmcbedragbegin = $tagnmhdr & ";int ItemID;ptr szText"
Global Const $tagnmcbeendedit = $tagnmhdr & ";bool fChanged;int NewSelection;ptr szText;int Why"
Global Const $tagnmcomboboxex = $tagnmhdr & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagdtprange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagnmdatetimechange = $tagnmhdr & ";dword Flag;" & $tagsystemtime
Global Const $tagnmdatetimeformat = $tagnmhdr & ";ptr Format;" & $tagsystemtime & ";ptr pDisplay;wchar Display[64]"
Global Const $tagnmdatetimeformatquery = $tagnmhdr & ";ptr Format;long SizeX;long SizeY"
Global Const $tagnmdatetimekeydown = $tagnmhdr & ";int VirtKey;ptr Format;" & $tagsystemtime
Global Const $tagnmdatetimestring = $tagnmhdr & ";ptr UserString;" & $tagsystemtime & ";dword Flags"
Global Const $tageventlogrecord = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $taggdipbitmapdata = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $taggdipencoderparam = "byte GUID[16];dword Count;dword Type;ptr Values"
Global Const $taggdipencoderparams = "dword Count;byte Params[0]"
Global Const $taggdiprectf = "float X;float Y;float Width;float Height"
Global Const $taggdipstartupinput = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $taggdipstartupoutput = "ptr HookProc;ptr UnhookProc"
Global Const $taggdipimagecodecinfo = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $taggdippencoderparams = "dword Count;byte Params[0]"
Global Const $taghditem = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagnmhddispinfo = $tagnmhdr & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagnmhdfilterbtnclick = $tagnmhdr & ";int Item;" & $tagrect
Global Const $tagnmheader = $tagnmhdr & ";int Item;int Button;ptr pItem"
Global Const $taggetipaddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagnmipaddress = $tagnmhdr & ";int Field;int Value"
Global Const $taglvfindinfo = "uint Flags;ptr Text;lparam Param;" & $tagpoint & ";uint Direction"
Global Const $taglvhittestinfo = $tagpoint & ";uint Flags;int Item;int SubItem"
Global Const $taglvitem = "uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns"
Global Const $tagnmlistview = $tagnmhdr & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "long ActionX;long ActionY;lparam Param"
Global Const $tagnmlvcustomdraw = $tagnmhdr & ";dword dwDrawStage;handle hdc;long Left;long Top;long Right;long Bottom;" & "dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartId;int iStateId;long TextLeft;long TextTop;long TextRight;long TextBottom;uint uAlign"
Global Const $tagnmlvdispinfo = $tagnmhdr & ";" & $taglvitem
Global Const $tagnmlvfinditem = $tagnmhdr & ";" & $taglvfindinfo
Global Const $tagnmlvgetinfotip = $tagnmhdr & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagnmitemactivate = $tagnmhdr & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $tagpoint & ";lparam lParam;uint KeyFlags"
Global Const $tagnmlvkeydown = $tagnmhdr & ";align 1;word VKey;uint Flags"
Global Const $tagnmlvscroll = $tagnmhdr & ";int DX;int DY"
Global Const $tagmchittestinfo = "uint Size;" & $tagpoint & ";uint Hit;" & $tagsystemtime
Global Const $tagmcmonthrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $tagmcrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagmcselrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $tagnmdaystate = $tagnmhdr & ";" & $tagsystemtime & ";int DayState;ptr pDayState"
Global Const $tagnmselchange = $tagnmhdr & ";word BegYear;word BegMonth;word BegDOW;word BegDay;" & "word BegHour;word BegMinute;word BegSecond;word BegMSeconds;word EndYear;word EndMonth;word EndDOW;" & "word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds"
Global Const $tagnmobjectnotify = $tagnmhdr & ";int Item;ptr piid;ptr pObject;long Result"
Global Const $tagnmtckeydown = $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagtvitem = "uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param"
Global Const $tagtvitemex = $tagtvitem & ";int Integral"
Global Const $tagnmtreeview = $tagnmhdr & ";uint Action;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint NewMask;handle NewhItem;" & "uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;" & "lparam NewParam;long PointX;long PointY"
Global Const $tagnmtvcustomdraw = $tagnmhdr & ";dword DrawStage;handle HDC;long Left;long Top;long Right;long Bottom;" & "dword_ptr ItemSpec;uint ItemState;lparam ItemParam;dword ClrText;dword ClrTextBk;int Level"
Global Const $tagnmtvdispinfo = $tagnmhdr & ";" & $tagtvitem
Global Const $tagnmtvgetinfotip = $tagnmhdr & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagtvhittestinfo = $tagpoint & ";uint Flags;handle Item"
Global Const $tagnmtvkeydown = $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagnmmouse = $tagnmhdr & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagpoint & ";lparam HitInfo"
Global Const $tagtoken_privileges = "dword Count;int64 LUID;dword Attributes"
Global Const $tagimageinfo = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagrect
Global Const $tagmenuinfo = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagmenuiteminfo = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagrebarbandinfo = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader"
Global Const $tagnmrebarautobreak = $tagnmhdr & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagnmrbautosize = $tagnmhdr & ";bool fChanged;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;" & "long ActualLeft;long ActualTop;long ActualRight;long ActualBottom"
Global Const $tagnmrebar = $tagnmhdr & ";dword dwMask;uint uBand;uint fStyle;uint wID;laram lParam"
Global Const $tagnmrebarchevron = $tagnmhdr & ";uint uBand;uint wID;lparam lParam;" & $tagrect & ";lparam lParamNM"
Global Const $tagnmrebarchildsize = $tagnmhdr & ";uint uBand;uint wID;long CLeft;long CTop;long CRight;long CBottom;" & "long BLeft;long BTop;long BRight;long BBottom"
Global Const $tagcolorscheme = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagnmtoolbar = $tagnmhdr & ";int iItem;" & "int iBitmap;int idCommand;byte fsState;byte fsStyle;align;dword_ptr dwData;int_ptr iString" & ";int cchText;ptr pszText;" & $tagrect
Global Const $tagnmtbhotitem = $tagnmhdr & ";int idOld;int idNew;dword dwFlags"
Global Const $tagtbbutton = "int Bitmap;int Command;byte State;byte Style;align;dword_ptr Param;int_ptr String"
Global Const $tagtbbuttoninfo = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagnetresource = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagoverlapped = "ulong_ptr Internal;ulong_ptr InternalHigh;dword Offset;dword OffsetHigh;handle hEvent"
Global Const $tagopenfilename = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagbitmapinfo = "dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;" & "long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;dword RGBQuad"
Global Const $tagblendfunction = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagguid = "dword Data1;word Data2;word Data3;byte Data4[8]"
Global Const $tagwindowplacement = "uint length; uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagwindowpos = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagscrollinfo = "uint cbSize;uint fMask;int  nMin;int  nMax;uint nPage;int  nPos;int  nTrackPos"
Global Const $tagscrollbarinfo = "dword cbSize;" & $tagrect & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $taglogfont = "long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32]"
Global Const $tagkbdllhookstruct = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagprocess_information = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagstartupinfo = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $tagsecurity_attributes = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagwin32_find_data = "dword dwFileAttributes; dword ftCreationTime[2]; dword ftLastAccessTime[2]; dword ftLastWriteTime[2]; dword nFileSizeHigh; dword nFileSizeLow; dword dwReserved0; dword dwReserved1; wchar cFileName[260]; wchar cAlternateFileName[14]"
Global Const $fc_nooverwrite = 0
Global Const $fc_overwrite = 1
Global Const $ft_modified = 0
Global Const $ft_created = 1
Global Const $ft_accessed = 2
Global Const $fo_read = 0
Global Const $fo_append = 1
Global Const $fo_overwrite = 2
Global Const $fo_binary = 16
Global Const $fo_unicode = 32
Global Const $fo_utf16_le = 32
Global Const $fo_utf16_be = 64
Global Const $fo_utf8 = 128
Global Const $fo_utf8_nobom = 256
Global Const $eof = -1
Global Const $fd_filemustexist = 1
Global Const $fd_pathmustexist = 2
Global Const $fd_multiselect = 4
Global Const $fd_promptcreatenew = 8
Global Const $fd_promptoverwrite = 16
Global Const $create_new = 1
Global Const $create_always = 2
Global Const $open_existing = 3
Global Const $open_always = 4
Global Const $truncate_existing = 5
Global Const $invalid_set_file_pointer = -1
Global Const $file_begin = 0
Global Const $file_current = 1
Global Const $file_end = 2
Global Const $file_attribute_readonly = 1
Global Const $file_attribute_hidden = 2
Global Const $file_attribute_system = 4
Global Const $file_attribute_directory = 16
Global Const $file_attribute_archive = 32
Global Const $file_attribute_device = 64
Global Const $file_attribute_normal = 128
Global Const $file_attribute_temporary = 256
Global Const $file_attribute_sparse_file = 512
Global Const $file_attribute_reparse_point = 1024
Global Const $file_attribute_compressed = 2048
Global Const $file_attribute_offline = 4096
Global Const $file_attribute_not_content_indexed = 8192
Global Const $file_attribute_encrypted = 16384
Global Const $file_share_read = 1
Global Const $file_share_write = 2
Global Const $file_share_delete = 4
Global Const $generic_all = 268435456
Global Const $generic_execute = 536870912
Global Const $generic_write = 1073741824
Global Const $generic_read = -2147483648
Global Const $error_no_token = 1008
Global Const $se_assignprimarytoken_name = "SeAssignPrimaryTokenPrivilege"
Global Const $se_audit_name = "SeAuditPrivilege"
Global Const $se_backup_name = "SeBackupPrivilege"
Global Const $se_change_notify_name = "SeChangeNotifyPrivilege"
Global Const $se_create_global_name = "SeCreateGlobalPrivilege"
Global Const $se_create_pagefile_name = "SeCreatePagefilePrivilege"
Global Const $se_create_permanent_name = "SeCreatePermanentPrivilege"
Global Const $se_create_token_name = "SeCreateTokenPrivilege"
Global Const $se_debug_name = "SeDebugPrivilege"
Global Const $se_enable_delegation_name = "SeEnableDelegationPrivilege"
Global Const $se_impersonate_name = "SeImpersonatePrivilege"
Global Const $se_inc_base_priority_name = "SeIncreaseBasePriorityPrivilege"
Global Const $se_increase_quota_name = "SeIncreaseQuotaPrivilege"
Global Const $se_load_driver_name = "SeLoadDriverPrivilege"
Global Const $se_lock_memory_name = "SeLockMemoryPrivilege"
Global Const $se_machine_account_name = "SeMachineAccountPrivilege"
Global Const $se_manage_volume_name = "SeManageVolumePrivilege"
Global Const $se_prof_single_process_name = "SeProfileSingleProcessPrivilege"
Global Const $se_remote_shutdown_name = "SeRemoteShutdownPrivilege"
Global Const $se_restore_name = "SeRestorePrivilege"
Global Const $se_security_name = "SeSecurityPrivilege"
Global Const $se_shutdown_name = "SeShutdownPrivilege"
Global Const $se_sync_agent_name = "SeSyncAgentPrivilege"
Global Const $se_system_environment_name = "SeSystemEnvironmentPrivilege"
Global Const $se_system_profile_name = "SeSystemProfilePrivilege"
Global Const $se_systemtime_name = "SeSystemtimePrivilege"
Global Const $se_take_ownership_name = "SeTakeOwnershipPrivilege"
Global Const $se_tcb_name = "SeTcbPrivilege"
Global Const $se_unsolicited_input_name = "SeUnsolicitedInputPrivilege"
Global Const $se_undock_name = "SeUndockPrivilege"
Global Const $se_privilege_enabled_by_default = 1
Global Const $se_privilege_enabled = 2
Global Const $se_privilege_removed = 4
Global Const $se_privilege_used_for_access = -2147483648
Global Const $tokenuser = 1
Global Const $tokengroups = 2
Global Const $tokenprivileges = 3
Global Const $tokenowner = 4
Global Const $tokenprimarygroup = 5
Global Const $tokendefaultdacl = 6
Global Const $tokensource = 7
Global Const $tokentype = 8
Global Const $tokenimpersonationlevel = 9
Global Const $tokenstatistics = 10
Global Const $tokenrestrictedsids = 11
Global Const $tokensessionid = 12
Global Const $tokengroupsandprivileges = 13
Global Const $tokensessionreference = 14
Global Const $tokensandboxinert = 15
Global Const $tokenauditpolicy = 16
Global Const $tokenorigin = 17
Global Const $tokenelevationtype = 18
Global Const $tokenlinkedtoken = 19
Global Const $tokenelevation = 20
Global Const $tokenhasrestrictions = 21
Global Const $tokenaccessinformation = 22
Global Const $tokenvirtualizationallowed = 23
Global Const $tokenvirtualizationenabled = 24
Global Const $tokenintegritylevel = 25
Global Const $tokenuiaccess = 26
Global Const $tokenmandatorypolicy = 27
Global Const $tokenlogonsid = 28
Global Const $token_assign_primary = 1
Global Const $token_duplicate = 2
Global Const $token_impersonate = 4
Global Const $token_query = 8
Global Const $token_query_source = 16
Global Const $token_adjust_privileges = 32
Global Const $token_adjust_groups = 64
Global Const $token_adjust_default = 128
Global Const $token_adjust_sessionid = 256

Func _winapi_getlasterror($curerr = @error, $curext = @extended)
	Local $aresult = DllCall("kernel32.dll", "dword", "GetLastError")
	Return SetError($curerr, $curext, $aresult[0])
EndFunc

Func _winapi_setlasterror($ierrcode, $curerr = @error, $curext = @extended)
	DllCall("kernel32.dll", "none", "SetLastError", "dword", $ierrcode)
	Return SetError($curerr, $curext)
EndFunc

Func _security__adjusttokenprivileges($htoken, $fdisableall, $pnewstate, $ibufferlen, $pprevstate = 0, $prequired = 0)
	Local $aresult = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $htoken, "bool", $fdisableall, "ptr", $pnewstate, "dword", $ibufferlen, "ptr", $pprevstate, "ptr", $prequired)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _security__getaccountsid($saccount, $ssystem = "")
	Local $aacct = _security__lookupaccountname($saccount, $ssystem)
	If @error Then Return SetError(@error, 0, 0)
	Return _security__stringsidtosid($aacct[0])
EndFunc

Func _security__getlengthsid($psid)
	If NOT _security__isvalidsid($psid) Then Return SetError(-1, 0, 0)
	Local $aresult = DllCall("advapi32.dll", "dword", "GetLengthSid", "ptr", $psid)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _security__gettokeninformation($htoken, $iclass)
	Local $aresult = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $htoken, "int", $iclass, "ptr", 0, "dword", 0, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If NOT $aresult[0] Then Return 0
	Local $tbuffer = DllStructCreate("byte[" & $aresult[5] & "]")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	$aresult = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $htoken, "int", $iclass, "ptr", $pbuffer, "dword", $aresult[5], "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If NOT $aresult[0] Then Return 0
	Return $tbuffer
EndFunc

Func _security__impersonateself($ilevel = 2)
	Local $aresult = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $ilevel)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _security__isvalidsid($psid)
	Local $aresult = DllCall("advapi32.dll", "bool", "IsValidSid", "ptr", $psid)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _security__lookupaccountname($saccount, $ssystem = "")
	Local $tdata = DllStructCreate("byte SID[256]")
	Local $psid = DllStructGetPtr($tdata, "SID")
	Local $aresult = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $ssystem, "wstr", $saccount, "ptr", $psid, "dword*", 256, "wstr", "", "dword*", 256, "int*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If NOT $aresult[0] Then Return 0
	Local $aacct[3]
	$aacct[0] = _security__sidtostringsid($psid)
	$aacct[1] = $aresult[5]
	$aacct[2] = $aresult[7]
	Return $aacct
EndFunc

Func _security__lookupaccountsid($vsid)
	Local $psid, $aacct[3]
	If IsString($vsid) Then
		Local $tsid = _security__stringsidtosid($vsid)
		$psid = DllStructGetPtr($tsid)
	Else
		$psid = $vsid
	EndIf
	If NOT _security__isvalidsid($psid) Then Return SetError(-1, 0, 0)
	Local $aresult = DllCall("advapi32.dll", "bool", "LookupAccountSidW", "ptr", 0, "ptr", $psid, "wstr", "", "dword*", 256, "wstr", "", "dword*", 256, "int*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If NOT $aresult[0] Then Return 0
	Local $aacct[3]
	$aacct[0] = $aresult[3]
	$aacct[1] = $aresult[5]
	$aacct[2] = $aresult[7]
	Return $aacct
EndFunc

Func _security__lookupprivilegevalue($ssystem, $sname)
	Local $aresult = DllCall("advapi32.dll", "int", "LookupPrivilegeValueW", "wstr", $ssystem, "wstr", $sname, "int64*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetError(0, $aresult[0], $aresult[3])
EndFunc

Func _security__openprocesstoken($hprocess, $iaccess)
	Local $aresult = DllCall("advapi32.dll", "int", "OpenProcessToken", "handle", $hprocess, "dword", $iaccess, "ptr", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetError(0, $aresult[0], $aresult[3])
EndFunc

Func _security__openthreadtoken($iaccess, $hthread = 0, $fopenasself = False)
	If $hthread = 0 Then $hthread = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0)
	Local $aresult = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $hthread[0], "dword", $iaccess, "int", $fopenasself, "ptr*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetError(0, $aresult[0], $aresult[4])
EndFunc

Func _security__openthreadtokenex($iaccess, $hthread = 0, $fopenasself = False)
	Local $htoken = _security__openthreadtoken($iaccess, $hthread, $fopenasself)
	If $htoken = 0 Then
		If _winapi_getlasterror() <> $error_no_token Then Return SetError(-3, _winapi_getlasterror(), 0)
		If NOT _security__impersonateself() Then Return SetError(-1, _winapi_getlasterror(), 0)
		$htoken = _security__openthreadtoken($iaccess, $hthread, $fopenasself)
		If $htoken = 0 Then Return SetError(-2, _winapi_getlasterror(), 0)
	EndIf
	Return $htoken
EndFunc

Func _security__setprivilege($htoken, $sprivilege, $fenable)
	Local $iluid = _security__lookupprivilegevalue("", $sprivilege)
	If $iluid = 0 Then Return SetError(-1, 0, False)
	Local $tcurrstate = DllStructCreate($tagtoken_privileges)
	Local $pcurrstate = DllStructGetPtr($tcurrstate)
	Local $icurrstate = DllStructGetSize($tcurrstate)
	Local $tprevstate = DllStructCreate($tagtoken_privileges)
	Local $pprevstate = DllStructGetPtr($tprevstate)
	Local $iprevstate = DllStructGetSize($tprevstate)
	Local $trequired = DllStructCreate("int Data")
	Local $prequired = DllStructGetPtr($trequired)
	DllStructSetData($tcurrstate, "Count", 1)
	DllStructSetData($tcurrstate, "LUID", $iluid)
	If NOT _security__adjusttokenprivileges($htoken, False, $pcurrstate, $icurrstate, $pprevstate, $prequired) Then Return SetError(-2, @error, False)
	DllStructSetData($tprevstate, "Count", 1)
	DllStructSetData($tprevstate, "LUID", $iluid)
	Local $iattributes = DllStructGetData($tprevstate, "Attributes")
	If $fenable Then
		$iattributes = BitOR($iattributes, $se_privilege_enabled)
	Else
		$iattributes = BitAND($iattributes, BitNOT($se_privilege_enabled))
	EndIf
	DllStructSetData($tprevstate, "Attributes", $iattributes)
	If NOT _security__adjusttokenprivileges($htoken, False, $pprevstate, $iprevstate, $pcurrstate, $prequired) Then Return SetError(-3, @error, False)
	Return True
EndFunc

Func _security__sidtostringsid($psid)
	If NOT _security__isvalidsid($psid) Then Return SetError(-1, 0, "")
	Local $aresult = DllCall("advapi32.dll", "int", "ConvertSidToStringSidW", "ptr", $psid, "ptr*", 0)
	If @error Then Return SetError(@error, @extended, "")
	If NOT $aresult[0] Then Return ""
	Local $tbuffer = DllStructCreate("wchar Text[256]", $aresult[2])
	Local $ssid = DllStructGetData($tbuffer, "Text")
	DllCall("Kernel32.dll", "ptr", "LocalFree", "ptr", $aresult[2])
	Return $ssid
EndFunc

Func _security__sidtypestr($itype)
	Switch $itype
		Case 1
			Return "User"
		Case 2
			Return "Group"
		Case 3
			Return "Domain"
		Case 4
			Return "Alias"
		Case 5
			Return "Well Known Group"
		Case 6
			Return "Deleted Account"
		Case 7
			Return "Invalid"
		Case 8
			Return "Invalid"
		Case 9
			Return "Computer"
		Case Else
			Return "Unknown SID Type"
	EndSwitch
EndFunc

Func _security__stringsidtosid($ssid)
	Local $aresult = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $ssid, "ptr*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If NOT $aresult[0] Then Return 0
	Local $isize = _security__getlengthsid($aresult[2])
	Local $tbuffer = DllStructCreate("byte Data[" & $isize & "]", $aresult[2])
	Local $tsid = DllStructCreate("byte Data[" & $isize & "]")
	DllStructSetData($tsid, "Data", DllStructGetData($tbuffer, "Data"))
	DllCall("kernel32.dll", "ptr", "LocalFree", "ptr", $aresult[2])
	Return $tsid
EndFunc

Func _sendmessage($hwnd, $imsg, $wparam = 0, $lparam = 0, $ireturn = 0, $wparamtype = "wparam", $lparamtype = "lparam", $sreturntype = "lresult")
	Local $aresult = DllCall("user32.dll", $sreturntype, "SendMessageW", "hwnd", $hwnd, "uint", $imsg, $wparamtype, $wparam, $lparamtype, $lparam)
	If @error Then Return SetError(@error, @extended, "")
	If $ireturn >= 0 AND $ireturn <= 4 Then Return $aresult[$ireturn]
	Return $aresult
EndFunc

Func _sendmessagea($hwnd, $imsg, $wparam = 0, $lparam = 0, $ireturn = 0, $wparamtype = "wparam", $lparamtype = "lparam", $sreturntype = "lresult")
	Local $aresult = DllCall("user32.dll", $sreturntype, "SendMessageA", "hwnd", $hwnd, "uint", $imsg, $wparamtype, $wparam, $lparamtype, $lparam)
	If @error Then Return SetError(@error, @extended, "")
	If $ireturn >= 0 AND $ireturn <= 4 Then Return $aresult[$ireturn]
	Return $aresult
EndFunc

Global $__gainprocess_winapi[64][2] = [[0, 0]]
Global $__gawinlist_winapi[64][2] = [[0, 0]]
Global Const $__winapiconstant_wm_setfont = 48
Global Const $__winapiconstant_fw_normal = 400
Global Const $__winapiconstant_default_charset = 1
Global Const $__winapiconstant_out_default_precis = 0
Global Const $__winapiconstant_clip_default_precis = 0
Global Const $__winapiconstant_default_quality = 0
Global Const $__winapiconstant_format_message_allocate_buffer = 256
Global Const $__winapiconstant_format_message_from_system = 4096
Global Const $__winapiconstant_logpixelsx = 88
Global Const $__winapiconstant_logpixelsy = 90
Global Const $hgdi_error = Ptr(-1)
Global Const $invalid_handle_value = Ptr(-1)
Global Const $clr_invalid = -1
Global Const $__winapiconstant_flashw_caption = 1
Global Const $__winapiconstant_flashw_tray = 2
Global Const $__winapiconstant_flashw_timer = 4
Global Const $__winapiconstant_flashw_timernofg = 12
Global Const $__winapiconstant_gw_hwndnext = 2
Global Const $__winapiconstant_gw_child = 5
Global Const $__winapiconstant_di_mask = 1
Global Const $__winapiconstant_di_image = 2
Global Const $__winapiconstant_di_normal = 3
Global Const $__winapiconstant_di_compat = 4
Global Const $__winapiconstant_di_defaultsize = 8
Global Const $__winapiconstant_di_nomirror = 16
Global Const $__winapiconstant_display_device_attached_to_desktop = 1
Global Const $__winapiconstant_display_device_primary_device = 4
Global Const $__winapiconstant_display_device_mirroring_driver = 8
Global Const $__winapiconstant_display_device_vga_compatible = 16
Global Const $__winapiconstant_display_device_removable = 32
Global Const $__winapiconstant_display_device_modespruned = 134217728
Global Const $null_brush = 5
Global Const $null_pen = 8
Global Const $black_brush = 4
Global Const $dkgray_brush = 3
Global Const $dc_brush = 18
Global Const $gray_brush = 2
Global Const $hollow_brush = $null_brush
Global Const $ltgray_brush = 1
Global Const $white_brush = 0
Global Const $black_pen = 7
Global Const $dc_pen = 19
Global Const $white_pen = 6
Global Const $ansi_fixed_font = 11
Global Const $ansi_var_font = 12
Global Const $device_default_font = 14
Global Const $default_gui_font = 17
Global Const $oem_fixed_font = 10
Global Const $system_font = 13
Global Const $system_fixed_font = 16
Global Const $default_palette = 15
Global Const $mb_precomposed = 1
Global Const $mb_composite = 2
Global Const $mb_useglyphchars = 4
Global Const $ulw_alpha = 2
Global Const $ulw_colorkey = 1
Global Const $ulw_opaque = 4
Global Const $wh_callwndproc = 4
Global Const $wh_callwndprocret = 12
Global Const $wh_cbt = 5
Global Const $wh_debug = 9
Global Const $wh_foregroundidle = 11
Global Const $wh_getmessage = 3
Global Const $wh_journalplayback = 1
Global Const $wh_journalrecord = 0
Global Const $wh_keyboard = 2
Global Const $wh_keyboard_ll = 13
Global Const $wh_mouse = 7
Global Const $wh_mouse_ll = 14
Global Const $wh_msgfilter = -1
Global Const $wh_shell = 10
Global Const $wh_sysmsgfilter = 6
Global Const $wpf_asyncwindowplacement = 4
Global Const $wpf_restoretomaximized = 2
Global Const $wpf_setminposition = 1
Global Const $kf_extended = 256
Global Const $kf_altdown = 8192
Global Const $kf_up = 32768
Global Const $llkhf_extended = BitShift($kf_extended, 8)
Global Const $llkhf_injected = 16
Global Const $llkhf_altdown = BitShift($kf_altdown, 8)
Global Const $llkhf_up = BitShift($kf_up, 8)
Global Const $ofn_allowmultiselect = 512
Global Const $ofn_createprompt = 8192
Global Const $ofn_dontaddtorecent = 33554432
Global Const $ofn_enablehook = 32
Global Const $ofn_enableincludenotify = 4194304
Global Const $ofn_enablesizing = 8388608
Global Const $ofn_enabletemplate = 64
Global Const $ofn_enabletemplatehandle = 128
Global Const $ofn_explorer = 524288
Global Const $ofn_extensiondifferent = 1024
Global Const $ofn_filemustexist = 4096
Global Const $ofn_forceshowhidden = 268435456
Global Const $ofn_hidereadonly = 4
Global Const $ofn_longnames = 2097152
Global Const $ofn_nochangedir = 8
Global Const $ofn_nodereferencelinks = 1048576
Global Const $ofn_nolongnames = 262144
Global Const $ofn_nonetworkbutton = 131072
Global Const $ofn_noreadonlyreturn = 32768
Global Const $ofn_notestfilecreate = 65536
Global Const $ofn_novalidate = 256
Global Const $ofn_overwriteprompt = 2
Global Const $ofn_pathmustexist = 2048
Global Const $ofn_readonly = 1
Global Const $ofn_shareaware = 16384
Global Const $ofn_showhelp = 16
Global Const $ofn_ex_noplacesbar = 1
Global Const $tagcursorinfo = "dword Size;dword Flags;handle hCursor;" & $tagpoint
Global Const $tagdisplay_device = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $tagflashwinfo = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $tagiconinfo = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $tagmemorystatusex = "dword Length;dword MemoryLoad;" & "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"

Func _winapi_attachconsole($iprocessid = -1)
	Local $aresult = DllCall("kernel32.dll", "bool", "AttachConsole", "dword", $iprocessid)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_attachthreadinput($iattach, $iattachto, $fattach)
	Local $aresult = DllCall("user32.dll", "bool", "AttachThreadInput", "dword", $iattach, "dword", $iattachto, "bool", $fattach)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_beep($ifreq = 500, $iduration = 1000)
	Local $aresult = DllCall("kernel32.dll", "bool", "Beep", "dword", $ifreq, "dword", $iduration)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_bitblt($hdestdc, $ixdest, $iydest, $iwidth, $iheight, $hsrcdc, $ixsrc, $iysrc, $irop)
	Local $aresult = DllCall("gdi32.dll", "bool", "BitBlt", "handle", $hdestdc, "int", $ixdest, "int", $iydest, "int", $iwidth, "int", $iheight, "handle", $hsrcdc, "int", $ixsrc, "int", $iysrc, "dword", $irop)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_callnexthookex($hhk, $icode, $wparam, $lparam)
	Local $aresult = DllCall("user32.dll", "lresult", "CallNextHookEx", "handle", $hhk, "int", $icode, "wparam", $wparam, "lparam", $lparam)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_callwindowproc($lpprevwndfunc, $hwnd, $msg, $wparam, $lparam)
	Local $aresult = DllCall("user32.dll", "lresult", "CallWindowProc", "ptr", $lpprevwndfunc, "hwnd", $hwnd, "uint", $msg, "wparam", $wparam, "lparam", $lparam)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_clienttoscreen($hwnd, ByRef $tpoint)
	Local $ppoint = DllStructGetPtr($tpoint)
	DllCall("user32.dll", "bool", "ClientToScreen", "hwnd", $hwnd, "ptr", $ppoint)
	Return SetError(@error, @extended, $tpoint)
EndFunc

Func _winapi_closehandle($hobject)
	Local $aresult = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hobject)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_combinergn($hrgndest, $hrgnsrc1, $hrgnsrc2, $icombinemode)
	Local $aresult = DllCall("gdi32.dll", "int", "CombineRgn", "handle", $hrgndest, "handle", $hrgnsrc1, "handle", $hrgnsrc2, "int", $icombinemode)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_commdlgextendederror()
	Local Const $cderr_dialogfailure = 65535
	Local Const $cderr_findresfailure = 6
	Local Const $cderr_initialization = 2
	Local Const $cderr_loadresfailure = 7
	Local Const $cderr_loadstrfailure = 5
	Local Const $cderr_lockresfailure = 8
	Local Const $cderr_memallocfailure = 9
	Local Const $cderr_memlockfailure = 10
	Local Const $cderr_nohinstance = 4
	Local Const $cderr_nohook = 11
	Local Const $cderr_notemplate = 3
	Local Const $cderr_registermsgfail = 12
	Local Const $cderr_structsize = 1
	Local Const $fnerr_buffertoosmall = 12291
	Local Const $fnerr_invalidfilename = 12290
	Local Const $fnerr_subclassfailure = 12289
	Local $aresult = DllCall("comdlg32.dll", "dword", "CommDlgExtendedError")
	If @error Then Return SetError(@error, @extended, 0)
	Switch $aresult[0]
		Case $cderr_dialogfailure
			Return SetError($aresult[0], 0, "The dialog box could not be created." & @LF & "The common dialog box function's call to the DialogBox function failed." & @LF & "For example, this error occurs if the common dialog box call specifies an invalid window handle.")
		Case $cderr_findresfailure
			Return SetError($aresult[0], 0, "The common dialog box function failed to find a specified resource.")
		Case $cderr_initialization
			Return SetError($aresult[0], 0, "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available.")
		Case $cderr_loadresfailure
			Return SetError($aresult[0], 0, "The common dialog box function failed to load a specified resource.")
		Case $cderr_loadstrfailure
			Return SetError($aresult[0], 0, "The common dialog box function failed to load a specified string.")
		Case $cderr_lockresfailure
			Return SetError($aresult[0], 0, "The common dialog box function failed to lock a specified resource.")
		Case $cderr_memallocfailure
			Return SetError($aresult[0], 0, "The common dialog box function was unable to allocate memory for internal structures.")
		Case $cderr_memlockfailure
			Return SetError($aresult[0], 0, "The common dialog box function was unable to lock the memory associated with a handle.")
		Case $cderr_nohinstance
			Return SetError($aresult[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding instance handle.")
		Case $cderr_nohook
			Return SetError($aresult[0], 0, "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a pointer to a corresponding hook procedure.")
		Case $cderr_notemplate
			Return SetError($aresult[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding template.")
		Case $cderr_registermsgfail
			Return SetError($aresult[0], 0, "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function.")
		Case $cderr_structsize
			Return SetError($aresult[0], 0, "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid")
		Case $fnerr_buffertoosmall
			Return SetError($aresult[0], 0, "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF & "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name.")
		Case $fnerr_invalidfilename
			Return SetError($aresult[0], 0, "A file name is invalid.")
		Case $fnerr_subclassfailure
			Return SetError($aresult[0], 0, "An attempt to subclass a list box failed because sufficient memory was not available.")
	EndSwitch
	Return Hex($aresult[0])
EndFunc

Func _winapi_copyicon($hicon)
	Local $aresult = DllCall("user32.dll", "handle", "CopyIcon", "handle", $hicon)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createbitmap($iwidth, $iheight, $iplanes = 1, $ibitsperpel = 1, $pbits = 0)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $iwidth, "int", $iheight, "uint", $iplanes, "uint", $ibitsperpel, "ptr", $pbits)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createcompatiblebitmap($hdc, $iwidth, $iheight)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $hdc, "int", $iwidth, "int", $iheight)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createcompatibledc($hdc)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $hdc)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createevent($pattributes = 0, $fmanualreset = True, $finitialstate = True, $sname = "")
	Local $snametype = "wstr"
	If $sname = "" Then
		$sname = 0
		$snametype = "ptr"
	EndIf
	Local $aresult = DllCall("kernel32.dll", "handle", "CreateEventW", "ptr", $pattributes, "bool", $fmanualreset, "bool", $finitialstate, $snametype, $sname)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createfile($sfilename, $icreation, $iaccess = 4, $ishare = 0, $iattributes = 0, $psecurity = 0)
	Local $ida = 0, $ism = 0, $icd = 0, $ifa = 0
	If BitAND($iaccess, 1) <> 0 Then $ida = BitOR($ida, $generic_execute)
	If BitAND($iaccess, 2) <> 0 Then $ida = BitOR($ida, $generic_read)
	If BitAND($iaccess, 4) <> 0 Then $ida = BitOR($ida, $generic_write)
	If BitAND($ishare, 1) <> 0 Then $ism = BitOR($ism, $file_share_delete)
	If BitAND($ishare, 2) <> 0 Then $ism = BitOR($ism, $file_share_read)
	If BitAND($ishare, 4) <> 0 Then $ism = BitOR($ism, $file_share_write)
	Switch $icreation
		Case 0
			$icd = $create_new
		Case 1
			$icd = $create_always
		Case 2
			$icd = $open_existing
		Case 3
			$icd = $open_always
		Case 4
			$icd = $truncate_existing
	EndSwitch
	If BitAND($iattributes, 1) <> 0 Then $ifa = BitOR($ifa, $file_attribute_archive)
	If BitAND($iattributes, 2) <> 0 Then $ifa = BitOR($ifa, $file_attribute_hidden)
	If BitAND($iattributes, 4) <> 0 Then $ifa = BitOR($ifa, $file_attribute_readonly)
	If BitAND($iattributes, 8) <> 0 Then $ifa = BitOR($ifa, $file_attribute_system)
	Local $aresult = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $sfilename, "dword", $ida, "dword", $ism, "ptr", $psecurity, "dword", $icd, "dword", $ifa, "ptr", 0)
	If @error OR $aresult[0] = Ptr(-1) Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createfont($nheight, $nwidth, $nescape = 0, $norientn = 0, $fnweight = $__winapiconstant_fw_normal, $bitalic = False, $bunderline = False, $bstrikeout = False, $ncharset = $__winapiconstant_default_charset, $noutputprec = $__winapiconstant_out_default_precis, $nclipprec = $__winapiconstant_clip_default_precis, $nquality = $__winapiconstant_default_quality, $npitch = 0, $szface = "Arial")
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateFontW", "int", $nheight, "int", $nwidth, "int", $nescape, "int", $norientn, "int", $fnweight, "dword", $bitalic, "dword", $bunderline, "dword", $bstrikeout, "dword", $ncharset, "dword", $noutputprec, "dword", $nclipprec, "dword", $nquality, "dword", $npitch, "wstr", $szface)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createfontindirect($tlogfont)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateFontIndirectW", "ptr", DllStructGetPtr($tlogfont))
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createpen($ipenstyle, $iwidth, $ncolor)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreatePen", "int", $ipenstyle, "int", $iwidth, "dword", $ncolor)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createprocess($sappname, $scommand, $psecurity, $pthread, $finherit, $iflags, $penviron, $sdir, $pstartupinfo, $pprocess)
	Local $pcommand = 0
	Local $sappnametype = "wstr", $sdirtype = "wstr"
	If $sappname = "" Then
		$sappnametype = "ptr"
		$sappname = 0
	EndIf
	If $scommand <> "" Then
		Local $tcommand = DllStructCreate("wchar Text[" & 260 + 1 & "]")
		$pcommand = DllStructGetPtr($tcommand)
		DllStructSetData($tcommand, "Text", $scommand)
	EndIf
	If $sdir = "" Then
		$sdirtype = "ptr"
		$sdir = 0
	EndIf
	Local $aresult = DllCall("kernel32.dll", "bool", "CreateProcessW", $sappnametype, $sappname, "ptr", $pcommand, "ptr", $psecurity, "ptr", $pthread, "bool", $finherit, "dword", $iflags, "ptr", $penviron, $sdirtype, $sdir, "ptr", $pstartupinfo, "ptr", $pprocess)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_createrectrgn($ileftrect, $itoprect, $irightrect, $ibottomrect)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateRectRgn", "int", $ileftrect, "int", $itoprect, "int", $irightrect, "int", $ibottomrect)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createroundrectrgn($ileftrect, $itoprect, $irightrect, $ibottomrect, $iwidthellipse, $iheightellipse)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateRoundRectRgn", "int", $ileftrect, "int", $itoprect, "int", $irightrect, "int", $ibottomrect, "int", $iwidthellipse, "int", $iheightellipse)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createsolidbitmap($hwnd, $icolor, $iwidth, $iheight, $brgb = 1)
	Local $hdc = _winapi_getdc($hwnd)
	Local $hdestdc = _winapi_createcompatibledc($hdc)
	Local $hbitmap = _winapi_createcompatiblebitmap($hdc, $iwidth, $iheight)
	Local $hold = _winapi_selectobject($hdestdc, $hbitmap)
	Local $trect = DllStructCreate($tagrect)
	DllStructSetData($trect, 1, 0)
	DllStructSetData($trect, 2, 0)
	DllStructSetData($trect, 3, $iwidth)
	DllStructSetData($trect, 4, $iheight)
	If $brgb Then
		$icolor = BitOR(BitAND($icolor, 65280), BitShift(BitAND($icolor, 255), -16), BitShift(BitAND($icolor, 16711680), 16))
	EndIf
	Local $hbrush = _winapi_createsolidbrush($icolor)
	_winapi_fillrect($hdestdc, DllStructGetPtr($trect), $hbrush)
	If @error Then
		_winapi_deleteobject($hbitmap)
		$hbitmap = 0
	EndIf
	_winapi_deleteobject($hbrush)
	_winapi_releasedc($hwnd, $hdc)
	_winapi_selectobject($hdestdc, $hold)
	_winapi_deletedc($hdestdc)
	If NOT $hbitmap Then Return SetError(1, 0, 0)
	Return $hbitmap
EndFunc

Func _winapi_createsolidbrush($ncolor)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateSolidBrush", "dword", $ncolor)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createwindowex($iexstyle, $sclass, $sname, $istyle, $ix, $iy, $iwidth, $iheight, $hparent, $hmenu = 0, $hinstance = 0, $pparam = 0)
	If $hinstance = 0 Then $hinstance = _winapi_getmodulehandle("")
	Local $aresult = DllCall("user32.dll", "hwnd", "CreateWindowExW", "dword", $iexstyle, "wstr", $sclass, "wstr", $sname, "dword", $istyle, "int", $ix, "int", $iy, "int", $iwidth, "int", $iheight, "hwnd", $hparent, "handle", $hmenu, "handle", $hinstance, "ptr", $pparam)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_defwindowproc($hwnd, $imsg, $iwparam, $ilparam)
	Local $aresult = DllCall("user32.dll", "lresult", "DefWindowProc", "hwnd", $hwnd, "uint", $imsg, "wparam", $iwparam, "lparam", $ilparam)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_deletedc($hdc)
	Local $aresult = DllCall("gdi32.dll", "bool", "DeleteDC", "handle", $hdc)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_deleteobject($hobject)
	Local $aresult = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hobject)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_destroyicon($hicon)
	Local $aresult = DllCall("user32.dll", "bool", "DestroyIcon", "handle", $hicon)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_destroywindow($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "DestroyWindow", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawedge($hdc, $ptrrect, $nedgetype, $grfflags)
	Local $aresult = DllCall("user32.dll", "bool", "DrawEdge", "handle", $hdc, "ptr", $ptrrect, "uint", $nedgetype, "uint", $grfflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawframecontrol($hdc, $ptrrect, $ntype, $nstate)
	Local $aresult = DllCall("user32.dll", "bool", "DrawFrameControl", "handle", $hdc, "ptr", $ptrrect, "uint", $ntype, "uint", $nstate)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawicon($hdc, $ix, $iy, $hicon)
	Local $aresult = DllCall("user32.dll", "bool", "DrawIcon", "handle", $hdc, "int", $ix, "int", $iy, "handle", $hicon)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawiconex($hdc, $ix, $iy, $hicon, $iwidth = 0, $iheight = 0, $istep = 0, $hbrush = 0, $iflags = 3)
	Local $ioptions
	Switch $iflags
		Case 1
			$ioptions = $__winapiconstant_di_mask
		Case 2
			$ioptions = $__winapiconstant_di_image
		Case 3
			$ioptions = $__winapiconstant_di_normal
		Case 4
			$ioptions = $__winapiconstant_di_compat
		Case 5
			$ioptions = $__winapiconstant_di_defaultsize
		Case Else
			$ioptions = $__winapiconstant_di_nomirror
	EndSwitch
	Local $aresult = DllCall("user32.dll", "bool", "DrawIconEx", "handle", $hdc, "int", $ix, "int", $iy, "handle", $hicon, "int", $iwidth, "int", $iheight, "uint", $istep, "handle", $hbrush, "uint", $ioptions)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawline($hdc, $ix1, $iy1, $ix2, $iy2)
	_winapi_moveto($hdc, $ix1, $iy1)
	If @error Then Return SetError(@error, @extended, False)
	_winapi_lineto($hdc, $ix2, $iy2)
	If @error Then Return SetError(@error, @extended, False)
	Return True
EndFunc

Func _winapi_drawtext($hdc, $stext, ByRef $trect, $iflags)
	Local $aresult = DllCall("user32.dll", "int", "DrawTextW", "handle", $hdc, "wstr", $stext, "int", -1, "ptr", DllStructGetPtr($trect), "uint", $iflags)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_enablewindow($hwnd, $fenable = True)
	Local $aresult = DllCall("user32.dll", "bool", "EnableWindow", "hwnd", $hwnd, "bool", $fenable)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_enumdisplaydevices($sdevice, $idevnum)
	Local $pname = 0, $iflags = 0, $adevice[5]
	If $sdevice <> "" Then
		Local $tname = DllStructCreate("wchar Text[" & StringLen($sdevice) + 1 & "]")
		$pname = DllStructGetPtr($tname)
		DllStructSetData($tname, "Text", $sdevice)
	EndIf
	Local $tdevice = DllStructCreate($tagdisplay_device)
	Local $pdevice = DllStructGetPtr($tdevice)
	Local $idevice = DllStructGetSize($tdevice)
	DllStructSetData($tdevice, "Size", $idevice)
	DllCall("user32.dll", "bool", "EnumDisplayDevicesW", "ptr", $pname, "dword", $idevnum, "ptr", $pdevice, "dword", 1)
	If @error Then Return SetError(@error, @extended, 0)
	Local $in = DllStructGetData($tdevice, "Flags")
	If BitAND($in, $__winapiconstant_display_device_attached_to_desktop) <> 0 Then $iflags = BitOR($iflags, 1)
	If BitAND($in, $__winapiconstant_display_device_primary_device) <> 0 Then $iflags = BitOR($iflags, 2)
	If BitAND($in, $__winapiconstant_display_device_mirroring_driver) <> 0 Then $iflags = BitOR($iflags, 4)
	If BitAND($in, $__winapiconstant_display_device_vga_compatible) <> 0 Then $iflags = BitOR($iflags, 8)
	If BitAND($in, $__winapiconstant_display_device_removable) <> 0 Then $iflags = BitOR($iflags, 16)
	If BitAND($in, $__winapiconstant_display_device_modespruned) <> 0 Then $iflags = BitOR($iflags, 32)
	$adevice[0] = True
	$adevice[1] = DllStructGetData($tdevice, "Name")
	$adevice[2] = DllStructGetData($tdevice, "String")
	$adevice[3] = $iflags
	$adevice[4] = DllStructGetData($tdevice, "ID")
	Return $adevice
EndFunc

Func _winapi_enumwindows($fvisible = True, $hwnd = Default)
	__winapi_enumwindowsinit()
	If $hwnd = Default Then $hwnd = _winapi_getdesktopwindow()
	__winapi_enumwindowschild($hwnd, $fvisible)
	Return $__gawinlist_winapi
EndFunc

Func __winapi_enumwindowsadd($hwnd, $sclass = "")
	If $sclass = "" Then $sclass = _winapi_getclassname($hwnd)
	$__gawinlist_winapi[0][0] += 1
	Local $icount = $__gawinlist_winapi[0][0]
	If $icount >= $__gawinlist_winapi[0][1] Then
		ReDim $__gawinlist_winapi[$icount + 64][2]
		$__gawinlist_winapi[0][1] += 64
	EndIf
	$__gawinlist_winapi[$icount][0] = $hwnd
	$__gawinlist_winapi[$icount][1] = $sclass
EndFunc

Func __winapi_enumwindowschild($hwnd, $fvisible = True)
	$hwnd = _winapi_getwindow($hwnd, $__winapiconstant_gw_child)
	While $hwnd <> 0
		If (NOT $fvisible) OR _winapi_iswindowvisible($hwnd) Then
			__winapi_enumwindowschild($hwnd, $fvisible)
			__winapi_enumwindowsadd($hwnd)
		EndIf
		$hwnd = _winapi_getwindow($hwnd, $__winapiconstant_gw_hwndnext)
	WEnd
EndFunc

Func __winapi_enumwindowsinit()
	ReDim $__gawinlist_winapi[64][2]
	$__gawinlist_winapi[0][0] = 0
	$__gawinlist_winapi[0][1] = 64
EndFunc

Func _winapi_enumwindowspopup()
	__winapi_enumwindowsinit()
	Local $hwnd = _winapi_getwindow(_winapi_getdesktopwindow(), $__winapiconstant_gw_child)
	Local $sclass
	While $hwnd <> 0
		If _winapi_iswindowvisible($hwnd) Then
			$sclass = _winapi_getclassname($hwnd)
			If $sclass = "#32768" Then
				__winapi_enumwindowsadd($hwnd)
			ElseIf $sclass = "ToolbarWindow32" Then
				__winapi_enumwindowsadd($hwnd)
			ElseIf $sclass = "ToolTips_Class32" Then
				__winapi_enumwindowsadd($hwnd)
			ElseIf $sclass = "BaseBar" Then
				__winapi_enumwindowschild($hwnd)
			EndIf
		EndIf
		$hwnd = _winapi_getwindow($hwnd, $__winapiconstant_gw_hwndnext)
	WEnd
	Return $__gawinlist_winapi
EndFunc

Func _winapi_enumwindowstop()
	__winapi_enumwindowsinit()
	Local $hwnd = _winapi_getwindow(_winapi_getdesktopwindow(), $__winapiconstant_gw_child)
	While $hwnd <> 0
		If _winapi_iswindowvisible($hwnd) Then __winapi_enumwindowsadd($hwnd)
		$hwnd = _winapi_getwindow($hwnd, $__winapiconstant_gw_hwndnext)
	WEnd
	Return $__gawinlist_winapi
EndFunc

Func _winapi_expandenvironmentstrings($sstring)
	Local $aresult = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $sstring, "wstr", "", "dword", 4096)
	If @error Then Return SetError(@error, @extended, "")
	Return $aresult[2]
EndFunc

Func _winapi_extracticonex($sfile, $iindex, $plarge, $psmall, $iicons)
	Local $aresult = DllCall("shell32.dll", "uint", "ExtractIconExW", "wstr", $sfile, "int", $iindex, "handle", $plarge, "handle", $psmall, "uint", $iicons)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_fatalappexit($smessage)
	DllCall("kernel32.dll", "none", "FatalAppExitW", "uint", 0, "wstr", $smessage)
	If @error Then Return SetError(@error, @extended)
EndFunc

Func _winapi_fillrect($hdc, $ptrrect, $hbrush)
	Local $aresult
	If IsPtr($hbrush) Then
		$aresult = DllCall("user32.dll", "int", "FillRect", "handle", $hdc, "ptr", $ptrrect, "handle", $hbrush)
	Else
		$aresult = DllCall("user32.dll", "int", "FillRect", "handle", $hdc, "ptr", $ptrrect, "dword", $hbrush)
	EndIf
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_findexecutable($sfilename, $sdirectory = "")
	Local $aresult = DllCall("shell32.dll", "INT", "FindExecutableW", "wstr", $sfilename, "wstr", $sdirectory, "wstr", "")
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $aresult[3])
EndFunc

Func _winapi_findwindow($sclassname, $swindowname)
	Local $aresult = DllCall("user32.dll", "hwnd", "FindWindowW", "wstr", $sclassname, "wstr", $swindowname)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_flashwindow($hwnd, $finvert = True)
	Local $aresult = DllCall("user32.dll", "bool", "FlashWindow", "hwnd", $hwnd, "bool", $finvert)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_flashwindowex($hwnd, $iflags = 3, $icount = 3, $itimeout = 0)
	Local $tflash = DllStructCreate($tagflashwinfo)
	Local $pflash = DllStructGetPtr($tflash)
	Local $iflash = DllStructGetSize($tflash)
	Local $imode = 0
	If BitAND($iflags, 1) <> 0 Then $imode = BitOR($imode, $__winapiconstant_flashw_caption)
	If BitAND($iflags, 2) <> 0 Then $imode = BitOR($imode, $__winapiconstant_flashw_tray)
	If BitAND($iflags, 4) <> 0 Then $imode = BitOR($imode, $__winapiconstant_flashw_timer)
	If BitAND($iflags, 8) <> 0 Then $imode = BitOR($imode, $__winapiconstant_flashw_timernofg)
	DllStructSetData($tflash, "Size", $iflash)
	DllStructSetData($tflash, "hWnd", $hwnd)
	DllStructSetData($tflash, "Flags", $imode)
	DllStructSetData($tflash, "Count", $icount)
	DllStructSetData($tflash, "Timeout", $itimeout)
	Local $aresult = DllCall("user32.dll", "bool", "FlashWindowEx", "ptr", $pflash)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_floattoint($nfloat)
	Local $tfloat = DllStructCreate("float")
	Local $tint = DllStructCreate("int", DllStructGetPtr($tfloat))
	DllStructSetData($tfloat, 1, $nfloat)
	Return DllStructGetData($tint, 1)
EndFunc

Func _winapi_flushfilebuffers($hfile)
	Local $aresult = DllCall("kernel32.dll", "bool", "FlushFileBuffers", "handle", $hfile)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_formatmessage($iflags, $psource, $imessageid, $ilanguageid, ByRef $pbuffer, $isize, $varguments)
	Local $sbuffertype = "ptr"
	If IsString($pbuffer) Then $sbuffertype = "wstr"
	Local $aresult = DllCall("Kernel32.dll", "dword", "FormatMessageW", "dword", $iflags, "ptr", $psource, "dword", $imessageid, "dword", $ilanguageid, $sbuffertype, $pbuffer, "dword", $isize, "ptr", $varguments)
	If @error Then Return SetError(@error, @extended, 0)
	If $sbuffertype = "wstr" Then $pbuffer = $aresult[5]
	Return $aresult[0]
EndFunc

Func _winapi_framerect($hdc, $ptrrect, $hbrush)
	Local $aresult = DllCall("user32.dll", "int", "FrameRect", "handle", $hdc, "ptr", $ptrrect, "handle", $hbrush)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_freelibrary($hmodule)
	Local $aresult = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $hmodule)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_getancestor($hwnd, $iflags = 1)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetAncestor", "hwnd", $hwnd, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getasynckeystate($ikey)
	Local $aresult = DllCall("user32.dll", "short", "GetAsyncKeyState", "int", $ikey)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getbkmode($hdc)
	Local $aresult = DllCall("gdi32.dll", "int", "GetBkMode", "handle", $hdc)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getclassname($hwnd)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $aresult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hwnd, "wstr", "", "int", 4096)
	If @error Then Return SetError(@error, @extended, False)
	Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_getclientheight($hwnd)
	Local $trect = _winapi_getclientrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Bottom") - DllStructGetData($trect, "Top")
EndFunc

Func _winapi_getclientwidth($hwnd)
	Local $trect = _winapi_getclientrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Right") - DllStructGetData($trect, "Left")
EndFunc

Func _winapi_getclientrect($hwnd)
	Local $trect = DllStructCreate($tagrect)
	DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hwnd, "ptr", DllStructGetPtr($trect))
	If @error Then Return SetError(@error, @extended, 0)
	Return $trect
EndFunc

Func _winapi_getcurrentprocess()
	Local $aresult = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcurrentprocessid()
	Local $aresult = DllCall("kernel32.dll", "dword", "GetCurrentProcessId")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcurrentthread()
	Local $aresult = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcurrentthreadid()
	Local $aresult = DllCall("kernel32.dll", "dword", "GetCurrentThreadId")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcursorinfo()
	Local $tcursor = DllStructCreate($tagcursorinfo)
	Local $icursor = DllStructGetSize($tcursor)
	DllStructSetData($tcursor, "Size", $icursor)
	DllCall("user32.dll", "bool", "GetCursorInfo", "ptr", DllStructGetPtr($tcursor))
	If @error Then Return SetError(@error, @extended, 0)
	Local $acursor[5]
	$acursor[0] = True
	$acursor[1] = DllStructGetData($tcursor, "Flags") <> 0
	$acursor[2] = DllStructGetData($tcursor, "hCursor")
	$acursor[3] = DllStructGetData($tcursor, "X")
	$acursor[4] = DllStructGetData($tcursor, "Y")
	Return $acursor
EndFunc

Func _winapi_getdc($hwnd)
	Local $aresult = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdesktopwindow()
	Local $aresult = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdevicecaps($hdc, $iindex)
	Local $aresult = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $hdc, "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdibits($hdc, $hbmp, $istartscan, $iscanlines, $pbits, $pbi, $iusage)
	Local $aresult = DllCall("gdi32.dll", "int", "GetDIBits", "handle", $hdc, "handle", $hbmp, "uint", $istartscan, "uint", $iscanlines, "ptr", $pbits, "ptr", $pbi, "uint", $iusage)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_getdlgctrlid($hwnd)
	Local $aresult = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdlgitem($hwnd, $iitemid)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetDlgItem", "hwnd", $hwnd, "int", $iitemid)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getfocus()
	Local $aresult = DllCall("user32.dll", "hwnd", "GetFocus")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getforegroundwindow()
	Local $aresult = DllCall("user32.dll", "hwnd", "GetForegroundWindow")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getguiresources($iflag = 0, $hprocess = -1)
	If $hprocess = -1 Then $hprocess = _winapi_getcurrentprocess()
	Local $aresult = DllCall("user32.dll", "dword", "GetGuiResources", "handle", $hprocess, "dword", $iflag)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_geticoninfo($hicon)
	Local $tinfo = DllStructCreate($tagiconinfo)
	DllCall("user32.dll", "bool", "GetIconInfo", "handle", $hicon, "ptr", DllStructGetPtr($tinfo))
	If @error Then Return SetError(@error, @extended, 0)
	Local $aicon[6]
	$aicon[0] = True
	$aicon[1] = DllStructGetData($tinfo, "Icon") <> 0
	$aicon[2] = DllStructGetData($tinfo, "XHotSpot")
	$aicon[3] = DllStructGetData($tinfo, "YHotSpot")
	$aicon[4] = DllStructGetData($tinfo, "hMask")
	$aicon[5] = DllStructGetData($tinfo, "hColor")
	Return $aicon
EndFunc

Func _winapi_getfilesizeex($hfile)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetFileSizeEx", "handle", $hfile, "int64*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[2]
EndFunc

Func _winapi_getlasterrormessage()
	Local $tbufferptr = DllStructCreate("ptr")
	Local $pbufferptr = DllStructGetPtr($tbufferptr)
	Local $ncount = _winapi_formatmessage(BitOR($__winapiconstant_format_message_allocate_buffer, $__winapiconstant_format_message_from_system), 0, _winapi_getlasterror(), 0, $pbufferptr, 0, 0)
	If @error Then Return SetError(@error, 0, "")
	Local $stext = ""
	Local $pbuffer = DllStructGetData($tbufferptr, 1)
	If $pbuffer Then
		If $ncount > 0 Then
			Local $tbuffer = DllStructCreate("wchar[" & ($ncount + 1) & "]", $pbuffer)
			$stext = DllStructGetData($tbuffer, 1)
		EndIf
		_winapi_localfree($pbuffer)
	EndIf
	Return $stext
EndFunc

Func _winapi_getlayeredwindowattributes($hwnd, ByRef $i_transcolor, ByRef $transparency, $ascolorref = False)
	$i_transcolor = -1
	$transparency = -1
	Local $aresult = DllCall("user32.dll", "bool", "GetLayeredWindowAttributes", "hwnd", $hwnd, "dword*", $i_transcolor, "byte*", $transparency, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	If NOT $ascolorref Then
		$aresult[2] = Hex(String($aresult[2]), 6)
		$aresult[2] = "0x" & StringMid($aresult[2], 5, 2) & StringMid($aresult[2], 3, 2) & StringMid($aresult[2], 1, 2)
	EndIf
	$i_transcolor = $aresult[2]
	$transparency = $aresult[3]
	Return $aresult[4]
EndFunc

Func _winapi_getmodulehandle($smodulename)
	Local $smodulenametype = "wstr"
	If $smodulename = "" Then
		$smodulename = 0
		$smodulenametype = "ptr"
	EndIf
	Local $aresult = DllCall("kernel32.dll", "handle", "GetModuleHandleW", $smodulenametype, $smodulename)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getmousepos($ftoclient = False, $hwnd = 0)
	Local $imode = Opt("MouseCoordMode", 1)
	Local $apos = MouseGetPos()
	Opt("MouseCoordMode", $imode)
	Local $tpoint = DllStructCreate($tagpoint)
	DllStructSetData($tpoint, "X", $apos[0])
	DllStructSetData($tpoint, "Y", $apos[1])
	If $ftoclient Then
		_winapi_screentoclient($hwnd, $tpoint)
		If @error Then Return SetError(@error, @extended, 0)
	EndIf
	Return $tpoint
EndFunc

Func _winapi_getmouseposx($ftoclient = False, $hwnd = 0)
	Local $tpoint = _winapi_getmousepos($ftoclient, $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($tpoint, "X")
EndFunc

Func _winapi_getmouseposy($ftoclient = False, $hwnd = 0)
	Local $tpoint = _winapi_getmousepos($ftoclient, $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($tpoint, "Y")
EndFunc

Func _winapi_getobject($hobject, $isize, $pobject)
	Local $aresult = DllCall("gdi32.dll", "int", "GetObject", "handle", $hobject, "int", $isize, "ptr", $pobject)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getopenfilename($stitle = "", $sfilter = "All files (*.*)", $sinitaldir = ".", $sdefaultfile = "", $sdefaultext = "", $ifilterindex = 1, $iflags = 0, $iflagsex = 0, $hwndowner = 0)
	Local $ipathlen = 4096
	Local $inulls = 0
	Local $tofn = DllStructCreate($tagopenfilename)
	Local $afiles[1] = [0]
	Local $iflag = $iflags
	Local $asflines = StringSplit($sfilter, "|")
	Local $asfilter[$asflines[0] * 2 + 1]
	Local $istart, $ifinal, $stfilter
	$asfilter[0] = $asflines[0] * 2
	For $i = 1 To $asflines[0]
		$istart = StringInStr($asflines[$i], "(", 0, 1)
		$ifinal = StringInStr($asflines[$i], ")", 0, -1)
		$asfilter[$i * 2 - 1] = StringStripWS(StringLeft($asflines[$i], $istart - 1), 3)
		$asfilter[$i * 2] = StringStripWS(StringTrimRight(StringTrimLeft($asflines[$i], $istart), StringLen($asflines[$i]) - $ifinal + 1), 3)
		$stfilter &= "wchar[" & StringLen($asfilter[$i * 2 - 1]) + 1 & "];wchar[" & StringLen($asfilter[$i * 2]) + 1 & "];"
	Next
	Local $ttitle = DllStructCreate("wchar Title[" & StringLen($stitle) + 1 & "]")
	Local $tinitialdir = DllStructCreate("wchar InitDir[" & StringLen($sinitaldir) + 1 & "]")
	Local $tfilter = DllStructCreate($stfilter & "wchar")
	Local $tpath = DllStructCreate("wchar Path[" & $ipathlen & "]")
	Local $textn = DllStructCreate("wchar Extension[" & StringLen($sdefaultext) + 1 & "]")
	For $i = 1 To $asfilter[0]
		DllStructSetData($tfilter, $i, $asfilter[$i])
	Next
	DllStructSetData($ttitle, "Title", $stitle)
	DllStructSetData($tinitialdir, "InitDir", $sinitaldir)
	DllStructSetData($tpath, "Path", $sdefaultfile)
	DllStructSetData($textn, "Extension", $sdefaultext)
	DllStructSetData($tofn, "StructSize", DllStructGetSize($tofn))
	DllStructSetData($tofn, "hwndOwner", $hwndowner)
	DllStructSetData($tofn, "lpstrFilter", DllStructGetPtr($tfilter))
	DllStructSetData($tofn, "nFilterIndex", $ifilterindex)
	DllStructSetData($tofn, "lpstrFile", DllStructGetPtr($tpath))
	DllStructSetData($tofn, "nMaxFile", $ipathlen)
	DllStructSetData($tofn, "lpstrInitialDir", DllStructGetPtr($tinitialdir))
	DllStructSetData($tofn, "lpstrTitle", DllStructGetPtr($ttitle))
	DllStructSetData($tofn, "Flags", $iflag)
	DllStructSetData($tofn, "lpstrDefExt", DllStructGetPtr($textn))
	DllStructSetData($tofn, "FlagsEx", $iflagsex)
	DllCall("comdlg32.dll", "bool", "GetOpenFileNameW", "ptr", DllStructGetPtr($tofn))
	If @error Then Return SetError(@error, @extended, $afiles)
	If BitAND($iflags, $ofn_allowmultiselect) = $ofn_allowmultiselect AND BitAND($iflags, $ofn_explorer) = $ofn_explorer Then
		For $x = 1 To $ipathlen
			If DllStructGetData($tpath, "Path", $x) = Chr(0) Then
				DllStructSetData($tpath, "Path", "|", $x)
				$inulls += 1
			Else
				$inulls = 0
			EndIf
			If $inulls = 2 Then ExitLoop
		Next
		DllStructSetData($tpath, "Path", Chr(0), $x - 1)
		$afiles = StringSplit(DllStructGetData($tpath, "Path"), "|")
		If $afiles[0] = 1 Then Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
		Return StringSplit(DllStructGetData($tpath, "Path"), "|")
	ElseIf BitAND($iflags, $ofn_allowmultiselect) = $ofn_allowmultiselect Then
		$afiles = StringSplit(DllStructGetData($tpath, "Path"), " ")
		If $afiles[0] = 1 Then Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
		Return StringSplit(StringReplace(DllStructGetData($tpath, "Path"), " ", "|"), "|")
	Else
		Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
	EndIf
EndFunc

Func _winapi_getoverlappedresult($hfile, $poverlapped, ByRef $ibytes, $fwait = False)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetOverlappedResult", "handle", $hfile, "ptr", $poverlapped, "dword*", 0, "bool", $fwait)
	If @error Then Return SetError(@error, @extended, False)
	$ibytes = $aresult[3]
	Return $aresult[0]
EndFunc

Func _winapi_getparent($hwnd)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetParent", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getprocessaffinitymask($hprocess)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetProcessAffinityMask", "handle", $hprocess, "dword_ptr*", 0, "dword_ptr*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Local $amask[3]
	$amask[0] = True
	$amask[1] = $aresult[2]
	$amask[2] = $aresult[3]
	Return $amask
EndFunc

Func _winapi_getsavefilename($stitle = "", $sfilter = "All files (*.*)", $sinitaldir = ".", $sdefaultfile = "", $sdefaultext = "", $ifilterindex = 1, $iflags = 0, $iflagsex = 0, $hwndowner = 0)
	Local $ipathlen = 4096
	Local $tofn = DllStructCreate($tagopenfilename)
	Local $afiles[1] = [0]
	Local $iflag = $iflags
	Local $asflines = StringSplit($sfilter, "|")
	Local $asfilter[$asflines[0] * 2 + 1]
	Local $istart, $ifinal, $stfilter
	$asfilter[0] = $asflines[0] * 2
	For $i = 1 To $asflines[0]
		$istart = StringInStr($asflines[$i], "(", 0, 1)
		$ifinal = StringInStr($asflines[$i], ")", 0, -1)
		$asfilter[$i * 2 - 1] = StringStripWS(StringLeft($asflines[$i], $istart - 1), 3)
		$asfilter[$i * 2] = StringStripWS(StringTrimRight(StringTrimLeft($asflines[$i], $istart), StringLen($asflines[$i]) - $ifinal + 1), 3)
		$stfilter &= "wchar[" & StringLen($asfilter[$i * 2 - 1]) + 1 & "];wchar[" & StringLen($asfilter[$i * 2]) + 1 & "];"
	Next
	Local $ttitle = DllStructCreate("wchar Title[" & StringLen($stitle) + 1 & "]")
	Local $tinitialdir = DllStructCreate("wchar InitDir[" & StringLen($sinitaldir) + 1 & "]")
	Local $tfilter = DllStructCreate($stfilter & "wchar")
	Local $tpath = DllStructCreate("wchar Path[" & $ipathlen & "]")
	Local $textn = DllStructCreate("wchar Extension[" & StringLen($sdefaultext) + 1 & "]")
	For $i = 1 To $asfilter[0]
		DllStructSetData($tfilter, $i, $asfilter[$i])
	Next
	DllStructSetData($ttitle, "Title", $stitle)
	DllStructSetData($tinitialdir, "InitDir", $sinitaldir)
	DllStructSetData($tpath, "Path", $sdefaultfile)
	DllStructSetData($textn, "Extension", $sdefaultext)
	DllStructSetData($tofn, "StructSize", DllStructGetSize($tofn))
	DllStructSetData($tofn, "hwndOwner", $hwndowner)
	DllStructSetData($tofn, "lpstrFilter", DllStructGetPtr($tfilter))
	DllStructSetData($tofn, "nFilterIndex", $ifilterindex)
	DllStructSetData($tofn, "lpstrFile", DllStructGetPtr($tpath))
	DllStructSetData($tofn, "nMaxFile", $ipathlen)
	DllStructSetData($tofn, "lpstrInitialDir", DllStructGetPtr($tinitialdir))
	DllStructSetData($tofn, "lpstrTitle", DllStructGetPtr($ttitle))
	DllStructSetData($tofn, "Flags", $iflag)
	DllStructSetData($tofn, "lpstrDefExt", DllStructGetPtr($textn))
	DllStructSetData($tofn, "FlagsEx", $iflagsex)
	DllCall("comdlg32.dll", "bool", "GetSaveFileNameW", "ptr", DllStructGetPtr($tofn))
	If @error Then Return SetError(@error, @extended, $afiles)
	Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
EndFunc

Func _winapi_getstockobject($iobject)
	Local $aresult = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $iobject)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getstdhandle($istdhandle)
	If $istdhandle < 0 OR $istdhandle > 2 Then Return SetError(2, 0, -1)
	Local Const $ahandle[3] = [-10, -11, -12]
	Local $aresult = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $ahandle[$istdhandle])
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_getsyscolor($iindex)
	Local $aresult = DllCall("user32.dll", "dword", "GetSysColor", "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getsyscolorbrush($iindex)
	Local $aresult = DllCall("user32.dll", "handle", "GetSysColorBrush", "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getsystemmetrics($iindex)
	Local $aresult = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_gettextextentpoint32($hdc, $stext)
	Local $tsize = DllStructCreate($tagsize)
	Local $isize = StringLen($stext)
	DllCall("gdi32.dll", "bool", "GetTextExtentPoint32W", "handle", $hdc, "wstr", $stext, "int", $isize, "ptr", DllStructGetPtr($tsize))
	If @error Then Return SetError(@error, @extended, 0)
	Return $tsize
EndFunc

Func _winapi_getwindow($hwnd, $icmd)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetWindow", "hwnd", $hwnd, "uint", $icmd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowdc($hwnd)
	Local $aresult = DllCall("user32.dll", "handle", "GetWindowDC", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowheight($hwnd)
	Local $trect = _winapi_getwindowrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Bottom") - DllStructGetData($trect, "Top")
EndFunc

Func _winapi_getwindowlong($hwnd, $iindex)
	Local $sfuncname = "GetWindowLongW"
	If @AutoItX64 Then $sfuncname = "GetWindowLongPtrW"
	Local $aresult = DllCall("user32.dll", "long_ptr", $sfuncname, "hwnd", $hwnd, "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowplacement($hwnd)
	Local $twindowplacement = DllStructCreate($tagwindowplacement)
	DllStructSetData($twindowplacement, "length", DllStructGetSize($twindowplacement))
	Local $pwindowplacement = DllStructGetPtr($twindowplacement)
	DllCall("user32.dll", "bool", "GetWindowPlacement", "hwnd", $hwnd, "ptr", $pwindowplacement)
	If @error Then Return SetError(@error, @extended, 0)
	Return $twindowplacement
EndFunc

Func _winapi_getwindowrect($hwnd)
	Local $trect = DllStructCreate($tagrect)
	DllCall("user32.dll", "bool", "GetWindowRect", "hwnd", $hwnd, "ptr", DllStructGetPtr($trect))
	If @error Then Return SetError(@error, @extended, 0)
	Return $trect
EndFunc

Func _winapi_getwindowrgn($hwnd, $hrgn)
	Local $aresult = DllCall("user32.dll", "int", "GetWindowRgn", "hwnd", $hwnd, "handle", $hrgn)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowtext($hwnd)
	Local $aresult = DllCall("user32.dll", "int", "GetWindowTextW", "hwnd", $hwnd, "wstr", "", "int", 4096)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_getwindowthreadprocessid($hwnd, ByRef $ipid)
	Local $aresult = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hwnd, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	$ipid = $aresult[2]
	Return $aresult[0]
EndFunc

Func _winapi_getwindowwidth($hwnd)
	Local $trect = _winapi_getwindowrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Right") - DllStructGetData($trect, "Left")
EndFunc

Func _winapi_getxyfrompoint(ByRef $tpoint, ByRef $ix, ByRef $iy)
	$ix = DllStructGetData($tpoint, "X")
	$iy = DllStructGetData($tpoint, "Y")
EndFunc

Func _winapi_globalmemorystatus()
	Local $tmem = DllStructCreate($tagmemorystatusex)
	Local $pmem = DllStructGetPtr($tmem)
	Local $imem = DllStructGetSize($tmem)
	DllStructSetData($tmem, 1, $imem)
	DllCall("kernel32.dll", "none", "GlobalMemoryStatusEx", "ptr", $pmem)
	If @error Then Return SetError(@error, @extended, 0)
	Local $amem[7]
	$amem[0] = DllStructGetData($tmem, 2)
	$amem[1] = DllStructGetData($tmem, 3)
	$amem[2] = DllStructGetData($tmem, 4)
	$amem[3] = DllStructGetData($tmem, 5)
	$amem[4] = DllStructGetData($tmem, 6)
	$amem[5] = DllStructGetData($tmem, 7)
	$amem[6] = DllStructGetData($tmem, 8)
	Return $amem
EndFunc

Func _winapi_guidfromstring($sguid)
	Local $tguid = DllStructCreate($tagguid)
	_winapi_guidfromstringex($sguid, DllStructGetPtr($tguid))
	If @error Then Return SetError(@error, @extended, 0)
	Return $tguid
EndFunc

Func _winapi_guidfromstringex($sguid, $pguid)
	Local $aresult = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $sguid, "ptr", $pguid)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_hiword($ilong)
	Return BitShift($ilong, 16)
EndFunc

Func _winapi_inprocess($hwnd, ByRef $hlastwnd)
	If $hwnd = $hlastwnd Then Return True
	For $ii = $__gainprocess_winapi[0][0] To 1 Step -1
		If $hwnd = $__gainprocess_winapi[$ii][0] Then
			If $__gainprocess_winapi[$ii][1] Then
				$hlastwnd = $hwnd
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $iprocessid
	_winapi_getwindowthreadprocessid($hwnd, $iprocessid)
	Local $icount = $__gainprocess_winapi[0][0] + 1
	If $icount >= 64 Then $icount = 1
	$__gainprocess_winapi[0][0] = $icount
	$__gainprocess_winapi[$icount][0] = $hwnd
	$__gainprocess_winapi[$icount][1] = ($iprocessid = @AutoItPID)
	Return $__gainprocess_winapi[$icount][1]
EndFunc

Func _winapi_inttofloat($iint)
	Local $tint = DllStructCreate("int")
	Local $tfloat = DllStructCreate("float", DllStructGetPtr($tint))
	DllStructSetData($tint, 1, $iint)
	Return DllStructGetData($tfloat, 1)
EndFunc

Func _winapi_isclassname($hwnd, $sclassname)
	Local $sseparator = Opt("GUIDataSeparatorChar")
	Local $aclassname = StringSplit($sclassname, $sseparator)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $sclasscheck = _winapi_getclassname($hwnd)
	For $x = 1 To UBound($aclassname) - 1
		If StringUpper(StringMid($sclasscheck, 1, StringLen($aclassname[$x]))) = StringUpper($aclassname[$x]) Then Return True
	Next
	Return False
EndFunc

Func _winapi_iswindow($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_iswindowvisible($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_invalidaterect($hwnd, $trect = 0, $ferase = True)
	Local $prect = 0
	If IsDllStruct($trect) Then $prect = DllStructGetPtr($trect)
	Local $aresult = DllCall("user32.dll", "bool", "InvalidateRect", "hwnd", $hwnd, "ptr", $prect, "bool", $ferase)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_lineto($hdc, $ix, $iy)
	Local $aresult = DllCall("gdi32.dll", "bool", "LineTo", "handle", $hdc, "int", $ix, "int", $iy)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_loadbitmap($hinstance, $sbitmap)
	Local $sbitmaptype = "int"
	If IsString($sbitmap) Then $sbitmaptype = "wstr"
	Local $aresult = DllCall("user32.dll", "handle", "LoadBitmapW", "handle", $hinstance, $sbitmaptype, $sbitmap)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadimage($hinstance, $simage, $itype, $ixdesired, $iydesired, $iload)
	Local $aresult, $simagetype = "int"
	If IsString($simage) Then $simagetype = "wstr"
	$aresult = DllCall("user32.dll", "handle", "LoadImageW", "handle", $hinstance, $simagetype, $simage, "uint", $itype, "int", $ixdesired, "int", $iydesired, "uint", $iload)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadlibrary($sfilename)
	Local $aresult = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sfilename)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadlibraryex($sfilename, $iflags = 0)
	Local $aresult = DllCall("kernel32.dll", "handle", "LoadLibraryExW", "wstr", $sfilename, "ptr", 0, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadshell32icon($iiconid)
	Local $ticons = DllStructCreate("ptr Data")
	Local $picons = DllStructGetPtr($ticons)
	Local $iicons = _winapi_extracticonex("shell32.dll", $iiconid, 0, $picons, 1)
	If @error Then Return SetError(@error, @extended, 0)
	If $iicons <= 0 Then Return SetError(1, 0, 0)
	Return DllStructGetData($ticons, "Data")
EndFunc

Func _winapi_loadstring($hinstance, $istringid)
	Local $aresult = DllCall("user32.dll", "int", "LoadStringW", "handle", $hinstance, "uint", $istringid, "wstr", "", "int", 4096)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($aresult[0], $aresult[3])
EndFunc

Func _winapi_localfree($hmem)
	Local $aresult = DllCall("kernel32.dll", "handle", "LocalFree", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_loword($ilong)
	Return BitAND($ilong, 65535)
EndFunc

Func _winapi_makelangid($lgidprimary, $lgidsub)
	Return BitOR(BitShift($lgidsub, -10), $lgidprimary)
EndFunc

Func _winapi_makelcid($lgid, $srtid)
	Return BitOR(BitShift($srtid, -16), $lgid)
EndFunc

Func _winapi_makelong($ilo, $ihi)
	Return BitOR(BitShift($ihi, -16), BitAND($ilo, 65535))
EndFunc

Func _winapi_makeqword($lodword, $hidword)
	Local $tint64 = DllStructCreate("uint64")
	Local $tdwords = DllStructCreate("dword;dword", DllStructGetPtr($tint64))
	DllStructSetData($tdwords, 1, $lodword)
	DllStructSetData($tdwords, 2, $hidword)
	Return DllStructGetData($tint64, 1)
EndFunc

Func _winapi_messagebeep($itype = 1)
	Local $isound
	Switch $itype
		Case 1
			$isound = 0
		Case 2
			$isound = 16
		Case 3
			$isound = 32
		Case 4
			$isound = 48
		Case 5
			$isound = 64
		Case Else
			$isound = -1
	EndSwitch
	Local $aresult = DllCall("user32.dll", "bool", "MessageBeep", "uint", $isound)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_msgbox($iflags, $stitle, $stext)
	BlockInput(0)
	MsgBox($iflags, $stitle, $stext & "      ")
EndFunc

Func _winapi_mouse_event($iflags, $ix = 0, $iy = 0, $idata = 0, $iextrainfo = 0)
	DllCall("user32.dll", "none", "mouse_event", "dword", $iflags, "dword", $ix, "dword", $iy, "dword", $idata, "ulong_ptr", $iextrainfo)
	If @error Then Return SetError(@error, @extended)
EndFunc

Func _winapi_moveto($hdc, $ix, $iy)
	Local $aresult = DllCall("gdi32.dll", "bool", "MoveToEx", "handle", $hdc, "int", $ix, "int", $iy, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_movewindow($hwnd, $ix, $iy, $iwidth, $iheight, $frepaint = True)
	Local $aresult = DllCall("user32.dll", "bool", "MoveWindow", "hwnd", $hwnd, "int", $ix, "int", $iy, "int", $iwidth, "int", $iheight, "bool", $frepaint)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_muldiv($inumber, $inumerator, $idenominator)
	Local $aresult = DllCall("kernel32.dll", "int", "MulDiv", "int", $inumber, "int", $inumerator, "int", $idenominator)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_multibytetowidechar($stext, $icodepage = 0, $iflags = 0, $bretstring = False)
	Local $stexttype = "ptr", $ptext = $stext
	If IsDllStruct($stext) Then
		$ptext = DllStructGetPtr($stext)
	Else
		If NOT IsPtr($stext) Then $stexttype = "STR"
	EndIf
	Local $aresult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $icodepage, "dword", $iflags, $stexttype, $ptext, "int", -1, "ptr", 0, "int", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Local $iout = $aresult[0]
	Local $tout = DllStructCreate("wchar[" & $iout & "]")
	Local $pout = DllStructGetPtr($tout)
	$aresult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $icodepage, "dword", $iflags, $stexttype, $ptext, "int", -1, "ptr", $pout, "int", $iout)
	If @error Then Return SetError(@error, @extended, 0)
	If $bretstring Then Return DllStructGetData($tout, 1)
	Return $tout
EndFunc

Func _winapi_multibytetowidecharex($stext, $ptext, $icodepage = 0, $iflags = 0)
	Local $aresult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $icodepage, "dword", $iflags, "STR", $stext, "int", -1, "ptr", $ptext, "int", (StringLen($stext) + 1) * 2)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_openprocess($iaccess, $finherit, $iprocessid, $fdebugpriv = False)
	Local $aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $finherit, "dword", $iprocessid)
	If @error Then Return SetError(@error, @extended, 0)
	If $aresult[0] Then Return $aresult[0]
	If NOT $fdebugpriv Then Return 0
	Local $htoken = _security__openthreadtokenex(BitOR($token_adjust_privileges, $token_query))
	If @error Then Return SetError(@error, @extended, 0)
	_security__setprivilege($htoken, "SeDebugPrivilege", True)
	Local $ierror = @error
	Local $ilasterror = @extended
	Local $iret = 0
	If NOT @error Then
		$aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $finherit, "dword", $iprocessid)
		$ierror = @error
		$ilasterror = @extended
		If $aresult[0] Then $iret = $aresult[0]
		_security__setprivilege($htoken, "SeDebugPrivilege", False)
		If @error Then
			$ierror = @error
			$ilasterror = @extended
		EndIf
	EndIf
	_winapi_closehandle($htoken)
	Return SetError($ierror, $ilasterror, $iret)
EndFunc

Func __winapi_parsefiledialogpath($spath)
	Local $afiles[3]
	$afiles[0] = 2
	Local $stemp = StringMid($spath, 1, StringInStr($spath, "\", 0, -1) - 1)
	$afiles[1] = $stemp
	$afiles[2] = StringMid($spath, StringInStr($spath, "\", 0, -1) + 1)
	Return $afiles
EndFunc

Func _winapi_pathfindonpath(Const $szfile, $aextrapaths = "", Const $szpathdelimiter = @LF)
	Local $iextracount = 0
	If IsString($aextrapaths) Then
		If StringLen($aextrapaths) Then
			$aextrapaths = StringSplit($aextrapaths, $szpathdelimiter, 1 + 2)
			$iextracount = UBound($aextrapaths, 1)
		EndIf
	ElseIf IsArray($aextrapaths) Then
		$iextracount = UBound($aextrapaths)
	EndIf
	Local $tpaths, $tpathptrs
	If $iextracount Then
		Local $szstruct = ""
		For $path In $aextrapaths
			$szstruct &= "wchar[" & StringLen($path) + 1 & "];"
		Next
		$tpaths = DllStructCreate($szstruct)
		$tpathptrs = DllStructCreate("ptr[" & $iextracount + 1 & "]")
		For $i = 1 To $iextracount
			DllStructSetData($tpaths, $i, $aextrapaths[$i - 1])
			DllStructSetData($tpathptrs, 1, DllStructGetPtr($tpaths, $i), $i)
		Next
		DllStructSetData($tpathptrs, 1, Ptr(0), $iextracount + 1)
	EndIf
	Local $aresult = DllCall("shlwapi.dll", "bool", "PathFindOnPathW", "wstr", $szfile, "ptr", DllStructGetPtr($tpathptrs))
	If @error Then Return SetError(@error, @extended, False)
	If $aresult[0] = 0 Then Return SetError(1, 0, $szfile)
	Return $aresult[1]
EndFunc

Func _winapi_pointfromrect(ByRef $trect, $fcenter = True)
	Local $ix1 = DllStructGetData($trect, "Left")
	Local $iy1 = DllStructGetData($trect, "Top")
	Local $ix2 = DllStructGetData($trect, "Right")
	Local $iy2 = DllStructGetData($trect, "Bottom")
	If $fcenter Then
		$ix1 = $ix1 + (($ix2 - $ix1) / 2)
		$iy1 = $iy1 + (($iy2 - $iy1) / 2)
	EndIf
	Local $tpoint = DllStructCreate($tagpoint)
	DllStructSetData($tpoint, "X", $ix1)
	DllStructSetData($tpoint, "Y", $iy1)
	Return $tpoint
EndFunc

Func _winapi_postmessage($hwnd, $imsg, $iwparam, $ilparam)
	Local $aresult = DllCall("user32.dll", "bool", "PostMessage", "hwnd", $hwnd, "uint", $imsg, "wparam", $iwparam, "lparam", $ilparam)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_primarylangid($lgid)
	Return BitAND($lgid, 1023)
EndFunc

Func _winapi_ptinrect(ByRef $trect, ByRef $tpoint)
	Local $ix = DllStructGetData($tpoint, "X")
	Local $iy = DllStructGetData($tpoint, "Y")
	Local $aresult = DllCall("user32.dll", "bool", "PtInRect", "ptr", DllStructGetPtr($trect), "long", $ix, "long", $iy)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_readfile($hfile, $pbuffer, $itoread, ByRef $iread, $poverlapped = 0)
	Local $aresult = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $hfile, "ptr", $pbuffer, "dword", $itoread, "dword*", 0, "ptr", $poverlapped)
	If @error Then Return SetError(@error, @extended, False)
	$iread = $aresult[4]
	Return $aresult[0]
EndFunc

Func _winapi_readprocessmemory($hprocess, $pbaseaddress, $pbuffer, $isize, ByRef $iread)
	Local $aresult = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", $hprocess, "ptr", $pbaseaddress, "ptr", $pbuffer, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	$iread = $aresult[5]
	Return $aresult[0]
EndFunc

Func _winapi_rectisempty(ByRef $trect)
	Return (DllStructGetData($trect, "Left") = 0) AND (DllStructGetData($trect, "Top") = 0) AND (DllStructGetData($trect, "Right") = 0) AND (DllStructGetData($trect, "Bottom") = 0)
EndFunc

Func _winapi_redrawwindow($hwnd, $trect = 0, $hregion = 0, $iflags = 5)
	Local $prect = 0
	If $trect <> 0 Then $prect = DllStructGetPtr($trect)
	Local $aresult = DllCall("user32.dll", "bool", "RedrawWindow", "hwnd", $hwnd, "ptr", $prect, "handle", $hregion, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_registerwindowmessage($smessage)
	Local $aresult = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $smessage)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_releasecapture()
	Local $aresult = DllCall("user32.dll", "bool", "ReleaseCapture")
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_releasedc($hwnd, $hdc)
	Local $aresult = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hwnd, "handle", $hdc)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_screentoclient($hwnd, ByRef $tpoint)
	Local $aresult = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $hwnd, "ptr", DllStructGetPtr($tpoint))
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_selectobject($hdc, $hgdiobj)
	Local $aresult = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hdc, "handle", $hgdiobj)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setbkcolor($hdc, $icolor)
	Local $aresult = DllCall("gdi32.dll", "INT", "SetBkColor", "handle", $hdc, "dword", $icolor)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_setbkmode($hdc, $ibkmode)
	Local $aresult = DllCall("gdi32.dll", "int", "SetBkMode", "handle", $hdc, "int", $ibkmode)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setcapture($hwnd)
	Local $aresult = DllCall("user32.dll", "hwnd", "SetCapture", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setcursor($hcursor)
	Local $aresult = DllCall("user32.dll", "handle", "SetCursor", "handle", $hcursor)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setdefaultprinter($sprinter)
	Local $aresult = DllCall("winspool.drv", "bool", "SetDefaultPrinterW", "wstr", $sprinter)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setdibits($hdc, $hbmp, $istartscan, $iscanlines, $pbits, $pbmi, $icoloruse = 0)
	Local $aresult = DllCall("gdi32.dll", "int", "SetDIBits", "handle", $hdc, "handle", $hbmp, "uint", $istartscan, "uint", $iscanlines, "ptr", $pbits, "ptr", $pbmi, "uint", $icoloruse)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setendoffile($hfile)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetEndOfFile", "handle", $hfile)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setevent($hevent)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetEvent", "handle", $hevent)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setfilepointer($hfile, $ipos, $imethod = 0)
	Local $aresult = DllCall("kernel32.dll", "INT", "SetFilePointer", "handle", $hfile, "long", $ipos, "ptr", 0, "long", $imethod)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_setfocus($hwnd)
	Local $aresult = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setfont($hwnd, $hfont, $fredraw = True)
	_sendmessage($hwnd, $__winapiconstant_wm_setfont, $hfont, $fredraw, 0, "hwnd")
EndFunc

Func _winapi_sethandleinformation($hobject, $imask, $iflags)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $hobject, "dword", $imask, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setlayeredwindowattributes($hwnd, $i_transcolor, $transparency = 255, $dwflags = 3, $iscolorref = False)
	If $dwflags = Default OR $dwflags = "" OR $dwflags < 0 Then $dwflags = 3
	If NOT $iscolorref Then
		$i_transcolor = Hex(String($i_transcolor), 6)
		$i_transcolor = Execute("0x00" & StringMid($i_transcolor, 5, 2) & StringMid($i_transcolor, 3, 2) & StringMid($i_transcolor, 1, 2))
	EndIf
	Local $aresult = DllCall("user32.dll", "bool", "SetLayeredWindowAttributes", "hwnd", $hwnd, "dword", $i_transcolor, "byte", $transparency, "dword", $dwflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setparent($hwndchild, $hwndparent)
	Local $aresult = DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $hwndchild, "hwnd", $hwndparent)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setprocessaffinitymask($hprocess, $imask)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetProcessAffinityMask", "handle", $hprocess, "ulong_ptr", $imask)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setsyscolors($velements, $vcolors)
	Local $isearray = IsArray($velements), $iscarray = IsArray($vcolors)
	Local $ielementnum
	If NOT $iscarray AND NOT $isearray Then
		$ielementnum = 1
	ElseIf $iscarray OR $isearray Then
		If NOT $iscarray OR NOT $isearray Then Return SetError(-1, -1, False)
		If UBound($velements) <> UBound($vcolors) Then Return SetError(-1, -1, False)
		$ielementnum = UBound($velements)
	EndIf
	Local $telements = DllStructCreate("int Element[" & $ielementnum & "]")
	Local $tcolors = DllStructCreate("dword NewColor[" & $ielementnum & "]")
	Local $pelements = DllStructGetPtr($telements)
	Local $pcolors = DllStructGetPtr($tcolors)
	If NOT $isearray Then
		DllStructSetData($telements, "Element", $velements, 1)
	Else
		For $x = 0 To $ielementnum - 1
			DllStructSetData($telements, "Element", $velements[$x], $x + 1)
		Next
	EndIf
	If NOT $iscarray Then
		DllStructSetData($tcolors, "NewColor", $vcolors, 1)
	Else
		For $x = 0 To $ielementnum - 1
			DllStructSetData($tcolors, "NewColor", $vcolors[$x], $x + 1)
		Next
	EndIf
	Local $aresult = DllCall("user32.dll", "bool", "SetSysColors", "int", $ielementnum, "ptr", $pelements, "ptr", $pcolors)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_settextcolor($hdc, $icolor)
	Local $aresult = DllCall("gdi32.dll", "INT", "SetTextColor", "handle", $hdc, "dword", $icolor)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowlong($hwnd, $iindex, $ivalue)
	_winapi_setlasterror(0)
	Local $sfuncname = "SetWindowLongW"
	If @AutoItX64 Then $sfuncname = "SetWindowLongPtrW"
	Local $aresult = DllCall("user32.dll", "long_ptr", $sfuncname, "hwnd", $hwnd, "int", $iindex, "long_ptr", $ivalue)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowplacement($hwnd, $pwindowplacement)
	Local $aresult = DllCall("user32.dll", "bool", "SetWindowPlacement", "hwnd", $hwnd, "ptr", $pwindowplacement)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowpos($hwnd, $hafter, $ix, $iy, $icx, $icy, $iflags)
	Local $aresult = DllCall("user32.dll", "bool", "SetWindowPos", "hwnd", $hwnd, "hwnd", $hafter, "int", $ix, "int", $iy, "int", $icx, "int", $icy, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowrgn($hwnd, $hrgn, $bredraw = True)
	Local $aresult = DllCall("user32.dll", "int", "SetWindowRgn", "hwnd", $hwnd, "handle", $hrgn, "bool", $bredraw)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowshookex($idhook, $lpfn, $hmod, $dwthreadid = 0)
	Local $aresult = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", $idhook, "ptr", $lpfn, "handle", $hmod, "dword", $dwthreadid)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowtext($hwnd, $stext)
	Local $aresult = DllCall("user32.dll", "bool", "SetWindowTextW", "hwnd", $hwnd, "wstr", $stext)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_showcursor($fshow)
	Local $aresult = DllCall("user32.dll", "int", "ShowCursor", "bool", $fshow)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_showerror($stext, $fexit = True)
	_winapi_msgbox(266256, "Error", $stext)
	If $fexit Then Exit
EndFunc

Func _winapi_showmsg($stext)
	_winapi_msgbox(64 + 4096, "Information", $stext)
EndFunc

Func _winapi_showwindow($hwnd, $icmdshow = 5)
	Local $aresult = DllCall("user32.dll", "bool", "ShowWindow", "hwnd", $hwnd, "int", $icmdshow)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_stringfromguid($pguid)
	Local $aresult = DllCall("ole32.dll", "int", "StringFromGUID2", "ptr", $pguid, "wstr", "", "int", 40)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_sublangid($lgid)
	Return BitShift($lgid, 10)
EndFunc

Func _winapi_systemparametersinfo($iaction, $iparam = 0, $vparam = 0, $iwinini = 0)
	Local $aresult = DllCall("user32.dll", "bool", "SystemParametersInfoW", "uint", $iaction, "uint", $iparam, "ptr", $vparam, "uint", $iwinini)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_twipsperpixelx()
	Local $lngdc, $twipsperpixelx
	$lngdc = _winapi_getdc(0)
	$twipsperpixelx = 1440 / _winapi_getdevicecaps($lngdc, $__winapiconstant_logpixelsx)
	_winapi_releasedc(0, $lngdc)
	Return $twipsperpixelx
EndFunc

Func _winapi_twipsperpixely()
	Local $lngdc, $twipsperpixely
	$lngdc = _winapi_getdc(0)
	$twipsperpixely = 1440 / _winapi_getdevicecaps($lngdc, $__winapiconstant_logpixelsy)
	_winapi_releasedc(0, $lngdc)
	Return $twipsperpixely
EndFunc

Func _winapi_unhookwindowshookex($hhk)
	Local $aresult = DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $hhk)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_updatelayeredwindow($hwnd, $hdcdest, $pptdest, $psize, $hdcsrce, $pptsrce, $irgb, $pblend, $iflags)
	Local $aresult = DllCall("user32.dll", "bool", "UpdateLayeredWindow", "hwnd", $hwnd, "handle", $hdcdest, "ptr", $pptdest, "ptr", $psize, "handle", $hdcsrce, "ptr", $pptsrce, "dword", $irgb, "ptr", $pblend, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_updatewindow($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "UpdateWindow", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_waitforinputidle($hprocess, $itimeout = -1)
	Local $aresult = DllCall("user32.dll", "dword", "WaitForInputIdle", "handle", $hprocess, "dword", $itimeout)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_waitformultipleobjects($icount, $phandles, $fwaitall = False, $itimeout = -1)
	Local $aresult = DllCall("kernel32.dll", "INT", "WaitForMultipleObjects", "dword", $icount, "ptr", $phandles, "bool", $fwaitall, "dword", $itimeout)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_waitforsingleobject($hhandle, $itimeout = -1)
	Local $aresult = DllCall("kernel32.dll", "INT", "WaitForSingleObject", "handle", $hhandle, "dword", $itimeout)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_widechartomultibyte($punicode, $icodepage = 0, $bretstring = True)
	Local $sunicodetype = "ptr"
	If IsDllStruct($punicode) Then
		$punicode = DllStructGetPtr($punicode)
	Else
		If NOT IsPtr($punicode) Then $sunicodetype = "wstr"
	EndIf
	Local $aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $icodepage, "dword", 0, $sunicodetype, $punicode, "int", -1, "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, "")
	Local $tmultibyte = DllStructCreate("char[" & $aresult[0] & "]")
	Local $pmultibyte = DllStructGetPtr($tmultibyte)
	$aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $icodepage, "dword", 0, $sunicodetype, $punicode, "int", -1, "ptr", $pmultibyte, "int", $aresult[0], "ptr", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, "")
	If $bretstring Then Return DllStructGetData($tmultibyte, 1)
	Return $tmultibyte
EndFunc

Func _winapi_windowfrompoint(ByRef $tpoint)
	Local $tpointcast = DllStructCreate("int64", DllStructGetPtr($tpoint))
	Local $aresult = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int64", DllStructGetData($tpointcast, 1))
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_writeconsole($hconsole, $stext)
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteConsoleW", "handle", $hconsole, "wstr", $stext, "dword", StringLen($stext), "dword*", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_writefile($hfile, $pbuffer, $itowrite, ByRef $iwritten, $poverlapped = 0)
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $hfile, "ptr", $pbuffer, "dword", $itowrite, "dword*", 0, "ptr", $poverlapped)
	If @error Then Return SetError(@error, @extended, False)
	$iwritten = $aresult[4]
	Return $aresult[0]
EndFunc

Func _winapi_writeprocessmemory($hprocess, $pbaseaddress, $pbuffer, $isize, ByRef $iwritten, $sbuffer = "ptr")
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", $hprocess, "ptr", $pbaseaddress, $sbuffer, $pbuffer, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	$iwritten = $aresult[5]
	Return $aresult[0]
EndFunc

Global Const $_udf_globalids_offset = 2
Global Const $_udf_globalid_max_win = 16
Global Const $_udf_startid = 10000
Global Const $_udf_globalid_max_ids = 55535
Global Const $__udfguiconstant_ws_visible = 268435456
Global Const $__udfguiconstant_ws_child = 1073741824
Global $_udf_globalids_used[$_udf_globalid_max_win][$_udf_globalid_max_ids + $_udf_globalids_offset + 1]

Func __udf_getnextglobalid($hwnd)
	Local $nctrlid, $iusedindex = -1, $fallused = True
	If NOT WinExists($hwnd) Then Return SetError(-1, -1, 0)
	For $iindex = 0 To $_udf_globalid_max_win - 1
		If $_udf_globalids_used[$iindex][0] <> 0 Then
			If NOT WinExists($_udf_globalids_used[$iindex][0]) Then
				For $x = 0 To UBound($_udf_globalids_used, 2) - 1
					$_udf_globalids_used[$iindex][$x] = 0
				Next
				$_udf_globalids_used[$iindex][1] = $_udf_startid
				$fallused = False
			EndIf
		EndIf
	Next
	For $iindex = 0 To $_udf_globalid_max_win - 1
		If $_udf_globalids_used[$iindex][0] = $hwnd Then
			$iusedindex = $iindex
			ExitLoop
		EndIf
	Next
	If $iusedindex = -1 Then
		For $iindex = 0 To $_udf_globalid_max_win - 1
			If $_udf_globalids_used[$iindex][0] = 0 Then
				$_udf_globalids_used[$iindex][0] = $hwnd
				$_udf_globalids_used[$iindex][1] = $_udf_startid
				$fallused = False
				$iusedindex = $iindex
				ExitLoop
			EndIf
		Next
	EndIf
	If $iusedindex = -1 AND $fallused Then Return SetError(16, 0, 0)
	If $_udf_globalids_used[$iusedindex][1] = $_udf_startid + $_udf_globalid_max_ids Then
		For $iidindex = $_udf_globalids_offset To UBound($_udf_globalids_used, 2) - 1
			If $_udf_globalids_used[$iusedindex][$iidindex] = 0 Then
				$nctrlid = ($iidindex - $_udf_globalids_offset) + 10000
				$_udf_globalids_used[$iusedindex][$iidindex] = $nctrlid
				Return $nctrlid
			EndIf
		Next
		Return SetError(-1, $_udf_globalid_max_ids, 0)
	EndIf
	$nctrlid = $_udf_globalids_used[$iusedindex][1]
	$_udf_globalids_used[$iusedindex][1] += 1
	$_udf_globalids_used[$iusedindex][($nctrlid - 10000) + $_udf_globalids_offset] = $nctrlid
	Return $nctrlid
EndFunc

Func __udf_freeglobalid($hwnd, $iglobalid)
	If $iglobalid - $_udf_startid < 0 OR $iglobalid - $_udf_startid > $_udf_globalid_max_ids Then Return SetError(-1, 0, False)
	For $iindex = 0 To $_udf_globalid_max_win - 1
		If $_udf_globalids_used[$iindex][0] = $hwnd Then
			For $x = $_udf_globalids_offset To UBound($_udf_globalids_used, 2) - 1
				If $_udf_globalids_used[$iindex][$x] = $iglobalid Then
					$_udf_globalids_used[$iindex][$x] = 0
					Return True
				EndIf
			Next
			Return SetError(-3, 0, False)
		EndIf
	Next
	Return SetError(-2, 0, False)
EndFunc

Func __udf_debugprint($stext, $iline = @ScriptLineNumber, $err = @error, $ext = @extended)
	ConsoleWrite("!===========================================================" & @CRLF & "+======================================================" & @CRLF & "-->Line(" & StringFormat("%04d", $iline) & "):" & @TAB & $stext & @CRLF & "+======================================================" & @CRLF)
	Return SetError($err, $ext, 1)
EndFunc

Func __udf_validateclassname($hwnd, $sclassnames)
	__udf_debugprint("This is for debugging only, set the debug variable to false before submitting")
	If _winapi_isclassname($hwnd, $sclassnames) Then Return True
	Local $sseparator = Opt("GUIDataSeparatorChar")
	$sclassnames = StringReplace($sclassnames, $sseparator, ",")
	__udf_debugprint("Invalid Class Type(s):" & @LF & @TAB & "Expecting Type(s): " & $sclassnames & @LF & @TAB & "Received Type : " & _winapi_getclassname($hwnd))
	Exit
EndFunc

Global $_ghcblastwnd
Global $debug_cb = False
Global Const $__comboboxconstant_classname = "ComboBox"
Global Const $__comboboxconstant_em_getline = 196
Global Const $__comboboxconstant_em_lineindex = 187
Global Const $__comboboxconstant_em_linelength = 193
Global Const $__comboboxconstant_em_replacesel = 194
Global Const $__comboboxconstant_wm_setredraw = 11
Global Const $__comboboxconstant_ws_tabstop = 65536
Global Const $__comboboxconstant_default_gui_font = 17
Global Const $tagcomboboxinfo = "dword Size;long EditLeft;long EditTop;long EditRight;long EditBottom;long BtnLeft;long BtnTop;" & "long BtnRight;long BtnBottom;dword BtnState;hwnd hCombo;hwnd hEdit;hwnd hList"

Func _guictrlcombobox_adddir($hwnd, $sfile, $iattributes = 0, $fbrackets = True)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	If BitAND($iattributes, $ddl_drives) = $ddl_drives AND NOT $fbrackets Then
		Local $stext
		Local $gui_no_brackets = GUICreate("no brackets")
		Local $combo_no_brackets = GUICtrlCreateCombo("", 240, 40, 120, 120)
		Local $v_ret = GUICtrlSendMsg($combo_no_brackets, $cb_dir, $iattributes, $sfile)
		For $i = 0 To _guictrlcombobox_getcount($combo_no_brackets) - 1
			_guictrlcombobox_getlbtext($combo_no_brackets, $i, $stext)
			$stext = StringReplace(StringReplace(StringReplace($stext, "[", ""), "]", ":"), "-", "")
			_guictrlcombobox_insertstring($hwnd, $stext)
		Next
		GUIDelete($gui_no_brackets)
		Return $v_ret
	Else
		Return _sendmessage($hwnd, $cb_dir, $iattributes, $sfile, 0, "wparam", "wstr")
	EndIf
EndFunc

Func _guictrlcombobox_addstring($hwnd, $stext)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_addstring, 0, $stext, 0, "wparam", "wstr")
EndFunc

Func _guictrlcombobox_autocomplete($hwnd)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	If NOT __guictrlcombobox_ispressed("08") AND NOT __guictrlcombobox_ispressed("2E") Then
		Local $sedittext = _guictrlcombobox_getedittext($hwnd)
		If StringLen($sedittext) Then
			Local $sinputtext
			Local $ret = _guictrlcombobox_findstring($hwnd, $sedittext)
			If ($ret <> $cb_err) Then
				_guictrlcombobox_getlbtext($hwnd, $ret, $sinputtext)
				_guictrlcombobox_setedittext($hwnd, $sinputtext)
				_guictrlcombobox_seteditsel($hwnd, StringLen($sedittext), StringLen($sinputtext))
			EndIf
		EndIf
	EndIf
EndFunc

Func _guictrlcombobox_beginupdate($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $__comboboxconstant_wm_setredraw) = 0
EndFunc

Func _guictrlcombobox_create($hwnd, $stext, $ix, $iy, $iwidth = 100, $iheight = 120, $istyle = 2097218, $iexstyle = 0)
	If NOT IsHWnd($hwnd) Then Return SetError(1, 0, 0)
	If NOT IsString($stext) Then Return SetError(2, 0, 0)
	Local $atext, $sdelimiter = Opt("GUIDataSeparatorChar")
	If $iwidth = -1 Then $iwidth = 100
	If $iheight = -1 Then $iheight = 120
	Local Const $ws_vscroll = 2097152
	If $istyle = -1 Then $istyle = BitOR($ws_vscroll, $cbs_autohscroll, $cbs_dropdown)
	If $iexstyle = -1 Then $iexstyle = 0
	$istyle = BitOR($istyle, $__udfguiconstant_ws_child, $__comboboxconstant_ws_tabstop, $__udfguiconstant_ws_visible)
	Local $nctrlid = __udf_getnextglobalid($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Local $hcombo = _winapi_createwindowex($iexstyle, $__comboboxconstant_classname, "", $istyle, $ix, $iy, $iwidth, $iheight, $hwnd, $nctrlid)
	_winapi_setfont($hcombo, _winapi_getstockobject($__comboboxconstant_default_gui_font))
	If StringLen($stext) Then
		$atext = StringSplit($stext, $sdelimiter)
		For $x = 1 To $atext[0]
			_guictrlcombobox_addstring($hcombo, $atext[$x])
		Next
	EndIf
	Return $hcombo
EndFunc

Func _guictrlcombobox_deletestring($hwnd, $iindex)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_deletestring, $iindex)
EndFunc

Func _guictrlcombobox_destroy(ByRef $hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT _winapi_isclassname($hwnd, $__comboboxconstant_classname) Then Return SetError(2, 2, False)
	Local $destroyed = 0
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_ghcblastwnd) Then
			Local $nctrlid = _winapi_getdlgctrlid($hwnd)
			Local $hparent = _winapi_getparent($hwnd)
			$destroyed = _winapi_destroywindow($hwnd)
			Local $iret = __udf_freeglobalid($hparent, $nctrlid)
			If NOT $iret Then
			EndIf
		Else
			Return SetError(1, 1, False)
		EndIf
	Else
		$destroyed = GUICtrlDelete($hwnd)
	EndIf
	If $destroyed Then $hwnd = 0
	Return $destroyed <> 0
EndFunc

Func _guictrlcombobox_endupdate($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $__comboboxconstant_wm_setredraw, 1) = 0
EndFunc

Func _guictrlcombobox_findstring($hwnd, $stext, $iindex = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_findstring, $iindex, $stext, 0, "int", "wstr")
EndFunc

Func _guictrlcombobox_findstringexact($hwnd, $stext, $iindex = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_findstringexact, $iindex, $stext, 0, "wparam", "wstr")
EndFunc

Func _guictrlcombobox_getcomboboxinfo($hwnd, ByRef $tinfo)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	$tinfo = DllStructCreate($tagcomboboxinfo)
	Local $pinfo = DllStructGetPtr($tinfo)
	Local $iinfo = DllStructGetSize($tinfo)
	DllStructSetData($tinfo, "Size", $iinfo)
	Return _sendmessage($hwnd, $cb_getcomboboxinfo, 0, $pinfo, 0, "wparam", "ptr") <> 0
EndFunc

Func _guictrlcombobox_getcount($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getcount)
EndFunc

Func _guictrlcombobox_getcuebanner($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $ttext = DllStructCreate("wchar[4096]")
	If _sendmessage($hwnd, $cb_getcuebanner, DllStructGetPtr($ttext), 4096) <> 1 Then Return SetError(-1, 0, "")
	Return _winapi_widechartomultibyte(DllStructGetPtr($ttext))
EndFunc

Func _guictrlcombobox_getcursel($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getcursel)
EndFunc

Func _guictrlcombobox_getdroppedcontrolrect($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $arect[4]
	Local $trect = _guictrlcombobox_getdroppedcontrolrectex($hwnd)
	$arect[0] = DllStructGetData($trect, "Left")
	$arect[1] = DllStructGetData($trect, "Top")
	$arect[2] = DllStructGetData($trect, "Right")
	$arect[3] = DllStructGetData($trect, "Bottom")
	Return $arect
EndFunc

Func _guictrlcombobox_getdroppedcontrolrectex($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $trect = DllStructCreate($tagrect)
	_sendmessage($hwnd, $cb_getdroppedcontrolrect, 0, DllStructGetPtr($trect), 0, "wparam", "ptr")
	Return $trect
EndFunc

Func _guictrlcombobox_getdroppedstate($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getdroppedstate) <> 0
EndFunc

Func _guictrlcombobox_getdroppedwidth($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getdroppedwidth)
EndFunc

Func _guictrlcombobox_geteditsel($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $tstart = DllStructCreate("dword Start")
	Local $tend = DllStructCreate("dword End")
	Local $iret = _sendmessage($hwnd, $cb_geteditsel, DllStructGetPtr($tstart), DllStructGetPtr($tend), 0, "ptr", "ptr")
	If $iret = 0 Then Return SetError($cb_err, $cb_err, $cb_err)
	Local $asel[2]
	$asel[0] = DllStructGetData($tstart, "Start")
	$asel[1] = DllStructGetData($tend, "End")
	Return $asel
EndFunc

Func _guictrlcombobox_getedittext($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $tinfo
	If _guictrlcombobox_getcomboboxinfo($hwnd, $tinfo) Then
		Local $hedit = DllStructGetData($tinfo, "hEdit")
		Local $iline = 0
		Local $iindex = _sendmessage($hedit, $__comboboxconstant_em_lineindex, $iline)
		Local $ilength = _sendmessage($hedit, $__comboboxconstant_em_linelength, $iindex)
		If $ilength = 0 Then Return ""
		Local $tbuffer = DllStructCreate("short Len;wchar Text[" & $ilength + 2 & "]")
		DllStructSetData($tbuffer, "Len", $ilength + 2)
		Local $iret = _sendmessage($hedit, $__comboboxconstant_em_getline, $iline, DllStructGetPtr($tbuffer), 0, "wparam", "ptr")
		If $iret = 0 Then Return SetError(-1, -1, "")
		Local $ttext = DllStructCreate("wchar Text[" & $ilength + 1 & "]", DllStructGetPtr($tbuffer))
		Return DllStructGetData($ttext, "Text")
	Else
		Return SetError(-1, -1, "")
	EndIf
EndFunc

Func _guictrlcombobox_getextendedui($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getextendedui) <> 0
EndFunc

Func _guictrlcombobox_gethorizontalextent($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_gethorizontalextent)
EndFunc

Func _guictrlcombobox_getitemheight($hwnd, $iindex = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getitemheight, $iindex)
EndFunc

Func _guictrlcombobox_getlbtext($hwnd, $iindex, ByRef $stext)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $ilen = _guictrlcombobox_getlbtextlen($hwnd, $iindex)
	Local $tbuffer = DllStructCreate("wchar Text[" & $ilen + 1 & "]")
	Local $iret = _sendmessage($hwnd, $cb_getlbtext, $iindex, DllStructGetPtr($tbuffer), 0, "wparam", "ptr")
	If ($iret == $cb_err) Then Return SetError($cb_err, $cb_err, $cb_err)
	$stext = DllStructGetData($tbuffer, "Text")
	Return $iret
EndFunc

Func _guictrlcombobox_getlbtextlen($hwnd, $iindex)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getlbtextlen, $iindex)
EndFunc

Func _guictrlcombobox_getlist($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $sdelimiter = Opt("GUIDataSeparatorChar")
	Local $sresult = "", $sitem
	For $i = 0 To _guictrlcombobox_getcount($hwnd) - 1
		_guictrlcombobox_getlbtext($hwnd, $i, $sitem)
		$sresult &= $sitem & $sdelimiter
	Next
	Return StringTrimRight($sresult, StringLen($sdelimiter))
EndFunc

Func _guictrlcombobox_getlistarray($hwnd)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $sdelimiter = Opt("GUIDataSeparatorChar")
	Return StringSplit(_guictrlcombobox_getlist($hwnd), $sdelimiter)
EndFunc

Func _guictrlcombobox_getlocale($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getlocale)
EndFunc

Func _guictrlcombobox_getlocalecountry($hwnd)
	Return _winapi_hiword(_guictrlcombobox_getlocale($hwnd))
EndFunc

Func _guictrlcombobox_getlocalelang($hwnd)
	Return _winapi_loword(_guictrlcombobox_getlocale($hwnd))
EndFunc

Func _guictrlcombobox_getlocaleprimlang($hwnd)
	Return _winapi_primarylangid(_guictrlcombobox_getlocalelang($hwnd))
EndFunc

Func _guictrlcombobox_getlocalesublang($hwnd)
	Return _winapi_sublangid(_guictrlcombobox_getlocalelang($hwnd))
EndFunc

Func _guictrlcombobox_getminvisible($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_getminvisible)
EndFunc

Func _guictrlcombobox_gettopindex($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_gettopindex)
EndFunc

Func _guictrlcombobox_initstorage($hwnd, $inum, $ibytes)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_initstorage, $inum, $ibytes)
EndFunc

Func _guictrlcombobox_insertstring($hwnd, $stext, $iindex = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_insertstring, $iindex, $stext, 0, "wparam", "wstr")
EndFunc

Func _guictrlcombobox_limittext($hwnd, $ilimit = 0)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	_sendmessage($hwnd, $cb_limittext, $ilimit)
EndFunc

Func _guictrlcombobox_replaceeditsel($hwnd, $stext)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $tinfo
	If _guictrlcombobox_getcomboboxinfo($hwnd, $tinfo) Then
		Local $hedit = DllStructGetData($tinfo, "hEdit")
		_sendmessage($hedit, $__comboboxconstant_em_replacesel, True, $stext, 0, "wparam", "wstr")
	EndIf
EndFunc

Func _guictrlcombobox_resetcontent($hwnd)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	_sendmessage($hwnd, $cb_resetcontent)
EndFunc

Func _guictrlcombobox_selectstring($hwnd, $stext, $iindex = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_selectstring, $iindex, $stext, 0, "wparam", "wstr")
EndFunc

Func _guictrlcombobox_setcuebanner($hwnd, $stext)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $ttext = _winapi_multibytetowidechar($stext)
	Return _sendmessage($hwnd, $cb_setcuebanner, 0, DllStructGetPtr($ttext)) = 1
EndFunc

Func _guictrlcombobox_setcursel($hwnd, $iindex = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_setcursel, $iindex)
EndFunc

Func _guictrlcombobox_setdroppedwidth($hwnd, $iwidth)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_setdroppedwidth, $iwidth)
EndFunc

Func _guictrlcombobox_seteditsel($hwnd, $istart, $istop)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT HWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_seteditsel, 0, _winapi_makelong($istart, $istop)) <> -1
EndFunc

Func _guictrlcombobox_setedittext($hwnd, $stext)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	_guictrlcombobox_seteditsel($hwnd, 0, -1)
	_guictrlcombobox_replaceeditsel($hwnd, $stext)
EndFunc

Func _guictrlcombobox_setextendedui($hwnd, $fextended = False)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_setextendedui, $fextended) = 0
EndFunc

Func _guictrlcombobox_sethorizontalextent($hwnd, $iwidth)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	_sendmessage($hwnd, $cb_sethorizontalextent, $iwidth)
EndFunc

Func _guictrlcombobox_setitemheight($hwnd, $iheight, $icomponent = -1)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_setitemheight, $icomponent, $iheight)
EndFunc

Func _guictrlcombobox_setlocale($hwnd, $ilocal)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_setlocale, $ilocal)
EndFunc

Func _guictrlcombobox_setminvisible($hwnd, $iminimum)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_setminvisible, $iminimum) <> 0
EndFunc

Func _guictrlcombobox_settopindex($hwnd, $iindex)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $cb_settopindex, $iindex) = 0
EndFunc

Func _guictrlcombobox_showdropdown($hwnd, $fshow = False)
	If $debug_cb Then __udf_validateclassname($hwnd, $__comboboxconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	_sendmessage($hwnd, $cb_showdropdown, $fshow)
EndFunc

Func __guictrlcombobox_ispressed($shexkey, $vdll = "user32.dll")
	Local $a_r = DllCall($vdll, "short", "GetAsyncKeyState", "int", "0x" & $shexkey)
	If @error Then Return SetError(@error, @extended, False)
	Return BitAND($a_r[0], 32768) <> 0
EndFunc

Global Const $tbs_autoticks = 1
Global Const $tbs_both = 8
Global Const $tbs_bottom = 0
Global Const $tbs_downisleft = 1024
Global Const $tbs_enableselrange = 32
Global Const $tbs_fixedlength = 64
Global Const $tbs_horz = 0
Global Const $tbs_left = 4
Global Const $tbs_nothumb = 128
Global Const $tbs_noticks = 16
Global Const $tbs_reversed = 512
Global Const $tbs_right = 0
Global Const $tbs_top = 4
Global Const $tbs_tooltips = 256
Global Const $tbs_vert = 2
Global Const $gui_ss_default_slider = $tbs_autoticks
Global Const $tbcd_channel = 3
Global Const $tbcd_thumb = 2
Global Const $tbcd_tics = 1
Global Const $__sliderconstant_wm_user = 1024
Global Const $tbm_clearsel = $__sliderconstant_wm_user + 19
Global Const $tbm_cleartics = $__sliderconstant_wm_user + 9
Global Const $tbm_getbuddy = $__sliderconstant_wm_user + 33
Global Const $tbm_getchannelrect = $__sliderconstant_wm_user + 26
Global Const $tbm_getlinesize = $__sliderconstant_wm_user + 24
Global Const $tbm_getnumtics = $__sliderconstant_wm_user + 16
Global Const $tbm_getpagesize = $__sliderconstant_wm_user + 22
Global Const $tbm_getpos = $__sliderconstant_wm_user
Global Const $tbm_getptics = $__sliderconstant_wm_user + 14
Global Const $tbm_getselend = $__sliderconstant_wm_user + 18
Global Const $tbm_getselstart = $__sliderconstant_wm_user + 17
Global Const $tbm_getrangemax = $__sliderconstant_wm_user + 2
Global Const $tbm_getrangemin = $__sliderconstant_wm_user + 1
Global Const $tbm_getthumblength = $__sliderconstant_wm_user + 28
Global Const $tbm_getthumbrect = $__sliderconstant_wm_user + 25
Global Const $tbm_gettic = $__sliderconstant_wm_user + 3
Global Const $tbm_getticpos = $__sliderconstant_wm_user + 15
Global Const $tbm_gettooltips = $__sliderconstant_wm_user + 30
Global Const $tbm_getunicodeformat = 8192 + 6
Global Const $tbm_setbuddy = $__sliderconstant_wm_user + 32
Global Const $tbm_setlinesize = $__sliderconstant_wm_user + 23
Global Const $tbm_setpagesize = $__sliderconstant_wm_user + 21
Global Const $tbm_setpos = $__sliderconstant_wm_user + 5
Global Const $tbm_setrange = $__sliderconstant_wm_user + 6
Global Const $tbm_setrangemax = $__sliderconstant_wm_user + 8
Global Const $tbm_setrangemin = $__sliderconstant_wm_user + 7
Global Const $tbm_setsel = $__sliderconstant_wm_user + 10
Global Const $tbm_setselend = $__sliderconstant_wm_user + 12
Global Const $tbm_setselstart = $__sliderconstant_wm_user + 11
Global Const $tbm_setthumblength = $__sliderconstant_wm_user + 27
Global Const $tbm_settic = $__sliderconstant_wm_user + 4
Global Const $tbm_setticfreq = $__sliderconstant_wm_user + 20
Global Const $tbm_settipside = $__sliderconstant_wm_user + 31
Global Const $tbm_settooltips = $__sliderconstant_wm_user + 29
Global Const $tbm_setunicodeformat = 8192 + 5
Global Const $tbts_bottom = 2
Global Const $tbts_left = 1
Global Const $tbts_right = 3
Global Const $tbts_top = 0
Global Const $ss_left = 0
Global Const $ss_center = 1
Global Const $ss_right = 2
Global Const $ss_icon = 3
Global Const $ss_blackrect = 4
Global Const $ss_grayrect = 5
Global Const $ss_whiterect = 6
Global Const $ss_blackframe = 7
Global Const $ss_grayframe = 8
Global Const $ss_whiteframe = 9
Global Const $ss_simple = 11
Global Const $ss_leftnowordwrap = 12
Global Const $ss_bitmap = 14
Global Const $ss_etchedhorz = 16
Global Const $ss_etchedvert = 17
Global Const $ss_etchedframe = 18
Global Const $ss_noprefix = 128
Global Const $ss_notify = 256
Global Const $ss_centerimage = 512
Global Const $ss_rightjust = 1024
Global Const $ss_sunken = 4096
Global Const $gui_ss_default_label = 0
Global Const $gui_ss_default_graphic = 0
Global Const $gui_ss_default_icon = $ss_notify
Global Const $gui_ss_default_pic = $ss_notify
Global Const $ws_tiled = 0
Global Const $ws_overlapped = 0
Global Const $ws_maximizebox = 65536
Global Const $ws_minimizebox = 131072
Global Const $ws_tabstop = 65536
Global Const $ws_group = 131072
Global Const $ws_sizebox = 262144
Global Const $ws_thickframe = 262144
Global Const $ws_sysmenu = 524288
Global Const $ws_hscroll = 1048576
Global Const $ws_vscroll = 2097152
Global Const $ws_dlgframe = 4194304
Global Const $ws_border = 8388608
Global Const $ws_caption = 12582912
Global Const $ws_overlappedwindow = 13565952
Global Const $ws_tiledwindow = 13565952
Global Const $ws_maximize = 16777216
Global Const $ws_clipchildren = 33554432
Global Const $ws_clipsiblings = 67108864
Global Const $ws_disabled = 134217728
Global Const $ws_visible = 268435456
Global Const $ws_minimize = 536870912
Global Const $ws_child = 1073741824
Global Const $ws_popup = -2147483648
Global Const $ws_popupwindow = -2138570752
Global Const $ds_modalframe = 128
Global Const $ds_setforeground = 512
Global Const $ds_contexthelp = 8192
Global Const $ws_ex_acceptfiles = 16
Global Const $ws_ex_mdichild = 64
Global Const $ws_ex_appwindow = 262144
Global Const $ws_ex_composited = 33554432
Global Const $ws_ex_clientedge = 512
Global Const $ws_ex_contexthelp = 1024
Global Const $ws_ex_dlgmodalframe = 1
Global Const $ws_ex_leftscrollbar = 16384
Global Const $ws_ex_overlappedwindow = 768
Global Const $ws_ex_right = 4096
Global Const $ws_ex_staticedge = 131072
Global Const $ws_ex_toolwindow = 128
Global Const $ws_ex_topmost = 8
Global Const $ws_ex_transparent = 32
Global Const $ws_ex_windowedge = 256
Global Const $ws_ex_layered = 524288
Global Const $ws_ex_controlparent = 65536
Global Const $ws_ex_layoutrtl = 4194304
Global Const $ws_ex_rtlreading = 8192
Global Const $wm_gettextlength = 14
Global Const $wm_gettext = 13
Global Const $wm_size = 5
Global Const $wm_sizing = 532
Global Const $wm_user = 1024
Global Const $wm_create = 1
Global Const $wm_destroy = 2
Global Const $wm_move = 3
Global Const $wm_activate = 6
Global Const $wm_setfocus = 7
Global Const $wm_killfocus = 8
Global Const $wm_enable = 10
Global Const $wm_setredraw = 11
Global Const $wm_settext = 12
Global Const $wm_paint = 15
Global Const $wm_close = 16
Global Const $wm_quit = 18
Global Const $wm_erasebkgnd = 20
Global Const $wm_syscolorchange = 21
Global Const $wm_showwindow = 24
Global Const $wm_wininichange = 26
Global Const $wm_devmodechange = 27
Global Const $wm_activateapp = 28
Global Const $wm_fontchange = 29
Global Const $wm_timechange = 30
Global Const $wm_cancelmode = 31
Global Const $wm_setcursor = 32
Global Const $wm_mouseactivate = 33
Global Const $wm_childactivate = 34
Global Const $wm_queuesync = 35
Global Const $wm_getminmaxinfo = 36
Global Const $wm_painticon = 38
Global Const $wm_iconerasebkgnd = 39
Global Const $wm_nextdlgctl = 40
Global Const $wm_spoolerstatus = 42
Global Const $wm_drawitem = 43
Global Const $wm_measureitem = 44
Global Const $wm_deleteitem = 45
Global Const $wm_vkeytoitem = 46
Global Const $wm_chartoitem = 47
Global Const $wm_setfont = 48
Global Const $wm_getfont = 49
Global Const $wm_sethotkey = 50
Global Const $wm_gethotkey = 51
Global Const $wm_querydragicon = 55
Global Const $wm_compareitem = 57
Global Const $wm_getobject = 61
Global Const $wm_compacting = 65
Global Const $wm_commnotify = 68
Global Const $wm_windowposchanging = 70
Global Const $wm_windowposchanged = 71
Global Const $wm_power = 72
Global Const $wm_notify = 78
Global Const $wm_copydata = 74
Global Const $wm_canceljournal = 75
Global Const $wm_inputlangchangerequest = 80
Global Const $wm_inputlangchange = 81
Global Const $wm_tcard = 82
Global Const $wm_help = 83
Global Const $wm_userchanged = 84
Global Const $wm_notifyformat = 85
Global Const $wm_cut = 768
Global Const $wm_copy = 769
Global Const $wm_paste = 770
Global Const $wm_clear = 771
Global Const $wm_undo = 772
Global Const $wm_contextmenu = 123
Global Const $wm_stylechanging = 124
Global Const $wm_stylechanged = 125
Global Const $wm_displaychange = 126
Global Const $wm_geticon = 127
Global Const $wm_seticon = 128
Global Const $wm_nccreate = 129
Global Const $wm_ncdestroy = 130
Global Const $wm_nccalcsize = 131
Global Const $wm_nchittest = 132
Global Const $wm_ncpaint = 133
Global Const $wm_ncactivate = 134
Global Const $wm_getdlgcode = 135
Global Const $wm_syncpaint = 136
Global Const $wm_ncmousemove = 160
Global Const $wm_nclbuttondown = 161
Global Const $wm_nclbuttonup = 162
Global Const $wm_nclbuttondblclk = 163
Global Const $wm_ncrbuttondown = 164
Global Const $wm_ncrbuttonup = 165
Global Const $wm_ncrbuttondblclk = 166
Global Const $wm_ncmbuttondown = 167
Global Const $wm_ncmbuttonup = 168
Global Const $wm_ncmbuttondblclk = 169
Global Const $wm_keydown = 256
Global Const $wm_keyup = 257
Global Const $wm_char = 258
Global Const $wm_deadchar = 259
Global Const $wm_syskeydown = 260
Global Const $wm_syskeyup = 261
Global Const $wm_syschar = 262
Global Const $wm_sysdeadchar = 263
Global Const $wm_initdialog = 272
Global Const $wm_command = 273
Global Const $wm_syscommand = 274
Global Const $wm_timer = 275
Global Const $wm_hscroll = 276
Global Const $wm_vscroll = 277
Global Const $wm_initmenu = 278
Global Const $wm_initmenupopup = 279
Global Const $wm_menuselect = 287
Global Const $wm_menuchar = 288
Global Const $wm_enteridle = 289
Global Const $wm_menurbuttonup = 290
Global Const $wm_menudrag = 291
Global Const $wm_menugetobject = 292
Global Const $wm_uninitmenupopup = 293
Global Const $wm_menucommand = 294
Global Const $wm_changeuistate = 295
Global Const $wm_updateuistate = 296
Global Const $wm_queryuistate = 297
Global Const $wm_ctlcolormsgbox = 306
Global Const $wm_ctlcoloredit = 307
Global Const $wm_ctlcolorlistbox = 308
Global Const $wm_ctlcolorbtn = 309
Global Const $wm_ctlcolordlg = 310
Global Const $wm_ctlcolorscrollbar = 311
Global Const $wm_ctlcolorstatic = 312
Global Const $wm_ctlcolor = 25
Global Const $mn_gethmenu = 481
Global Const $nm_first = 0
Global Const $nm_outofmemory = $nm_first - 1
Global Const $nm_click = $nm_first - 2
Global Const $nm_dblclk = $nm_first - 3
Global Const $nm_return = $nm_first - 4
Global Const $nm_rclick = $nm_first - 5
Global Const $nm_rdblclk = $nm_first - 6
Global Const $nm_setfocus = $nm_first - 7
Global Const $nm_killfocus = $nm_first - 8
Global Const $nm_customdraw = $nm_first - 12
Global Const $nm_hover = $nm_first - 13
Global Const $nm_nchittest = $nm_first - 14
Global Const $nm_keydown = $nm_first - 15
Global Const $nm_releasedcapture = $nm_first - 16
Global Const $nm_setcursor = $nm_first - 17
Global Const $nm_char = $nm_first - 18
Global Const $nm_tooltipscreated = $nm_first - 19
Global Const $nm_ldown = $nm_first - 20
Global Const $nm_rdown = $nm_first - 21
Global Const $nm_themechanged = $nm_first - 22
Global Const $wm_mousemove = 512
Global Const $wm_lbuttondown = 513
Global Const $wm_lbuttonup = 514
Global Const $wm_lbuttondblclk = 515
Global Const $wm_rbuttondown = 516
Global Const $wm_rbuttonup = 517
Global Const $wm_rbuttondblck = 518
Global Const $wm_mbuttondown = 519
Global Const $wm_mbuttonup = 520
Global Const $wm_mbuttondblck = 521
Global Const $wm_mousewheel = 522
Global Const $wm_xbuttondown = 523
Global Const $wm_xbuttonup = 524
Global Const $wm_xbuttondblclk = 525
Global Const $wm_mousehwheel = 526
Global Const $ps_solid = 0
Global Const $ps_dash = 1
Global Const $ps_dot = 2
Global Const $ps_dashdot = 3
Global Const $ps_dashdotdot = 4
Global Const $ps_null = 5
Global Const $ps_insideframe = 6
Global Const $lwa_alpha = 2
Global Const $lwa_colorkey = 1
Global Const $rgn_and = 1
Global Const $rgn_or = 2
Global Const $rgn_xor = 3
Global Const $rgn_diff = 4
Global Const $rgn_copy = 5
Global Const $errorregion = 0
Global Const $nullregion = 1
Global Const $simpleregion = 2
Global Const $complexregion = 3
Global Const $transparent = 1
Global Const $opaque = 2
Global Const $ccm_first = 8192
Global Const $ccm_getunicodeformat = ($ccm_first + 6)
Global Const $ccm_setunicodeformat = ($ccm_first + 5)
Global Const $ccm_setbkcolor = $ccm_first + 1
Global Const $ccm_setcolorscheme = $ccm_first + 2
Global Const $ccm_getcolorscheme = $ccm_first + 3
Global Const $ccm_getdroptarget = $ccm_first + 4
Global Const $ccm_setwindowtheme = $ccm_first + 11
Global Const $ga_parent = 1
Global Const $ga_root = 2
Global Const $ga_rootowner = 3
Global Const $sm_cxscreen = 0
Global Const $sm_cyscreen = 1
Global Const $sm_cxvscroll = 2
Global Const $sm_cyhscroll = 3
Global Const $sm_cycaption = 4
Global Const $sm_cxborder = 5
Global Const $sm_cyborder = 6
Global Const $sm_cxdlgframe = 7
Global Const $sm_cydlgframe = 8
Global Const $sm_cyvthumb = 9
Global Const $sm_cxhthumb = 10
Global Const $sm_cxicon = 11
Global Const $sm_cyicon = 12
Global Const $sm_cxcursor = 13
Global Const $sm_cycursor = 14
Global Const $sm_cymenu = 15
Global Const $sm_cxfullscreen = 16
Global Const $sm_cyfullscreen = 17
Global Const $sm_cykanjiwindow = 18
Global Const $sm_mousepresent = 19
Global Const $sm_cyvscroll = 20
Global Const $sm_cxhscroll = 21
Global Const $sm_debug = 22
Global Const $sm_swapbutton = 23
Global Const $sm_reserved1 = 24
Global Const $sm_reserved2 = 25
Global Const $sm_reserved3 = 26
Global Const $sm_reserved4 = 27
Global Const $sm_cxmin = 28
Global Const $sm_cymin = 29
Global Const $sm_cxsize = 30
Global Const $sm_cysize = 31
Global Const $sm_cxframe = 32
Global Const $sm_cyframe = 33
Global Const $sm_cxmintrack = 34
Global Const $sm_cymintrack = 35
Global Const $sm_cxdoubleclk = 36
Global Const $sm_cydoubleclk = 37
Global Const $sm_cxiconspacing = 38
Global Const $sm_cyiconspacing = 39
Global Const $sm_menudropalignment = 40
Global Const $sm_penwindows = 41
Global Const $sm_dbcsenabled = 42
Global Const $sm_cmousebuttons = 43
Global Const $sm_secure = 44
Global Const $sm_cxedge = 45
Global Const $sm_cyedge = 46
Global Const $sm_cxminspacing = 47
Global Const $sm_cyminspacing = 48
Global Const $sm_cxsmicon = 49
Global Const $sm_cysmicon = 50
Global Const $sm_cysmcaption = 51
Global Const $sm_cxsmsize = 52
Global Const $sm_cysmsize = 53
Global Const $sm_cxmenusize = 54
Global Const $sm_cymenusize = 55
Global Const $sm_arrange = 56
Global Const $sm_cxminimized = 57
Global Const $sm_cyminimized = 58
Global Const $sm_cxmaxtrack = 59
Global Const $sm_cymaxtrack = 60
Global Const $sm_cxmaximized = 61
Global Const $sm_cymaximized = 62
Global Const $sm_network = 63
Global Const $sm_cleanboot = 67
Global Const $sm_cxdrag = 68
Global Const $sm_cydrag = 69
Global Const $sm_showsounds = 70
Global Const $sm_cxmenucheck = 71
Global Const $sm_cymenucheck = 72
Global Const $sm_slowmachine = 73
Global Const $sm_mideastenabled = 74
Global Const $sm_mousewheelpresent = 75
Global Const $sm_xvirtualscreen = 76
Global Const $sm_yvirtualscreen = 77
Global Const $sm_cxvirtualscreen = 78
Global Const $sm_cyvirtualscreen = 79
Global Const $sm_cmonitors = 80
Global Const $sm_samedisplayformat = 81
Global Const $sm_immenabled = 82
Global Const $sm_cxfocusborder = 83
Global Const $sm_cyfocusborder = 84
Global Const $sm_tabletpc = 86
Global Const $sm_mediacenter = 87
Global Const $sm_starter = 88
Global Const $sm_serverr2 = 89
Global Const $sm_cmetrics = 90
Global Const $sm_remotesession = 4096
Global Const $sm_shuttingdown = 8192
Global Const $sm_remotecontrol = 8193
Global Const $sm_caretblinkingenabled = 8194
Global Const $blackness = 66
Global Const $captureblt = 1073741824
Global Const $dstinvert = 5570569
Global Const $mergecopy = 12583114
Global Const $mergepaint = 12255782
Global Const $nomirrorbitmap = -2147483648
Global Const $notsrccopy = 3342344
Global Const $notsrcerase = 1114278
Global Const $patcopy = 15728673
Global Const $patinvert = 5898313
Global Const $patpaint = 16452105
Global Const $srcand = 8913094
Global Const $srccopy = 13369376
Global Const $srcerase = 4457256
Global Const $srcinvert = 6684742
Global Const $srcpaint = 15597702
Global Const $whiteness = 16711778
Global Const $dt_bottom = 8
Global Const $dt_calcrect = 1024
Global Const $dt_center = 1
Global Const $dt_editcontrol = 8192
Global Const $dt_end_ellipsis = 32768
Global Const $dt_expandtabs = 64
Global Const $dt_externalleading = 512
Global Const $dt_hideprefix = 1048576
Global Const $dt_internal = 4096
Global Const $dt_left = 0
Global Const $dt_modifystring = 65536
Global Const $dt_noclip = 256
Global Const $dt_nofullwidthcharbreak = 524288
Global Const $dt_noprefix = 2048
Global Const $dt_path_ellipsis = 16384
Global Const $dt_prefixonly = 2097152
Global Const $dt_right = 2
Global Const $dt_rtlreading = 131072
Global Const $dt_singleline = 32
Global Const $dt_tabstop = 128
Global Const $dt_top = 0
Global Const $dt_vcenter = 4
Global Const $dt_wordbreak = 16
Global Const $dt_word_ellipsis = 262144
Global Const $rdw_erase = 4
Global Const $rdw_frame = 1024
Global Const $rdw_internalpaint = 2
Global Const $rdw_invalidate = 1
Global Const $rdw_noerase = 32
Global Const $rdw_noframe = 2048
Global Const $rdw_nointernalpaint = 16
Global Const $rdw_validate = 8
Global Const $rdw_erasenow = 512
Global Const $rdw_updatenow = 256
Global Const $rdw_allchildren = 128
Global Const $rdw_nochildren = 64
Global Const $wm_renderformat = 773
Global Const $wm_renderallformats = 774
Global Const $wm_destroyclipboard = 775
Global Const $wm_drawclipboard = 776
Global Const $wm_paintclipboard = 777
Global Const $wm_vscrollclipboard = 778
Global Const $wm_sizeclipboard = 779
Global Const $wm_askcbformatname = 780
Global Const $wm_changecbchain = 781
Global Const $wm_hscrollclipboard = 782
Global Const $hterror = -2
Global Const $httransparent = -1
Global Const $htnowhere = 0
Global Const $htclient = 1
Global Const $htcaption = 2
Global Const $htsysmenu = 3
Global Const $htgrowbox = 4
Global Const $htsize = $htgrowbox
Global Const $htmenu = 5
Global Const $hthscroll = 6
Global Const $htvscroll = 7
Global Const $htminbutton = 8
Global Const $htmaxbutton = 9
Global Const $htleft = 10
Global Const $htright = 11
Global Const $httop = 12
Global Const $httopleft = 13
Global Const $httopright = 14
Global Const $htbottom = 15
Global Const $htbottomleft = 16
Global Const $htbottomright = 17
Global Const $htborder = 18
Global Const $htreduce = $htminbutton
Global Const $htzoom = $htmaxbutton
Global Const $htsizefirst = $htleft
Global Const $htsizelast = $htbottomright
Global Const $htobject = 19
Global Const $htclose = 20
Global Const $hthelp = 21
Global Const $color_scrollbar = 0
Global Const $color_background = 1
Global Const $color_activecaption = 2
Global Const $color_inactivecaption = 3
Global Const $color_menu = 4
Global Const $color_window = 5
Global Const $color_windowframe = 6
Global Const $color_menutext = 7
Global Const $color_windowtext = 8
Global Const $color_captiontext = 9
Global Const $color_activeborder = 10
Global Const $color_inactiveborder = 11
Global Const $color_appworkspace = 12
Global Const $color_highlight = 13
Global Const $color_highlighttext = 14
Global Const $color_btnface = 15
Global Const $color_btnshadow = 16
Global Const $color_graytext = 17
Global Const $color_btntext = 18
Global Const $color_inactivecaptiontext = 19
Global Const $color_btnhighlight = 20
Global Const $color_3ddkshadow = 21
Global Const $color_3dlight = 22
Global Const $color_infotext = 23
Global Const $color_infobk = 24
Global Const $color_hotlight = 26
Global Const $color_gradientactivecaption = 27
Global Const $color_gradientinactivecaption = 28
Global Const $color_menuhilight = 29
Global Const $color_menubar = 30
Global Const $color_desktop = 1
Global Const $color_3dface = 15
Global Const $color_3dshadow = 16
Global Const $color_3dhighlight = 20
Global Const $color_3dhilight = 20
Global Const $color_btnhilight = 20
Global Const $hinst_commctrl = -1
Global Const $idb_std_small_color = 0
Global Const $idb_std_large_color = 1
Global Const $idb_view_small_color = 4
Global Const $idb_view_large_color = 5
Global Const $idb_hist_small_color = 8
Global Const $idb_hist_large_color = 9
Global Const $startf_forceofffeedback = 128
Global Const $startf_forceonfeedback = 64
Global Const $startf_runfullscreen = 32
Global Const $startf_usecountchars = 8
Global Const $startf_usefillattribute = 16
Global Const $startf_usehotkey = 512
Global Const $startf_useposition = 4
Global Const $startf_useshowwindow = 1
Global Const $startf_usesize = 2
Global Const $startf_usestdhandles = 256
Global Const $cdds_prepaint = 1
Global Const $cdds_postpaint = 2
Global Const $cdds_preerase = 3
Global Const $cdds_posterase = 4
Global Const $cdds_item = 65536
Global Const $cdds_itemprepaint = 65537
Global Const $cdds_itempostpaint = 65538
Global Const $cdds_itempreerase = 65539
Global Const $cdds_itemposterase = 65540
Global Const $cdds_subitem = 131072
Global Const $cdis_selected = 1
Global Const $cdis_grayed = 2
Global Const $cdis_disabled = 4
Global Const $cdis_checked = 8
Global Const $cdis_focus = 16
Global Const $cdis_default = 32
Global Const $cdis_hot = 64
Global Const $cdis_marked = 128
Global Const $cdis_indeterminate = 256
Global Const $cdis_showkeyboardcues = 512
Global Const $cdis_nearhot = 1024
Global Const $cdis_othersidehot = 2048
Global Const $cdis_drophilited = 4096
Global Const $cdrf_dodefault = 0
Global Const $cdrf_newfont = 2
Global Const $cdrf_skipdefault = 4
Global Const $cdrf_notifypostpaint = 16
Global Const $cdrf_notifyitemdraw = 32
Global Const $cdrf_notifysubitemdraw = 32
Global Const $cdrf_notifyposterase = 64
Global Const $cdrf_doerase = 8
Global Const $cdrf_skippostpaint = 256
Global Const $gui_ss_default_gui = BitOR($ws_minimizebox, $ws_caption, $ws_popup, $ws_sysmenu)
Global Const $es_left = 0
Global Const $es_center = 1
Global Const $es_right = 2
Global Const $es_multiline = 4
Global Const $es_uppercase = 8
Global Const $es_lowercase = 16
Global Const $es_password = 32
Global Const $es_autovscroll = 64
Global Const $es_autohscroll = 128
Global Const $es_nohidesel = 256
Global Const $es_oemconvert = 1024
Global Const $es_readonly = 2048
Global Const $es_wantreturn = 4096
Global Const $es_number = 8192
Global Const $ec_err = -1
Global Const $ecm_first = 5376
Global Const $em_canundo = 198
Global Const $em_charfrompos = 215
Global Const $em_emptyundobuffer = 205
Global Const $em_fmtlines = 200
Global Const $em_getcuebanner = ($ecm_first + 2)
Global Const $em_getfirstvisibleline = 206
Global Const $em_gethandle = 189
Global Const $em_getimestatus = 217
Global Const $em_getlimittext = 213
Global Const $em_getline = 196
Global Const $em_getlinecount = 186
Global Const $em_getmargins = 212
Global Const $em_getmodify = 184
Global Const $em_getpasswordchar = 210
Global Const $em_getrect = 178
Global Const $em_getsel = 176
Global Const $em_getthumb = 190
Global Const $em_getwordbreakproc = 209
Global Const $em_hideballoontip = ($ecm_first + 4)
Global Const $em_limittext = 197
Global Const $em_linefromchar = 201
Global Const $em_lineindex = 187
Global Const $em_linelength = 193
Global Const $em_linescroll = 182
Global Const $em_posfromchar = 214
Global Const $em_replacesel = 194
Global Const $em_scroll = 181
Global Const $em_scrollcaret = 183
Global Const $em_setcuebanner = ($ecm_first + 1)
Global Const $em_sethandle = 188
Global Const $em_setimestatus = 216
Global Const $em_setlimittext = $em_limittext
Global Const $em_setmargins = 211
Global Const $em_setmodify = 185
Global Const $em_setpasswordchar = 204
Global Const $em_setreadonly = 207
Global Const $em_setrect = 179
Global Const $em_setrectnp = 180
Global Const $em_setsel = 177
Global Const $em_settabstops = 203
Global Const $em_setwordbreakproc = 208
Global Const $em_showballoontip = ($ecm_first + 3)
Global Const $em_undo = 199
Global Const $ec_leftmargin = 1
Global Const $ec_rightmargin = 2
Global Const $ec_usefontinfo = 65535
Global Const $emsis_compositionstring = 1
Global Const $eimes_getcompstratonce = 1
Global Const $eimes_cancelcompstrinfocus = 2
Global Const $eimes_completecompstrkillfocus = 4
Global Const $en_align_ltr_ec = 1792
Global Const $en_align_rtl_ec = 1793
Global Const $en_change = 768
Global Const $en_errspace = 1280
Global Const $en_hscroll = 1537
Global Const $en_killfocus = 512
Global Const $en_maxtext = 1281
Global Const $en_setfocus = 256
Global Const $en_update = 1024
Global Const $en_vscroll = 1538
Global Const $tti_none = 0
Global Const $tti_info = 1
Global Const $tti_warning = 2
Global Const $tti_error = 3
Global Const $tti_info_large = 4
Global Const $tti_warning_large = 5
Global Const $tti_error_large = 6
Global Const $__editconstant_ws_vscroll = 2097152
Global Const $__editconstant_ws_hscroll = 1048576
Global Const $gui_ss_default_edit = BitOR($es_wantreturn, $__editconstant_ws_vscroll, $__editconstant_ws_hscroll, $es_autovscroll, $es_autohscroll)
Global Const $gui_ss_default_input = BitOR($es_left, $es_autohscroll)
Global Const $fw_dontcare = 0
Global Const $fw_thin = 100
Global Const $fw_extralight = 200
Global Const $fw_ultralight = 200
Global Const $fw_light = 300
Global Const $fw_normal = 400
Global Const $fw_regular = 400
Global Const $fw_medium = 500
Global Const $fw_semibold = 600
Global Const $fw_demibold = 600
Global Const $fw_bold = 700
Global Const $fw_extrabold = 800
Global Const $fw_ultrabold = 800
Global Const $fw_heavy = 900
Global Const $fw_black = 900
Global Const $cf_effects = 256
Global Const $cf_printerfonts = 2
Global Const $cf_screenfonts = 1
Global Const $cf_noscriptsel = 8388608
Global Const $cf_inittologfontstruct = 64
Global Const $logpixelsx = 88
Global Const $logpixelsy = 90
Global Const $ansi_charset = 0
Global Const $baltic_charset = 186
Global Const $chinesebig5_charset = 136
Global Const $default_charset = 1
Global Const $easteurope_charset = 238
Global Const $gb2312_charset = 134
Global Const $greek_charset = 161
Global Const $hangeul_charset = 129
Global Const $mac_charset = 77
Global Const $oem_charset = 255
Global Const $russian_charset = 204
Global Const $shiftjis_charset = 128
Global Const $symbol_charset = 2
Global Const $turkish_charset = 162
Global Const $vietnamese_charset = 163
Global Const $out_character_precis = 2
Global Const $out_default_precis = 0
Global Const $out_device_precis = 5
Global Const $out_outline_precis = 8
Global Const $out_ps_only_precis = 10
Global Const $out_raster_precis = 6
Global Const $out_string_precis = 1
Global Const $out_stroke_precis = 3
Global Const $out_tt_only_precis = 7
Global Const $out_tt_precis = 4
Global Const $clip_character_precis = 1
Global Const $clip_default_precis = 0
Global Const $clip_embedded = 128
Global Const $clip_lh_angles = 16
Global Const $clip_mask = 15
Global Const $clip_stroke_precis = 2
Global Const $clip_tt_always = 32
Global Const $antialiased_quality = 4
Global Const $default_quality = 0
Global Const $draft_quality = 1
Global Const $nonantialiased_quality = 3
Global Const $proof_quality = 2
Global Const $default_pitch = 0
Global Const $fixed_pitch = 1
Global Const $variable_pitch = 2
Global Const $ff_decorative = 80
Global Const $ff_dontcare = 0
Global Const $ff_modern = 48
Global Const $ff_roman = 16
Global Const $ff_script = 64
Global Const $ff_swiss = 32
Global Const $__miscconstant_cc_anycolor = 256
Global Const $__miscconstant_cc_fullopen = 2
Global Const $__miscconstant_cc_rgbinit = 1
Global Const $tagchoosecolor = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName"
Global Const $tagchoosefont = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" & "ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"

Func _choosecolor($ireturntype = 0, $icolorref = 0, $ireftype = 0, $hwndownder = 0)
	Local $custcolors = "dword[16]"
	Local $tchoose = DllStructCreate($tagchoosecolor)
	Local $tcc = DllStructCreate($custcolors)
	If $ireftype = 1 Then
		$icolorref = Int($icolorref)
	ElseIf $ireftype = 2 Then
		$icolorref = Hex(String($icolorref), 6)
		$icolorref = "0x" & StringMid($icolorref, 5, 2) & StringMid($icolorref, 3, 2) & StringMid($icolorref, 1, 2)
	EndIf
	DllStructSetData($tchoose, "Size", DllStructGetSize($tchoose))
	DllStructSetData($tchoose, "hWndOwnder", $hwndownder)
	DllStructSetData($tchoose, "rgbResult", $icolorref)
	DllStructSetData($tchoose, "CustColors", DllStructGetPtr($tcc))
	DllStructSetData($tchoose, "Flags", BitOR($__miscconstant_cc_anycolor, $__miscconstant_cc_fullopen, $__miscconstant_cc_rgbinit))
	Local $aresult = DllCall("comdlg32.dll", "bool", "ChooseColor", "ptr", DllStructGetPtr($tchoose))
	If @error Then Return SetError(@error, @extended, -1)
	If $aresult[0] = 0 Then Return SetError(-3, -3, -1)
	Local $color_picked = DllStructGetData($tchoose, "rgbResult")
	If $ireturntype = 1 Then
		Return "0x" & Hex(String($color_picked), 6)
	ElseIf $ireturntype = 2 Then
		$color_picked = Hex(String($color_picked), 6)
		Return "0x" & StringMid($color_picked, 5, 2) & StringMid($color_picked, 3, 2) & StringMid($color_picked, 1, 2)
	ElseIf $ireturntype = 0 Then
		Return $color_picked
	Else
		Return SetError(-4, -4, -1)
	EndIf
EndFunc

Func _choosefont($sfontname = "Courier New", $ipointsize = 10, $icolorref = 0, $ifontweight = 0, $iitalic = False, $iunderline = False, $istrikethru = False, $hwndowner = 0)
	Local $italic = 0, $underline = 0, $strikeout = 0
	Local $lngdc = __misc_getdc(0)
	Local $lfheight = Round(($ipointsize * __misc_getdevicecaps($lngdc, $logpixelsx)) / 72, 0)
	__misc_releasedc(0, $lngdc)
	Local $tchoosefont = DllStructCreate($tagchoosefont)
	Local $tlogfont = DllStructCreate($taglogfont)
	DllStructSetData($tchoosefont, "Size", DllStructGetSize($tchoosefont))
	DllStructSetData($tchoosefont, "hWndOwner", $hwndowner)
	DllStructSetData($tchoosefont, "LogFont", DllStructGetPtr($tlogfont))
	DllStructSetData($tchoosefont, "PointSize", $ipointsize)
	DllStructSetData($tchoosefont, "Flags", BitOR($cf_screenfonts, $cf_printerfonts, $cf_effects, $cf_inittologfontstruct, $cf_noscriptsel))
	DllStructSetData($tchoosefont, "rgbColors", $icolorref)
	DllStructSetData($tchoosefont, "FontType", 0)
	DllStructSetData($tlogfont, "Height", $lfheight)
	DllStructSetData($tlogfont, "Weight", $ifontweight)
	DllStructSetData($tlogfont, "Italic", $iitalic)
	DllStructSetData($tlogfont, "Underline", $iunderline)
	DllStructSetData($tlogfont, "Strikeout", $istrikethru)
	DllStructSetData($tlogfont, "FaceName", $sfontname)
	Local $aresult = DllCall("comdlg32.dll", "bool", "ChooseFontW", "ptr", DllStructGetPtr($tchoosefont))
	If @error Then Return SetError(@error, @extended, -1)
	If $aresult[0] = 0 Then Return SetError(-3, -3, -1)
	Local $fontname = DllStructGetData($tlogfont, "FaceName")
	If StringLen($fontname) = 0 AND StringLen($sfontname) > 0 Then $fontname = $sfontname
	If DllStructGetData($tlogfont, "Italic") Then $italic = 2
	If DllStructGetData($tlogfont, "Underline") Then $underline = 4
	If DllStructGetData($tlogfont, "Strikeout") Then $strikeout = 8
	Local $attributes = BitOR($italic, $underline, $strikeout)
	Local $size = DllStructGetData($tchoosefont, "PointSize") / 10
	Local $colorref = DllStructGetData($tchoosefont, "rgbColors")
	Local $weight = DllStructGetData($tlogfont, "Weight")
	Local $color_picked = Hex(String($colorref), 6)
	Return StringSplit($attributes & "," & $fontname & "," & $size & "," & $weight & "," & $colorref & "," & "0x" & $color_picked & "," & "0x" & StringMid($color_picked, 5, 2) & StringMid($color_picked, 3, 2) & StringMid($color_picked, 1, 2), ",")
EndFunc

Func _clipputfile($sfile, $sseparator = "|")
	Local Const $gmem_moveable = 2, $cf_hdrop = 15
	$sfile &= $sseparator & $sseparator
	Local $nglobmemsize = (StringLen($sfile) + 20)
	Local $aresult = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", 0)
	If @error OR $aresult[0] = 0 Then Return SetError(1, _winapi_getlasterror(), False)
	Local $ierror = 0, $ilasterror = 0
	$aresult = DllCall("user32.dll", "bool", "EmptyClipboard")
	If @error OR NOT $aresult[0] Then
		$ierror = 2
		$ilasterror = _winapi_getlasterror()
	Else
		$aresult = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $gmem_moveable, "ulong_ptr", $nglobmemsize)
		If @error OR NOT $aresult[0] Then
			$ierror = 3
			$ilasterror = _winapi_getlasterror()
		Else
			Local $hglobal = $aresult[0]
			$aresult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hglobal)
			If @error OR NOT $aresult[0] Then
				$ierror = 4
				$ilasterror = _winapi_getlasterror()
			Else
				Local $hlock = $aresult[0]
				Local $dropfiles = DllStructCreate("dword;ptr;int;int;int;char[" & StringLen($sfile) + 1 & "]", $hlock)
				If @error Then Return SetError(5, 6, False)
				Local $tempstruct = DllStructCreate("dword;ptr;int;int;int")
				DllStructSetData($dropfiles, 1, DllStructGetSize($tempstruct))
				DllStructSetData($dropfiles, 2, 0)
				DllStructSetData($dropfiles, 3, 0)
				DllStructSetData($dropfiles, 4, 0)
				DllStructSetData($dropfiles, 5, 0)
				DllStructSetData($dropfiles, 6, $sfile)
				For $i = 1 To StringLen($sfile)
					If DllStructGetData($dropfiles, 6, $i) = $sseparator Then DllStructSetData($dropfiles, 6, Chr(0), $i)
				Next
				$aresult = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $cf_hdrop, "handle", $hglobal)
				If @error OR NOT $aresult[0] Then
					$ierror = 6
					$ilasterror = _winapi_getlasterror()
				EndIf
				$aresult = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hglobal)
				If (@error OR NOT $aresult[0]) AND NOT $ierror AND _winapi_getlasterror() Then
					$ierror = 8
					$ilasterror = _winapi_getlasterror()
				EndIf
			EndIf
			$aresult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hglobal)
			If (@error OR NOT $aresult[0]) AND NOT $ierror Then
				$ierror = 9
				$ilasterror = _winapi_getlasterror()
			EndIf
		EndIf
	EndIf
	$aresult = DllCall("user32.dll", "bool", "CloseClipboard")
	If (@error OR NOT $aresult[0]) AND NOT $ierror Then Return SetError(7, _winapi_getlasterror(), False)
	If $ierror Then Return SetError($ierror, $ilasterror, False)
	Return True
EndFunc

Func _iif($ftest, $vtrueval, $vfalseval)
	If $ftest Then
		Return $vtrueval
	Else
		Return $vfalseval
	EndIf
EndFunc

Func _mousetrap($ileft = 0, $itop = 0, $iright = 0, $ibottom = 0)
	Local $aresult
	If @NumParams == 0 Then
		$aresult = DllCall("user32.dll", "bool", "ClipCursor", "ptr", 0)
		If @error OR NOT $aresult[0] Then Return SetError(1, _winapi_getlasterror(), False)
	Else
		If @NumParams == 2 Then
			$iright = $ileft + 1
			$ibottom = $itop + 1
		EndIf
		Local $trect = DllStructCreate($tagrect)
		DllStructSetData($trect, "Left", $ileft)
		DllStructSetData($trect, "Top", $itop)
		DllStructSetData($trect, "Right", $iright)
		DllStructSetData($trect, "Bottom", $ibottom)
		$aresult = DllCall("user32.dll", "bool", "ClipCursor", "ptr", DllStructGetPtr($trect))
		If @error OR NOT $aresult[0] Then Return SetError(2, _winapi_getlasterror(), False)
	EndIf
	Return True
EndFunc

Func _singleton($soccurencename, $iflag = 0)
	Local Const $error_already_exists = 183
	Local Const $security_descriptor_revision = 1
	Local $psecurityattributes = 0
	If BitAND($iflag, 2) Then
		Local $tsecuritydescriptor = DllStructCreate("dword[5]")
		Local $psecuritydescriptor = DllStructGetPtr($tsecuritydescriptor)
		Local $aret = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor", "ptr", $psecuritydescriptor, "dword", $security_descriptor_revision)
		If @error Then Return SetError(@error, @extended, 0)
		If $aret[0] Then
			$aret = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl", "ptr", $psecuritydescriptor, "bool", 1, "ptr", 0, "bool", 0)
			If @error Then Return SetError(@error, @extended, 0)
			If $aret[0] Then
				Local $structsecurityattributes = DllStructCreate($tagsecurity_attributes)
				DllStructSetData($structsecurityattributes, 1, DllStructGetSize($structsecurityattributes))
				DllStructSetData($structsecurityattributes, 2, $psecuritydescriptor)
				DllStructSetData($structsecurityattributes, 3, 0)
				$psecurityattributes = DllStructGetPtr($structsecurityattributes)
			EndIf
		EndIf
	EndIf
	Local $handle = DllCall("kernel32.dll", "handle", "CreateMutexW", "ptr", $psecurityattributes, "bool", 1, "wstr", $soccurencename)
	If @error Then Return SetError(@error, @extended, 0)
	Local $lasterror = DllCall("kernel32.dll", "dword", "GetLastError")
	If @error Then Return SetError(@error, @extended, 0)
	If $lasterror[0] = $error_already_exists Then
		If BitAND($iflag, 1) Then
			Return SetError($lasterror[0], $lasterror[0], 0)
		Else
			Exit -1
		EndIf
	EndIf
	Return $handle[0]
EndFunc

Func _ispressed($shexkey, $vdll = "user32.dll")
	Local $a_r = DllCall($vdll, "short", "GetAsyncKeyState", "int", "0x" & $shexkey)
	If @error Then Return SetError(@error, @extended, False)
	Return BitAND($a_r[0], 32768) <> 0
EndFunc

Func _versioncompare($sversion1, $sversion2)
	If $sversion1 = $sversion2 Then Return 0
	Local $sep = "."
	If StringInStr($sversion1, $sep) = 0 Then $sep = ","
	Local $aversion1 = StringSplit($sversion1, $sep)
	Local $aversion2 = StringSplit($sversion2, $sep)
	If UBound($aversion1) <> UBound($aversion2) OR UBound($aversion1) = 0 Then
		SetExtended(1)
		If $sversion1 > $sversion2 Then
			Return 1
		ElseIf $sversion1 < $sversion2 Then
			Return -1
		EndIf
	Else
		For $i = 1 To UBound($aversion1) - 1
			If StringIsDigit($aversion1[$i]) AND StringIsDigit($aversion2[$i]) Then
				If Number($aversion1[$i]) > Number($aversion2[$i]) Then
					Return 1
				ElseIf Number($aversion1[$i]) < Number($aversion2[$i]) Then
					Return -1
				EndIf
			Else
				SetExtended(1)
				If $aversion1[$i] > $aversion2[$i] Then
					Return 1
				ElseIf $aversion1[$i] < $aversion2[$i] Then
					Return -1
				EndIf
			EndIf
		Next
	EndIf
	Return SetError(2, 0, 0)
EndFunc

Func __misc_getdc($hwnd)
	Local $aresult = DllCall("User32.dll", "handle", "GetDC", "hwnd", $hwnd)
	If @error OR NOT $aresult[0] Then Return SetError(1, _winapi_getlasterror(), 0)
	Return $aresult[0]
EndFunc

Func __misc_getdevicecaps($hdc, $iindex)
	Local $aresult = DllCall("GDI32.dll", "int", "GetDeviceCaps", "handle", $hdc, "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func __misc_releasedc($hwnd, $hdc)
	Local $aresult = DllCall("User32.dll", "int", "ReleaseDC", "hwnd", $hwnd, "handle", $hdc)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0] <> 0
EndFunc

#Region _Memory

	Func _memoryopen($iv_pid, $iv_desiredaccess = 2035711, $iv_inherithandle = 1)
		If NOT ProcessExists($iv_pid) Then
			SetError(1)
			Return 0
		EndIf
		Local $ah_handle[2] = [DllOpen("kernel32.dll")]
		If @error Then
			SetError(2)
			Return 0
		EndIf
		Local $av_openprocess = DllCall($ah_handle[0], "int", "OpenProcess", "int", $iv_desiredaccess, "int", $iv_inherithandle, "int", $iv_pid)
		If @error Then
			DllClose($ah_handle[0])
			SetError(3)
			Return 0
		EndIf
		$ah_handle[1] = $av_openprocess[0]
		Return $ah_handle
	EndFunc

	Func _memoryread($iv_address, $ah_handle, $sv_type = "dword")
		If NOT IsArray($ah_handle) Then
			SetError(1)
			Return 0
		EndIf
		Local $v_buffer = DllStructCreate($sv_type)
		If @error Then
			SetError(@error + 1)
			Return 0
		EndIf
		DllCall($ah_handle[0], "int", "ReadProcessMemory", "int", $ah_handle[1], "int", $iv_address, "ptr", DllStructGetPtr($v_buffer), "int", DllStructGetSize($v_buffer), "int", "")
		If NOT @error Then
			Local $v_value = DllStructGetData($v_buffer, 1)
			Return $v_value
		Else
			SetError(6)
			Return 0
		EndIf
	EndFunc

	Func _memorywrite($iv_address, $ah_handle, $v_data, $sv_type = "dword")
		If NOT IsArray($ah_handle) Then
			SetError(1)
			Return 0
		EndIf
		Local $v_buffer = DllStructCreate($sv_type)
		If @error Then
			SetError(@error + 1)
			Return 0
		Else
			DllStructSetData($v_buffer, 1, $v_data)
			If @error Then
				SetError(6)
				Return 0
			EndIf
		EndIf
		DllCall($ah_handle[0], "int", "WriteProcessMemory", "int", $ah_handle[1], "int", $iv_address, "ptr", DllStructGetPtr($v_buffer), "int", DllStructGetSize($v_buffer), "int", "")
		If NOT @error Then
			Return 1
		Else
			SetError(7)
			Return 0
		EndIf
	EndFunc

	Func _memoryclose($ah_handle)
		If NOT IsArray($ah_handle) Then
			SetError(1)
			Return 0
		EndIf
		DllCall($ah_handle[0], "int", "CloseHandle", "int", $ah_handle[1])
		If NOT @error Then
			DllClose($ah_handle[0])
			Return 1
		Else
			DllClose($ah_handle[0])
			SetError(2)
			Return 0
		EndIf
	EndFunc

	Func setprivilege($privilege, $benable)
		Const $my_token_adjust_privileges = 32
		Const $my_token_query = 8
		Const $my_se_privilege_enabled = 2
		Local $htoken, $sp_auxret, $sp_ret, $hcurrprocess, $ntokens, $ntokenindex, $priv
		$ntokens = 1
		$luid = DllStructCreate("dword;int")
		If IsArray($privilege) Then $ntokens = UBound($privilege)
		$token_privileges = DllStructCreate("dword;dword[" & (3 * $ntokens) & "]")
		$newtoken_privileges = DllStructCreate("dword;dword[" & (3 * $ntokens) & "]")
		$hcurrprocess = DllCall("kernel32.dll", "hwnd", "GetCurrentProcess")
		$sp_auxret = DllCall("advapi32.dll", "int", "OpenProcessToken", "hwnd", $hcurrprocess[0], "int", BitOR($my_token_adjust_privileges, $my_token_query), "int*", 0)
		If $sp_auxret[0] Then
			$htoken = $sp_auxret[3]
			DllStructSetData($token_privileges, 1, 1)
			$ntokenindex = 1
			While $ntokenindex <= $ntokens
				If IsArray($privilege) Then
					$priv = $privilege[$ntokenindex - 1]
				Else
					$priv = $privilege
				EndIf
				$ret = DllCall("advapi32.dll", "int", "LookupPrivilegeValue", "str", "", "str", $priv, "ptr", DllStructGetPtr($luid))
				If $ret[0] Then
					If $benable Then
						DllStructSetData($token_privileges, 2, $my_se_privilege_enabled, (3 * $ntokenindex))
					Else
						DllStructSetData($token_privileges, 2, 0, (3 * $ntokenindex))
					EndIf
					DllStructSetData($token_privileges, 2, DllStructGetData($luid, 1), (3 * ($ntokenindex - 1)) + 1)
					DllStructSetData($token_privileges, 2, DllStructGetData($luid, 2), (3 * ($ntokenindex - 1)) + 2)
					DllStructSetData($luid, 1, 0)
					DllStructSetData($luid, 2, 0)
				EndIf
				$ntokenindex += 1
			WEnd
			$ret = DllCall("advapi32.dll", "int", "AdjustTokenPrivileges", "hwnd", $htoken, "int", 0, "ptr", DllStructGetPtr($token_privileges), "int", DllStructGetSize($newtoken_privileges), "ptr", DllStructGetPtr($newtoken_privileges), "int*", 0)
			$f = DllCall("kernel32.dll", "int", "GetLastError")
		EndIf
		$newtoken_privileges = 0
		$token_privileges = 0
		$luid = 0
		If $sp_auxret[0] = 0 Then Return 0
		$sp_auxret = DllCall("kernel32.dll", "int", "CloseHandle", "hwnd", $htoken)
		If NOT $ret[0] AND NOT $sp_auxret[0] Then Return 0
		Return $ret[0]
	EndFunc

#EndRegion
Global Const $lvs_alignleft = 2048
Global Const $lvs_alignmask = 3072
Global Const $lvs_aligntop = 0
Global Const $lvs_autoarrange = 256
Global Const $lvs_default = 13
Global Const $lvs_editlabels = 512
Global Const $lvs_icon = 0
Global Const $lvs_list = 3
Global Const $lvs_nocolumnheader = 16384
Global Const $lvs_nolabelwrap = 128
Global Const $lvs_noscroll = 8192
Global Const $lvs_nosortheader = 32768
Global Const $lvs_ownerdata = 4096
Global Const $lvs_ownerdrawfixed = 1024
Global Const $lvs_report = 1
Global Const $lvs_shareimagelists = 64
Global Const $lvs_showselalways = 8
Global Const $lvs_singlesel = 4
Global Const $lvs_smallicon = 2
Global Const $lvs_sortascending = 16
Global Const $lvs_sortdescending = 32
Global Const $lvs_typemask = 3
Global Const $lvs_typestylemask = 64512
Global Const $lvs_ex_autoautoarrange = 16777216
Global Const $lvs_ex_autocheckselect = 134217728
Global Const $lvs_ex_autosizecolumns = 268435456
Global Const $lvs_ex_borderselect = 32768
Global Const $lvs_ex_checkboxes = 4
Global Const $lvs_ex_columnoverflow = -2147483648
Global Const $lvs_ex_columnsnappoints = 1073741824
Global Const $lvs_ex_doublebuffer = 65536
Global Const $lvs_ex_flatsb = 256
Global Const $lvs_ex_fullrowselect = 32
Global Const $lvs_ex_gridlines = 1
Global Const $lvs_ex_headerdragdrop = 16
Global Const $lvs_ex_headerinallviews = 33554432
Global Const $lvs_ex_hidelabels = 131072
Global Const $lvs_ex_infotip = 1024
Global Const $lvs_ex_justifycolumns = 2097152
Global Const $lvs_ex_labeltip = 16384
Global Const $lvs_ex_multiworkareas = 8192
Global Const $lvs_ex_oneclickactivate = 64
Global Const $lvs_ex_regional = 512
Global Const $lvs_ex_simpleselect = 1048576
Global Const $lvs_ex_snaptogrid = 524288
Global Const $lvs_ex_subitemimages = 2
Global Const $lvs_ex_trackselect = 8
Global Const $lvs_ex_transparentbkgnd = 4194304
Global Const $lvs_ex_transparentshadowtext = 8388608
Global Const $lvs_ex_twoclickactivate = 128
Global Const $lvs_ex_underlinecold = 4096
Global Const $lvs_ex_underlinehot = 2048
Global Const $lvgs_normal = 0
Global Const $lvgs_collapsed = 1
Global Const $lvgs_hidden = 2
Global Const $lvgs_noheader = 4
Global Const $lvgs_collapsible = 8
Global Const $lvgs_focused = 16
Global Const $lvgs_selected = 32
Global Const $lvgs_subseted = 64
Global Const $lvgs_subsetlinkfocused = 128
Global Const $lvggr_group = 0
Global Const $lvggr_header = 1
Global Const $lvggr_label = 2
Global Const $lvggr_subsetlink = 3
Global Const $lv_err = -1
Global Const $lvbkif_source_none = 0
Global Const $lvbkif_source_hbitmap = 1
Global Const $lvbkif_source_url = 2
Global Const $lvbkif_source_mask = 3
Global Const $lvbkif_style_normal = 0
Global Const $lvbkif_style_tile = 16
Global Const $lvbkif_style_mask = 16
Global Const $lvbkif_flag_tileoffset = 256
Global Const $lvbkif_type_watermark = 268435456
Global Const $lv_view_details = 1
Global Const $lv_view_icon = 0
Global Const $lv_view_list = 3
Global Const $lv_view_smallicon = 2
Global Const $lv_view_tile = 4
Global Const $lva_alignleft = 1
Global Const $lva_aligntop = 2
Global Const $lva_default = 0
Global Const $lva_snaptogrid = 5
Global Const $lvcdi_item = 0
Global Const $lvcdi_group = 1
Global Const $lvcf_alldata = 63
Global Const $lvcf_fmt = 1
Global Const $lvcf_image = 16
Global Const $lvcfmt_justifymask = 3
Global Const $lvcf_text = 4
Global Const $lvcf_width = 2
Global Const $lvcfmt_bitmap_on_right = 4096
Global Const $lvcfmt_center = 2
Global Const $lvcfmt_col_has_images = 32768
Global Const $lvcfmt_image = 2048
Global Const $lvcfmt_left = 0
Global Const $lvcfmt_right = 1
Global Const $lvfi_nearestxy = 64
Global Const $lvfi_param = 1
Global Const $lvfi_partial = 8
Global Const $lvfi_string = 2
Global Const $lvfi_wrap = 32
Global Const $lvga_footer_left = 8
Global Const $lvga_footer_center = 16
Global Const $lvga_footer_right = 32
Global Const $lvga_header_left = 1
Global Const $lvga_header_center = 2
Global Const $lvga_header_right = 4
Global Const $lvgf_align = 8
Global Const $lvgf_descriptiontop = 1024
Global Const $lvgf_descriptionbottom = 2048
Global Const $lvgf_extendedimage = 8192
Global Const $lvgf_footer = 2
Global Const $lvgf_groupid = 16
Global Const $lvgf_header = 1
Global Const $lvgf_items = 16384
Global Const $lvgf_none = 0
Global Const $lvgf_state = 4
Global Const $lvgf_subset = 32768
Global Const $lvgf_subsetitems = 65536
Global Const $lvgf_subtitle = 256
Global Const $lvgf_task = 512
Global Const $lvgf_titleimage = 4096
Global Const $lvht_above = 8
Global Const $lvht_below = 16
Global Const $lvht_nowhere = 1
Global Const $lvht_onitemicon = 2
Global Const $lvht_onitemlabel = 4
Global Const $lvht_onitemstateicon = 8
Global Const $lvht_toleft = 64
Global Const $lvht_toright = 32
Global Const $lvht_onitem = BitOR($lvht_onitemicon, $lvht_onitemlabel, $lvht_onitemstateicon)
Global Const $lvif_colfmt = 65536
Global Const $lvif_columns = 512
Global Const $lvif_groupid = 256
Global Const $lvif_image = 2
Global Const $lvif_indent = 16
Global Const $lvif_norecompute = 2048
Global Const $lvif_param = 4
Global Const $lvif_state = 8
Global Const $lvif_text = 1
Global Const $lvim_after = 1
Global Const $lvir_bounds = 0
Global Const $lvir_icon = 1
Global Const $lvir_label = 2
Global Const $lvir_selectbounds = 3
Global Const $lvis_cut = 4
Global Const $lvis_drophilited = 8
Global Const $lvis_focused = 1
Global Const $lvis_overlaymask = 3840
Global Const $lvis_selected = 2
Global Const $lvis_stateimagemask = 61440
Global Const $lvm_first = 4096
Global Const $lvm_approximateviewrect = ($lvm_first + 64)
Global Const $lvm_arrange = ($lvm_first + 22)
Global Const $lvm_canceleditlabel = ($lvm_first + 179)
Global Const $lvm_createdragimage = ($lvm_first + 33)
Global Const $lvm_deleteallitems = ($lvm_first + 9)
Global Const $lvm_deletecolumn = ($lvm_first + 28)
Global Const $lvm_deleteitem = ($lvm_first + 8)
Global Const $lvm_editlabela = ($lvm_first + 23)
Global Const $lvm_editlabelw = ($lvm_first + 118)
Global Const $lvm_editlabel = $lvm_editlabela
Global Const $lvm_enablegroupview = ($lvm_first + 157)
Global Const $lvm_ensurevisible = ($lvm_first + 19)
Global Const $lvm_finditem = ($lvm_first + 13)
Global Const $lvm_getbkcolor = ($lvm_first + 0)
Global Const $lvm_getbkimagea = ($lvm_first + 69)
Global Const $lvm_getbkimagew = ($lvm_first + 139)
Global Const $lvm_getcallbackmask = ($lvm_first + 10)
Global Const $lvm_getcolumna = ($lvm_first + 25)
Global Const $lvm_getcolumnw = ($lvm_first + 95)
Global Const $lvm_getcolumnorderarray = ($lvm_first + 59)
Global Const $lvm_getcolumnwidth = ($lvm_first + 29)
Global Const $lvm_getcountperpage = ($lvm_first + 40)
Global Const $lvm_geteditcontrol = ($lvm_first + 24)
Global Const $lvm_getemptytext = ($lvm_first + 204)
Global Const $lvm_getextendedlistviewstyle = ($lvm_first + 55)
Global Const $lvm_getfocusedgroup = ($lvm_first + 93)
Global Const $lvm_getfooterinfo = ($lvm_first + 206)
Global Const $lvm_getfooteritem = ($lvm_first + 208)
Global Const $lvm_getfooteritemrect = ($lvm_first + 207)
Global Const $lvm_getfooterrect = ($lvm_first + 205)
Global Const $lvm_getgroupcount = ($lvm_first + 152)
Global Const $lvm_getgroupinfo = ($lvm_first + 149)
Global Const $lvm_getgroupinfobyindex = ($lvm_first + 153)
Global Const $lvm_getgroupmetrics = ($lvm_first + 156)
Global Const $lvm_getgrouprect = ($lvm_first + 98)
Global Const $lvm_getgroupstate = ($lvm_first + 92)
Global Const $lvm_getheader = ($lvm_first + 31)
Global Const $lvm_gethotcursor = ($lvm_first + 63)
Global Const $lvm_gethotitem = ($lvm_first + 61)
Global Const $lvm_gethovertime = ($lvm_first + 72)
Global Const $lvm_getimagelist = ($lvm_first + 2)
Global Const $lvm_getinsertmark = ($lvm_first + 167)
Global Const $lvm_getinsertmarkcolor = ($lvm_first + 171)
Global Const $lvm_getinsertmarkrect = ($lvm_first + 169)
Global Const $lvm_getisearchstringa = ($lvm_first + 52)
Global Const $lvm_getisearchstringw = ($lvm_first + 117)
Global Const $lvm_getitema = ($lvm_first + 5)
Global Const $lvm_getitemw = ($lvm_first + 75)
Global Const $lvm_getitemcount = ($lvm_first + 4)
Global Const $lvm_getitemindexrect = ($lvm_first + 209)
Global Const $lvm_getitemposition = ($lvm_first + 16)
Global Const $lvm_getitemrect = ($lvm_first + 14)
Global Const $lvm_getitemspacing = ($lvm_first + 51)
Global Const $lvm_getitemstate = ($lvm_first + 44)
Global Const $lvm_getitemtexta = ($lvm_first + 45)
Global Const $lvm_getitemtextw = ($lvm_first + 115)
Global Const $lvm_getnextitem = ($lvm_first + 12)
Global Const $lvm_getnextitemindex = ($lvm_first + 211)
Global Const $lvm_getnumberofworkareas = ($lvm_first + 73)
Global Const $lvm_getorigin = ($lvm_first + 41)
Global Const $lvm_getoutlinecolor = ($lvm_first + 176)
Global Const $lvm_getselectedcolumn = ($lvm_first + 174)
Global Const $lvm_getselectedcount = ($lvm_first + 50)
Global Const $lvm_getselectionmark = ($lvm_first + 66)
Global Const $lvm_getstringwidtha = ($lvm_first + 17)
Global Const $lvm_getstringwidthw = ($lvm_first + 87)
Global Const $lvm_getsubitemrect = ($lvm_first + 56)
Global Const $lvm_gettextbkcolor = ($lvm_first + 37)
Global Const $lvm_gettextcolor = ($lvm_first + 35)
Global Const $lvm_gettileinfo = ($lvm_first + 165)
Global Const $lvm_gettileviewinfo = ($lvm_first + 163)
Global Const $lvm_gettooltips = ($lvm_first + 78)
Global Const $lvm_gettopindex = ($lvm_first + 39)
Global Const $lvm_getunicodeformat = 8192 + 6
Global Const $lvm_getview = ($lvm_first + 143)
Global Const $lvm_getviewrect = ($lvm_first + 34)
Global Const $lvm_getworkareas = ($lvm_first + 70)
Global Const $lvm_hasgroup = ($lvm_first + 161)
Global Const $lvm_hittest = ($lvm_first + 18)
Global Const $lvm_insertcolumna = ($lvm_first + 27)
Global Const $lvm_insertcolumnw = ($lvm_first + 97)
Global Const $lvm_insertgroup = ($lvm_first + 145)
Global Const $lvm_insertgroupsorted = ($lvm_first + 159)
Global Const $lvm_insertitema = ($lvm_first + 7)
Global Const $lvm_insertitemw = ($lvm_first + 77)
Global Const $lvm_insertmarkhittest = ($lvm_first + 168)
Global Const $lvm_isgroupviewenabled = ($lvm_first + 175)
Global Const $lvm_isitemvisible = ($lvm_first + 182)
Global Const $lvm_mapidtoindex = ($lvm_first + 181)
Global Const $lvm_mapindextoid = ($lvm_first + 180)
Global Const $lvm_movegroup = ($lvm_first + 151)
Global Const $lvm_redrawitems = ($lvm_first + 21)
Global Const $lvm_removeallgroups = ($lvm_first + 160)
Global Const $lvm_removegroup = ($lvm_first + 150)
Global Const $lvm_scroll = ($lvm_first + 20)
Global Const $lvm_setbkcolor = ($lvm_first + 1)
Global Const $lvm_setbkimagea = ($lvm_first + 68)
Global Const $lvm_setbkimagew = ($lvm_first + 138)
Global Const $lvm_setcallbackmask = ($lvm_first + 11)
Global Const $lvm_setcolumna = ($lvm_first + 26)
Global Const $lvm_setcolumnw = ($lvm_first + 96)
Global Const $lvm_setcolumnorderarray = ($lvm_first + 58)
Global Const $lvm_setcolumnwidth = ($lvm_first + 30)
Global Const $lvm_setextendedlistviewstyle = ($lvm_first + 54)
Global Const $lvm_setgroupinfo = ($lvm_first + 147)
Global Const $lvm_setgroupmetrics = ($lvm_first + 155)
Global Const $lvm_sethotcursor = ($lvm_first + 62)
Global Const $lvm_sethotitem = ($lvm_first + 60)
Global Const $lvm_sethovertime = ($lvm_first + 71)
Global Const $lvm_seticonspacing = ($lvm_first + 53)
Global Const $lvm_setimagelist = ($lvm_first + 3)
Global Const $lvm_setinfotip = ($lvm_first + 173)
Global Const $lvm_setinsertmark = ($lvm_first + 166)
Global Const $lvm_setinsertmarkcolor = ($lvm_first + 170)
Global Const $lvm_setitema = ($lvm_first + 6)
Global Const $lvm_setitemw = ($lvm_first + 76)
Global Const $lvm_setitemcount = ($lvm_first + 47)
Global Const $lvm_setitemindexstate = ($lvm_first + 210)
Global Const $lvm_setitemposition = ($lvm_first + 15)
Global Const $lvm_setitemposition32 = ($lvm_first + 49)
Global Const $lvm_setitemstate = ($lvm_first + 43)
Global Const $lvm_setitemtexta = ($lvm_first + 46)
Global Const $lvm_setitemtextw = ($lvm_first + 116)
Global Const $lvm_setoutlinecolor = ($lvm_first + 177)
Global Const $lvm_setselectedcolumn = ($lvm_first + 140)
Global Const $lvm_setselectionmark = ($lvm_first + 67)
Global Const $lvm_settextbkcolor = ($lvm_first + 38)
Global Const $lvm_settextcolor = ($lvm_first + 36)
Global Const $lvm_settileinfo = ($lvm_first + 164)
Global Const $lvm_settileviewinfo = ($lvm_first + 162)
Global Const $lvm_settilewidth = ($lvm_first + 141)
Global Const $lvm_settooltips = ($lvm_first + 74)
Global Const $lvm_setunicodeformat = 8192 + 5
Global Const $lvm_setview = ($lvm_first + 142)
Global Const $lvm_setworkareas = ($lvm_first + 65)
Global Const $lvm_sortgroups = ($lvm_first + 158)
Global Const $lvm_sortitems = ($lvm_first + 48)
Global Const $lvm_sortitemsex = ($lvm_first + 81)
Global Const $lvm_subitemhittest = ($lvm_first + 57)
Global Const $lvm_update = ($lvm_first + 42)
Global Const $lvn_first = -100
Global Const $lvn_last = -199
Global Const $lvn_begindrag = ($lvn_first - 9)
Global Const $lvn_beginlabeledita = ($lvn_first - 5)
Global Const $lvn_beginlabeleditw = ($lvn_first - 75)
Global Const $lvn_beginrdrag = ($lvn_first - 11)
Global Const $lvn_beginscroll = ($lvn_first - 80)
Global Const $lvn_columnclick = ($lvn_first - 8)
Global Const $lvn_columndropdown = ($lvn_first - 64)
Global Const $lvn_columnoverflowclick = ($lvn_first - 66)
Global Const $lvn_deleteallitems = ($lvn_first - 4)
Global Const $lvn_deleteitem = ($lvn_first - 3)
Global Const $lvn_endlabeledita = ($lvn_first - 6)
Global Const $lvn_endlabeleditw = ($lvn_first - 76)
Global Const $lvn_endscroll = ($lvn_first - 81)
Global Const $lvn_getdispinfoa = ($lvn_first - 50)
Global Const $lvn_getdispinfow = ($lvn_first - 77)
Global Const $lvn_getdispinfo = $lvn_getdispinfoa
Global Const $lvn_getemptymarkup = ($lvn_first - 87)
Global Const $lvn_getinfotipa = ($lvn_first - 57)
Global Const $lvn_getinfotipw = ($lvn_first - 58)
Global Const $lvn_hottrack = ($lvn_first - 21)
Global Const $lvn_incrementalsearcha = ($lvn_first - 62)
Global Const $lvn_incrementalsearchw = ($lvn_first - 63)
Global Const $lvn_insertitem = ($lvn_first - 2)
Global Const $lvn_itemactivate = ($lvn_first - 14)
Global Const $lvn_itemchanged = ($lvn_first - 1)
Global Const $lvn_itemchanging = ($lvn_first - 0)
Global Const $lvn_keydown = ($lvn_first - 55)
Global Const $lvn_linkclick = ($lvn_first - 84)
Global Const $lvn_marqueebegin = ($lvn_first - 56)
Global Const $lvn_odcachehint = ($lvn_first - 13)
Global Const $lvn_odfinditema = ($lvn_first - 52)
Global Const $lvn_odfinditemw = ($lvn_first - 79)
Global Const $lvn_odfinditem = $lvn_odfinditema
Global Const $lvn_odstatechanged = ($lvn_first - 15)
Global Const $lvn_setdispinfoa = ($lvn_first - 51)
Global Const $lvn_setdispinfow = ($lvn_first - 78)
Global Const $lvni_above = 256
Global Const $lvni_below = 512
Global Const $lvni_toleft = 1024
Global Const $lvni_toright = 2048
Global Const $lvni_all = 0
Global Const $lvni_cut = 4
Global Const $lvni_drophilited = 8
Global Const $lvni_focused = 1
Global Const $lvni_selected = 2
Global Const $lvscw_autosize = -1
Global Const $lvscw_autosize_useheader = -2
Global Const $lvsicf_noinvalidateall = 1
Global Const $lvsicf_noscroll = 2
Global Const $lvsil_normal = 0
Global Const $lvsil_small = 1
Global Const $lvsil_state = 2
Global Const $gui_ss_default_listview = BitOR($lvs_showselalways, $lvs_singlesel)
Global Const $hdf_left = 0
Global Const $hdf_right = 1
Global Const $hdf_center = 2
Global Const $hdf_justifymask = 3
Global Const $hdf_bitmap_on_right = 4096
Global Const $hdf_bitmap = 8192
Global Const $hdf_string = 16384
Global Const $hdf_ownerdraw = 32768
Global Const $hdf_displaymask = 61440
Global Const $hdf_rtlreading = 4
Global Const $hdf_sortdown = 512
Global Const $hdf_image = 2048
Global Const $hdf_sortup = 1024
Global Const $hdf_flagmask = 3588
Global Const $hdi_width = 1
Global Const $hdi_text = 2
Global Const $hdi_format = 4
Global Const $hdi_param = 8
Global Const $hdi_bitmap = 16
Global Const $hdi_image = 32
Global Const $hdi_di_setitem = 64
Global Const $hdi_order = 128
Global Const $hdi_filter = 256
Global Const $hht_nowhere = 1
Global Const $hht_onheader = 2
Global Const $hht_ondivider = 4
Global Const $hht_ondivopen = 8
Global Const $hht_onfilter = 16
Global Const $hht_onfilterbutton = 32
Global Const $hht_above = 256
Global Const $hht_below = 512
Global Const $hht_toright = 1024
Global Const $hht_toleft = 2048
Global Const $hdm_first = 4608
Global Const $hdm_clearfilter = $hdm_first + 24
Global Const $hdm_createdragimage = $hdm_first + 16
Global Const $hdm_deleteitem = $hdm_first + 2
Global Const $hdm_editfilter = $hdm_first + 23
Global Const $hdm_getbitmapmargin = $hdm_first + 21
Global Const $hdm_getfocuseditem = $hdm_first + 27
Global Const $hdm_getimagelist = $hdm_first + 9
Global Const $hdm_getitema = $hdm_first + 3
Global Const $hdm_getitemw = $hdm_first + 11
Global Const $hdm_getitemcount = $hdm_first + 0
Global Const $hdm_getitemdropdownrect = $hdm_first + 25
Global Const $hdm_getitemrect = $hdm_first + 7
Global Const $hdm_getorderarray = $hdm_first + 17
Global Const $hdm_getoverflowrect = $hdm_first + 26
Global Const $hdm_getunicodeformat = 8192 + 6
Global Const $hdm_hittest = $hdm_first + 6
Global Const $hdm_insertitema = $hdm_first + 1
Global Const $hdm_insertitemw = $hdm_first + 10
Global Const $hdm_layout = $hdm_first + 5
Global Const $hdm_ordertoindex = $hdm_first + 15
Global Const $hdm_setbitmapmargin = $hdm_first + 20
Global Const $hdm_setfilterchangetimeout = $hdm_first + 22
Global Const $hdm_setfocuseditem = $hdm_first + 28
Global Const $hdm_sethotdivider = $hdm_first + 19
Global Const $hdm_setimagelist = $hdm_first + 8
Global Const $hdm_setitema = $hdm_first + 4
Global Const $hdm_setitemw = $hdm_first + 12
Global Const $hdm_setorderarray = $hdm_first + 18
Global Const $hdm_setunicodeformat = 8192 + 5
Global Const $hdn_first = -300
Global Const $hdn_begindrag = $hdn_first - 10
Global Const $hdn_begintrack = $hdn_first - 6
Global Const $hdn_dividerdblclick = $hdn_first - 5
Global Const $hdn_enddrag = $hdn_first - 11
Global Const $hdn_endtrack = $hdn_first - 7
Global Const $hdn_filterbtnclick = $hdn_first - 13
Global Const $hdn_filterchange = $hdn_first - 12
Global Const $hdn_getdispinfo = $hdn_first - 9
Global Const $hdn_itemchanged = $hdn_first - 1
Global Const $hdn_itemchanging = $hdn_first - 0
Global Const $hdn_itemclick = $hdn_first - 2
Global Const $hdn_itemdblclick = $hdn_first - 3
Global Const $hdn_track = $hdn_first - 8
Global Const $hdn_begintrackw = $hdn_first - 26
Global Const $hdn_dividerdblclickw = $hdn_first - 25
Global Const $hdn_endtrackw = $hdn_first - 27
Global Const $hdn_getdispinfow = $hdn_first - 29
Global Const $hdn_itemchangedw = $hdn_first - 21
Global Const $hdn_itemchangingw = $hdn_first - 20
Global Const $hdn_itemclickw = $hdn_first - 22
Global Const $hdn_itemdblclickw = $hdn_first - 23
Global Const $hdn_trackw = $hdn_first - 28
Global Const $hds_buttons = 2
Global Const $hds_checkboxes = 1024
Global Const $hds_dragdrop = 64
Global Const $hds_filterbar = 256
Global Const $hds_flat = 512
Global Const $hds_fulldrag = 128
Global Const $hds_hidden = 8
Global Const $hds_horz = 0
Global Const $hds_hottrack = 4
Global Const $hds_nosizing = 2048
Global Const $hds_overflow = 4096
Global Const $hds_default = 70
Global Const $gmem_fixed = 0
Global Const $gmem_moveable = 2
Global Const $gmem_nocompact = 16
Global Const $gmem_nodiscard = 32
Global Const $gmem_zeroinit = 64
Global Const $gmem_modify = 128
Global Const $gmem_discardable = 256
Global Const $gmem_not_banked = 4096
Global Const $gmem_share = 8192
Global Const $gmem_ddeshare = 8192
Global Const $gmem_notify = 16384
Global Const $gmem_lower = 4096
Global Const $gmem_valid_flags = 32626
Global Const $gmem_invalid_handle = 32768
Global Const $gptr = $gmem_fixed + $gmem_zeroinit
Global Const $ghnd = $gmem_moveable + $gmem_zeroinit
Global Const $mem_commit = 4096
Global Const $mem_reserve = 8192
Global Const $mem_top_down = 1048576
Global Const $mem_shared = 134217728
Global Const $page_noaccess = 1
Global Const $page_readonly = 2
Global Const $page_readwrite = 4
Global Const $page_execute = 16
Global Const $page_execute_read = 32
Global Const $page_execute_readwrite = 64
Global Const $page_guard = 256
Global Const $page_nocache = 512
Global Const $mem_decommit = 16384
Global Const $mem_release = 32768
Global Const $process_terminate = 1
Global Const $process_create_thread = 2
Global Const $process_set_sessionid = 4
Global Const $process_vm_operation = 8
Global Const $process_vm_read = 16
Global Const $process_vm_write = 32
Global Const $process_dup_handle = 64
Global Const $process_create_process = 128
Global Const $process_set_quota = 256
Global Const $process_set_information = 512
Global Const $process_query_information = 1024
Global Const $process_suspend_resume = 2048
Global Const $process_all_access = 2035711
Global Const $tagmemmap = "handle hProc;ulong_ptr Size;ptr Mem"

Func _memfree(ByRef $tmemmap)
	Local $pmemory = DllStructGetData($tmemmap, "Mem")
	Local $hprocess = DllStructGetData($tmemmap, "hProc")
	Local $bresult = _memvirtualfreeex($hprocess, $pmemory, 0, $mem_release)
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hprocess)
	If @error Then Return SetError(@error, @extended, False)
	Return $bresult
EndFunc

Func _memglobalalloc($ibytes, $iflags = 0)
	Local $aresult = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $iflags, "ulong_ptr", $ibytes)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memglobalfree($hmem)
	Local $aresult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memgloballock($hmem)
	Local $aresult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memglobalsize($hmem)
	Local $aresult = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memglobalunlock($hmem)
	Local $aresult = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _meminit($hwnd, $isize, ByRef $tmemmap)
	Local $aresult = DllCall("User32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hwnd, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	Local $iprocessid = $aresult[2]
	If $iprocessid = 0 Then Return SetError(1, 0, 0)
	Local $iaccess = BitOR($process_vm_operation, $process_vm_read, $process_vm_write)
	Local $hprocess = __mem_openprocess($iaccess, False, $iprocessid, True)
	Local $ialloc = BitOR($mem_reserve, $mem_commit)
	Local $pmemory = _memvirtualallocex($hprocess, 0, $isize, $ialloc, $page_readwrite)
	If $pmemory = 0 Then Return SetError(2, 0, 0)
	$tmemmap = DllStructCreate($tagmemmap)
	DllStructSetData($tmemmap, "hProc", $hprocess)
	DllStructSetData($tmemmap, "Size", $isize)
	DllStructSetData($tmemmap, "Mem", $pmemory)
	Return $pmemory
EndFunc

Func _memmovememory($psource, $pdest, $ilength)
	DllCall("kernel32.dll", "none", "RtlMoveMemory", "ptr", $pdest, "ptr", $psource, "ulong_ptr", $ilength)
	If @error Then Return SetError(@error, @extended)
EndFunc

Func _memread(ByRef $tmemmap, $psrce, $pdest, $isize)
	Local $aresult = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", DllStructGetData($tmemmap, "hProc"), "ptr", $psrce, "ptr", $pdest, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memwrite(ByRef $tmemmap, $psrce, $pdest = 0, $isize = 0, $ssrce = "ptr")
	If $pdest = 0 Then $pdest = DllStructGetData($tmemmap, "Mem")
	If $isize = 0 Then $isize = DllStructGetData($tmemmap, "Size")
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", DllStructGetData($tmemmap, "hProc"), "ptr", $pdest, $ssrce, $psrce, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memvirtualalloc($paddress, $isize, $iallocation, $iprotect)
	Local $aresult = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", $paddress, "ulong_ptr", $isize, "dword", $iallocation, "dword", $iprotect)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memvirtualallocex($hprocess, $paddress, $isize, $iallocation, $iprotect)
	Local $aresult = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "handle", $hprocess, "ptr", $paddress, "ulong_ptr", $isize, "dword", $iallocation, "dword", $iprotect)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memvirtualfree($paddress, $isize, $ifreetype)
	Local $aresult = DllCall("kernel32.dll", "bool", "VirtualFree", "ptr", $paddress, "ulong_ptr", $isize, "dword", $ifreetype)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memvirtualfreeex($hprocess, $paddress, $isize, $ifreetype)
	Local $aresult = DllCall("kernel32.dll", "bool", "VirtualFreeEx", "handle", $hprocess, "ptr", $paddress, "ulong_ptr", $isize, "dword", $ifreetype)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func __mem_openprocess($iaccess, $finherit, $iprocessid, $fdebugpriv = False)
	Local $aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $finherit, "dword", $iprocessid)
	If @error Then Return SetError(@error, @extended, 0)
	If $aresult[0] Then Return $aresult[0]
	If NOT $fdebugpriv Then Return 0
	Local $htoken = _security__openthreadtokenex(BitOR($token_adjust_privileges, $token_query))
	If @error Then Return SetError(@error, @extended, 0)
	_security__setprivilege($htoken, "SeDebugPrivilege", True)
	Local $ierror = @error
	Local $ilasterror = @extended
	Local $iret = 0
	If NOT @error Then
		$aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $finherit, "dword", $iprocessid)
		$ierror = @error
		$ilasterror = @extended
		If $aresult[0] Then $iret = $aresult[0]
		_security__setprivilege($htoken, "SeDebugPrivilege", False)
		If @error Then
			$ierror = @error
			$ilasterror = @extended
		EndIf
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $htoken)
	Return SetError($ierror, $ilasterror, $iret)
EndFunc

Global $_ghhdrlastwnd
Global $debug_hdr = False
Global Const $__headerconstant_classname = "SysHeader32"
Global Const $__headerconstant_default_gui_font = 17
Global Const $__headerconstant_swp_showwindow = 64
Global Const $taghdhittestinfo = $tagpoint & ";uint Flags;int Item"
Global Const $taghdlayout = "ptr Rect;ptr WindowPos"
Global Const $taghdtextfilter = "ptr Text;int TextMax"

Func _guictrlheader_additem($hwnd, $stext, $iwidth = 50, $ialign = 0, $iimage = -1, $fonright = False)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _guictrlheader_insertitem($hwnd, _guictrlheader_getitemcount($hwnd), $stext, $iwidth, $ialign, $iimage, $fonright)
EndFunc

Func _guictrlheader_clearfilter($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_clearfilter, $iindex) <> 0
EndFunc

Func _guictrlheader_clearfilterall($hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_clearfilter, -1) <> 0
EndFunc

Func _guictrlheader_create($hwnd, $istyle = 70)
	$istyle = BitOR($istyle, $__udfguiconstant_ws_child, $__udfguiconstant_ws_visible)
	Local $nctrlid = __udf_getnextglobalid($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Local $hheader = _winapi_createwindowex(0, $__headerconstant_classname, "", $istyle, 0, 0, 0, 0, $hwnd, $nctrlid)
	Local $trect = _winapi_getclientrect($hwnd)
	Local $twindowpos = _guictrlheader_layout($hheader, $trect)
	Local $iflags = BitOR(DllStructGetData($twindowpos, "Flags"), $__headerconstant_swp_showwindow)
	_winapi_setwindowpos($hheader, DllStructGetData($twindowpos, "InsertAfter"), DllStructGetData($twindowpos, "X"), DllStructGetData($twindowpos, "Y"), DllStructGetData($twindowpos, "CX"), DllStructGetData($twindowpos, "CY"), $iflags)
	_winapi_setfont($hheader, _winapi_getstockobject($__headerconstant_default_gui_font))
	_guictrlheader_setunicodeformat($hheader, False)
	Return $hheader
EndFunc

Func _guictrlheader_createdragimage($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_createdragimage, $iindex)
EndFunc

Func _guictrlheader_deleteitem($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_deleteitem, $iindex) <> 0
EndFunc

Func _guictrlheader_destroy(ByRef $hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	If NOT _winapi_isclassname($hwnd, $__headerconstant_classname) Then Return SetError(2, 2, False)
	Local $destroyed = 0
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
			Local $nctrlid = _winapi_getdlgctrlid($hwnd)
			Local $hparent = _winapi_getparent($hwnd)
			$destroyed = _winapi_destroywindow($hwnd)
			Local $iret = __udf_freeglobalid($hparent, $nctrlid)
			If NOT $iret Then
			EndIf
		Else
			Return SetError(1, 1, False)
		EndIf
	Else
		$destroyed = GUICtrlDelete($hwnd)
	EndIf
	If $destroyed Then $hwnd = 0
	Return $destroyed <> 0
EndFunc

Func _guictrlheader_editfilter($hwnd, $iindex, $fdiscard = True)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_editfilter, $iindex, $fdiscard) <> 0
EndFunc

Func _guictrlheader_getbitmapmargin($hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_getbitmapmargin)
EndFunc

Func _guictrlheader_getimagelist($hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_getimagelist)
EndFunc

Func _guictrlheader_getitem($hwnd, $iindex, ByRef $titem)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $funicode = _guictrlheader_getunicodeformat($hwnd)
	Local $pitem = DllStructGetPtr($titem)
	Local $iret
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		$iret = _sendmessage($hwnd, $hdm_getitemw, $iindex, $pitem, 0, "wparam", "ptr")
	Else
		Local $iitem = DllStructGetSize($titem)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $iitem, $tmemmap)
		_memwrite($tmemmap, $pitem)
		If $funicode Then
			$iret = _sendmessage($hwnd, $hdm_getitemw, $iindex, $pmemory, 0, "wparam", "ptr")
		Else
			$iret = _sendmessage($hwnd, $hdm_getitema, $iindex, $pmemory, 0, "wparam", "ptr")
		EndIf
		_memread($tmemmap, $pmemory, $pitem, $iitem)
		_memfree($tmemmap)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrlheader_getitemalign($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Switch BitAND(_guictrlheader_getitemformat($hwnd, $iindex), $hdf_justifymask)
		Case $hdf_left
			Return 0
		Case $hdf_right
			Return 1
		Case $hdf_center
			Return 2
		Case Else
			Return -1
	EndSwitch
EndFunc

Func _guictrlheader_getitembitmap($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_bitmap)
	_guictrlheader_getitem($hwnd, $iindex, $titem)
	Return DllStructGetData($titem, "hBmp")
EndFunc

Func _guictrlheader_getitemcount($hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_getitemcount)
EndFunc

Func _guictrlheader_getitemdisplay($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $iret = 0
	Local $iformat = _guictrlheader_getitemformat($hwnd, $iindex)
	If BitAND($iformat, $hdf_bitmap) <> 0 Then $iret = BitOR($iret, 1)
	If BitAND($iformat, $hdf_bitmap_on_right) <> 0 Then $iret = BitOR($iret, 2)
	If BitAND($iformat, $hdf_ownerdraw) <> 0 Then $iret = BitOR($iret, 4)
	If BitAND($iformat, $hdf_string) <> 0 Then $iret = BitOR($iret, 8)
	Return $iret
EndFunc

Func _guictrlheader_getitemflags($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $iret = 0
	Local $iformat = _guictrlheader_getitemformat($hwnd, $iindex)
	If BitAND($iformat, $hdf_image) <> 0 Then $iret = BitOR($iret, 1)
	If BitAND($iformat, $hdf_rtlreading) <> 0 Then $iret = BitOR($iret, 2)
	If BitAND($iformat, $hdf_sortdown) <> 0 Then $iret = BitOR($iret, 4)
	If BitAND($iformat, $hdf_sortup) <> 0 Then $iret = BitOR($iret, 8)
	Return $iret
EndFunc

Func _guictrlheader_getitemformat($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_format)
	_guictrlheader_getitem($hwnd, $iindex, $titem)
	Return DllStructGetData($titem, "Fmt")
EndFunc

Func _guictrlheader_getitemimage($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_image)
	_guictrlheader_getitem($hwnd, $iindex, $titem)
	Return DllStructGetData($titem, "Image")
EndFunc

Func _guictrlheader_getitemorder($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_order)
	_guictrlheader_getitem($hwnd, $iindex, $titem)
	Return DllStructGetData($titem, "Order")
EndFunc

Func _guictrlheader_getitemparam($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_param)
	_guictrlheader_getitem($hwnd, $iindex, $titem)
	Return DllStructGetData($titem, "Param")
EndFunc

Func _guictrlheader_getitemrect($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $arect[4]
	Local $trect = _guictrlheader_getitemrectex($hwnd, $iindex)
	$arect[0] = DllStructGetData($trect, "Left")
	$arect[1] = DllStructGetData($trect, "Top")
	$arect[2] = DllStructGetData($trect, "Right")
	$arect[3] = DllStructGetData($trect, "Bottom")
	Return $arect
EndFunc

Func _guictrlheader_getitemrectex($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $trect = DllStructCreate($tagrect)
	Local $prect = DllStructGetPtr($trect)
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		_sendmessage($hwnd, $hdm_getitemrect, $iindex, $prect, 0, "wparam", "ptr")
	Else
		Local $irect = DllStructGetSize($trect)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $irect, $tmemmap)
		_memwrite($tmemmap, $prect)
		_sendmessage($hwnd, $hdm_getitemrect, $iindex, $pmemory, 0, "wparam", "ptr")
		_memread($tmemmap, $pmemory, $prect, $irect)
		_memfree($tmemmap)
	EndIf
	Return $trect
EndFunc

Func _guictrlheader_getitemtext($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $funicode = _guictrlheader_getunicodeformat($hwnd)
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[4096]")
	Else
		$tbuffer = DllStructCreate("char Text[4096]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taghditem)
	Local $pitem = DllStructGetPtr($titem)
	DllStructSetData($titem, "Mask", $hdi_text)
	DllStructSetData($titem, "TextMax", 4096)
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		DllStructSetData($titem, "Text", $pbuffer)
		_sendmessage($hwnd, $hdm_getitemw, $iindex, $pitem, 0, "wparam", "ptr")
	Else
		Local $iitem = DllStructGetSize($titem)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $iitem + DllStructGetSize($tbuffer), $tmemmap)
		Local $ptext = $pmemory + $iitem
		DllStructSetData($titem, "Text", $ptext)
		_memwrite($tmemmap, $pitem, $pmemory, $iitem)
		If $funicode Then
			_sendmessage($hwnd, $hdm_getitemw, $iindex, $pmemory, 0, "wparam", "ptr")
		Else
			_sendmessage($hwnd, $hdm_getitema, $iindex, $pmemory, 0, "wparam", "ptr")
		EndIf
		_memread($tmemmap, $ptext, $pbuffer, DllStructGetSize($tbuffer))
		_memfree($tmemmap)
	EndIf
	Return DllStructGetData($tbuffer, "Text")
EndFunc

Func _guictrlheader_getitemwidth($hwnd, $iindex)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_width)
	_guictrlheader_getitem($hwnd, $iindex, $titem)
	Return DllStructGetData($titem, "XY")
EndFunc

Func _guictrlheader_getorderarray($hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $iitems = _guictrlheader_getitemcount($hwnd)
	Local $tbuffer = DllStructCreate("int[" & $iitems & "]")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		_sendmessage($hwnd, $hdm_getorderarray, $iitems, $pbuffer, 0, "wparam", "ptr")
	Else
		Local $ibuffer = DllStructGetSize($tbuffer)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
		_sendmessage($hwnd, $hdm_getorderarray, $iitems, $pmemory, 0, "wparam", "ptr")
		_memread($tmemmap, $pmemory, $pbuffer, $ibuffer)
		_memfree($tmemmap)
	EndIf
	Local $abuffer[$iitems + 1]
	$abuffer[0] = $iitems
	For $ii = 1 To $iitems
		$abuffer[$ii] = DllStructGetData($tbuffer, 1, $ii)
	Next
	Return $abuffer
EndFunc

Func _guictrlheader_getunicodeformat($hwnd)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_getunicodeformat) <> 0
EndFunc

Func _guictrlheader_hittest($hwnd, $ix, $iy)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $ttest = DllStructCreate($taghdhittestinfo)
	Local $ptest = DllStructGetPtr($ttest)
	DllStructSetData($ttest, "X", $ix)
	DllStructSetData($ttest, "Y", $iy)
	Local $atest[11]
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		$atest[0] = _sendmessage($hwnd, $hdm_hittest, 0, $ptest, 0, "wparam", "ptr")
	Else
		Local $itest = DllStructGetSize($ttest)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $itest, $tmemmap)
		_memwrite($tmemmap, $ptest)
		$atest[0] = _sendmessage($hwnd, $hdm_hittest, 0, $pmemory, 0, "wparam", "ptr")
		_memread($tmemmap, $pmemory, $ptest, $itest)
		_memfree($tmemmap)
	EndIf
	Local $iflags = DllStructGetData($ttest, "Flags")
	$atest[1] = BitAND($iflags, $hht_nowhere) <> 0
	$atest[2] = BitAND($iflags, $hht_onheader) <> 0
	$atest[3] = BitAND($iflags, $hht_ondivider) <> 0
	$atest[4] = BitAND($iflags, $hht_ondivopen) <> 0
	$atest[5] = BitAND($iflags, $hht_onfilter) <> 0
	$atest[6] = BitAND($iflags, $hht_onfilterbutton) <> 0
	$atest[7] = BitAND($iflags, $hht_above) <> 0
	$atest[8] = BitAND($iflags, $hht_below) <> 0
	$atest[9] = BitAND($iflags, $hht_toright) <> 0
	$atest[10] = BitAND($iflags, $hht_toleft) <> 0
	Return $atest
EndFunc

Func _guictrlheader_insertitem($hwnd, $iindex, $stext, $iwidth = 50, $ialign = 0, $iimage = -1, $fonright = False)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $aalign[3] = [$hdf_left, $hdf_right, $hdf_center]
	Local $funicode = _guictrlheader_getunicodeformat($hwnd)
	Local $tbuffer, $ibuffer = StringLen($stext) + 1
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taghditem)
	Local $pitem = DllStructGetPtr($titem)
	Local $ifmt = $aalign[$ialign]
	Local $imask = BitOR($hdi_width, $hdi_format)
	If $stext <> "" Then
		$imask = BitOR($imask, $hdi_text)
		$ifmt = BitOR($ifmt, $hdf_string)
	EndIf
	If $iimage <> -1 Then
		$imask = BitOR($imask, $hdi_image)
		$ifmt = BitOR($ifmt, $hdf_image)
	EndIf
	If $fonright Then $ifmt = BitOR($ifmt, $hdf_bitmap_on_right)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($titem, "Mask", $imask)
	DllStructSetData($titem, "XY", $iwidth)
	DllStructSetData($titem, "Fmt", $ifmt)
	DllStructSetData($titem, "Image", $iimage)
	Local $iret
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		DllStructSetData($titem, "Text", $pbuffer)
		$iret = _sendmessage($hwnd, $hdm_insertitemw, $iindex, $pitem, 0, "wparam", "ptr")
	Else
		Local $iitem = DllStructGetSize($titem)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
		Local $ptext = $pmemory + $iitem
		DllStructSetData($titem, "Text", $ptext)
		_memwrite($tmemmap, $pitem, $pmemory, $iitem)
		_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
		If $funicode Then
			$iret = _sendmessage($hwnd, $hdm_insertitemw, $iindex, $pmemory, 0, "wparam", "ptr")
		Else
			$iret = _sendmessage($hwnd, $hdm_insertitema, $iindex, $pmemory, 0, "wparam", "ptr")
		EndIf
		_memfree($tmemmap)
	EndIf
	Return $iret
EndFunc

Func _guictrlheader_layout($hwnd, ByRef $trect)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $tlayout = DllStructCreate($taghdlayout)
	Local $playout = DllStructGetPtr($tlayout)
	Local $prect = DllStructGetPtr($trect)
	Local $twindowpos = DllStructCreate($tagwindowpos)
	Local $pwindowpos = DllStructGetPtr($twindowpos)
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		DllStructSetData($tlayout, "Rect", $prect)
		DllStructSetData($tlayout, "WindowPos", $pwindowpos)
		_sendmessage($hwnd, $hdm_layout, 0, $playout, 0, "wparam", "ptr")
	Else
		Local $ilayout = DllStructGetSize($tlayout)
		Local $irect = DllStructGetSize($trect)
		Local $iwindowpos = DllStructGetSize($twindowpos)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $ilayout + $irect + $iwindowpos, $tmemmap)
		DllStructSetData($tlayout, "Rect", $pmemory + $ilayout)
		DllStructSetData($tlayout, "WindowPos", $pmemory + $ilayout + $irect)
		_memwrite($tmemmap, $playout, $pmemory, $ilayout)
		_memwrite($tmemmap, $prect, $pmemory + $ilayout, $irect)
		_sendmessage($hwnd, $hdm_layout, 0, $pmemory, 0, "wparam", "ptr")
		_memread($tmemmap, $pmemory + $ilayout + $irect, $pwindowpos, $iwindowpos)
		_memfree($tmemmap)
	EndIf
	Return $twindowpos
EndFunc

Func _guictrlheader_ordertoindex($hwnd, $iorder)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_ordertoindex, $iorder)
EndFunc

Func _guictrlheader_setbitmapmargin($hwnd, $iwidth)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_setbitmapmargin, $iwidth)
EndFunc

Func _guictrlheader_setfilterchangetimeout($hwnd, $itimeout)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_setfilterchangetimeout, 0, $itimeout)
EndFunc

Func _guictrlheader_sethotdivider($hwnd, $iflag, $iinputvalue)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_sethotdivider, $iflag, $iinputvalue)
EndFunc

Func _guictrlheader_setimagelist($hwnd, $himage)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_setimagelist, 0, $himage, 0, "wparam", "hwnd", "hwnd")
EndFunc

Func _guictrlheader_setitem($hwnd, $iindex, ByRef $titem)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $funicode = _guictrlheader_getunicodeformat($hwnd)
	Local $pitem = DllStructGetPtr($titem)
	Local $iret
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		$iret = _sendmessage($hwnd, $hdm_setitemw, $iindex, $pitem, 0, "wparam", "ptr")
	Else
		Local $iitem = DllStructGetSize($titem)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $iitem, $tmemmap)
		_memwrite($tmemmap, $pitem)
		If $funicode Then
			$iret = _sendmessage($hwnd, $hdm_setitemw, $iindex, $pmemory, 0, "wparam", "ptr")
		Else
			$iret = _sendmessage($hwnd, $hdm_setitema, $iindex, $pmemory, 0, "wparam", "ptr")
		EndIf
		_memfree($tmemmap)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrlheader_setitemalign($hwnd, $iindex, $ialign)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $aalign[3] = [$hdf_left, $hdf_right, $hdf_center]
	Local $iformat = _guictrlheader_getitemformat($hwnd, $iindex)
	$iformat = BitAND($iformat, BitNOT($hdf_justifymask))
	$iformat = BitOR($iformat, $aalign[$ialign])
	Return _guictrlheader_setitemformat($hwnd, $iindex, $iformat)
EndFunc

Func _guictrlheader_setitembitmap($hwnd, $iindex, $hbmp)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", BitOR($hdi_format, $hdi_bitmap))
	DllStructSetData($titem, "Fmt", $hdf_bitmap)
	DllStructSetData($titem, "hBMP", $hbmp)
	Return _guictrlheader_setitem($hwnd, $iindex, $titem)
EndFunc

Func _guictrlheader_setitemdisplay($hwnd, $iindex, $idisplay)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $iformat = BitAND(_guictrlheader_getitemformat($hwnd, $iindex), NOT $hdf_displaymask)
	If BitAND($idisplay, 1) <> 0 Then $iformat = BitOR($iformat, $hdf_bitmap)
	If BitAND($idisplay, 2) <> 0 Then $iformat = BitOR($iformat, $hdf_bitmap_on_right)
	If BitAND($idisplay, 4) <> 0 Then $iformat = BitOR($iformat, $hdf_ownerdraw)
	If BitAND($idisplay, 8) <> 0 Then $iformat = BitOR($iformat, $hdf_string)
	Return _guictrlheader_setitemformat($hwnd, $iindex, $iformat)
EndFunc

Func _guictrlheader_setitemflags($hwnd, $iindex, $iflags)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $iformat = _guictrlheader_getitemformat($hwnd, $iindex)
	$iformat = BitAND($iformat, BitNOT($hdf_flagmask))
	If BitAND($iflags, 1) <> 0 Then $iformat = BitOR($iformat, $hdf_image)
	If BitAND($iflags, 2) <> 0 Then $iformat = BitOR($iformat, $hdf_rtlreading)
	If BitAND($iflags, 4) <> 0 Then $iformat = BitOR($iformat, $hdf_sortdown)
	If BitAND($iflags, 8) <> 0 Then $iformat = BitOR($iformat, $hdf_sortup)
	Return _guictrlheader_setitemformat($hwnd, $iindex, $iformat)
EndFunc

Func _guictrlheader_setitemformat($hwnd, $iindex, $iformat)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_format)
	DllStructSetData($titem, "Fmt", $iformat)
	Return _guictrlheader_setitem($hwnd, $iindex, $titem)
EndFunc

Func _guictrlheader_setitemimage($hwnd, $iindex, $iimage)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_image)
	DllStructSetData($titem, "Image", $iimage)
	Return _guictrlheader_setitem($hwnd, $iindex, $titem)
EndFunc

Func _guictrlheader_setitemorder($hwnd, $iindex, $iorder)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_order)
	DllStructSetData($titem, "Order", $iorder)
	Return _guictrlheader_setitem($hwnd, $iindex, $titem)
EndFunc

Func _guictrlheader_setitemparam($hwnd, $iindex, $iparam)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_param)
	DllStructSetData($titem, "Param", $iparam)
	Return _guictrlheader_setitem($hwnd, $iindex, $titem)
EndFunc

Func _guictrlheader_setitemtext($hwnd, $iindex, $stext)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $funicode = _guictrlheader_getunicodeformat($hwnd)
	Local $tbuffer, $ibuffer = StringLen($stext) + 1
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taghditem)
	Local $pitem = DllStructGetPtr($titem)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($titem, "Mask", $hdi_text)
	DllStructSetData($titem, "TextMax", $ibuffer)
	Local $iret
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		DllStructSetData($titem, "Text", $pbuffer)
		$iret = _sendmessage($hwnd, $hdm_setitemw, $iindex, $pitem, 0, "wparam", "ptr")
	Else
		Local $iitem = DllStructGetSize($titem)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
		Local $ptext = $pmemory + $iitem
		DllStructSetData($titem, "Text", $ptext)
		_memwrite($tmemmap, $pitem, $pmemory, $iitem)
		_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
		If $funicode Then
			$iret = _sendmessage($hwnd, $hdm_setitemw, $iindex, $pmemory, 0, "wparam", "ptr")
		Else
			$iret = _sendmessage($hwnd, $hdm_setitema, $iindex, $pmemory, 0, "wparam", "ptr")
		EndIf
		_memfree($tmemmap)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrlheader_setitemwidth($hwnd, $iindex, $iwidth)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $titem = DllStructCreate($taghditem)
	DllStructSetData($titem, "Mask", $hdi_width)
	DllStructSetData($titem, "XY", $iwidth)
	Return _guictrlheader_setitem($hwnd, $iindex, $titem)
EndFunc

Func _guictrlheader_setorderarray($hwnd, ByRef $aorder)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Local $tbuffer = DllStructCreate("int[" & $aorder[0] & "]")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	For $ii = 1 To $aorder[0]
		DllStructSetData($tbuffer, 1, $aorder[$ii], $ii)
	Next
	Local $iret
	If _winapi_inprocess($hwnd, $_ghhdrlastwnd) Then
		$iret = _sendmessage($hwnd, $hdm_setorderarray, $aorder[0], $pbuffer, 0, "wparam", "ptr")
	Else
		Local $ibuffer = DllStructGetSize($tbuffer)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
		_memwrite($tmemmap, $pbuffer)
		$iret = _sendmessage($hwnd, $hdm_setorderarray, $aorder[0], $pmemory, 0, "wparam", "ptr")
		_memfree($tmemmap)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrlheader_setunicodeformat($hwnd, $funicode)
	If $debug_hdr Then __udf_validateclassname($hwnd, $__headerconstant_classname)
	Return _sendmessage($hwnd, $hdm_setunicodeformat, $funicode)
EndFunc

Func _arrayadd(ByRef $avarray, $vvalue)
	If NOT IsArray($avarray) Then Return SetError(1, 0, -1)
	If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, -1)
	Local $iubound = UBound($avarray)
	ReDim $avarray[$iubound + 1]
	$avarray[$iubound] = $vvalue
	Return $iubound
EndFunc

Func _arraybinarysearch(Const ByRef $avarray, $vvalue, $istart = 0, $iend = 0)
	If NOT IsArray($avarray) Then Return SetError(1, 0, -1)
	If UBound($avarray, 0) <> 1 Then Return SetError(5, 0, -1)
	Local $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(4, 0, -1)
	Local $imid = Int(($iend + $istart) / 2)
	If $avarray[$istart] > $vvalue OR $avarray[$iend] < $vvalue Then Return SetError(2, 0, -1)
	While $istart <= $imid AND $vvalue <> $avarray[$imid]
		If $vvalue < $avarray[$imid] Then
			$iend = $imid - 1
		Else
			$istart = $imid + 1
		EndIf
		$imid = Int(($iend + $istart) / 2)
	WEnd
	If $istart > $iend Then Return SetError(3, 0, -1)
	Return $imid
EndFunc

Func _arraycombinations(ByRef $avarray, $iset, $sdelim = "")
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $in = UBound($avarray)
	Local $ir = $iset
	Local $aidx[$ir]
	For $i = 0 To $ir - 1
		$aidx[$i] = $i
	Next
	Local $itotal = __array_combinations($in, $ir)
	Local $ileft = $itotal
	Local $aresult[$itotal + 1]
	$aresult[0] = $itotal
	Local $icount = 1
	While $ileft > 0
		__array_getnext($in, $ir, $ileft, $itotal, $aidx)
		For $i = 0 To $iset - 1
			$aresult[$icount] &= $avarray[$aidx[$i]] & $sdelim
		Next
		If $sdelim <> "" Then $aresult[$icount] = StringTrimRight($aresult[$icount], 1)
		$icount += 1
	WEnd
	Return $aresult
EndFunc

Func _arrayconcatenate(ByRef $avarraytarget, Const ByRef $avarraysource, $istart = 0)
	If NOT IsArray($avarraytarget) Then Return SetError(1, 0, 0)
	If NOT IsArray($avarraysource) Then Return SetError(2, 0, 0)
	If UBound($avarraytarget, 0) <> 1 Then
		If UBound($avarraysource, 0) <> 1 Then Return SetError(5, 0, 0)
		Return SetError(3, 0, 0)
	EndIf
	If UBound($avarraysource, 0) <> 1 Then Return SetError(4, 0, 0)
	Local $iuboundtarget = UBound($avarraytarget) - $istart, $iuboundsource = UBound($avarraysource)
	ReDim $avarraytarget[$iuboundtarget + $iuboundsource]
	For $i = $istart To $iuboundsource - 1
		$avarraytarget[$iuboundtarget + $i] = $avarraysource[$i]
	Next
	Return $iuboundtarget + $iuboundsource
EndFunc

Func _arraycreate($v_0, $v_1 = 0, $v_2 = 0, $v_3 = 0, $v_4 = 0, $v_5 = 0, $v_6 = 0, $v_7 = 0, $v_8 = 0, $v_9 = 0, $v_10 = 0, $v_11 = 0, $v_12 = 0, $v_13 = 0, $v_14 = 0, $v_15 = 0, $v_16 = 0, $v_17 = 0, $v_18 = 0, $v_19 = 0, $v_20 = 0)
	Local $av_array[21] = [$v_0, $v_1, $v_2, $v_3, $v_4, $v_5, $v_6, $v_7, $v_8, $v_9, $v_10, $v_11, $v_12, $v_13, $v_14, $v_15, $v_16, $v_17, $v_18, $v_19, $v_20]
	ReDim $av_array[@NumParams]
	Return $av_array
EndFunc

Func _arraydelete(ByRef $avarray, $ielement)
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	Local $iubound = UBound($avarray, 1) - 1
	If NOT $iubound Then
		$avarray = ""
		Return 0
	EndIf
	If $ielement < 0 Then $ielement = 0
	If $ielement > $iubound Then $ielement = $iubound
	Switch UBound($avarray, 0)
		Case 1
			For $i = $ielement To $iubound - 1
				$avarray[$i] = $avarray[$i + 1]
			Next
			ReDim $avarray[$iubound]
		Case 2
			Local $isubmax = UBound($avarray, 2) - 1
			For $i = $ielement To $iubound - 1
				For $j = 0 To $isubmax
					$avarray[$i][$j] = $avarray[$i + 1][$j]
				Next
			Next
			ReDim $avarray[$iubound][$isubmax + 1]
		Case Else
			Return SetError(3, 0, 0)
	EndSwitch
	Return $iubound
EndFunc

Func _arraydisplay(Const ByRef $avarray, $stitle = "Array: ListView Display", $iitemlimit = -1, $itranspose = 0, $sseparator = "", $sreplace = "|", $sheader = "")
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	Local $idimension = UBound($avarray, 0), $iubound = UBound($avarray, 1) - 1, $isubmax = UBound($avarray, 2) - 1
	If $idimension > 2 Then Return SetError(2, 0, 0)
	If $sseparator = "" Then $sseparator = Chr(124)
	If _arraysearch($avarray, $sseparator, 0, 0, 0, 1) <> -1 Then
		For $x = 1 To 255
			If $x >= 32 AND $x <= 127 Then ContinueLoop
			Local $sfind = _arraysearch($avarray, Chr($x), 0, 0, 0, 1)
			If $sfind = -1 Then
				$sseparator = Chr($x)
				ExitLoop
			EndIf
		Next
	EndIf
	Local $vtmp, $ibuffer = 64
	Local $icollimit = 250
	Local $ioneventmode = Opt("GUIOnEventMode", 0), $sdataseparatorchar = Opt("GUIDataSeparatorChar", $sseparator)
	If $isubmax < 0 Then $isubmax = 0
	If $itranspose Then
		$vtmp = $iubound
		$iubound = $isubmax
		$isubmax = $vtmp
	EndIf
	If $isubmax > $icollimit Then $isubmax = $icollimit
	If $iitemlimit < 1 Then $iitemlimit = $iubound
	If $iubound > $iitemlimit Then $iubound = $iitemlimit
	If $sheader = "" Then
		$sheader = "Row  "
		For $i = 0 To $isubmax
			$sheader &= $sseparator & "Col " & $i
		Next
	EndIf
	Local $avarraytext[$iubound + 1]
	For $i = 0 To $iubound
		$avarraytext[$i] = "[" & $i & "]"
		For $j = 0 To $isubmax
			If $idimension = 1 Then
				If $itranspose Then
					$vtmp = $avarray[$j]
				Else
					$vtmp = $avarray[$i]
				EndIf
			Else
				If $itranspose Then
					$vtmp = $avarray[$j][$i]
				Else
					$vtmp = $avarray[$i][$j]
				EndIf
			EndIf
			$vtmp = StringReplace($vtmp, $sseparator, $sreplace, 0, 1)
			$avarraytext[$i] &= $sseparator & $vtmp
			$vtmp = StringLen($vtmp)
			If $vtmp > $ibuffer Then $ibuffer = $vtmp
		Next
	Next
	$ibuffer += 1
	Local Const $_arrayconstant_gui_dockborders = 102
	Local Const $_arrayconstant_gui_dockbottom = 64
	Local Const $_arrayconstant_gui_dockheight = 512
	Local Const $_arrayconstant_gui_dockleft = 2
	Local Const $_arrayconstant_gui_dockright = 4
	Local Const $_arrayconstant_gui_event_close = -3
	Local Const $_arrayconstant_lvif_param = 4
	Local Const $_arrayconstant_lvif_text = 1
	Local Const $_arrayconstant_lvm_getcolumnwidth = (4096 + 29)
	Local Const $_arrayconstant_lvm_getitemcount = (4096 + 4)
	Local Const $_arrayconstant_lvm_getitemstate = (4096 + 44)
	Local Const $_arrayconstant_lvm_insertitemw = (4096 + 77)
	Local Const $_arrayconstant_lvm_setextendedlistviewstyle = (4096 + 54)
	Local Const $_arrayconstant_lvm_setitemw = (4096 + 76)
	Local Const $_arrayconstant_lvs_ex_fullrowselect = 32
	Local Const $_arrayconstant_lvs_ex_gridlines = 1
	Local Const $_arrayconstant_lvs_showselalways = 8
	Local Const $_arrayconstant_ws_ex_clientedge = 512
	Local Const $_arrayconstant_ws_maximizebox = 65536
	Local Const $_arrayconstant_ws_minimizebox = 131072
	Local Const $_arrayconstant_ws_sizebox = 262144
	Local Const $_arrayconstant_taglvitem = "int Mask;int Item;int SubItem;int State;int StateMask;ptr Text;int TextMax;int Image;int Param;int Indent;int GroupID;int Columns;ptr pColumns"
	Local $iaddmask = BitOR($_arrayconstant_lvif_text, $_arrayconstant_lvif_param)
	Local $tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]"), $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($_arrayconstant_taglvitem), $pitem = DllStructGetPtr($titem)
	DllStructSetData($titem, "Param", 0)
	DllStructSetData($titem, "Text", $pbuffer)
	DllStructSetData($titem, "TextMax", $ibuffer)
	Local $iwidth = 640, $iheight = 480
	Local $hgui = GUICreate($stitle, $iwidth, $iheight, Default, Default, BitOR($_arrayconstant_ws_sizebox, $_arrayconstant_ws_minimizebox, $_arrayconstant_ws_maximizebox))
	Local $aiguisize = WinGetClientSize($hgui)
	Local $hlistview = GUICtrlCreateListView($sheader, 0, 0, $aiguisize[0], $aiguisize[1] - 26, $_arrayconstant_lvs_showselalways)
	Local $hcopy = GUICtrlCreateButton("Copy Selected", 3, $aiguisize[1] - 23, $aiguisize[0] - 6, 20)
	GUICtrlSetResizing($hlistview, $_arrayconstant_gui_dockborders)
	GUICtrlSetResizing($hcopy, $_arrayconstant_gui_dockleft + $_arrayconstant_gui_dockright + $_arrayconstant_gui_dockbottom + $_arrayconstant_gui_dockheight)
	GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_setextendedlistviewstyle, $_arrayconstant_lvs_ex_gridlines, $_arrayconstant_lvs_ex_gridlines)
	GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_setextendedlistviewstyle, $_arrayconstant_lvs_ex_fullrowselect, $_arrayconstant_lvs_ex_fullrowselect)
	GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_setextendedlistviewstyle, $_arrayconstant_ws_ex_clientedge, $_arrayconstant_ws_ex_clientedge)
	Local $aitem
	For $i = 0 To $iubound
		If GUICtrlCreateListViewItem($avarraytext[$i], $hlistview) = 0 Then
			$aitem = StringSplit($avarraytext[$i], $sseparator)
			DllStructSetData($tbuffer, "Text", $aitem[1])
			DllStructSetData($titem, "Item", $i)
			DllStructSetData($titem, "SubItem", 0)
			DllStructSetData($titem, "Mask", $iaddmask)
			GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_insertitemw, 0, $pitem)
			DllStructSetData($titem, "Mask", $_arrayconstant_lvif_text)
			For $j = 2 To $aitem[0]
				DllStructSetData($tbuffer, "Text", $aitem[$j])
				DllStructSetData($titem, "SubItem", $j - 1)
				GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_setitemw, 0, $pitem)
			Next
		EndIf
	Next
	$iwidth = 0
	For $i = 0 To $isubmax + 1
		$iwidth += GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_getcolumnwidth, $i, 0)
	Next
	If $iwidth < 250 Then $iwidth = 230
	$iwidth += 20
	If $iwidth > @DesktopWidth Then $iwidth = @DesktopWidth - 100
	WinMove($hgui, "", (@DesktopWidth - $iwidth) / 2, Default, $iwidth)
	GUISetState(@SW_SHOW, $hgui)
	While 1
		Switch GUIGetMsg()
			Case $_arrayconstant_gui_event_close
				ExitLoop
			Case $hcopy
				Local $sclip = ""
				Local $aicuritems[1] = [0]
				For $i = 0 To GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_getitemcount, 0, 0)
					If GUICtrlSendMsg($hlistview, $_arrayconstant_lvm_getitemstate, $i, 2) Then
						$aicuritems[0] += 1
						ReDim $aicuritems[$aicuritems[0] + 1]
						$aicuritems[$aicuritems[0]] = $i
					EndIf
				Next
				If NOT $aicuritems[0] Then
					For $sitem In $avarraytext
						$sclip &= $sitem & @CRLF
					Next
				Else
					For $i = 1 To UBound($aicuritems) - 1
						$sclip &= $avarraytext[$aicuritems[$i]] & @CRLF
					Next
				EndIf
				ClipPut($sclip)
		EndSwitch
	WEnd
	GUIDelete($hgui)
	Opt("GUIOnEventMode", $ioneventmode)
	Opt("GUIDataSeparatorChar", $sdataseparatorchar)
	Return 1
EndFunc

Func _arrayfindall(Const ByRef $avarray, $vvalue, $istart = 0, $iend = 0, $icase = 0, $ipartial = 0, $isubitem = 0)
	$istart = _arraysearch($avarray, $vvalue, $istart, $iend, $icase, $ipartial, 1, $isubitem)
	If @error Then Return SetError(@error, 0, -1)
	Local $iindex = 0, $avresult[UBound($avarray)]
	Do
		$avresult[$iindex] = $istart
		$iindex += 1
		$istart = _arraysearch($avarray, $vvalue, $istart + 1, $iend, $icase, $ipartial, 1, $isubitem)
	Until @error
	ReDim $avresult[$iindex]
	Return $avresult
EndFunc

Func _arrayinsert(ByRef $avarray, $ielement, $vvalue = "")
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $iubound = UBound($avarray) + 1
	ReDim $avarray[$iubound]
	For $i = $iubound - 1 To $ielement + 1 Step -1
		$avarray[$i] = $avarray[$i - 1]
	Next
	$avarray[$ielement] = $vvalue
	Return $iubound
EndFunc

Func _arraymax(Const ByRef $avarray, $icompnumeric = 0, $istart = 0, $iend = 0)
	Local $iresult = _arraymaxindex($avarray, $icompnumeric, $istart, $iend)
	If @error Then Return SetError(@error, 0, "")
	Return $avarray[$iresult]
EndFunc

Func _arraymaxindex(Const ByRef $avarray, $icompnumeric = 0, $istart = 0, $iend = 0)
	If NOT IsArray($avarray) OR UBound($avarray, 0) <> 1 Then Return SetError(1, 0, -1)
	If UBound($avarray, 0) <> 1 Then Return SetError(3, 0, -1)
	Local $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(2, 0, -1)
	Local $imaxindex = $istart
	If $icompnumeric Then
		For $i = $istart To $iend
			If Number($avarray[$imaxindex]) < Number($avarray[$i]) Then $imaxindex = $i
		Next
	Else
		For $i = $istart To $iend
			If $avarray[$imaxindex] < $avarray[$i] Then $imaxindex = $i
		Next
	EndIf
	Return $imaxindex
EndFunc

Func _arraymin(Const ByRef $avarray, $icompnumeric = 0, $istart = 0, $iend = 0)
	Local $iresult = _arrayminindex($avarray, $icompnumeric, $istart, $iend)
	If @error Then Return SetError(@error, 0, "")
	Return $avarray[$iresult]
EndFunc

Func _arrayminindex(Const ByRef $avarray, $icompnumeric = 0, $istart = 0, $iend = 0)
	If NOT IsArray($avarray) Then Return SetError(1, 0, -1)
	If UBound($avarray, 0) <> 1 Then Return SetError(3, 0, -1)
	Local $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(2, 0, -1)
	Local $iminindex = $istart
	If $icompnumeric Then
		For $i = $istart To $iend
			If Number($avarray[$iminindex]) > Number($avarray[$i]) Then $iminindex = $i
		Next
	Else
		For $i = $istart To $iend
			If $avarray[$iminindex] > $avarray[$i] Then $iminindex = $i
		Next
	EndIf
	Return $iminindex
EndFunc

Func _arraypermute(ByRef $avarray, $sdelim = "")
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $isize = UBound($avarray), $ifactorial = 1, $aidx[$isize], $aresult[1], $icount = 1
	For $i = 0 To $isize - 1
		$aidx[$i] = $i
	Next
	For $i = $isize To 1 Step -1
		$ifactorial *= $i
	Next
	ReDim $aresult[$ifactorial + 1]
	$aresult[0] = $ifactorial
	__array_exeterinternal($avarray, 0, $isize, $sdelim, $aidx, $aresult, $icount)
	Return $aresult
EndFunc

Func _arraypop(ByRef $avarray)
	If (NOT IsArray($avarray)) Then Return SetError(1, 0, "")
	If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, "")
	Local $iubound = UBound($avarray) - 1, $slastval = $avarray[$iubound]
	If NOT $iubound Then
		$avarray = ""
	Else
		ReDim $avarray[$iubound]
	EndIf
	Return $slastval
EndFunc

Func _arraypush(ByRef $avarray, $vvalue, $idirection = 0)
	If (NOT IsArray($avarray)) Then Return SetError(1, 0, 0)
	If UBound($avarray, 0) <> 1 Then Return SetError(3, 0, 0)
	Local $iubound = UBound($avarray) - 1
	If IsArray($vvalue) Then
		Local $iubounds = UBound($vvalue)
		If ($iubounds - 1) > $iubound Then Return SetError(2, 0, 0)
		If $idirection Then
			For $i = $iubound To $iubounds Step -1
				$avarray[$i] = $avarray[$i - $iubounds]
			Next
			For $i = 0 To $iubounds - 1
				$avarray[$i] = $vvalue[$i]
			Next
		Else
			For $i = 0 To $iubound - $iubounds
				$avarray[$i] = $avarray[$i + $iubounds]
			Next
			For $i = 0 To $iubounds - 1
				$avarray[$i + $iubound - $iubounds + 1] = $vvalue[$i]
			Next
		EndIf
	Else
		If $idirection Then
			For $i = $iubound To 1 Step -1
				$avarray[$i] = $avarray[$i - 1]
			Next
			$avarray[0] = $vvalue
		Else
			For $i = 0 To $iubound - 1
				$avarray[$i] = $avarray[$i + 1]
			Next
			$avarray[$iubound] = $vvalue
		EndIf
	EndIf
	Return 1
EndFunc

Func _arrayreverse(ByRef $avarray, $istart = 0, $iend = 0)
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	If UBound($avarray, 0) <> 1 Then Return SetError(3, 0, 0)
	Local $vtmp, $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(2, 0, 0)
	For $i = $istart To Int(($istart + $iend - 1) / 2)
		$vtmp = $avarray[$i]
		$avarray[$i] = $avarray[$iend]
		$avarray[$iend] = $vtmp
		$iend -= 1
	Next
	Return 1
EndFunc

Func _arraysearch(Const ByRef $avarray, $vvalue, $istart = 0, $iend = 0, $icase = 0, $ipartial = 0, $iforward = 1, $isubitem = -1)
	If NOT IsArray($avarray) Then Return SetError(1, 0, -1)
	If UBound($avarray, 0) > 2 OR UBound($avarray, 0) < 1 Then Return SetError(2, 0, -1)
	Local $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(4, 0, -1)
	Local $istep = 1
	If NOT $iforward Then
		Local $itmp = $istart
		$istart = $iend
		$iend = $itmp
		$istep = -1
	EndIf
	Switch UBound($avarray, 0)
		Case 1
			If NOT $ipartial Then
				If NOT $icase Then
					For $i = $istart To $iend Step $istep
						If $avarray[$i] = $vvalue Then Return $i
					Next
				Else
					For $i = $istart To $iend Step $istep
						If $avarray[$i] == $vvalue Then Return $i
					Next
				EndIf
			Else
				For $i = $istart To $iend Step $istep
					If StringInStr($avarray[$i], $vvalue, $icase) > 0 Then Return $i
				Next
			EndIf
		Case 2
			Local $iuboundsub = UBound($avarray, 2) - 1
			If $isubitem > $iuboundsub Then $isubitem = $iuboundsub
			If $isubitem < 0 Then
				$isubitem = 0
			Else
				$iuboundsub = $isubitem
			EndIf
			For $j = $isubitem To $iuboundsub
				If NOT $ipartial Then
					If NOT $icase Then
						For $i = $istart To $iend Step $istep
							If $avarray[$i][$j] = $vvalue Then Return $i
						Next
					Else
						For $i = $istart To $iend Step $istep
							If $avarray[$i][$j] == $vvalue Then Return $i
						Next
					EndIf
				Else
					For $i = $istart To $iend Step $istep
						If StringInStr($avarray[$i][$j], $vvalue, $icase) > 0 Then Return $i
					Next
				EndIf
			Next
		Case Else
			Return SetError(7, 0, -1)
	EndSwitch
	Return SetError(6, 0, -1)
EndFunc

Func _arraysort(ByRef $avarray, $idescending = 0, $istart = 0, $iend = 0, $isubitem = 0)
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	Local $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(2, 0, 0)
	Switch UBound($avarray, 0)
		Case 1
			__arrayquicksort1d($avarray, $istart, $iend)
			If $idescending Then _arrayreverse($avarray, $istart, $iend)
		Case 2
			Local $isubmax = UBound($avarray, 2) - 1
			If $isubitem > $isubmax Then Return SetError(3, 0, 0)
			If $idescending Then
				$idescending = -1
			Else
				$idescending = 1
			EndIf
			__arrayquicksort2d($avarray, $idescending, $istart, $iend, $isubitem, $isubmax)
		Case Else
			Return SetError(4, 0, 0)
	EndSwitch
	Return 1
EndFunc

Func __arrayquicksort1d(ByRef $avarray, ByRef $istart, ByRef $iend)
	If $iend <= $istart Then Return 
	Local $vtmp
	If ($iend - $istart) < 15 Then
		Local $vcur
		For $i = $istart + 1 To $iend
			$vtmp = $avarray[$i]
			If IsNumber($vtmp) Then
				For $j = $i - 1 To $istart Step -1
					$vcur = $avarray[$j]
					If ($vtmp >= $vcur AND IsNumber($vcur)) OR (NOT IsNumber($vcur) AND StringCompare($vtmp, $vcur) >= 0) Then ExitLoop
					$avarray[$j + 1] = $vcur
				Next
			Else
				For $j = $i - 1 To $istart Step -1
					If (StringCompare($vtmp, $avarray[$j]) >= 0) Then ExitLoop
					$avarray[$j + 1] = $avarray[$j]
				Next
			EndIf
			$avarray[$j + 1] = $vtmp
		Next
		Return 
	EndIf
	Local $l = $istart, $r = $iend, $vpivot = $avarray[Int(($istart + $iend) / 2)], $fnum = IsNumber($vpivot)
	Do
		If $fnum Then
			While ($avarray[$l] < $vpivot AND IsNumber($avarray[$l])) OR (NOT IsNumber($avarray[$l]) AND StringCompare($avarray[$l], $vpivot) < 0)
				$l += 1
			WEnd
			While ($avarray[$r] > $vpivot AND IsNumber($avarray[$r])) OR (NOT IsNumber($avarray[$r]) AND StringCompare($avarray[$r], $vpivot) > 0)
				$r -= 1
			WEnd
		Else
			While (StringCompare($avarray[$l], $vpivot) < 0)
				$l += 1
			WEnd
			While (StringCompare($avarray[$r], $vpivot) > 0)
				$r -= 1
			WEnd
		EndIf
		If $l <= $r Then
			$vtmp = $avarray[$l]
			$avarray[$l] = $avarray[$r]
			$avarray[$r] = $vtmp
			$l += 1
			$r -= 1
		EndIf
	Until $l > $r
	__arrayquicksort1d($avarray, $istart, $r)
	__arrayquicksort1d($avarray, $l, $iend)
EndFunc

Func __arrayquicksort2d(ByRef $avarray, ByRef $istep, ByRef $istart, ByRef $iend, ByRef $isubitem, ByRef $isubmax)
	If $iend <= $istart Then Return 
	Local $vtmp, $l = $istart, $r = $iend, $vpivot = $avarray[Int(($istart + $iend) / 2)][$isubitem], $fnum = IsNumber($vpivot)
	Do
		If $fnum Then
			While ($istep * ($avarray[$l][$isubitem] - $vpivot) < 0 AND IsNumber($avarray[$l][$isubitem])) OR (NOT IsNumber($avarray[$l][$isubitem]) AND $istep * StringCompare($avarray[$l][$isubitem], $vpivot) < 0)
				$l += 1
			WEnd
			While ($istep * ($avarray[$r][$isubitem] - $vpivot) > 0 AND IsNumber($avarray[$r][$isubitem])) OR (NOT IsNumber($avarray[$r][$isubitem]) AND $istep * StringCompare($avarray[$r][$isubitem], $vpivot) > 0)
				$r -= 1
			WEnd
		Else
			While ($istep * StringCompare($avarray[$l][$isubitem], $vpivot) < 0)
				$l += 1
			WEnd
			While ($istep * StringCompare($avarray[$r][$isubitem], $vpivot) > 0)
				$r -= 1
			WEnd
		EndIf
		If $l <= $r Then
			For $i = 0 To $isubmax
				$vtmp = $avarray[$l][$i]
				$avarray[$l][$i] = $avarray[$r][$i]
				$avarray[$r][$i] = $vtmp
			Next
			$l += 1
			$r -= 1
		EndIf
	Until $l > $r
	__arrayquicksort2d($avarray, $istep, $istart, $r, $isubitem, $isubmax)
	__arrayquicksort2d($avarray, $istep, $l, $iend, $isubitem, $isubmax)
EndFunc

Func _arrayswap(ByRef $vitem1, ByRef $vitem2)
	Local $vtmp = $vitem1
	$vitem1 = $vitem2
	$vitem2 = $vtmp
EndFunc

Func _arraytoclip(Const ByRef $avarray, $istart = 0, $iend = 0)
	Local $sresult = _arraytostring($avarray, @CR, $istart, $iend)
	If @error Then Return SetError(@error, 0, 0)
	Return ClipPut($sresult)
EndFunc

Func _arraytostring(Const ByRef $avarray, $sdelim = "|", $istart = 0, $iend = 0)
	If NOT IsArray($avarray) Then Return SetError(1, 0, "")
	If UBound($avarray, 0) <> 1 Then Return SetError(3, 0, "")
	Local $sresult, $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(2, 0, "")
	For $i = $istart To $iend
		$sresult &= $avarray[$i] & $sdelim
	Next
	Return StringTrimRight($sresult, StringLen($sdelim))
EndFunc

Func _arraytrim(ByRef $avarray, $itrimnum, $idirection = 0, $istart = 0, $iend = 0)
	If NOT IsArray($avarray) Then Return SetError(1, 0, 0)
	If UBound($avarray, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $iubound = UBound($avarray) - 1
	If $iend < 1 OR $iend > $iubound Then $iend = $iubound
	If $istart < 0 Then $istart = 0
	If $istart > $iend Then Return SetError(5, 0, 0)
	If $idirection Then
		For $i = $istart To $iend
			$avarray[$i] = StringTrimRight($avarray[$i], $itrimnum)
		Next
	Else
		For $i = $istart To $iend
			$avarray[$i] = StringTrimLeft($avarray[$i], $itrimnum)
		Next
	EndIf
	Return 1
EndFunc

Func _arrayunique($aarray, $idimension = 1, $ibase = 0, $icase = 0, $vdelim = "|")
	Local $iubounddim
	If $vdelim = "|" Then $vdelim = Chr(1)
	If NOT IsArray($aarray) Then Return SetError(1, 0, 0)
	If NOT $idimension > 0 Then
		Return SetError(3, 0, 0)
	Else
		$iubounddim = UBound($aarray, 1)
		If @error Then Return SetError(3, 0, 0)
		If $idimension > 1 Then
			Local $aarraytmp[1]
			For $i = 0 To $iubounddim - 1
				_arrayadd($aarraytmp, $aarray[$i][$idimension - 1])
			Next
			_arraydelete($aarraytmp, 0)
		Else
			If UBound($aarray, 0) = 1 Then
				Dim $aarraytmp[1]
				For $i = 0 To $iubounddim - 1
					_arrayadd($aarraytmp, $aarray[$i])
				Next
				_arraydelete($aarraytmp, 0)
			Else
				Dim $aarraytmp[1]
				For $i = 0 To $iubounddim - 1
					_arrayadd($aarraytmp, $aarray[$i][$idimension - 1])
				Next
				_arraydelete($aarraytmp, 0)
			EndIf
		EndIf
	EndIf
	Local $shold
	For $icc = $ibase To UBound($aarraytmp) - 1
		If NOT StringInStr($vdelim & $shold, $vdelim & $aarraytmp[$icc] & $vdelim, $icase) Then $shold &= $aarraytmp[$icc] & $vdelim
	Next
	If $shold Then
		$aarraytmp = StringSplit(StringTrimRight($shold, StringLen($vdelim)), $vdelim, 1)
		Return $aarraytmp
	EndIf
	Return SetError(2, 0, 0)
EndFunc

Func __array_exeterinternal(ByRef $avarray, $istart, $isize, $sdelim, ByRef $aidx, ByRef $aresult, ByRef $icount)
	If $istart == $isize - 1 Then
		For $i = 0 To $isize - 1
			$aresult[$icount] &= $avarray[$aidx[$i]] & $sdelim
		Next
		If $sdelim <> "" Then $aresult[$icount] = StringTrimRight($aresult[$icount], 1)
		$icount += 1
	Else
		Local $itemp
		For $i = $istart To $isize - 1
			$itemp = $aidx[$i]
			$aidx[$i] = $aidx[$istart]
			$aidx[$istart] = $itemp
			__array_exeterinternal($avarray, $istart + 1, $isize, $sdelim, $aidx, $aresult, $icount)
			$aidx[$istart] = $aidx[$i]
			$aidx[$i] = $itemp
		Next
	EndIf
EndFunc

Func __array_combinations($in, $ir)
	Local $i_total = 1
	For $i = $ir To 1 Step -1
		$i_total *= ($in / $i)
		$in -= 1
	Next
	Return $i_total
EndFunc

Func __array_getnext($in, $ir, ByRef $ileft, $itotal, ByRef $aidx)
	If $ileft == $itotal Then
		$ileft -= 1
		Return 
	EndIf
	Local $i = $ir - 1
	While $aidx[$i] == $in - $ir + $i
		$i -= 1
	WEnd
	$aidx[$i] += 1
	For $j = $i + 1 To $ir - 1
		$aidx[$j] = $aidx[$i] + $j - $i
	Next
	$ileft -= 1
EndFunc

Global $_lv_ghlastwnd
Global $debug_lv = False
Global $illistviewsortinfosize = 11
Global $alistviewsortinfo[1][$illistviewsortinfosize]
Global Const $__listviewconstant_classname = "SysListView32"
Global Const $__listviewconstant_ws_maximizebox = 65536
Global Const $__listviewconstant_ws_minimizebox = 131072
Global Const $__listviewconstant_gui_rundefmsg = "GUI_RUNDEFMSG"
Global Const $__listviewconstant_wm_setredraw = 11
Global Const $__listviewconstant_wm_setfont = 48
Global Const $__listviewconstant_wm_notify = 78
Global Const $__listviewconstant_default_gui_font = 17
Global Const $__listviewconstant_ild_transparent = 1
Global Const $__listviewconstant_ild_blend25 = 2
Global Const $__listviewconstant_ild_blend50 = 4
Global Const $__listviewconstant_ild_mask = 16
Global Const $__listviewconstant_vk_down = 40
Global Const $__listviewconstant_vk_end = 35
Global Const $__listviewconstant_vk_home = 36
Global Const $__listviewconstant_vk_left = 37
Global Const $__listviewconstant_vk_next = 34
Global Const $__listviewconstant_vk_prior = 33
Global Const $__listviewconstant_vk_right = 39
Global Const $__listviewconstant_vk_up = 38
Global Const $taglvbkimage = "ulong Flags;hwnd hBmp;ptr Image;uint ImageMax;int XOffPercent;int YOffPercent"
Global Const $taglvcolumn = "uint Mask;int Fmt;int CX;ptr Text;int TextMax;int SubItem;int Image;int Order"
Global Const $taglvgroup = "uint Size;uint Mask;ptr Header;int HeaderMax;ptr Footer;int FooterMax;int GroupID;uint StateMask;uint State;uint Align"
Global Const $taglvinsertmark = "uint Size;dword Flags;int Item;dword Reserved"
Global Const $taglvsetinfotip = "uint Size;dword Flags;ptr Text;int Item;int SubItem"

Func _guictrllistview_addarray($hwnd, ByRef $aitems)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $titem = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($titem)
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[4096]")
	Else
		$tbuffer = DllStructCreate("char Text[4096]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	DllStructSetData($titem, "Mask", $lvif_text)
	DllStructSetData($titem, "Text", $pbuffer)
	DllStructSetData($titem, "TextMax", 4096)
	Local $ilastitem = _guictrllistview_getitemcount($hwnd)
	_guictrllistview_beginupdate($hwnd)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			For $ii = 0 To UBound($aitems) - 1
				DllStructSetData($titem, "Item", $ii)
				DllStructSetData($titem, "SubItem", 0)
				DllStructSetData($tbuffer, "Text", $aitems[$ii][0])
				_sendmessage($hwnd, $lvm_insertitemw, 0, $pitem, 0, "wparam", "ptr")
				For $ij = 1 To UBound($aitems, 2) - 1
					DllStructSetData($titem, "SubItem", $ij)
					DllStructSetData($tbuffer, "Text", $aitems[$ii][$ij])
					_sendmessage($hwnd, $lvm_setitemw, 0, $pitem, 0, "wparam", "ptr")
				Next
			Next
		Else
			Local $ibuffer = DllStructGetSize($tbuffer)
			Local $iitem = DllStructGetSize($titem)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iitem
			DllStructSetData($titem, "Text", $ptext)
			For $ii = 0 To UBound($aitems) - 1
				DllStructSetData($titem, "Item", $ii + $ilastitem)
				DllStructSetData($titem, "SubItem", 0)
				DllStructSetData($tbuffer, "Text", $aitems[$ii][0])
				_memwrite($tmemmap, $pitem, $pmemory, $iitem)
				_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
				If $funicode Then
					_sendmessage($hwnd, $lvm_insertitemw, 0, $pmemory, 0, "wparam", "ptr")
				Else
					_sendmessage($hwnd, $lvm_insertitema, 0, $pmemory, 0, "wparam", "ptr")
				EndIf
				For $ij = 1 To UBound($aitems, 2) - 1
					DllStructSetData($titem, "SubItem", $ij)
					DllStructSetData($tbuffer, "Text", $aitems[$ii][$ij])
					_memwrite($tmemmap, $pitem, $pmemory, $iitem)
					_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
					If $funicode Then
						_sendmessage($hwnd, $lvm_setitemw, 0, $pmemory, 0, "wparam", "ptr")
					Else
						_sendmessage($hwnd, $lvm_setitema, 0, $pmemory, 0, "wparam", "ptr")
					EndIf
				Next
			Next
			_memfree($tmemmap)
		EndIf
	Else
		For $ii = 0 To UBound($aitems) - 1
			DllStructSetData($titem, "Item", $ii + $ilastitem)
			DllStructSetData($titem, "SubItem", 0)
			DllStructSetData($tbuffer, "Text", $aitems[$ii][0])
			If $funicode Then
				GUICtrlSendMsg($hwnd, $lvm_insertitemw, 0, $pitem)
			Else
				GUICtrlSendMsg($hwnd, $lvm_insertitema, 0, $pitem)
			EndIf
			For $ij = 1 To UBound($aitems, 2) - 1
				DllStructSetData($titem, "SubItem", $ij)
				DllStructSetData($tbuffer, "Text", $aitems[$ii][$ij])
				If $funicode Then
					GUICtrlSendMsg($hwnd, $lvm_setitemw, 0, $pitem)
				Else
					GUICtrlSendMsg($hwnd, $lvm_setitema, 0, $pitem)
				EndIf
			Next
		Next
	EndIf
	_guictrllistview_endupdate($hwnd)
EndFunc

Func _guictrllistview_addcolumn($hwnd, $stext, $iwidth = 50, $ialign = -1, $iimage = -1, $fonright = False)
	Return _guictrllistview_insertcolumn($hwnd, _guictrllistview_getcolumncount($hwnd), $stext, $iwidth, $ialign, $iimage, $fonright)
EndFunc

Func _guictrllistview_additem($hwnd, $stext, $iimage = -1, $iparam = 0)
	Return _guictrllistview_insertitem($hwnd, $stext, -1, $iimage, $iparam)
EndFunc

Func _guictrllistview_addsubitem($hwnd, $iindex, $stext, $isubitem, $iimage = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $ibuffer = StringLen($stext) + 1
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($titem)
	Local $imask = $lvif_text
	If $iimage <> -1 Then $imask = BitOR($imask, $lvif_image)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($titem, "Mask", $imask)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "SubItem", $isubitem)
	DllStructSetData($titem, "Image", $iimage)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($titem, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pitem, 0, "wparam", "ptr")
		Else
			Local $iitem = DllStructGetSize($titem)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iitem
			DllStructSetData($titem, "Text", $ptext)
			_memwrite($tmemmap, $pitem, $pmemory, $iitem)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_setitema, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($titem, "Text", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_setitemw, 0, $pitem)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_setitema, 0, $pitem)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_approximateviewheight($hwnd, $icount = -1, $icx = -1, $icy = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return BitShift((_sendmessage($hwnd, $lvm_approximateviewrect, $icount, _winapi_makelong($icx, $icy))), 16)
	Else
		Return BitShift((GUICtrlSendMsg($hwnd, $lvm_approximateviewrect, $icount, _winapi_makelong($icx, $icy))), 16)
	EndIf
EndFunc

Func _guictrllistview_approximateviewrect($hwnd, $icount = -1, $icx = -1, $icy = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iview
	If IsHWnd($hwnd) Then
		$iview = _sendmessage($hwnd, $lvm_approximateviewrect, $icount, _winapi_makelong($icx, $icy))
	Else
		$iview = GUICtrlSendMsg($hwnd, $lvm_approximateviewrect, $icount, _winapi_makelong($icx, $icy))
	EndIf
	Local $aview[2]
	$aview[0] = BitAND($iview, 65535)
	$aview[1] = BitShift($iview, 16)
	Return $aview
EndFunc

Func _guictrllistview_approximateviewwidth($hwnd, $icount = -1, $icx = -1, $icy = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return BitAND((_sendmessage($hwnd, $lvm_approximateviewrect, $icount, _winapi_makelong($icx, $icy))), 65535)
	Else
		Return BitAND((GUICtrlSendMsg($hwnd, $lvm_approximateviewrect, $icount, _winapi_makelong($icx, $icy))), 65535)
	EndIf
EndFunc

Func _guictrllistview_arrange($hwnd, $iarrange = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aarrange[4] = [$lva_default, $lva_alignleft, $lva_aligntop, $lva_snaptogrid]
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_arrange, $aarrange[$iarrange]) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_arrange, $aarrange[$iarrange], 0) <> 0
	EndIf
EndFunc

Func __guictrllistview_arraydelete(ByRef $avarray, $ielement)
	If NOT IsArray($avarray) Then Return SetError(1, 0, "")
	Local $iupper = UBound($avarray)
	If $iupper = 1 Then
		SetError(2)
		Return ""
	EndIf
	Local $avnewarray[$iupper - 1][$illistviewsortinfosize]
	$avnewarray[0][0] = $avarray[0][0]
	If $ielement < 0 Then
		$ielement = 0
	EndIf
	If $ielement > ($iupper - 1) Then
		$ielement = ($iupper - 1)
	EndIf
	If $ielement > 0 Then
		For $icntr = 0 To $ielement - 1
			For $x = 1 To $illistviewsortinfosize - 1
				$avnewarray[$icntr][$x] = $avarray[$icntr][$x]
			Next
		Next
	EndIf
	If $ielement < ($iupper - 1) Then
		For $icntr = ($ielement + 1) To ($iupper - 1)
			For $x = 1 To $illistviewsortinfosize - 1
				$avnewarray[$icntr - 1][$x] = $avarray[$icntr][$x]
			Next
		Next
	EndIf
	$avarray = $avnewarray
	SetError(0)
	Return 1
EndFunc

Func _guictrllistview_beginupdate($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $__listviewconstant_wm_setredraw) = 0
EndFunc

Func _guictrllistview_canceleditlabel($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		_sendmessage($hwnd, $lvm_canceleditlabel)
	Else
		GUICtrlSendMsg($hwnd, $lvm_canceleditlabel, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_clickitem($hwnd, $iindex, $sbutton = "left", $fmove = False, $iclicks = 1, $ispeed = 1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	_guictrllistview_ensurevisible($hwnd, $iindex, False)
	Local $trect = _guictrllistview_getitemrectex($hwnd, $iindex, $lvir_label)
	Local $tpoint = _winapi_pointfromrect($trect, True)
	$tpoint = _winapi_clienttoscreen($hwnd, $tpoint)
	Local $ix, $iy
	_winapi_getxyfrompoint($tpoint, $ix, $iy)
	Local $imode = Opt("MouseCoordMode", 1)
	If NOT $fmove Then
		Local $apos = MouseGetPos()
		_winapi_showcursor(False)
		MouseClick($sbutton, $ix, $iy, $iclicks, $ispeed)
		MouseMove($apos[0], $apos[1], 0)
		_winapi_showcursor(True)
	Else
		MouseClick($sbutton, $ix, $iy, $iclicks, $ispeed)
	EndIf
	Opt("MouseCoordMode", $imode)
EndFunc

Func _guictrllistview_copyitems($hwnd_source, $hwnd_destination, $fdelflag = False)
	If $debug_lv Then
		__udf_validateclassname($hwnd_source, $__listviewconstant_classname)
		__udf_validateclassname($hwnd_destination, $__listviewconstant_classname)
	EndIf
	Local $a_indices, $titem = DllStructCreate($taglvitem), $iindex
	Local $cols = _guictrllistview_getcolumncount($hwnd_source)
	Local $items = _guictrllistview_getitemcount($hwnd_source)
	_guictrllistview_beginupdate($hwnd_source)
	_guictrllistview_beginupdate($hwnd_destination)
	If BitAND(_guictrllistview_getextendedlistviewstyle($hwnd_source), $lvs_ex_checkboxes) == $lvs_ex_checkboxes Then
		For $i = 0 To $items - 1
			If (_guictrllistview_getitemchecked($hwnd_source, $i)) Then
				If IsArray($a_indices) Then
					ReDim $a_indices[UBound($a_indices) + 1]
				Else
					Local $a_indices[2]
				EndIf
				$a_indices[0] = $a_indices[0] + 1
				$a_indices[UBound($a_indices) - 1] = $i
			EndIf
		Next
		If (IsArray($a_indices)) Then
			For $i = 1 To $a_indices[0]
				DllStructSetData($titem, "Mask", BitOR($lvif_groupid, $lvif_image, $lvif_indent, $lvif_param, $lvif_state))
				DllStructSetData($titem, "Item", $a_indices[$i])
				DllStructSetData($titem, "SubItem", 0)
				DllStructSetData($titem, "StateMask", -1)
				_guictrllistview_getitemex($hwnd_source, $titem)
				$iindex = _guictrllistview_additem($hwnd_destination, _guictrllistview_getitemtext($hwnd_source, $a_indices[$i], 0), DllStructGetData($titem, "Image"))
				_guictrllistview_setitemchecked($hwnd_destination, $iindex)
				For $x = 1 To $cols - 1
					DllStructSetData($titem, "Item", $a_indices[$i])
					DllStructSetData($titem, "SubItem", $x)
					_guictrllistview_getitemex($hwnd_source, $titem)
					_guictrllistview_addsubitem($hwnd_destination, $iindex, _guictrllistview_getitemtext($hwnd_source, $a_indices[$i], $x), $x, DllStructGetData($titem, "Image"))
				Next
			Next
			If $fdelflag Then
				For $i = $a_indices[0] To 1 Step -1
					_guictrllistview_deleteitem($hwnd_source, $a_indices[$i])
				Next
			EndIf
		EndIf
	EndIf
	If (_guictrllistview_getselectedcount($hwnd_source)) Then
		$a_indices = _guictrllistview_getselectedindices($hwnd_source, 1)
		For $i = 1 To $a_indices[0]
			DllStructSetData($titem, "Mask", BitOR($lvif_groupid, $lvif_image, $lvif_indent, $lvif_param, $lvif_state))
			DllStructSetData($titem, "Item", $a_indices[$i])
			DllStructSetData($titem, "SubItem", 0)
			DllStructSetData($titem, "StateMask", -1)
			_guictrllistview_getitemex($hwnd_source, $titem)
			$iindex = _guictrllistview_additem($hwnd_destination, _guictrllistview_getitemtext($hwnd_source, $a_indices[$i], 0), DllStructGetData($titem, "Image"))
			For $x = 1 To $cols - 1
				DllStructSetData($titem, "Item", $a_indices[$i])
				DllStructSetData($titem, "SubItem", $x)
				_guictrllistview_getitemex($hwnd_source, $titem)
				_guictrllistview_addsubitem($hwnd_destination, $iindex, _guictrllistview_getitemtext($hwnd_source, $a_indices[$i], $x), $x, DllStructGetData($titem, "Image"))
			Next
		Next
		_guictrllistview_setitemselected($hwnd_source, -1, False)
		If $fdelflag Then
			For $i = $a_indices[0] To 1 Step -1
				_guictrllistview_deleteitem($hwnd_source, $a_indices[$i])
			Next
		EndIf
	EndIf
	_guictrllistview_endupdate($hwnd_source)
	_guictrllistview_endupdate($hwnd_destination)
EndFunc

Func _guictrllistview_create($hwnd, $sheadertext, $ix, $iy, $iwidth = 150, $iheight = 150, $istyle = 13, $iexstyle = 0, $fcoinit = False)
	If NOT IsHWnd($hwnd) Then Return SetError(1, 0, 0)
	If NOT IsString($sheadertext) Then Return SetError(2, 0, 0)
	If $iwidth = -1 Then $iwidth = 150
	If $iheight = -1 Then $iheight = 150
	If $istyle = -1 Then $istyle = $lvs_default
	If $iexstyle = -1 Then $iexstyle = 0
	Local Const $s_ok = 0
	Local Const $s_false = 1
	Local Const $rpc_e_changed_mode = -2147417850
	Local Const $e_invalidarg = -2147024809
	Local Const $e_outofmemory = -2147024882
	Local Const $e_unexpected = -2147418113
	Local $separatorchar = Opt("GUIDataSeparatorChar")
	Local Const $coinit_apartmentthreaded = 2
	Local $str_len = StringLen($sheadertext)
	If $str_len Then $sheadertext = StringSplit($sheadertext, $separatorchar)
	$istyle = BitOR($__udfguiconstant_ws_child, $__udfguiconstant_ws_visible, $istyle)
	If $fcoinit Then
		Local $aresult = DllCall("ole32.dll", "long", "CoInitializeEx", "ptr", 0, "dword", $coinit_apartmentthreaded)
		If @error Then Return SetError(@error, @extended, 0)
		Switch $aresult[0]
			Case $s_ok
				If $debug_lv Then __udf_debugprint("The COM library was initialized successfully on the calling thread.")
			Case $s_false
				If $debug_lv Then __udf_debugprint("The COM library is already initialized on the calling thread.")
			Case $rpc_e_changed_mode
				If $debug_lv Then __udf_debugprint("A previous call to CoInitializeEx specified a different concurrency model for the calling thread," & @LF & "-->or the thread that called CoInitializeEx currently belongs to the neutral threaded apartment.")
			Case $e_invalidarg
				If $debug_lv Then __udf_debugprint("Invalid Arg")
			Case $e_outofmemory
				If $debug_lv Then __udf_debugprint("Out of memory")
			Case $e_unexpected
				If $debug_lv Then __udf_debugprint("Unexpected error")
		EndSwitch
	EndIf
	Local $nctrlid = __udf_getnextglobalid($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Local $hlist = _winapi_createwindowex($iexstyle, $__listviewconstant_classname, "", $istyle, $ix, $iy, $iwidth, $iheight, $hwnd, $nctrlid)
	_sendmessage($hlist, $__listviewconstant_wm_setfont, _winapi_getstockobject($__listviewconstant_default_gui_font), True)
	If $str_len Then
		For $x = 1 To $sheadertext[0]
			_guictrllistview_insertcolumn($hlist, $x - 1, $sheadertext[$x], 75)
		Next
	EndIf
	Return $hlist
EndFunc

Func _guictrllistview_createdragimage($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $adrag[3]
	Local $tpoint = DllStructCreate($tagpoint)
	Local $ppoint = DllStructGetPtr($tpoint)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$adrag[0] = _sendmessage($hwnd, $lvm_createdragimage, $iindex, $ppoint, 0, "wparam", "ptr", "hwnd")
		Else
			Local $ipoint = DllStructGetSize($tpoint)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ipoint, $tmemmap)
			$adrag[0] = _sendmessage($hwnd, $lvm_createdragimage, $iindex, $pmemory, 0, "wparam", "ptr", "hwnd")
			_memread($tmemmap, $pmemory, $ppoint, $ipoint)
			_memfree($tmemmap)
		EndIf
	Else
		$adrag[0] = GUICtrlSendMsg($hwnd, $lvm_createdragimage, $iindex, $ppoint)
	EndIf
	$adrag[1] = DllStructGetData($tpoint, "X")
	$adrag[2] = DllStructGetData($tpoint, "Y")
	Return $adrag
EndFunc

Func _guictrllistview_createsolidbitmap($hwnd, $icolor, $iwidth, $iheight)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _winapi_createsolidbitmap($hwnd, $icolor, $iwidth, $iheight)
EndFunc

Func _guictrllistview_deleteallitems($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If _guictrllistview_getitemcount($hwnd) == 0 Then Return True
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_deleteallitems) <> 0
	Else
		Local $ctrlid
		For $index = _guictrllistview_getitemcount($hwnd) - 1 To 0 Step -1
			$ctrlid = _guictrllistview_getitemparam($hwnd, $index)
			If $ctrlid Then GUICtrlDelete($ctrlid)
		Next
		If _guictrllistview_getitemcount($hwnd) == 0 Then Return True
	EndIf
	Return False
EndFunc

Func _guictrllistview_deletecolumn($hwnd, $icol)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_deletecolumn, $icol) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_deletecolumn, $icol, 0) <> 0
	EndIf
EndFunc

Func _guictrllistview_deleteitem($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_deleteitem, $iindex) <> 0
	Else
		Local $ctrlid = _guictrllistview_getitemparam($hwnd, $iindex)
		If $ctrlid Then Return GUICtrlDelete($ctrlid) <> 0
	EndIf
	Return False
EndFunc

Func _guictrllistview_deleteitemsselected($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $itemcount = _guictrllistview_getitemcount($hwnd)
	If (_guictrllistview_getselectedcount($hwnd) == $itemcount) Then
		Return _guictrllistview_deleteallitems($hwnd)
	Else
		Local $items = _guictrllistview_getselectedindices($hwnd, 1)
		If NOT IsArray($items) Then Return SetError($lv_err, $lv_err, 0)
		_guictrllistview_setitemselected($hwnd, -1, False)
		For $i = $items[0] To 1 Step -1
			If NOT _guictrllistview_deleteitem($hwnd, $items[$i]) Then Return False
		Next
		Return True
	EndIf
EndFunc

Func _guictrllistview_destroy(ByRef $hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If NOT _winapi_isclassname($hwnd, $__listviewconstant_classname) Then Return SetError(2, 2, False)
	Local $destroyed = 0
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			Local $nctrlid = _winapi_getdlgctrlid($hwnd)
			Local $hparent = _winapi_getparent($hwnd)
			$destroyed = _winapi_destroywindow($hwnd)
			Local $iret = __udf_freeglobalid($hparent, $nctrlid)
			If NOT $iret Then
			EndIf
		Else
			Return SetError(1, 1, False)
		EndIf
	Else
		$destroyed = GUICtrlDelete($hwnd)
	EndIf
	If $destroyed Then $hwnd = 0
	Return $destroyed <> 0
EndFunc

Func __guictrllistview_draw($hwnd, $iindex, $hdc, $ix, $iy, $istyle = 0)
	Local $iflags = 0
	If BitAND($istyle, 1) <> 0 Then $iflags = BitOR($iflags, $__listviewconstant_ild_transparent)
	If BitAND($istyle, 2) <> 0 Then $iflags = BitOR($iflags, $__listviewconstant_ild_blend25)
	If BitAND($istyle, 4) <> 0 Then $iflags = BitOR($iflags, $__listviewconstant_ild_blend50)
	If BitAND($istyle, 8) <> 0 Then $iflags = BitOR($iflags, $__listviewconstant_ild_mask)
	Local $aresult = DllCall("ComCtl32.dll", "bool", "ImageList_Draw", "handle", $hwnd, "int", $iindex, "handle", $hdc, "int", $ix, "int", $iy, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _guictrllistview_drawdragimage(ByRef $hwnd, ByRef $adrag)
	Local $hdc = _winapi_getwindowdc($hwnd)
	Local $tpoint = _winapi_getmousepos(True, $hwnd)
	_winapi_invalidaterect($hwnd)
	__guictrllistview_draw($adrag[0], 0, $hdc, DllStructGetData($tpoint, "X"), DllStructGetData($tpoint, "Y"))
	_winapi_releasedc($hwnd, $hdc)
EndFunc

Func _guictrllistview_editlabel($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $aresult
	If IsHWnd($hwnd) Then
		$aresult = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $hwnd)
		If @error Then Return SetError(@error, @extended, 0)
		If $aresult = 0 Then Return 0
		If $funicode Then
			Return _sendmessage($hwnd, $lvm_editlabelw, $iindex, 0, 0, "wparam", "lparam", "hwnd")
		Else
			Return _sendmessage($hwnd, $lvm_editlabel, $iindex, 0, 0, "wparam", "lparam", "hwnd")
		EndIf
	Else
		$aresult = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", GUICtrlGetHandle($hwnd))
		If @error Then Return SetError(@error, @extended, 0)
		If $aresult = 0 Then Return 0
		If $funicode Then
			Return GUICtrlSendMsg($hwnd, $lvm_editlabelw, $iindex, 0)
		Else
			Return GUICtrlSendMsg($hwnd, $lvm_editlabel, $iindex, 0)
		EndIf
	EndIf
EndFunc

Func _guictrllistview_enablegroupview($hwnd, $fenable = True)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_enablegroupview, $fenable)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_enablegroupview, $fenable, 0)
	EndIf
EndFunc

Func _guictrllistview_endupdate($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Return _sendmessage($hwnd, $__listviewconstant_wm_setredraw, 1) = 0
EndFunc

Func _guictrllistview_ensurevisible($hwnd, $iindex, $fpartialok = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_ensurevisible, $iindex, $fpartialok)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_ensurevisible, $iindex, $fpartialok)
	EndIf
EndFunc

Func _guictrllistview_findintext($hwnd, $stext, $istart = -1, $fwrapok = True, $freverse = False)
	Local $icount = _guictrllistview_getitemcount($hwnd)
	Local $icolumns = _guictrllistview_getcolumncount($hwnd)
	If $icolumns = 0 Then $icolumns = 1
	If $freverse AND $istart = -1 Then Return -1
	Local $slist
	If $freverse Then
		For $ii = $istart - 1 To 0 Step -1
			For $ij = 0 To $icolumns - 1
				$slist = _guictrllistview_getitemtext($hwnd, $ii, $ij)
				If StringInStr($slist, $stext) Then Return $ii
			Next
		Next
	Else
		For $ii = $istart + 1 To $icount - 1
			For $ij = 0 To $icolumns - 1
				$slist = _guictrllistview_getitemtext($hwnd, $ii, $ij)
				If StringInStr($slist, $stext) Then Return $ii
			Next
		Next
	EndIf
	If (($istart = -1) OR NOT $fwrapok) AND NOT $freverse Then Return -1
	If $freverse AND $fwrapok Then
		For $ii = $icount - 1 To $istart + 1 Step -1
			For $ij = 0 To $icolumns - 1
				$slist = _guictrllistview_getitemtext($hwnd, $ii, $ij)
				If StringInStr($slist, $stext) Then Return $ii
			Next
		Next
	Else
		For $ii = 0 To $istart - 1
			For $ij = 0 To $icolumns - 1
				$slist = _guictrllistview_getitemtext($hwnd, $ii, $ij)
				If StringInStr($slist, $stext) Then Return $ii
			Next
		Next
	EndIf
	Return -1
EndFunc

Func _guictrllistview_finditem($hwnd, $istart, ByRef $tfindinfo, $stext = "")
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $ibuffer = StringLen($stext) + 1
	Local $tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $pfindinfo = DllStructGetPtr($tfindinfo)
	DllStructSetData($tbuffer, "Text", $stext)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tfindinfo, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_finditem, $istart, $pfindinfo, 0, "wparam", "ptr")
		Else
			Local $ifindinfo = DllStructGetSize($tfindinfo)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ifindinfo + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $ifindinfo
			DllStructSetData($tfindinfo, "Text", $ptext)
			_memwrite($tmemmap, $pfindinfo, $pmemory, $ifindinfo)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			$iret = _sendmessage($hwnd, $lvm_finditem, $istart, $pmemory, 0, "wparam", "ptr")
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($tfindinfo, "Text", $pbuffer)
		$iret = GUICtrlSendMsg($hwnd, $lvm_finditem, $istart, $pfindinfo)
	EndIf
	Return $iret
EndFunc

Func _guictrllistview_findnearest($hwnd, $ix, $iy, $idir = 0, $istart = -1, $fwrapok = True)
	Local $adir[8] = [$__listviewconstant_vk_left, $__listviewconstant_vk_right, $__listviewconstant_vk_up, $__listviewconstant_vk_down, $__listviewconstant_vk_home, $__listviewconstant_vk_end, $__listviewconstant_vk_prior, $__listviewconstant_vk_next]
	Local $tfindinfo = DllStructCreate($taglvfindinfo)
	Local $iflags = $lvfi_nearestxy
	If $fwrapok Then $iflags = BitOR($iflags, $lvfi_wrap)
	DllStructSetData($tfindinfo, "Flags", $iflags)
	DllStructSetData($tfindinfo, "X", $ix)
	DllStructSetData($tfindinfo, "Y", $iy)
	DllStructSetData($tfindinfo, "Direction", $adir[$idir])
	Return _guictrllistview_finditem($hwnd, $istart, $tfindinfo)
EndFunc

Func _guictrllistview_findparam($hwnd, $iparam, $istart = -1)
	Local $tfindinfo = DllStructCreate($taglvfindinfo)
	DllStructSetData($tfindinfo, "Flags", $lvfi_param)
	DllStructSetData($tfindinfo, "Param", $iparam)
	Return _guictrllistview_finditem($hwnd, $istart, $tfindinfo)
EndFunc

Func _guictrllistview_findtext($hwnd, $stext, $istart = -1, $fpartialok = True, $fwrapok = True)
	Local $tfindinfo = DllStructCreate($taglvfindinfo)
	Local $iflags = $lvfi_string
	If $fpartialok Then $iflags = BitOR($iflags, $lvfi_partial)
	If $fwrapok Then $iflags = BitOR($iflags, $lvfi_wrap)
	DllStructSetData($tfindinfo, "Flags", $iflags)
	Return _guictrllistview_finditem($hwnd, $istart, $tfindinfo, $stext)
EndFunc

Func _guictrllistview_getbkcolor($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $v_color
	If IsHWnd($hwnd) Then
		$v_color = _sendmessage($hwnd, $lvm_getbkcolor)
	Else
		$v_color = GUICtrlSendMsg($hwnd, $lvm_getbkcolor, 0, 0)
	EndIf
	Return __guictrllistview_reversecolororder($v_color)
EndFunc

Func _guictrllistview_getbkimage($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[4096]")
	Else
		$tbuffer = DllStructCreate("char Text[4096]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $timage = DllStructCreate($taglvbkimage)
	Local $pimage = DllStructGetPtr($timage)
	DllStructSetData($timage, "ImageMax", 4096)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($timage, "Image", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_getbkimagew, 0, $pimage, 0, "wparam", "ptr")
		Else
			Local $ibuffer = DllStructGetSize($tbuffer)
			Local $iimage = DllStructGetSize($timage)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iimage + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iimage
			DllStructSetData($timage, "Image", $ptext)
			_memwrite($tmemmap, $pimage, $pmemory, $iimage)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_getbkimagew, 0, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_getbkimagea, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memread($tmemmap, $pmemory, $pimage, $iimage)
			_memread($tmemmap, $ptext, $pbuffer, $ibuffer)
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($timage, "Image", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_getbkimagew, 0, $pimage)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_getbkimagea, 0, $pimage)
		EndIf
	EndIf
	Local $aimage[4]
	Switch BitAND(DllStructGetData($timage, "Flags"), $lvbkif_source_mask)
		Case $lvbkif_source_hbitmap
			$aimage[0] = 1
		Case $lvbkif_source_url
			$aimage[0] = 2
	EndSwitch
	$aimage[1] = DllStructGetData($tbuffer, "Text")
	$aimage[2] = DllStructGetData($timage, "XOffPercent")
	$aimage[3] = DllStructGetData($timage, "YOffPercent")
	Return SetError($iret <> 0, 0, $aimage)
EndFunc

Func _guictrllistview_getcallbackmask($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iflags = 0
	Local $imask = _sendmessage($hwnd, $lvm_getcallbackmask)
	If BitAND($imask, $lvis_cut) <> 0 Then $iflags = BitOR($iflags, 1)
	If BitAND($imask, $lvis_drophilited) <> 0 Then $iflags = BitOR($iflags, 2)
	If BitAND($imask, $lvis_focused) <> 0 Then $iflags = BitOR($iflags, 4)
	If BitAND($imask, $lvis_selected) <> 0 Then $iflags = BitOR($iflags, 8)
	If BitAND($imask, $lvis_overlaymask) <> 0 Then $iflags = BitOR($iflags, 16)
	If BitAND($imask, $lvis_stateimagemask) <> 0 Then $iflags = BitOR($iflags, 32)
	Return $iflags
EndFunc

Func _guictrllistview_getcolumn($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[4096]")
	Else
		$tbuffer = DllStructCreate("char Text[4096]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $tcolumn = DllStructCreate($taglvcolumn)
	Local $pcolumn = DllStructGetPtr($tcolumn)
	DllStructSetData($tcolumn, "Mask", $lvcf_alldata)
	DllStructSetData($tcolumn, "TextMax", 4096)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tcolumn, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_getcolumnw, $iindex, $pcolumn, 0, "wparam", "ptr")
		Else
			Local $ibuffer = DllStructGetSize($tbuffer)
			Local $icolumn = DllStructGetSize($tcolumn)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $icolumn + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $icolumn
			DllStructSetData($tcolumn, "Text", $ptext)
			_memwrite($tmemmap, $pcolumn, $pmemory, $icolumn)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_getcolumnw, $iindex, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_getcolumna, $iindex, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memread($tmemmap, $pmemory, $pcolumn, $icolumn)
			_memread($tmemmap, $ptext, $pbuffer, $ibuffer)
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($tcolumn, "Text", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_getcolumnw, $iindex, $pcolumn)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_getcolumna, $iindex, $pcolumn)
		EndIf
	EndIf
	Local $acolumn[9]
	Switch BitAND(DllStructGetData($tcolumn, "Fmt"), $lvcfmt_justifymask)
		Case $lvcfmt_right
			$acolumn[0] = 1
		Case $lvcfmt_center
			$acolumn[0] = 2
		Case Else
			$acolumn[0] = 0
	EndSwitch
	$acolumn[1] = BitAND(DllStructGetData($tcolumn, "Fmt"), $lvcfmt_image) <> 0
	$acolumn[2] = BitAND(DllStructGetData($tcolumn, "Fmt"), $lvcfmt_bitmap_on_right) <> 0
	$acolumn[3] = BitAND(DllStructGetData($tcolumn, "Fmt"), $lvcfmt_col_has_images) <> 0
	$acolumn[4] = DllStructGetData($tcolumn, "CX")
	$acolumn[5] = DllStructGetData($tbuffer, "Text")
	$acolumn[6] = DllStructGetData($tcolumn, "SubItem")
	$acolumn[7] = DllStructGetData($tcolumn, "Image")
	$acolumn[8] = DllStructGetData($tcolumn, "Order")
	Return SetError($iret = 0, 0, $acolumn)
EndFunc

Func _guictrllistview_getcolumncount($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Return _sendmessage(_guictrllistview_getheader($hwnd), 4608)
EndFunc

Func _guictrllistview_getcolumnorder($hwnd)
	Local $a_cols = _guictrllistview_getcolumnorderarray($hwnd), $s_cols = ""
	Local $separatorchar = Opt("GUIDataSeparatorChar")
	For $i = 1 To $a_cols[0]
		$s_cols &= $a_cols[$i] & $separatorchar
	Next
	$s_cols = StringTrimRight($s_cols, 1)
	Return $s_cols
EndFunc

Func _guictrllistview_getcolumnorderarray($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $icolumns = _guictrllistview_getcolumncount($hwnd)
	Local $tbuffer = DllStructCreate("int[" & $icolumns & "]")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_getcolumnorderarray, $icolumns, $pbuffer, 0, "wparam", "ptr")
		Else
			Local $ibuffer = DllStructGetSize($tbuffer)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
			_sendmessage($hwnd, $lvm_getcolumnorderarray, $icolumns, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $pbuffer, $ibuffer)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_getcolumnorderarray, $icolumns, $pbuffer)
	EndIf
	Local $abuffer[$icolumns + 1]
	$abuffer[0] = $icolumns
	For $ii = 1 To $icolumns
		$abuffer[$ii] = DllStructGetData($tbuffer, 1, $ii)
	Next
	Return $abuffer
EndFunc

Func _guictrllistview_getcolumnwidth($hwnd, $icol)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getcolumnwidth, $icol)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getcolumnwidth, $icol, 0)
	EndIf
EndFunc

Func _guictrllistview_getcounterpage($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getcountperpage)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getcountperpage, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_geteditcontrol($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_geteditcontrol)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_geteditcontrol, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getemptytext($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $ttext = DllStructCreate("char[4096]")
	Local $iret, $pbuffer = DllStructGetPtr($ttext)
	If IsHWnd($hwnd) Then
		Local $itext = DllStructGetSize($ttext)
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $itext + 4096, $tmemmap)
		Local $ptext = $pmemory + $itext
		DllStructSetData($ttext, "Text", $ptext)
		_memwrite($tmemmap, $ptext, $pmemory, $itext)
		$iret = _sendmessage($hwnd, $lvm_getemptytext, 4096, $pmemory)
		_memread($tmemmap, $ptext, $pbuffer, 4096)
		_memfree($tmemmap)
		If $iret = 0 Then Return SetError(-1, 0, "")
		Return DllStructGetData($ttext, 1)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getemptytext, 4096, DllStructGetPtr($ttext))
		If $iret = 0 Then Return SetError(-1, 0, "")
		Return DllStructGetData($ttext, 1)
	EndIf
EndFunc

Func _guictrllistview_getextendedlistviewstyle($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getextendedlistviewstyle)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getextendedlistviewstyle, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getfocusedgroup($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getfocusedgroup)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getfocusedgroup, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getgroupcount($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getgroupcount)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getgroupcount, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getgroupinfo($hwnd, $igroupid)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tgroup = DllStructCreate($taglvgroup)
	Local $pgroup = DllStructGetPtr($tgroup)
	Local $igroup = DllStructGetSize($tgroup)
	DllStructSetData($tgroup, "Size", $igroup)
	DllStructSetData($tgroup, "Mask", BitOR($lvgf_header, $lvgf_align))
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getgroupinfo, $igroupid, $pgroup, 0, "wparam", "ptr")
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $igroup, $tmemmap)
			_memwrite($tmemmap, $pgroup, $pmemory, $igroup)
			$iret = _sendmessage($hwnd, $lvm_getgroupinfo, $igroupid, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $pgroup, $igroup)
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getgroupinfo, $igroupid, $pgroup)
	EndIf
	Local $agroup[2]
	$agroup[0] = _winapi_widechartomultibyte(DllStructGetData($tgroup, "Header"))
	Select 
		Case BitAND(DllStructGetData($tgroup, "Align"), $lvga_header_center) <> 0
			$agroup[1] = 1
		Case BitAND(DllStructGetData($tgroup, "Align"), $lvga_header_right) <> 0
			$agroup[1] = 2
		Case Else
			$agroup[1] = 0
	EndSelect
	Return SetError($iret <> $igroupid, 0, $agroup)
EndFunc

Func _guictrllistview_getgroupinfobyindex($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tgroup = DllStructCreate($taglvgroup)
	Local $pgroup = DllStructGetPtr($tgroup)
	Local $igroup = DllStructGetSize($tgroup)
	DllStructSetData($tgroup, "Size", $igroup)
	DllStructSetData($tgroup, "Mask", BitOR($lvgf_header, $lvgf_align))
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getgroupinfobyindex, $iindex, $pgroup, 0, "wparam", "ptr")
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $igroup, $tmemmap)
			_memwrite($tmemmap, $pgroup, $pmemory, $igroup)
			$iret = _sendmessage($hwnd, $lvm_getgroupinfobyindex, $iindex, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $pgroup, $igroup)
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getgroupinfobyindex, $iindex, $pgroup)
	EndIf
	Local $agroup[2]
	$agroup[0] = _winapi_widechartomultibyte(DllStructGetData($tgroup, "Header"))
	Select 
		Case BitAND(DllStructGetData($tgroup, "Align"), $lvga_header_center) <> 0
			$agroup[1] = 1
		Case BitAND(DllStructGetData($tgroup, "Align"), $lvga_header_right) <> 0
			$agroup[1] = 2
		Case Else
			$agroup[1] = 0
	EndSelect
	Return SetError($iret = 0, 0, $agroup)
EndFunc

Func _guictrllistview_getgrouprect($hwnd, $igroupid, $iget = $lvggr_group)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tgroup = DllStructCreate($tagrect)
	DllStructSetData($tgroup, "Left", $iget)
	Local $pgroup = DllStructGetPtr($tgroup)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getgrouprect, $igroupid, $pgroup, 0, "wparam", "ptr")
		Else
			Local $igroup = DllStructGetSize($tgroup)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $igroup, $tmemmap)
			_memwrite($tmemmap, $pgroup, $pmemory, $igroup)
			$iret = _sendmessage($hwnd, $lvm_getgrouprect, $igroupid, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $pgroup, $igroup)
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getgrouprect, $igroupid, $pgroup)
	EndIf
	Local $agroup[4]
	For $x = 0 To 3
		$agroup[$x] = DllStructGetData($tgroup, $x + 1)
	Next
	Return SetError($iret = 0, 0, $agroup)
EndFunc

Func _guictrllistview_getgroupstate($hwnd, $igroupid, $imask)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getgroupstate, $igroupid, $imask)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getgroupstate, $igroupid, $imask)
	EndIf
EndFunc

Func _guictrllistview_getgroupviewenabled($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_isgroupviewenabled) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_isgroupviewenabled, 0, 0) <> 0
	EndIf
EndFunc

Func _guictrllistview_getheader($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getheader)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getheader, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_gethotcursor($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_gethotcursor, 0, 0, 0, "wparam", "lparam", "hwnd")
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_gethotcursor, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_gethotitem($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_gethotitem)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_gethotitem, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_gethovertime($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_gethovertime)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_gethovertime, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getimagelist($hwnd, $iimagelist)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aimagelist[3] = [$lvsil_normal, $lvsil_small, $lvsil_state]
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getimagelist, $aimagelist[$iimagelist], 0, 0, "wparam", "lparam", "hwnd")
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getimagelist, $aimagelist[$iimagelist], 0)
	EndIf
EndFunc

Func _guictrllistview_getinsertmark($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tmark = DllStructCreate($taglvinsertmark)
	Local $pmark = DllStructGetPtr($tmark)
	Local $imark = DllStructGetSize($tmark)
	DllStructSetData($tmark, "Size", $imark)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getinsertmark, 0, $pmark, 0, "wparam", "ptr")
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $imark, $tmemmap)
			_memwrite($tmemmap, $pmark)
			$iret = _sendmessage($hwnd, $lvm_getinsertmark, 0, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $pmark, $imark)
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getinsertmark, 0, $pmark)
	EndIf
	Local $amark[2]
	$amark[0] = DllStructGetData($tmark, "Flags") = $lvim_after
	$amark[1] = DllStructGetData($tmark, "Item")
	Return SetError($iret = 0, 0, $amark)
EndFunc

Func _guictrllistview_getinsertmarkcolor($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getinsertmarkcolor, $lvsil_state)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getinsertmarkcolor, $lvsil_state, 0)
	EndIf
EndFunc

Func _guictrllistview_getinsertmarkrect($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $arect[5]
	Local $trect = DllStructCreate($tagrect)
	Local $prect = DllStructGetPtr($trect)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$arect[0] = _sendmessage($hwnd, $lvm_getinsertmarkrect, 0, $prect, 0, "wparam", "ptr") <> 0
		Else
			Local $irect = DllStructGetSize($trect)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $irect, $tmemmap)
			$arect[0] = _sendmessage($hwnd, $lvm_getinsertmarkrect, 0, $pmemory, 0, "wparam", "ptr") <> 0
			_memread($tmemmap, $pmemory, $prect, $irect)
			_memfree($tmemmap)
		EndIf
	Else
		$arect[0] = GUICtrlSendMsg($hwnd, $lvm_getinsertmarkrect, 0, $prect) <> 0
	EndIf
	$arect[1] = DllStructGetData($trect, "Left")
	$arect[2] = DllStructGetData($trect, "Top")
	$arect[3] = DllStructGetData($trect, "Right")
	$arect[4] = DllStructGetData($trect, "Bottom")
	Return $arect
EndFunc

Func _guictrllistview_getisearchstring($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $ibuffer
	If IsHWnd($hwnd) Then
		If $funicode Then
			$ibuffer = _sendmessage($hwnd, $lvm_getisearchstringw) + 1
		Else
			$ibuffer = _sendmessage($hwnd, $lvm_getisearchstringa) + 1
		EndIf
	Else
		If $funicode Then
			$ibuffer = GUICtrlSendMsg($hwnd, $lvm_getisearchstringw, 0, 0) + 1
		Else
			$ibuffer = GUICtrlSendMsg($hwnd, $lvm_getisearchstringa, 0, 0) + 1
		EndIf
	EndIf
	If $ibuffer = 1 Then Return ""
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_getisearchstringw, 0, $pbuffer)
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
			If $funicode Then
				_sendmessage($hwnd, $lvm_getisearchstringw, 0, $pmemory)
			Else
				_sendmessage($hwnd, $lvm_getisearchstringa, 0, $pmemory)
			EndIf
			_memread($tmemmap, $pmemory, $pbuffer, $ibuffer)
			_memfree($tmemmap)
		EndIf
	Else
		If $funicode Then
			GUICtrlSendMsg($hwnd, $lvm_getisearchstringw, 0, $pbuffer)
		Else
			GUICtrlSendMsg($hwnd, $lvm_getisearchstringa, 0, $pbuffer)
		EndIf
	EndIf
	Return DllStructGetData($tbuffer, "Text")
EndFunc

Func _guictrllistview_getitem($hwnd, $iindex, $isubitem = 0)
	Local $aitem[8]
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", BitOR($lvif_groupid, $lvif_image, $lvif_indent, $lvif_param, $lvif_state))
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "SubItem", $isubitem)
	DllStructSetData($titem, "StateMask", -1)
	_guictrllistview_getitemex($hwnd, $titem)
	Local $istate = DllStructGetData($titem, "State")
	If BitAND($istate, $lvis_cut) <> 0 Then $aitem[0] = BitOR($aitem[0], 1)
	If BitAND($istate, $lvis_drophilited) <> 0 Then $aitem[0] = BitOR($aitem[0], 2)
	If BitAND($istate, $lvis_focused) <> 0 Then $aitem[0] = BitOR($aitem[0], 4)
	If BitAND($istate, $lvis_selected) <> 0 Then $aitem[0] = BitOR($aitem[0], 8)
	$aitem[1] = __guictrllistview_overlayimagemasktoindex($istate)
	$aitem[2] = __guictrllistview_stateimagemasktoindex($istate)
	$aitem[3] = _guictrllistview_getitemtext($hwnd, $iindex, $isubitem)
	$aitem[4] = DllStructGetData($titem, "Image")
	$aitem[5] = DllStructGetData($titem, "Param")
	$aitem[6] = DllStructGetData($titem, "Indent")
	$aitem[7] = DllStructGetData($titem, "GroupID")
	Return $aitem
EndFunc

Func _guictrllistview_getitemchecked($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $tlvitem = DllStructCreate($taglvitem)
	Local $isize = DllStructGetSize($tlvitem)
	Local $pitem = DllStructGetPtr($tlvitem)
	If @error Then Return SetError($lv_err, $lv_err, False)
	DllStructSetData($tlvitem, "Mask", $lvif_state)
	DllStructSetData($tlvitem, "Item", $iindex)
	DllStructSetData($tlvitem, "StateMask", 65535)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getitemw, 0, $pitem, 0, "wparam", "ptr") <> 0
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $isize, $tmemmap)
			_memwrite($tmemmap, $pitem)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_getitemw, 0, $pmemory, 0, "wparam", "ptr") <> 0
			Else
				$iret = _sendmessage($hwnd, $lvm_getitema, 0, $pmemory, 0, "wparam", "ptr") <> 0
			EndIf
			_memread($tmemmap, $pmemory, $pitem, $isize)
			_memfree($tmemmap)
		EndIf
	Else
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_getitemw, 0, $pitem) <> 0
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_getitema, 0, $pitem) <> 0
		EndIf
	EndIf
	If NOT $iret Then Return SetError($lv_err, $lv_err, False)
	Return BitAND(DllStructGetData($tlvitem, "State"), 8192) <> 0
EndFunc

Func _guictrllistview_getitemcount($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getitemcount)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getitemcount, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getitemcut($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Return _guictrllistview_getitemstate($hwnd, $iindex, $lvis_cut) <> 0
EndFunc

Func _guictrllistview_getitemdrophilited($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Return _guictrllistview_getitemstate($hwnd, $iindex, $lvis_drophilited) <> 0
EndFunc

Func _guictrllistview_getitemex($hwnd, ByRef $titem)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $pitem = DllStructGetPtr($titem)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getitemw, 0, $pitem, 0, "wparam", "ptr")
		Else
			Local $iitem = DllStructGetSize($titem)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iitem, $tmemmap)
			_memwrite($tmemmap, $pitem)
			If $funicode Then
				_sendmessage($hwnd, $lvm_getitemw, 0, $pmemory, 0, "wparam", "ptr")
			Else
				_sendmessage($hwnd, $lvm_getitema, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memread($tmemmap, $pmemory, $pitem, $iitem)
			_memfree($tmemmap)
		EndIf
	Else
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_getitemw, 0, $pitem)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_getitema, 0, $pitem)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_getitemfocused($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Return _guictrllistview_getitemstate($hwnd, $iindex, $lvis_focused) <> 0
EndFunc

Func _guictrllistview_getitemgroupid($hwnd, $iindex)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_groupid)
	DllStructSetData($titem, "Item", $iindex)
	_guictrllistview_getitemex($hwnd, $titem)
	Return DllStructGetData($titem, "GroupID")
EndFunc

Func _guictrllistview_getitemimage($hwnd, $iindex, $isubitem = 0)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_image)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "SubItem", $isubitem)
	_guictrllistview_getitemex($hwnd, $titem)
	Return DllStructGetData($titem, "Image")
EndFunc

Func _guictrllistview_getitemindent($hwnd, $iindex)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_indent)
	DllStructSetData($titem, "Item", $iindex)
	_guictrllistview_getitemex($hwnd, $titem)
	Return DllStructGetData($titem, "Indent")
EndFunc

Func __guictrllistview_getitemoverlayimage($hwnd, $iindex)
	Return BitShift(_guictrllistview_getitemstate($hwnd, $iindex, $lvis_overlaymask), 8)
EndFunc

Func _guictrllistview_getitemparam($hwnd, $iindex)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_param)
	DllStructSetData($titem, "Item", $iindex)
	_guictrllistview_getitemex($hwnd, $titem)
	Return DllStructGetData($titem, "Param")
EndFunc

Func _guictrllistview_getitemposition($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $apoint[2], $iret
	Local $tpoint = DllStructCreate($tagpoint)
	Local $ppoint = DllStructGetPtr($tpoint)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			If NOT _sendmessage($hwnd, $lvm_getitemposition, $iindex, $ppoint, 0, "wparam", "ptr") Then Return $apoint
		Else
			Local $ipoint = DllStructGetSize($tpoint)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ipoint, $tmemmap)
			If NOT _sendmessage($hwnd, $lvm_getitemposition, $iindex, $pmemory, 0, "wparam", "ptr") Then Return $apoint
			_memread($tmemmap, $pmemory, $ppoint, $ipoint)
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getitemposition, $iindex, $ppoint)
		If NOT $iret Then Return $apoint
	EndIf
	$apoint[0] = DllStructGetData($tpoint, "X")
	$apoint[1] = DllStructGetData($tpoint, "Y")
	Return $apoint
EndFunc

Func _guictrllistview_getitempositionx($hwnd, $iindex)
	Local $apoint = _guictrllistview_getitemposition($hwnd, $iindex)
	Return $apoint[0]
EndFunc

Func _guictrllistview_getitempositiony($hwnd, $iindex)
	Local $apoint = _guictrllistview_getitemposition($hwnd, $iindex)
	Return $apoint[1]
EndFunc

Func _guictrllistview_getitemrect($hwnd, $iindex, $ipart = 3)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $trect = _guictrllistview_getitemrectex($hwnd, $iindex, $ipart)
	Local $arect[4]
	$arect[0] = DllStructGetData($trect, "Left")
	$arect[1] = DllStructGetData($trect, "Top")
	$arect[2] = DllStructGetData($trect, "Right")
	$arect[3] = DllStructGetData($trect, "Bottom")
	Return $arect
EndFunc

Func _guictrllistview_getitemrectex($hwnd, $iindex, $ipart = 3)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $trect = DllStructCreate($tagrect)
	Local $prect = DllStructGetPtr($trect)
	DllStructSetData($trect, "Left", $ipart)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_getitemrect, $iindex, $prect, 0, "wparam", "ptr")
		Else
			Local $irect = DllStructGetSize($trect)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $irect, $tmemmap)
			_memwrite($tmemmap, $prect, $pmemory, $irect)
			_sendmessage($hwnd, $lvm_getitemrect, $iindex, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $prect, $irect)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_getitemrect, $iindex, $prect)
	EndIf
	Return $trect
EndFunc

Func _guictrllistview_getitemselected($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Return _guictrllistview_getitemstate($hwnd, $iindex, $lvis_selected) <> 0
EndFunc

Func _guictrllistview_getitemspacing($hwnd, $fsmall = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $ispace
	If IsHWnd($hwnd) Then
		$ispace = _sendmessage($hwnd, $lvm_getitemspacing, $fsmall)
	Else
		$ispace = GUICtrlSendMsg($hwnd, $lvm_getitemspacing, $fsmall, 0)
	EndIf
	Local $aspace[2]
	$aspace[0] = BitAND($ispace, 65535)
	$aspace[1] = BitShift($ispace, 16)
	Return $aspace
EndFunc

Func _guictrllistview_getitemspacingx($hwnd, $fsmall = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return BitAND(_sendmessage($hwnd, $lvm_getitemspacing, $fsmall, 0), 65535)
	Else
		Return BitAND(GUICtrlSendMsg($hwnd, $lvm_getitemspacing, $fsmall, 0), 65535)
	EndIf
EndFunc

Func _guictrllistview_getitemspacingy($hwnd, $fsmall = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return BitShift(_sendmessage($hwnd, $lvm_getitemspacing, $fsmall, 0), 16)
	Else
		Return BitShift(GUICtrlSendMsg($hwnd, $lvm_getitemspacing, $fsmall, 0), 16)
	EndIf
EndFunc

Func _guictrllistview_getitemstate($hwnd, $iindex, $imask)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getitemstate, $iindex, $imask)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getitemstate, $iindex, $imask)
	EndIf
EndFunc

Func _guictrllistview_getitemstateimage($hwnd, $iindex)
	Return BitShift(_guictrllistview_getitemstate($hwnd, $iindex, $lvis_stateimagemask), 12)
EndFunc

Func _guictrllistview_getitemtext($hwnd, $iindex, $isubitem = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[4096]")
	Else
		$tbuffer = DllStructCreate("char Text[4096]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($titem)
	DllStructSetData($titem, "SubItem", $isubitem)
	DllStructSetData($titem, "TextMax", 4096)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($titem, "Text", $pbuffer)
			_sendmessage($hwnd, $lvm_getitemtextw, $iindex, $pitem, 0, "wparam", "ptr")
		Else
			Local $iitem = DllStructGetSize($titem)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iitem + 4096, $tmemmap)
			Local $ptext = $pmemory + $iitem
			DllStructSetData($titem, "Text", $ptext)
			_memwrite($tmemmap, $pitem, $pmemory, $iitem)
			If $funicode Then
				_sendmessage($hwnd, $lvm_getitemtextw, $iindex, $pmemory, 0, "wparam", "ptr")
			Else
				_sendmessage($hwnd, $lvm_getitemtexta, $iindex, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memread($tmemmap, $ptext, $pbuffer, 4096)
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($titem, "Text", $pbuffer)
		If $funicode Then
			GUICtrlSendMsg($hwnd, $lvm_getitemtextw, $iindex, $pitem)
		Else
			GUICtrlSendMsg($hwnd, $lvm_getitemtexta, $iindex, $pitem)
		EndIf
	EndIf
	Return DllStructGetData($tbuffer, "Text")
EndFunc

Func _guictrllistview_getitemtextarray($hwnd, $iitem = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $sitems = _guictrllistview_getitemtextstring($hwnd, $iitem)
	If $sitems = "" Then
		Local $vitems[1] = [0]
		Return SetError($lv_err, $lv_err, $vitems)
	EndIf
	Return StringSplit($sitems, Opt("GUIDataSeparatorChar"))
EndFunc

Func _guictrllistview_getitemtextstring($hwnd, $iitem = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $srow = "", $separatorchar = Opt("GUIDataSeparatorChar"), $iselected
	If $iitem = -1 Then
		$iselected = _guictrllistview_getnextitem($hwnd)
	Else
		$iselected = $iitem
	EndIf
	For $x = 0 To _guictrllistview_getcolumncount($hwnd) - 1
		$srow &= _guictrllistview_getitemtext($hwnd, $iselected, $x) & $separatorchar
	Next
	Return StringTrimRight($srow, 1)
EndFunc

Func _guictrllistview_getnextitem($hwnd, $istart = -1, $isearch = 0, $istate = 8)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $asearch[5] = [$lvni_all, $lvni_above, $lvni_below, $lvni_toleft, $lvni_toright]
	Local $iflags = $asearch[$isearch]
	If BitAND($istate, 1) <> 0 Then $iflags = BitOR($iflags, $lvni_cut)
	If BitAND($istate, 2) <> 0 Then $iflags = BitOR($iflags, $lvni_drophilited)
	If BitAND($istate, 4) <> 0 Then $iflags = BitOR($iflags, $lvni_focused)
	If BitAND($istate, 8) <> 0 Then $iflags = BitOR($iflags, $lvni_selected)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getnextitem, $istart, $iflags)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getnextitem, $istart, $iflags)
	EndIf
EndFunc

Func _guictrllistview_getnumberofworkareas($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tbuffer = DllStructCreate("int Data")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_getnumberofworkareas, 0, $pbuffer, 0, "wparam", "ptr")
		Else
			Local $ibuffer = DllStructGetSize($tbuffer)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
			_sendmessage($hwnd, $lvm_getnumberofworkareas, 0, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $pbuffer, $ibuffer)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_getnumberofworkareas, 0, $pbuffer)
	EndIf
	Return DllStructGetData($tbuffer, "Data")
EndFunc

Func _guictrllistview_getorigin($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tpoint = DllStructCreate($tagpoint)
	Local $ppoint = DllStructGetPtr($tpoint)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getorigin, 0, $ppoint, 0, "wparam", "ptr")
		Else
			Local $ipoint = DllStructGetSize($tpoint)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ipoint, $tmemmap)
			$iret = _sendmessage($hwnd, $lvm_getorigin, 0, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $ppoint, $ipoint)
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_getorigin, 0, $ppoint)
	EndIf
	Local $aorigin[2]
	$aorigin[0] = DllStructGetData($tpoint, "X")
	$aorigin[1] = DllStructGetData($tpoint, "Y")
	Return SetError(@error, $iret = 1, $aorigin)
EndFunc

Func _guictrllistview_getoriginx($hwnd)
	Local $aorigin = _guictrllistview_getorigin($hwnd)
	Return $aorigin[0]
EndFunc

Func _guictrllistview_getoriginy($hwnd)
	Local $aorigin = _guictrllistview_getorigin($hwnd)
	Return $aorigin[1]
EndFunc

Func _guictrllistview_getoutlinecolor($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getoutlinecolor)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getoutlinecolor, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getselectedcolumn($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getselectedcolumn)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getselectedcolumn, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getselectedcount($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getselectedcount)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getselectedcount, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getselectedindices($hwnd, $farray = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $sindices, $aindices[1] = [0]
	Local $iret, $icount = _guictrllistview_getitemcount($hwnd)
	For $iitem = 0 To $icount
		If IsHWnd($hwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getitemstate, $iitem, $lvis_selected)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_getitemstate, $iitem, $lvis_selected)
		EndIf
		If $iret Then
			If (NOT $farray) Then
				If StringLen($sindices) Then
					$sindices &= "|" & $iitem
				Else
					$sindices = $iitem
				EndIf
			Else
				ReDim $aindices[UBound($aindices) + 1]
				$aindices[0] = UBound($aindices) - 1
				$aindices[UBound($aindices) - 1] = $iitem
			EndIf
		EndIf
	Next
	If (NOT $farray) Then
		Return String($sindices)
	Else
		Return $aindices
	EndIf
EndFunc

Func _guictrllistview_getselectionmark($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getselectionmark)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getselectionmark, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getstringwidth($hwnd, $sstring)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $ibuffer = StringLen($sstring) + 1
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	DllStructSetData($tbuffer, "Text", $sstring)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_getstringwidthw, 0, $pbuffer, 0, "wparam", "ptr")
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
			_memwrite($tmemmap, $pbuffer, $pmemory, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_getstringwidthw, 0, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_getstringwidtha, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memread($tmemmap, $pmemory, $pbuffer, $ibuffer)
			_memfree($tmemmap)
		EndIf
	Else
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_getstringwidthw, 0, $pbuffer)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_getstringwidtha, 0, $pbuffer)
		EndIf
	EndIf
	Return $iret
EndFunc

Func _guictrllistview_getsubitemrect($hwnd, $iindex, $isubitem, $ipart = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $apart[2] = [$lvir_bounds, $lvir_icon]
	Local $trect = DllStructCreate($tagrect)
	Local $prect = DllStructGetPtr($trect)
	DllStructSetData($trect, "Top", $isubitem)
	DllStructSetData($trect, "Left", $apart[$ipart])
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_getsubitemrect, $iindex, $prect, 0, "wparam", "ptr")
		Else
			Local $irect = DllStructGetSize($trect)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $irect, $tmemmap)
			_memwrite($tmemmap, $prect, $pmemory, $irect)
			_sendmessage($hwnd, $lvm_getsubitemrect, $iindex, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $prect, $irect)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_getsubitemrect, $iindex, $prect)
	EndIf
	Local $arect[4]
	$arect[0] = DllStructGetData($trect, "Left")
	$arect[1] = DllStructGetData($trect, "Top")
	$arect[2] = DllStructGetData($trect, "Right")
	$arect[3] = DllStructGetData($trect, "Bottom")
	Return $arect
EndFunc

Func _guictrllistview_gettextbkcolor($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_gettextbkcolor)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_gettextbkcolor, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_gettextcolor($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_gettextcolor)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_gettextcolor, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_gettooltips($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return HWnd(_sendmessage($hwnd, $lvm_gettooltips))
	Else
		Return HWnd(GUICtrlSendMsg($hwnd, $lvm_gettooltips, 0, 0))
	EndIf
EndFunc

Func _guictrllistview_gettopindex($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_gettopindex)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_gettopindex, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_getunicodeformat($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_getunicodeformat) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_getunicodeformat, 0, 0) <> 0
	EndIf
EndFunc

Func _guictrllistview_getview($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $view
	If IsHWnd($hwnd) Then
		$view = _sendmessage($hwnd, $lvm_getview)
	Else
		$view = GUICtrlSendMsg($hwnd, $lvm_getview, 0, 0)
	EndIf
	Switch $view
		Case $lv_view_details
			Return 0
		Case $lv_view_icon
			Return 1
		Case $lv_view_list
			Return 2
		Case $lv_view_smallicon
			Return 3
		Case $lv_view_tile
			Return 4
		Case Else
			Return -1
	EndSwitch
EndFunc

Func _guictrllistview_getviewdetails($hwnd)
	Return _guictrllistview_getview($hwnd) = 0
EndFunc

Func _guictrllistview_getviewlarge($hwnd)
	Return _guictrllistview_getview($hwnd) = 1
EndFunc

Func _guictrllistview_getviewlist($hwnd)
	Return _guictrllistview_getview($hwnd) = 2
EndFunc

Func _guictrllistview_getviewsmall($hwnd)
	Return _guictrllistview_getview($hwnd) = 3
EndFunc

Func _guictrllistview_getviewtile($hwnd)
	Return _guictrllistview_getview($hwnd) = 4
EndFunc

Func _guictrllistview_getviewrect($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $arect[4] = [0, 0, 0, 0]
	Local $iview = _guictrllistview_getview($hwnd)
	If ($iview <> 1) AND ($iview <> 3) Then Return $arect
	Local $trect = DllStructCreate($tagrect)
	Local $prect = DllStructGetPtr($trect)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_getviewrect, 0, $prect, 0, "wparam", "ptr")
		Else
			Local $irect = DllStructGetSize($trect)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $irect, $tmemmap)
			_sendmessage($hwnd, $lvm_getviewrect, 0, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $prect, $irect)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_getviewrect, 0, $prect)
	EndIf
	$arect[0] = DllStructGetData($trect, "Left")
	$arect[1] = DllStructGetData($trect, "Top")
	$arect[2] = DllStructGetData($trect, "Right")
	$arect[3] = DllStructGetData($trect, "Bottom")
	Return $arect
EndFunc

Func _guictrllistview_hidecolumn($hwnd, $icol)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setcolumnwidth, $icol) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setcolumnwidth, $icol, 0) <> 0
	EndIf
EndFunc

Func _guictrllistview_hittest($hwnd, $ix = -1, $iy = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $atest[10]
	Local $imode = Opt("MouseCoordMode", 1)
	Local $apos = MouseGetPos()
	Opt("MouseCoordMode", $imode)
	Local $tpoint = DllStructCreate($tagpoint)
	DllStructSetData($tpoint, "X", $apos[0])
	DllStructSetData($tpoint, "Y", $apos[1])
	Local $aresult = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $hwnd, "ptr", DllStructGetPtr($tpoint))
	If @error Then Return SetError(@error, @extended, 0)
	If $aresult[0] = 0 Then Return 0
	If $ix = -1 Then $ix = DllStructGetData($tpoint, "X")
	If $iy = -1 Then $iy = DllStructGetData($tpoint, "Y")
	Local $ttest = DllStructCreate($taglvhittestinfo)
	Local $ptest = DllStructGetPtr($ttest)
	DllStructSetData($ttest, "X", $ix)
	DllStructSetData($ttest, "Y", $iy)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$atest[0] = _sendmessage($hwnd, $lvm_hittest, 0, $ptest, 0, "wparam", "ptr")
		Else
			Local $itest = DllStructGetSize($ttest)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $itest, $tmemmap)
			_memwrite($tmemmap, $ptest, $pmemory, $itest)
			$atest[0] = _sendmessage($hwnd, $lvm_hittest, 0, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $ptest, $itest)
			_memfree($tmemmap)
		EndIf
	Else
		$atest[0] = GUICtrlSendMsg($hwnd, $lvm_hittest, 0, $ptest)
	EndIf
	Local $iflags = DllStructGetData($ttest, "Flags")
	$atest[1] = BitAND($iflags, $lvht_nowhere) <> 0
	$atest[2] = BitAND($iflags, $lvht_onitemicon) <> 0
	$atest[3] = BitAND($iflags, $lvht_onitemlabel) <> 0
	$atest[4] = BitAND($iflags, $lvht_onitemstateicon) <> 0
	$atest[5] = BitAND($iflags, $lvht_onitem) <> 0
	$atest[6] = BitAND($iflags, $lvht_above) <> 0
	$atest[7] = BitAND($iflags, $lvht_below) <> 0
	$atest[8] = BitAND($iflags, $lvht_toleft) <> 0
	$atest[9] = BitAND($iflags, $lvht_toright) <> 0
	Return $atest
EndFunc

Func __guictrllistview_indextooverlayimagemask($iindex)
	Return BitShift($iindex, -8)
EndFunc

Func __guictrllistview_indextostateimagemask($iindex)
	Return BitShift($iindex, -12)
EndFunc

Func _guictrllistview_insertcolumn($hwnd, $iindex, $stext, $iwidth = 50, $ialign = -1, $iimage = -1, $fonright = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aalign[3] = [$lvcfmt_left, $lvcfmt_right, $lvcfmt_center]
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $ibuffer = StringLen($stext) + 1
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $tcolumn = DllStructCreate($taglvcolumn)
	Local $pcolumn = DllStructGetPtr($tcolumn)
	Local $imask = BitOR($lvcf_fmt, $lvcf_width, $lvcf_text)
	If $ialign < 0 OR $ialign > 2 Then $ialign = 0
	Local $ifmt = $aalign[$ialign]
	If $iimage <> -1 Then
		$imask = BitOR($imask, $lvcf_image)
		$ifmt = BitOR($ifmt, $lvcfmt_col_has_images, $lvcfmt_image)
	EndIf
	If $fonright Then $ifmt = BitOR($ifmt, $lvcfmt_bitmap_on_right)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($tcolumn, "Mask", $imask)
	DllStructSetData($tcolumn, "Fmt", $ifmt)
	DllStructSetData($tcolumn, "CX", $iwidth)
	DllStructSetData($tcolumn, "TextMax", $ibuffer)
	DllStructSetData($tcolumn, "Image", $iimage)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tcolumn, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_insertcolumnw, $iindex, $pcolumn, 0, "wparam", "ptr")
		Else
			Local $icolumn = DllStructGetSize($tcolumn)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $icolumn + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $icolumn
			DllStructSetData($tcolumn, "Text", $ptext)
			_memwrite($tmemmap, $pcolumn, $pmemory, $icolumn)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_insertcolumnw, $iindex, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_insertcolumna, $iindex, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($tcolumn, "Text", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_insertcolumnw, $iindex, $pcolumn)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_insertcolumna, $iindex, $pcolumn)
		EndIf
	EndIf
	If $ialign > 0 Then _guictrllistview_setcolumn($hwnd, $iret, $stext, $iwidth, $ialign, $iimage, $fonright)
	Return $iret
EndFunc

Func _guictrllistview_insertgroup($hwnd, $iindex, $igroupid, $sheader, $ialign = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aalign[3] = [$lvga_header_left, $lvga_header_center, $lvga_header_right]
	If $ialign < 0 OR $ialign > 2 Then $ialign = 0
	Local $theader = _winapi_multibytetowidechar($sheader)
	Local $ptext = DllStructGetPtr($theader)
	Local $pheader = DllStructGetPtr($theader)
	Local $iheader = StringLen($sheader)
	Local $tgroup = DllStructCreate($taglvgroup)
	Local $pgroup = DllStructGetPtr($tgroup)
	Local $igroup = DllStructGetSize($tgroup)
	Local $imask = BitOR($lvgf_header, $lvgf_align, $lvgf_groupid)
	DllStructSetData($tgroup, "Size", $igroup)
	DllStructSetData($tgroup, "Mask", $imask)
	DllStructSetData($tgroup, "HeaderMax", $iheader)
	DllStructSetData($tgroup, "GroupID", $igroupid)
	DllStructSetData($tgroup, "Align", $aalign[$ialign])
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tgroup, "Header", $pheader)
			$iret = _sendmessage($hwnd, $lvm_insertgroup, $iindex, $pgroup, 0, "wparam", "ptr")
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $igroup + $iheader, $tmemmap)
			$ptext = $pmemory + $igroup
			DllStructSetData($tgroup, "Header", $ptext)
			_memwrite($tmemmap, $pgroup, $pmemory, $igroup)
			_memwrite($tmemmap, $pheader, $ptext, $iheader)
			$iret = _sendmessage($hwnd, $lvm_insertgroup, $iindex, $pgroup, 0, "wparam", "ptr")
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($tgroup, "Header", $pheader)
		$iret = GUICtrlSendMsg($hwnd, $lvm_insertgroup, $iindex, $pgroup)
	EndIf
	Return $iret
EndFunc

Func _guictrllistview_insertitem($hwnd, $stext, $iindex = -1, $iimage = -1, $iparam = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $ibuffer, $pbuffer, $tbuffer, $iret
	If $iindex = -1 Then $iindex = 999999999
	Local $titem = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($titem)
	DllStructSetData($titem, "Param", $iparam)
	If $stext <> -1 Then
		$ibuffer = StringLen($stext) + 1
		If $funicode Then
			$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
			$ibuffer *= 2
		Else
			$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
		EndIf
		$pbuffer = DllStructGetPtr($tbuffer)
		DllStructSetData($tbuffer, "Text", $stext)
		DllStructSetData($titem, "Text", $pbuffer)
		DllStructSetData($titem, "TextMax", $ibuffer)
	Else
		DllStructSetData($titem, "Text", -1)
	EndIf
	Local $imask = BitOR($lvif_text, $lvif_param)
	If $iimage >= 0 Then $imask = BitOR($imask, $lvif_image)
	DllStructSetData($titem, "Mask", $imask)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "Image", $iimage)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) OR ($stext = -1) Then
			$iret = _sendmessage($hwnd, $lvm_insertitemw, 0, $pitem, 0, "wparam", "ptr")
		Else
			Local $iitem = DllStructGetSize($titem)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iitem
			DllStructSetData($titem, "Text", $ptext)
			_memwrite($tmemmap, $pitem, $pmemory, $iitem)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_insertitemw, 0, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_insertitema, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_insertitemw, 0, $pitem)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_insertitema, 0, $pitem)
		EndIf
	EndIf
	Return $iret
EndFunc

Func _guictrllistview_insertmarkhittest($hwnd, $ix = -1, $iy = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $imode = Opt("MouseCoordMode", 1)
	Local $apos = MouseGetPos()
	Opt("MouseCoordMode", $imode)
	Local $tpoint = DllStructCreate($tagpoint)
	DllStructSetData($tpoint, "X", $apos[0])
	DllStructSetData($tpoint, "Y", $apos[1])
	Local $aresult = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $hwnd, "ptr", DllStructGetPtr($tpoint))
	If @error Then Return SetError(@error, @extended, 0)
	If $aresult[0] = 0 Then Return 0
	If $ix = -1 Then $ix = DllStructGetData($tpoint, "X")
	If $iy = -1 Then $iy = DllStructGetData($tpoint, "Y")
	Local $ppoint = DllStructGetPtr($tpoint)
	Local $tmark = DllStructCreate($taglvinsertmark)
	Local $pmark = DllStructGetPtr($tmark)
	Local $imark = DllStructGetSize($tmark)
	DllStructSetData($tpoint, "X", $ix)
	DllStructSetData($tpoint, "Y", $iy)
	DllStructSetData($tmark, "Size", $imark)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_insertmarkhittest, $ppoint, $pmark, 0, "wparam", "ptr")
		Else
			Local $ipoint = DllStructGetSize($tpoint)
			Local $tmemmap
			Local $pmemm = _meminit($hwnd, $ipoint + $imark, $tmemmap)
			Local $pmemp = $pmemm + $ipoint
			_memwrite($tmemmap, $pmark, $pmemm, $imark)
			_memwrite($tmemmap, $ppoint, $pmemp, $ipoint)
			_sendmessage($hwnd, $lvm_insertmarkhittest, $pmemp, $pmemm, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemm, $pmark, $imark)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_insertmarkhittest, $ppoint, $pmark)
	EndIf
	Local $atest[2]
	$atest[0] = DllStructGetData($tmark, "Flags") = $lvim_after
	$atest[1] = DllStructGetData($tmark, "Item")
	Return $atest
EndFunc

Func _guictrllistview_isitemvisible($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_isitemvisible, $iindex) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_isitemvisible, $iindex, 0) <> 0
	EndIf
EndFunc

Func _guictrllistview_justifycolumn($hwnd, $iindex, $ialign = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aalign[3] = [$lvcfmt_left, $lvcfmt_right, $lvcfmt_center]
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $tcolumn = DllStructCreate($taglvcolumn)
	Local $pcolumn = DllStructGetPtr($tcolumn)
	If $ialign < 0 OR $ialign > 2 Then $ialign = 0
	Local $imask = $lvcf_fmt
	Local $ifmt = $aalign[$ialign]
	DllStructSetData($tcolumn, "Mask", $imask)
	DllStructSetData($tcolumn, "Fmt", $ifmt)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_setcolumnw, $iindex, $pcolumn, 0, "wparam", "ptr")
		Else
			Local $icolumn = DllStructGetSize($tcolumn)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $icolumn, $tmemmap)
			_memwrite($tmemmap, $pcolumn, $pmemory, $icolumn)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_setcolumnw, $iindex, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_setcolumna, $iindex, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_setcolumnw, $iindex, $pcolumn)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_setcolumna, $iindex, $pcolumn)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_mapidtoindex($hwnd, $iid)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_mapidtoindex, $iid)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_mapidtoindex, $iid, 0)
	EndIf
EndFunc

Func _guictrllistview_mapindextoid($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_mapindextoid, $iindex)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_mapindextoid, $iindex, 0)
	EndIf
EndFunc

Func _guictrllistview_movegroup($hwnd, $igroupid, $iindex = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_movegroup, $igroupid, $iindex)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_movegroup, $igroupid, $iindex)
	EndIf
EndFunc

Func __guictrllistview_overlayimagemasktoindex($imask)
	Return BitShift(BitAND($lvis_overlaymask, $imask), 8)
EndFunc

Func _guictrllistview_redrawitems($hwnd, $ifirst, $ilast)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_redrawitems, $ifirst, $ilast) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_redrawitems, $ifirst, $ilast) <> 0
	EndIf
EndFunc

Func _guictrllistview_registersortcallback($hwnd, $fnumbers = True, $farrows = True)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $hheader = _guictrllistview_getheader($hwnd)
	ReDim $alistviewsortinfo[UBound($alistviewsortinfo) + 1][$illistviewsortinfosize]
	$alistviewsortinfo[0][0] = UBound($alistviewsortinfo) - 1
	Local $iindex = $alistviewsortinfo[0][0]
	$alistviewsortinfo[$iindex][1] = $hwnd
	$alistviewsortinfo[$iindex][2] = DllCallbackRegister("__GUICtrlListView_Sort", "int", "int;int;hwnd")
	$alistviewsortinfo[$iindex][3] = -1
	$alistviewsortinfo[$iindex][4] = -1
	$alistviewsortinfo[$iindex][5] = 1
	$alistviewsortinfo[$iindex][6] = -1
	$alistviewsortinfo[$iindex][7] = 0
	$alistviewsortinfo[$iindex][8] = $fnumbers
	$alistviewsortinfo[$iindex][9] = $farrows
	$alistviewsortinfo[$iindex][10] = $hheader
	Return $alistviewsortinfo[$iindex][2] <> 0
EndFunc

Func _guictrllistview_removeallgroups($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		_sendmessage($hwnd, $lvm_removeallgroups)
	Else
		GUICtrlSendMsg($hwnd, $lvm_removeallgroups, 0, 0)
	EndIf
EndFunc

Func _guictrllistview_removegroup($hwnd, $igroupid)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_removegroup, $igroupid)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_removegroup, $igroupid, 0)
	EndIf
EndFunc

Func __guictrllistview_reversecolororder($icolor)
	Local $tc = Hex(String($icolor), 6)
	Return "0x" & StringMid($tc, 5, 2) & StringMid($tc, 3, 2) & StringMid($tc, 1, 2)
EndFunc

Func _guictrllistview_scroll($hwnd, $idx, $idy)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_scroll, $idx, $idy) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_scroll, $idx, $idy) <> 0
	EndIf
EndFunc

Func _guictrllistview_setbkcolor($hwnd, $icolor)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iret
	If IsHWnd($hwnd) Then
		$iret = _sendmessage($hwnd, $lvm_setbkcolor, 0, $icolor)
		_winapi_invalidaterect($hwnd)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_setbkcolor, 0, $icolor)
		_winapi_invalidaterect(GUICtrlGetHandle($hwnd))
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setbkimage($hwnd, $surl = "", $istyle = 0, $ixoffset = 0, $iyoffset = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	If NOT IsHWnd($hwnd) Then Return SetError($lv_err, $lv_err, False)
	Local $astyle[2] = [$lvbkif_style_normal, $lvbkif_style_tile]
	Local $ibuffer = StringLen($surl) + 1
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	If @error Then Return SetError($lv_err, $lv_err, $lv_err)
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $timage = DllStructCreate($taglvbkimage)
	Local $pimage = DllStructGetPtr($timage)
	Local $iret = 0
	If $surl <> "" Then $iret = $lvbkif_source_url
	$iret = BitOR($iret, $astyle[$istyle])
	DllStructSetData($tbuffer, "Text", $surl)
	DllStructSetData($timage, "Flags", $iret)
	DllStructSetData($timage, "XOffPercent", $ixoffset)
	DllStructSetData($timage, "YOffPercent", $iyoffset)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($timage, "Image", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_setbkimagew, 0, $pimage, 0, "wparam", "ptr")
		Else
			Local $iimage = DllStructGetSize($timage)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iimage + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iimage
			DllStructSetData($timage, "Image", $ptext)
			_memwrite($tmemmap, $pimage, $pmemory, $iimage)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_setbkimagew, 0, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_setbkimagea, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($timage, "Image", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_setbkimagew, 0, $pimage)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_setbkimagea, 0, $pimage)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setcallbackmask($hwnd, $imask)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iflags = 0
	If BitAND($imask, 1) <> 0 Then $iflags = BitOR($iflags, $lvis_cut)
	If BitAND($imask, 2) <> 0 Then $iflags = BitOR($iflags, $lvis_drophilited)
	If BitAND($imask, 4) <> 0 Then $iflags = BitOR($iflags, $lvis_focused)
	If BitAND($imask, 8) <> 0 Then $iflags = BitOR($iflags, $lvis_selected)
	If BitAND($imask, 16) <> 0 Then $iflags = BitOR($iflags, $lvis_overlaymask)
	If BitAND($imask, 32) <> 0 Then $iflags = BitOR($iflags, $lvis_stateimagemask)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setcallbackmask, $iflags) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setcallbackmask, $iflags, 0) <> 0
	EndIf
EndFunc

Func _guictrllistview_setcolumn($hwnd, $iindex, $stext, $iwidth = -1, $ialign = -1, $iimage = -1, $fonright = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $aalign[3] = [$lvcfmt_left, $lvcfmt_right, $lvcfmt_center]
	Local $ibuffer = StringLen($stext) + 1
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $tcolumn = DllStructCreate($taglvcolumn)
	Local $pcolumn = DllStructGetPtr($tcolumn)
	Local $imask = $lvcf_text
	If $ialign < 0 OR $ialign > 2 Then $ialign = 0
	$imask = BitOR($imask, $lvcf_fmt)
	Local $ifmt = $aalign[$ialign]
	If $iwidth <> -1 Then $imask = BitOR($imask, $lvcf_width)
	If $iimage <> -1 Then
		$imask = BitOR($imask, $lvcf_image)
		$ifmt = BitOR($ifmt, $lvcfmt_col_has_images, $lvcfmt_image)
	Else
		$iimage = 0
	EndIf
	If $fonright Then $ifmt = BitOR($ifmt, $lvcfmt_bitmap_on_right)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($tcolumn, "Mask", $imask)
	DllStructSetData($tcolumn, "Fmt", $ifmt)
	DllStructSetData($tcolumn, "CX", $iwidth)
	DllStructSetData($tcolumn, "TextMax", $ibuffer)
	DllStructSetData($tcolumn, "Image", $iimage)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tcolumn, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_setcolumnw, $iindex, $pcolumn, 0, "wparam", "ptr")
		Else
			Local $icolumn = DllStructGetSize($tcolumn)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $icolumn + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $icolumn
			DllStructSetData($tcolumn, "Text", $ptext)
			_memwrite($tmemmap, $pcolumn, $pmemory, $icolumn)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_setcolumnw, $iindex, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_setcolumna, $iindex, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($tcolumn, "Text", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_setcolumnw, $iindex, $pcolumn)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_setcolumna, $iindex, $pcolumn)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setcolumnorder($hwnd, $sorder)
	Local $separatorchar = Opt("GUIDataSeparatorChar")
	Return _guictrllistview_setcolumnorderarray($hwnd, StringSplit($sorder, $separatorchar))
EndFunc

Func _guictrllistview_setcolumnorderarray($hwnd, $aorder)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tbuffer = DllStructCreate("int[" & $aorder[0] & "]")
	Local $pbuffer = DllStructGetPtr($tbuffer)
	For $ii = 1 To $aorder[0]
		DllStructSetData($tbuffer, 1, $aorder[$ii], $ii)
	Next
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_setcolumnorderarray, $aorder[0], $pbuffer, 0, "wparam", "ptr")
		Else
			Local $ibuffer = DllStructGetSize($tbuffer)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ibuffer, $tmemmap)
			_memwrite($tmemmap, $pbuffer, $pmemory, $ibuffer)
			$iret = _sendmessage($hwnd, $lvm_setcolumnorderarray, $aorder[0], $pmemory, 0, "wparam", "ptr")
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_setcolumnorderarray, $aorder[0], $pbuffer)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setcolumnwidth($hwnd, $icol, $iwidth)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setcolumnwidth, $icol, $iwidth)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setcolumnwidth, $icol, $iwidth)
	EndIf
EndFunc

Func _guictrllistview_setextendedlistviewstyle($hwnd, $iexstyle, $iexmask = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iret
	If IsHWnd($hwnd) Then
		$iret = _sendmessage($hwnd, $lvm_setextendedlistviewstyle, $iexmask, $iexstyle)
		_winapi_invalidaterect($hwnd)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_setextendedlistviewstyle, $iexmask, $iexstyle)
		_winapi_invalidaterect(GUICtrlGetHandle($hwnd))
	EndIf
	Return $iret
EndFunc

Func _guictrllistview_setgroupinfo($hwnd, $igroupid, $sheader, $ialign = 0, $istate = $lvgs_normal)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aalign[3] = [$lvga_header_left, $lvga_header_center, $lvga_header_right]
	If $ialign < 0 OR $ialign > 2 Then $ialign = 0
	Local $theader = _winapi_multibytetowidechar($sheader)
	Local $pheader = DllStructGetPtr($theader)
	Local $iheader = StringLen($sheader)
	Local $tgroup = DllStructCreate($taglvgroup)
	Local $pgroup = DllStructGetPtr($tgroup)
	Local $igroup = DllStructGetSize($tgroup)
	Local $imask = BitOR($lvgf_header, $lvgf_align, $lvgf_state)
	DllStructSetData($tgroup, "Size", $igroup)
	DllStructSetData($tgroup, "Mask", $imask)
	DllStructSetData($tgroup, "HeaderMax", $iheader)
	DllStructSetData($tgroup, "Align", $aalign[$ialign])
	DllStructSetData($tgroup, "State", $istate)
	DllStructSetData($tgroup, "StateMask", $istate)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tgroup, "Header", $pheader)
			$iret = _sendmessage($hwnd, $lvm_setgroupinfo, $igroupid, $pgroup)
			DllStructSetData($tgroup, "Mask", $lvgf_groupid)
			DllStructSetData($tgroup, "GroupID", $igroupid)
			_sendmessage($hwnd, $lvm_setgroupinfo, 0, $pgroup)
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $igroup + $iheader, $tmemmap)
			Local $ptext = $pmemory + $igroup
			DllStructSetData($tgroup, "Header", $ptext)
			_memwrite($tmemmap, $pgroup, $pmemory, $igroup)
			_memwrite($tmemmap, $pheader, $ptext, $iheader)
			$iret = _sendmessage($hwnd, $lvm_setgroupinfo, $igroupid, $pmemory)
			DllStructSetData($tgroup, "Mask", $lvgf_groupid)
			DllStructSetData($tgroup, "GroupID", $igroupid)
			_sendmessage($hwnd, $lvm_setgroupinfo, 0, $pmemory)
			_memfree($tmemmap)
		EndIf
		_winapi_invalidaterect($hwnd)
	Else
		DllStructSetData($tgroup, "Header", $pheader)
		$iret = GUICtrlSendMsg($hwnd, $lvm_setgroupinfo, $igroupid, $pgroup)
		DllStructSetData($tgroup, "Mask", $lvgf_groupid)
		DllStructSetData($tgroup, "GroupID", $igroupid)
		GUICtrlSendMsg($hwnd, $lvm_setgroupinfo, 0, $pgroup)
		_winapi_invalidaterect(GUICtrlGetHandle($hwnd))
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_sethotcursor($hwnd, $hcursor)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_sethotcursor, 0, $hcursor, 0, "wparam", "hwnd", "hwnd")
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_sethotcursor, 0, $hcursor)
	EndIf
EndFunc

Func _guictrllistview_sethotitem($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_sethotitem, $iindex)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_sethotitem, $iindex, 0)
	EndIf
EndFunc

Func _guictrllistview_sethovertime($hwnd, $itime)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_sethovertime, 0, $itime)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_sethovertime, 0, $itime)
	EndIf
EndFunc

Func _guictrllistview_seticonspacing($hwnd, $icx, $icy)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iret, $apadding[2]
	If IsHWnd($hwnd) Then
		$iret = _sendmessage($hwnd, $lvm_seticonspacing, 0, _winapi_makelong($icx, $icy))
		_winapi_invalidaterect($hwnd)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_seticonspacing, 0, _winapi_makelong($icx, $icy))
		_winapi_invalidaterect(GUICtrlGetHandle($hwnd))
	EndIf
	$apadding[0] = BitAND($iret, 65535)
	$apadding[1] = BitShift($iret, 16)
	Return $apadding
EndFunc

Func _guictrllistview_setimagelist($hwnd, $hhandle, $itype = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $atype[3] = [$lvsil_normal, $lvsil_small, $lvsil_state]
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setimagelist, $atype[$itype], $hhandle, 0, "wparam", "hwnd", "hwnd")
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setimagelist, $atype[$itype], $hhandle)
	EndIf
EndFunc

Func _guictrllistview_setinfotip($hwnd, $iindex, $stext, $isubitem = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tbuffer = _winapi_multibytetowidechar($stext)
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $ibuffer = StringLen($stext)
	Local $tinfo = DllStructCreate($taglvsetinfotip)
	Local $pinfo = DllStructGetPtr($tinfo)
	Local $iinfo = DllStructGetSize($tinfo)
	DllStructSetData($tinfo, "Size", $iinfo)
	DllStructSetData($tinfo, "Item", $iindex)
	DllStructSetData($tinfo, "SubItem", $isubitem)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($tinfo, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_setinfotip, 0, $pinfo, 0, "wparam", "ptr")
		Else
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iinfo + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iinfo
			DllStructSetData($tinfo, "Text", $ptext)
			_memwrite($tmemmap, $pinfo, $pmemory, $iinfo)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			$iret = _sendmessage($hwnd, $lvm_setinfotip, 0, $pmemory, 0, "wparam", "ptr")
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($tinfo, "Text", $pbuffer)
		$iret = GUICtrlSendMsg($hwnd, $lvm_setinfotip, 0, $pinfo)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setinsertmark($hwnd, $iindex, $fafter = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tmark = DllStructCreate($taglvinsertmark)
	Local $pmark = DllStructGetPtr($tmark)
	Local $imark = DllStructGetSize($tmark)
	DllStructSetData($tmark, "Size", $imark)
	If $fafter Then DllStructSetData($tmark, "Flags", $lvim_after)
	DllStructSetData($tmark, "Item", $iindex)
	DllStructSetData($tmark, "Reserved", 0)
	Local $iret
	If IsHWnd($hwnd) Then
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $imark, $tmemmap)
		_memwrite($tmemmap, $pmark, $pmemory, $imark)
		$iret = _sendmessage($hwnd, $lvm_setinsertmark, 0, $pmemory, 0, "wparam", "ptr")
		_memfree($tmemmap)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_setinsertmark, 0, $pmark)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setinsertmarkcolor($hwnd, $icolor)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setinsertmarkcolor, 0, $icolor)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setinsertmarkcolor, 0, $icolor)
	EndIf
EndFunc

Func _guictrllistview_setitem($hwnd, $stext, $iindex = 0, $isubitem = 0, $iimage = -1, $iparam = -1, $iindent = -1)
	Local $ibuffer = StringLen($stext) + 1
	Local $tbuffer
	If _guictrllistview_getunicodeformat($hwnd) Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taglvitem)
	Local $imask = $lvif_text
	If $iimage <> -1 Then $imask = BitOR($imask, $lvif_image)
	If $iparam <> -1 Then $imask = BitOR($imask, $lvif_param)
	If $iindent <> -1 Then $imask = BitOR($imask, $lvif_indent)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($titem, "Mask", $imask)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "SubItem", $isubitem)
	DllStructSetData($titem, "Text", $pbuffer)
	DllStructSetData($titem, "TextMax", $ibuffer)
	DllStructSetData($titem, "Image", $iimage)
	DllStructSetData($titem, "Param", $iparam)
	DllStructSetData($titem, "Indent", $iindent)
	Return _guictrllistview_setitemex($hwnd, $titem)
EndFunc

Func _guictrllistview_setitemchecked($hwnd, $iindex, $fcheck = True)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $pmemory, $tmemmap, $iret
	Local $titem = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($titem)
	Local $iitem = DllStructGetSize($titem)
	If @error Then Return SetError($lv_err, $lv_err, $lv_err)
	If $iindex <> -1 Then
		DllStructSetData($titem, "Mask", $lvif_state)
		DllStructSetData($titem, "Item", $iindex)
		If ($fcheck) Then
			DllStructSetData($titem, "State", 8192)
		Else
			DllStructSetData($titem, "State", 4096)
		EndIf
		DllStructSetData($titem, "StateMask", 61440)
		If IsHWnd($hwnd) Then
			If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
				Return _sendmessage($hwnd, $lvm_setitemw, 0, $pitem, 0, "wparam", "ptr") <> 0
			Else
				$pmemory = _meminit($hwnd, $iitem, $tmemmap)
				_memwrite($tmemmap, $pitem)
				If $funicode Then
					$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pmemory, 0, "wparam", "ptr")
				Else
					$iret = _sendmessage($hwnd, $lvm_setitema, 0, $pmemory, 0, "wparam", "ptr")
				EndIf
				_memfree($tmemmap)
				Return $iret <> 0
			EndIf
		Else
			If $funicode Then
				Return GUICtrlSendMsg($hwnd, $lvm_setitemw, 0, $pitem) <> 0
			Else
				Return GUICtrlSendMsg($hwnd, $lvm_setitema, 0, $pitem) <> 0
			EndIf
		EndIf
	Else
		For $x = 0 To _guictrllistview_getitemcount($hwnd) - 1
			DllStructSetData($titem, "Mask", $lvif_state)
			DllStructSetData($titem, "Item", $x)
			If ($fcheck) Then
				DllStructSetData($titem, "State", 8192)
			Else
				DllStructSetData($titem, "State", 4096)
			EndIf
			DllStructSetData($titem, "StateMask", 61440)
			If IsHWnd($hwnd) Then
				If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
					If NOT _sendmessage($hwnd, $lvm_setitemw, 0, $pitem, 0, "wparam", "ptr") <> 0 Then Return SetError($lv_err, $lv_err, $lv_err)
				Else
					$pmemory = _meminit($hwnd, $iitem, $tmemmap)
					_memwrite($tmemmap, $pitem)
					If $funicode Then
						$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pmemory, 0, "wparam", "ptr")
					Else
						$iret = _sendmessage($hwnd, $lvm_setitema, 0, $pmemory, 0, "wparam", "ptr")
					EndIf
					_memfree($tmemmap)
					If NOT $iret <> 0 Then Return SetError($lv_err, $lv_err, $lv_err)
				EndIf
			Else
				If $funicode Then
					If NOT GUICtrlSendMsg($hwnd, $lvm_setitemw, 0, $pitem) <> 0 Then Return SetError($lv_err, $lv_err, $lv_err)
				Else
					If NOT GUICtrlSendMsg($hwnd, $lvm_setitema, 0, $pitem) <> 0 Then Return SetError($lv_err, $lv_err, $lv_err)
				EndIf
			EndIf
		Next
		Return True
	EndIf
	Return False
EndFunc

Func _guictrllistview_setitemcount($hwnd, $iitems)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setitemcount, $iitems, BitOR($lvsicf_noinvalidateall, $lvsicf_noscroll)) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setitemcount, $iitems, BitOR($lvsicf_noinvalidateall, $lvsicf_noscroll)) <> 0
	EndIf
EndFunc

Func _guictrllistview_setitemcut($hwnd, $iindex, $fenabled = True)
	Local $istate = 0
	If $fenabled Then $istate = $lvis_cut
	Return _guictrllistview_setitemstate($hwnd, $iindex, $istate, $lvis_cut)
EndFunc

Func _guictrllistview_setitemdrophilited($hwnd, $iindex, $fenabled = True)
	Local $istate = 0
	If $fenabled Then $istate = $lvis_drophilited
	Return _guictrllistview_setitemstate($hwnd, $iindex, $istate, $lvis_drophilited)
EndFunc

Func _guictrllistview_setitemex($hwnd, ByRef $titem)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $pitem = DllStructGetPtr($titem)
	Local $iret
	If IsHWnd($hwnd) Then
		Local $iitem = DllStructGetSize($titem)
		Local $ibuffer = DllStructGetData($titem, "TextMax")
		Local $pbuffer = DllStructGetData($titem, "Text")
		If $funicode Then $ibuffer *= 2
		Local $tmemmap
		Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
		Local $ptext = $pmemory + $iitem
		DllStructSetData($titem, "Text", $ptext)
		_memwrite($tmemmap, $pitem, $pmemory, $iitem)
		If $pbuffer <> 0 Then _memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
		If $funicode Then
			$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pmemory, 0, "wparam", "ptr")
		Else
			$iret = _sendmessage($hwnd, $lvm_setitema, 0, $pmemory, 0, "wparam", "ptr")
		EndIf
		_memfree($tmemmap)
	Else
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_setitemw, 0, $pitem)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_setitema, 0, $pitem)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setitemfocused($hwnd, $iindex, $fenabled = True)
	Local $istate = 0
	If $fenabled Then $istate = $lvis_focused
	Return _guictrllistview_setitemstate($hwnd, $iindex, $istate, $lvis_focused)
EndFunc

Func _guictrllistview_setitemgroupid($hwnd, $iindex, $igroupid)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_groupid)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "GroupID", $igroupid)
	_guictrllistview_setitemex($hwnd, $titem)
EndFunc

Func _guictrllistview_setitemimage($hwnd, $iindex, $iimage, $isubitem = 0)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_image)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "SubItem", $isubitem)
	DllStructSetData($titem, "Image", $iimage)
	Return _guictrllistview_setitemex($hwnd, $titem)
EndFunc

Func _guictrllistview_setitemindent($hwnd, $iindex, $iindent)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_indent)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "Indent", $iindent)
	Return _guictrllistview_setitemex($hwnd, $titem)
EndFunc

Func __guictrllistview_setitemoverlayimage($hwnd, $iindex, $iimage)
	Return _guictrllistview_setitemstate($hwnd, $iindex, __guictrllistview_indextooverlayimagemask($iimage), $lvis_overlaymask)
EndFunc

Func _guictrllistview_setitemparam($hwnd, $iindex, $iparam)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_param)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "Param", $iparam)
	Return _guictrllistview_setitemex($hwnd, $titem)
EndFunc

Func _guictrllistview_setitemposition($hwnd, $iindex, $icx, $icy)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setitemposition, $iindex, _winapi_makelong($icx, $icy)) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setitemposition, $iindex, _winapi_makelong($icx, $icy)) <> 0
	EndIf
EndFunc

Func _guictrllistview_setitemposition32($hwnd, $iindex, $icx, $icy)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tpoint = DllStructCreate($tagpoint)
	Local $ppoint = DllStructGetPtr($tpoint)
	DllStructSetData($tpoint, "X", $icx)
	DllStructSetData($tpoint, "Y", $icy)
	Local $iret
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			$iret = _sendmessage($hwnd, $lvm_setitemposition32, $iindex, $ppoint, 0, "wparam", "ptr")
		Else
			Local $ipoint = DllStructGetSize($tpoint)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $ipoint, $tmemmap)
			_memwrite($tmemmap, $ppoint)
			$iret = _sendmessage($hwnd, $lvm_setitemposition32, $iindex, $pmemory, 0, "wparam", "ptr")
			_memfree($tmemmap)
		EndIf
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_setitemposition32, $iindex, $ppoint)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setitemselected($hwnd, $iindex, $fselected = True, $ffocused = False)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $tstruct = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($tstruct)
	Local $iret, $iselected = 0, $ifocused = 0, $isize, $tmemmap, $pmemory
	If ($fselected = True) Then $iselected = $lvis_selected
	If ($ffocused = True AND $iindex <> -1) Then $ifocused = $lvis_focused
	DllStructSetData($tstruct, "Mask", $lvif_state)
	DllStructSetData($tstruct, "Item", $iindex)
	DllStructSetData($tstruct, "State", BitOR($iselected, $ifocused))
	DllStructSetData($tstruct, "StateMask", BitOR($lvis_selected, $ifocused))
	$isize = DllStructGetSize($tstruct)
	If IsHWnd($hwnd) Then
		$pmemory = _meminit($hwnd, $isize, $tmemmap)
		_memwrite($tmemmap, $pitem, $pmemory, $isize)
		$iret = _sendmessage($hwnd, $lvm_setitemstate, $iindex, $pmemory)
		_memfree($tmemmap)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_setitemstate, $iindex, $pitem)
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setitemstate($hwnd, $iindex, $istate, $istatemask)
	Local $titem = DllStructCreate($taglvitem)
	DllStructSetData($titem, "Mask", $lvif_state)
	DllStructSetData($titem, "Item", $iindex)
	DllStructSetData($titem, "State", $istate)
	DllStructSetData($titem, "StateMask", $istatemask)
	Return _guictrllistview_setitemex($hwnd, $titem) <> 0
EndFunc

Func _guictrllistview_setitemstateimage($hwnd, $iindex, $iimage)
	Return _guictrllistview_setitemstate($hwnd, $iindex, BitShift($iimage, -12), $lvis_stateimagemask)
EndFunc

Func _guictrllistview_setitemtext($hwnd, $iindex, $stext, $isubitem = 0)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $funicode = _guictrllistview_getunicodeformat($hwnd)
	Local $iret
	If $isubitem = -1 Then
		Local $separatorchar = Opt("GUIDataSeparatorChar")
		Local $i_cols = _guictrllistview_getcolumncount($hwnd)
		Local $a_text = StringSplit($stext, $separatorchar)
		If $i_cols > $a_text[0] Then $i_cols = $a_text[0]
		For $i = 1 To $i_cols
			$iret = _guictrllistview_setitemtext($hwnd, $iindex, $a_text[$i], $i - 1)
			If NOT $iret Then ExitLoop
		Next
		Return $iret
	EndIf
	Local $ibuffer = StringLen($stext) + 1
	Local $tbuffer
	If $funicode Then
		$tbuffer = DllStructCreate("wchar Text[" & $ibuffer & "]")
		$ibuffer *= 2
	Else
		$tbuffer = DllStructCreate("char Text[" & $ibuffer & "]")
	EndIf
	Local $pbuffer = DllStructGetPtr($tbuffer)
	Local $titem = DllStructCreate($taglvitem)
	Local $pitem = DllStructGetPtr($titem)
	DllStructSetData($tbuffer, "Text", $stext)
	DllStructSetData($titem, "Mask", $lvif_text)
	DllStructSetData($titem, "item", $iindex)
	DllStructSetData($titem, "SubItem", $isubitem)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			DllStructSetData($titem, "Text", $pbuffer)
			$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pitem, 0, "wparam", "ptr")
		Else
			Local $iitem = DllStructGetSize($titem)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $iitem + $ibuffer, $tmemmap)
			Local $ptext = $pmemory + $iitem
			DllStructSetData($titem, "Text", $ptext)
			_memwrite($tmemmap, $pitem, $pmemory, $iitem)
			_memwrite($tmemmap, $pbuffer, $ptext, $ibuffer)
			If $funicode Then
				$iret = _sendmessage($hwnd, $lvm_setitemw, 0, $pmemory, 0, "wparam", "ptr")
			Else
				$iret = _sendmessage($hwnd, $lvm_setitema, 0, $pmemory, 0, "wparam", "ptr")
			EndIf
			_memfree($tmemmap)
		EndIf
	Else
		DllStructSetData($titem, "Text", $pbuffer)
		If $funicode Then
			$iret = GUICtrlSendMsg($hwnd, $lvm_setitemw, 0, $pitem)
		Else
			$iret = GUICtrlSendMsg($hwnd, $lvm_setitema, 0, $pitem)
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_setoutlinecolor($hwnd, $icolor)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setoutlinecolor, 0, $icolor)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setoutlinecolor, 0, $icolor)
	EndIf
EndFunc

Func _guictrllistview_setselectedcolumn($hwnd, $icol)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		_sendmessage($hwnd, $lvm_setselectedcolumn, $icol)
		_winapi_invalidaterect($hwnd)
	Else
		GUICtrlSendMsg($hwnd, $lvm_setselectedcolumn, $icol, 0)
		_winapi_invalidaterect(GUICtrlGetHandle($hwnd))
	EndIf
EndFunc

Func _guictrllistview_setselectionmark($hwnd, $iindex)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setselectionmark, 0, $iindex)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setselectionmark, 0, $iindex)
	EndIf
EndFunc

Func _guictrllistview_settextbkcolor($hwnd, $icolor)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_settextbkcolor, 0, $icolor) <> 0
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_settextbkcolor, 0, $icolor) <> 0
	EndIf
EndFunc

Func _guictrllistview_settextcolor($hwnd, $icolor)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $iret
	If IsHWnd($hwnd) Then
		$iret = _sendmessage($hwnd, $lvm_settextcolor, 0, $icolor)
		_winapi_invalidaterect($hwnd)
	Else
		$iret = GUICtrlSendMsg($hwnd, $lvm_settextcolor, 0, $icolor)
		_winapi_invalidaterect(GUICtrlGetHandle($hwnd))
	EndIf
	Return $iret <> 0
EndFunc

Func _guictrllistview_settooltips($hwnd, $htooltip)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return HWnd(_sendmessage($hwnd, $lvm_settooltips, 0, $htooltip, 0, "wparam", "hwnd", "hwnd"))
	Else
		Return HWnd(GUICtrlSendMsg($hwnd, $lvm_settooltips, 0, $htooltip))
	EndIf
EndFunc

Func _guictrllistview_setunicodeformat($hwnd, $funicode)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setunicodeformat, $funicode)
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setunicodeformat, $funicode, 0)
	EndIf
EndFunc

Func _guictrllistview_setview($hwnd, $iview)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $aview[5] = [$lv_view_details, $lv_view_icon, $lv_view_list, $lv_view_smallicon, $lv_view_tile]
	If IsHWnd($hwnd) Then
		Return _sendmessage($hwnd, $lvm_setview, $aview[$iview]) <> -1
	Else
		Return GUICtrlSendMsg($hwnd, $lvm_setview, $aview[$iview], 0) <> -1
	EndIf
EndFunc

Func _guictrllistview_setworkareas($hwnd, $ileft, $itop, $iright, $ibottom)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $trect = DllStructCreate($tagrect)
	Local $prect = DllStructGetPtr($trect)
	DllStructSetData($trect, "Left", $ileft)
	DllStructSetData($trect, "Top", $itop)
	DllStructSetData($trect, "Right", $iright)
	DllStructSetData($trect, "Bottom", $ibottom)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_setworkareas, 1, $prect, 0, "wparam", "ptr")
		Else
			Local $irect = DllStructGetSize($trect)
			Local $tmemmap
			Local $pmemory = _meminit($hwnd, $irect, $tmemmap)
			_memwrite($tmemmap, $prect, $pmemory, $irect)
			_sendmessage($hwnd, $lvm_setworkareas, 1, $pmemory, 0, "wparam", "ptr")
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_setworkareas, 1, $prect)
	EndIf
EndFunc

Func _guictrllistview_simplesort($hwnd, ByRef $vdescending, $icol)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If _guictrllistview_getitemcount($hwnd) Then
		Local $b_desc
		If (IsArray($vdescending)) Then
			$b_desc = $vdescending[$icol]
		Else
			$b_desc = $vdescending
		EndIf
		Local $columns = _guictrllistview_getcolumncount($hwnd)
		Local $items = _guictrllistview_getitemcount($hwnd)
		Local $temp_item = ""
		Local $separatorchar = Opt("GUIDataSeparatorChar")
		For $x = 1 To $columns
			$temp_item = $temp_item & " " & $separatorchar
		Next
		$temp_item = StringTrimRight($temp_item, 1)
		Local $a_lv[$items][$columns + 1]
		Local $i_selected = StringSplit(_guictrllistview_getselectedindices($hwnd), $separatorchar)
		Local $v_item, $ifocused = -1
		For $x = 0 To UBound($a_lv) - 1 Step 1
			If $ifocused = -1 Then
				If _guictrllistview_getitemfocused($hwnd, $x) Then $ifocused = $x
			EndIf
			_guictrllistview_setitemselected($hwnd, $x, False)
			For $y = 0 To UBound($a_lv, 2) - 2 Step 1
				$v_item = StringStripWS(_guictrllistview_getitemtext($hwnd, $x, $y), 2)
				If (StringIsFloat($v_item) OR StringIsInt($v_item)) Then
					$a_lv[$x][$y] = Number($v_item)
				Else
					$a_lv[$x][$y] = $v_item
				EndIf
			Next
			$a_lv[$x][$y] = $x
		Next
		_arraysort($a_lv, $b_desc, 0, 0, $icol)
		For $x = 0 To UBound($a_lv) - 1 Step 1
			For $y = 0 To UBound($a_lv, 2) - 2 Step 1
				_guictrllistview_setitemtext($hwnd, $x, $a_lv[$x][$y], $y)
			Next
			For $z = 1 To $i_selected[0]
				If $a_lv[$x][UBound($a_lv, 2) - 1] = $i_selected[$z] Then
					If $a_lv[$x][UBound($a_lv, 2) - 1] = $ifocused Then
						_guictrllistview_setitemselected($hwnd, $x, True, True)
					Else
						_guictrllistview_setitemselected($hwnd, $x, True)
					EndIf
					ExitLoop
				EndIf
			Next
		Next
		If (IsArray($vdescending)) Then
			$vdescending[$icol] = NOT $b_desc
		Else
			$vdescending = NOT $b_desc
		EndIf
	EndIf
EndFunc

Func __guictrllistview_sort($nitem1, $nitem2, $hwnd)
	Local $iindex, $tinfo, $val1, $val2, $nresult
	$tinfo = DllStructCreate($taglvfindinfo)
	DllStructSetData($tinfo, "Flags", $lvfi_param)
	For $x = 1 To $alistviewsortinfo[0][0]
		If $hwnd = $alistviewsortinfo[$x][1] Then
			$iindex = $x
			ExitLoop
		EndIf
	Next
	If $alistviewsortinfo[$iindex][3] = $alistviewsortinfo[$iindex][4] Then
		If NOT $alistviewsortinfo[$iindex][7] Then
			$alistviewsortinfo[$iindex][5] *= -1
			$alistviewsortinfo[$iindex][7] = 1
		EndIf
	Else
		$alistviewsortinfo[$iindex][7] = 1
	EndIf
	$alistviewsortinfo[$iindex][6] = $alistviewsortinfo[$iindex][3]
	DllStructSetData($tinfo, "Param", $nitem1)
	$val1 = _guictrllistview_finditem($hwnd, -1, $tinfo)
	DllStructSetData($tinfo, "Param", $nitem2)
	$val2 = _guictrllistview_finditem($hwnd, -1, $tinfo)
	$val1 = _guictrllistview_getitemtext($hwnd, $val1, $alistviewsortinfo[$iindex][3])
	$val2 = _guictrllistview_getitemtext($hwnd, $val2, $alistviewsortinfo[$iindex][3])
	If $alistviewsortinfo[$iindex][8] Then
		If (StringIsFloat($val1) OR StringIsInt($val1)) Then $val1 = Number($val1)
		If (StringIsFloat($val2) OR StringIsInt($val2)) Then $val2 = Number($val2)
	EndIf
	$nresult = 0
	If $val1 < $val2 Then
		$nresult = -1
	ElseIf $val1 > $val2 Then
		$nresult = 1
	EndIf
	$nresult = $nresult * $alistviewsortinfo[$iindex][5]
	Return $nresult
EndFunc

Func _guictrllistview_sortitems($hwnd, $icol)
	Local $iret, $iindex, $pfunction, $hheader, $iformat
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	For $x = 1 To $alistviewsortinfo[0][0]
		If $hwnd = $alistviewsortinfo[$x][1] Then
			$iindex = $x
			ExitLoop
		EndIf
	Next
	$pfunction = DllCallbackGetPtr($alistviewsortinfo[$iindex][2])
	$alistviewsortinfo[$iindex][3] = $icol
	$alistviewsortinfo[$iindex][7] = 0
	$alistviewsortinfo[$iindex][4] = $alistviewsortinfo[$iindex][6]
	$iret = _sendmessage($hwnd, $lvm_sortitems, $hwnd, $pfunction, 0, "hwnd", "ptr")
	If $iret <> 0 Then
		If $alistviewsortinfo[$iindex][9] Then
			$hheader = $alistviewsortinfo[$iindex][10]
			For $x = 0 To _guictrlheader_getitemcount($hheader) - 1
				$iformat = _guictrlheader_getitemformat($hheader, $x)
				If BitAND($iformat, $hdf_sortdown) Then
					_guictrlheader_setitemformat($hheader, $x, BitXOR($iformat, $hdf_sortdown))
				ElseIf BitAND($iformat, $hdf_sortup) Then
					_guictrlheader_setitemformat($hheader, $x, BitXOR($iformat, $hdf_sortup))
				EndIf
			Next
			$iformat = _guictrlheader_getitemformat($hheader, $icol)
			If $alistviewsortinfo[$iindex][5] = 1 Then
				_guictrlheader_setitemformat($hheader, $icol, BitOR($iformat, $hdf_sortup))
			Else
				_guictrlheader_setitemformat($hheader, $icol, BitOR($iformat, $hdf_sortdown))
			EndIf
		EndIf
	EndIf
	Return $iret <> 0
EndFunc

Func __guictrllistview_stateimagemasktoindex($imask)
	Return BitShift(BitAND($imask, $lvis_stateimagemask), 12)
EndFunc

Func _guictrllistview_subitemhittest($hwnd, $ix = -1, $iy = -1)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	Local $itest, $ptest, $ttest, $pmemory, $tmemmap, $iflags, $atest[11]
	If $ix = -1 Then $ix = _winapi_getmouseposx(True, $hwnd)
	If $iy = -1 Then $iy = _winapi_getmouseposy(True, $hwnd)
	$ttest = DllStructCreate($taglvhittestinfo)
	$ptest = DllStructGetPtr($ttest)
	DllStructSetData($ttest, "X", $ix)
	DllStructSetData($ttest, "Y", $iy)
	If IsHWnd($hwnd) Then
		If _winapi_inprocess($hwnd, $_lv_ghlastwnd) Then
			_sendmessage($hwnd, $lvm_subitemhittest, 0, $ptest, 0, "wparam", "ptr")
		Else
			$itest = DllStructGetSize($ttest)
			$pmemory = _meminit($hwnd, $itest, $tmemmap)
			_memwrite($tmemmap, $ptest)
			_sendmessage($hwnd, $lvm_subitemhittest, 0, $pmemory, 0, "wparam", "ptr")
			_memread($tmemmap, $pmemory, $ptest, $itest)
			_memfree($tmemmap)
		EndIf
	Else
		GUICtrlSendMsg($hwnd, $lvm_subitemhittest, 0, $ptest)
	EndIf
	$iflags = DllStructGetData($ttest, "Flags")
	$atest[0] = DllStructGetData($ttest, "Item")
	$atest[1] = DllStructGetData($ttest, "SubItem")
	$atest[2] = BitAND($iflags, $lvht_nowhere) <> 0
	$atest[3] = BitAND($iflags, $lvht_onitemicon) <> 0
	$atest[4] = BitAND($iflags, $lvht_onitemlabel) <> 0
	$atest[5] = BitAND($iflags, $lvht_onitemstateicon) <> 0
	$atest[6] = BitAND($iflags, $lvht_onitem) <> 0
	$atest[7] = BitAND($iflags, $lvht_above) <> 0
	$atest[8] = BitAND($iflags, $lvht_below) <> 0
	$atest[9] = BitAND($iflags, $lvht_toleft) <> 0
	$atest[10] = BitAND($iflags, $lvht_toright) <> 0
	Return $atest
EndFunc

Func _guictrllistview_unregistersortcallback($hwnd)
	If $debug_lv Then __udf_validateclassname($hwnd, $__listviewconstant_classname)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	For $x = 1 To $alistviewsortinfo[0][0]
		If $hwnd = $alistviewsortinfo[$x][1] Then
			DllCallbackFree($alistviewsortinfo[$x][2])
			__guictrllistview_arraydelete($alistviewsortinfo, $x)
			$alistviewsortinfo[0][0] -= 1
			ExitLoop
		EndIf
	Next
EndFunc

Func _filecountlines($sfilepath)
	Local $hfile = FileOpen($sfilepath, $fo_read)
	If $hfile = -1 Then Return SetError(1, 0, 0)
	Local $sfilecontent = StringStripWS(FileRead($hfile), 2)
	FileClose($hfile)
	Local $atmp
	If StringInStr($sfilecontent, @LF) Then
		$atmp = StringSplit(StringStripCR($sfilecontent), @LF)
	ElseIf StringInStr($sfilecontent, @CR) Then
		$atmp = StringSplit($sfilecontent, @CR)
	Else
		If StringLen($sfilecontent) Then
			Return 1
		Else
			Return SetError(2, 0, 0)
		EndIf
	EndIf
	Return $atmp[0]
EndFunc

Func _filecreate($sfilepath)
	Local $hopenfile = FileOpen($sfilepath, $fo_overwrite)
	If $hopenfile = -1 Then Return SetError(1, 0, 0)
	Local $hwritefile = FileWrite($hopenfile, "")
	FileClose($hopenfile)
	If $hwritefile = -1 Then Return SetError(2, 0, 0)
	Return 1
EndFunc

Func _filelisttoarray($spath, $sfilter = "*", $iflag = 0)
	Local $hsearch, $sfile, $sfilelist, $sdelim = "|"
	$spath = StringRegExpReplace($spath, "[\\/]+\z", "") & "\"
	If NOT FileExists($spath) Then Return SetError(1, 1, "")
	If StringRegExp($sfilter, "[\\/:><\|]|(?s)\A\s*\z") Then Return SetError(2, 2, "")
	If NOT ($iflag = 0 OR $iflag = 1 OR $iflag = 2) Then Return SetError(3, 3, "")
	$hsearch = FileFindFirstFile($spath & $sfilter)
	If @error Then Return SetError(4, 4, "")
	While 1
		$sfile = FileFindNextFile($hsearch)
		If @error Then ExitLoop
		If ($iflag + @extended = 2) Then ContinueLoop
		$sfilelist &= $sdelim & $sfile
	WEnd
	FileClose($hsearch)
	If NOT $sfilelist Then Return SetError(4, 4, "")
	Return StringSplit(StringTrimLeft($sfilelist, 1), "|")
EndFunc

Func _fileprint($s_file, $i_show = @SW_HIDE)
	Local $a_ret = DllCall("shell32.dll", "int", "ShellExecuteW", "hwnd", 0, "wstr", "print", "wstr", $s_file, "wstr", "", "wstr", "", "int", $i_show)
	If @error Then Return SetError(@error, @extended, 0)
	If $a_ret[0] <= 32 Then Return SetError(10, $a_ret[0], 0)
	Return 1
EndFunc

Func _filereadtoarray($sfilepath, ByRef $aarray)
	Local $hfile = FileOpen($sfilepath, $fo_read)
	If $hfile = -1 Then Return SetError(1, 0, 0)
	Local $afile = FileRead($hfile, FileGetSize($sfilepath))
	If StringRight($afile, 1) = @LF Then $afile = StringTrimRight($afile, 1)
	If StringRight($afile, 1) = @CR Then $afile = StringTrimRight($afile, 1)
	FileClose($hfile)
	If StringInStr($afile, @LF) Then
		$aarray = StringSplit(StringStripCR($afile), @LF)
	ElseIf StringInStr($afile, @CR) Then
		$aarray = StringSplit($afile, @CR)
	Else
		If StringLen($afile) Then
			Dim $aarray[2] = [1, $afile]
		Else
			Return SetError(2, 0, 0)
		EndIf
	EndIf
	Return 1
EndFunc

Func _filewritefromarray($file, $a_array, $i_base = 0, $i_ubound = 0)
	If NOT IsArray($a_array) Then Return SetError(2, 0, 0)
	Local $last = UBound($a_array) - 1
	If $i_ubound < 1 OR $i_ubound > $last Then $i_ubound = $last
	If $i_base < 0 OR $i_base > $last Then $i_base = 0
	Local $hfile
	If IsString($file) Then
		$hfile = FileOpen($file, $fo_overwrite)
	Else
		$hfile = $file
	EndIf
	If $hfile = -1 Then Return SetError(1, 0, 0)
	Local $errorsav = 0
	For $x = $i_base To $i_ubound
		If FileWrite($hfile, $a_array[$x] & @CRLF) = 0 Then
			$errorsav = 3
			ExitLoop
		EndIf
	Next
	If IsString($file) Then FileClose($hfile)
	If $errorsav Then Return SetError($errorsav, 0, 0)
	Return 1
EndFunc

Func _filewritelog($slogpath, $slogmsg, $iflag = -1)
	Local $iopenmode = $fo_append
	Local $sdatenow = @YEAR & "-" & @MON & "-" & @MDAY
	Local $stimenow = @HOUR & ":" & @MIN & ":" & @SEC
	Local $smsg = $sdatenow & " " & $stimenow & " : " & $slogmsg
	If $iflag <> -1 Then
		$smsg &= @CRLF & FileRead($slogpath)
		$iopenmode = $fo_overwrite
	EndIf
	Local $hopenfile = FileOpen($slogpath, $iopenmode)
	If $hopenfile = -1 Then Return SetError(1, 0, 0)
	Local $iwritefile = FileWriteLine($hopenfile, $smsg)
	Local $iret = FileClose($hopenfile)
	If $iwritefile = -1 Then Return SetError(2, $iret, 0)
	Return $iret
EndFunc

Func _filewritetoline($sfile, $iline, $stext, $foverwrite = 0)
	If $iline <= 0 Then Return SetError(4, 0, 0)
	If NOT IsString($stext) Then
		$stext = String($stext)
		If $stext = "" Then Return SetError(6, 0, 0)
	EndIf
	If $foverwrite <> 0 AND $foverwrite <> 1 Then Return SetError(5, 0, 0)
	If NOT FileExists($sfile) Then Return SetError(2, 0, 0)
	Local $sread_file = FileRead($sfile)
	Local $asplit_file = StringSplit(StringStripCR($sread_file), @LF)
	If UBound($asplit_file) < $iline Then Return SetError(1, 0, 0)
	Local $hfile = FileOpen($sfile, $fo_overwrite)
	If $hfile = -1 Then Return SetError(3, 0, 0)
	$sread_file = ""
	For $i = 1 To $asplit_file[0]
		If $i = $iline Then
			If $foverwrite = 1 Then
				If $stext <> "" Then $sread_file &= $stext & @CRLF
			Else
				$sread_file &= $stext & @CRLF & $asplit_file[$i] & @CRLF
			EndIf
		ElseIf $i < $asplit_file[0] Then
			$sread_file &= $asplit_file[$i] & @CRLF
		ElseIf $i = $asplit_file[0] Then
			$sread_file &= $asplit_file[$i]
		EndIf
	Next
	FileWrite($hfile, $sread_file)
	FileClose($hfile)
	Return 1
EndFunc

Func _pathfull($srelativepath, $sbasepath = @WorkingDir)
	If NOT $srelativepath OR $srelativepath = "." Then Return $sbasepath
	Local $sfullpath = StringReplace($srelativepath, "/", "\")
	Local Const $sfullpathconst = $sfullpath
	Local $spath
	Local $brootonly = StringLeft($sfullpath, 1) = "\" AND StringMid($sfullpath, 2, 1) <> "\"
	For $i = 1 To 2
		$spath = StringLeft($sfullpath, 2)
		If $spath = "\\" Then
			$sfullpath = StringTrimLeft($sfullpath, 2)
			Local $nserverlen = StringInStr($sfullpath, "\") - 1
			$spath = "\\" & StringLeft($sfullpath, $nserverlen)
			$sfullpath = StringTrimLeft($sfullpath, $nserverlen)
			ExitLoop
		ElseIf StringRight($spath, 1) = ":" Then
			$sfullpath = StringTrimLeft($sfullpath, 2)
			ExitLoop
		Else
			$sfullpath = $sbasepath & "\" & $sfullpath
		EndIf
	Next
	If $i = 3 Then Return ""
	If StringLeft($sfullpath, 1) <> "\" Then
		If StringLeft($sfullpathconst, 2) = StringLeft($sbasepath, 2) Then
			$sfullpath = $sbasepath & "\" & $sfullpath
		Else
			$sfullpath = "\" & $sfullpath
		EndIf
	EndIf
	Local $atemp = StringSplit($sfullpath, "\")
	Local $apathparts[$atemp[0]], $j = 0
	For $i = 2 To $atemp[0]
		If $atemp[$i] = ".." Then
			If $j Then $j -= 1
		ElseIf NOT ($atemp[$i] = "" AND $i <> $atemp[0]) AND $atemp[$i] <> "." Then
			$apathparts[$j] = $atemp[$i]
			$j += 1
		EndIf
	Next
	$sfullpath = $spath
	If NOT $brootonly Then
		For $i = 0 To $j - 1
			$sfullpath &= "\" & $apathparts[$i]
		Next
	Else
		$sfullpath &= $sfullpathconst
		If StringInStr($sfullpath, "..") Then $sfullpath = _pathfull($sfullpath)
	EndIf
	While StringInStr($sfullpath, ".\")
		$sfullpath = StringReplace($sfullpath, ".\", "\")
	WEnd
	Return $sfullpath
EndFunc

Func _pathgetrelative($sfrom, $sto)
	If StringRight($sfrom, 1) <> "\" Then $sfrom &= "\"
	If StringRight($sto, 1) <> "\" Then $sto &= "\"
	If $sfrom = $sto Then Return SetError(1, 0, StringTrimRight($sto, 1))
	Local $asfrom = StringSplit($sfrom, "\")
	Local $asto = StringSplit($sto, "\")
	If $asfrom[1] <> $asto[1] Then Return SetError(2, 0, StringTrimRight($sto, 1))
	Local $i = 2
	Local $idiff = 1
	While 1
		If $asfrom[$i] <> $asto[$i] Then
			$idiff = $i
			ExitLoop
		EndIf
		$i += 1
	WEnd
	$i = 1
	Local $srelpath = ""
	For $j = 1 To $asto[0]
		If $i >= $idiff Then
			$srelpath &= "\" & $asto[$i]
		EndIf
		$i += 1
	Next
	$srelpath = StringTrimLeft($srelpath, 1)
	$i = 1
	For $j = 1 To $asfrom[0]
		If $i > $idiff Then
			$srelpath = "..\" & $srelpath
		EndIf
		$i += 1
	Next
	If StringRight($srelpath, 1) == "\" Then $srelpath = StringTrimRight($srelpath, 1)
	Return $srelpath
EndFunc

Func _pathmake($szdrive, $szdir, $szfname, $szext)
	If StringLen($szdrive) Then
		If NOT (StringLeft($szdrive, 2) = "\\") Then $szdrive = StringLeft($szdrive, 1) & ":"
	EndIf
	If StringLen($szdir) Then
		If NOT (StringRight($szdir, 1) = "\") AND NOT (StringRight($szdir, 1) = "/") Then $szdir = $szdir & "\"
	EndIf
	If StringLen($szext) Then
		If NOT (StringLeft($szext, 1) = ".") Then $szext = "." & $szext
	EndIf
	Return $szdrive & $szdir & $szfname & $szext
EndFunc

Func _pathsplit($szpath, ByRef $szdrive, ByRef $szdir, ByRef $szfname, ByRef $szext)
	Local $drive = ""
	Local $dir = ""
	Local $fname = ""
	Local $ext = ""
	Local $pos
	Local $array[5]
	$array[0] = $szpath
	If StringMid($szpath, 2, 1) = ":" Then
		$drive = StringLeft($szpath, 2)
		$szpath = StringTrimLeft($szpath, 2)
	ElseIf StringLeft($szpath, 2) = "\\" Then
		$szpath = StringTrimLeft($szpath, 2)
		$pos = StringInStr($szpath, "\")
		If $pos = 0 Then $pos = StringInStr($szpath, "/")
		If $pos = 0 Then
			$drive = "\\" & $szpath
			$szpath = ""
		Else
			$drive = "\\" & StringLeft($szpath, $pos - 1)
			$szpath = StringTrimLeft($szpath, $pos - 1)
		EndIf
	EndIf
	Local $nposforward = StringInStr($szpath, "/", 0, -1)
	Local $nposbackward = StringInStr($szpath, "\", 0, -1)
	If $nposforward >= $nposbackward Then
		$pos = $nposforward
	Else
		$pos = $nposbackward
	EndIf
	$dir = StringLeft($szpath, $pos)
	$fname = StringRight($szpath, StringLen($szpath) - $pos)
	If StringLen($dir) = 0 Then $fname = $szpath
	$pos = StringInStr($fname, ".", 0, -1)
	If $pos Then
		$ext = StringRight($fname, StringLen($fname) - ($pos - 1))
		$fname = StringLeft($fname, $pos - 1)
	EndIf
	$szdrive = $drive
	$szdir = $dir
	$szfname = $fname
	$szext = $ext
	$array[1] = $drive
	$array[2] = $dir
	$array[3] = $fname
	$array[4] = $ext
	Return $array
EndFunc

Func _replacestringinfile($szfilename, $szsearchstring, $szreplacestring, $fcaseness = 0, $foccurance = 1)
	Local $iretval = 0
	Local $ncount, $sendswith
	If StringInStr(FileGetAttrib($szfilename), "R") Then Return SetError(6, 0, -1)
	Local $hfile = FileOpen($szfilename, $fo_read)
	If $hfile = -1 Then Return SetError(1, 0, -1)
	Local $s_totfile = FileRead($hfile, FileGetSize($szfilename))
	If StringRight($s_totfile, 2) = @CRLF Then
		$sendswith = @CRLF
	ElseIf StringRight($s_totfile, 1) = @CR Then
		$sendswith = @CR
	ElseIf StringRight($s_totfile, 1) = @LF Then
		$sendswith = @LF
	Else
		$sendswith = ""
	EndIf
	Local $afilelines = StringSplit(StringStripCR($s_totfile), @LF)
	FileClose($hfile)
	Local $hwritehandle = FileOpen($szfilename, $fo_overwrite)
	If $hwritehandle = -1 Then Return SetError(2, 0, -1)
	For $ncount = 1 To $afilelines[0]
		If StringInStr($afilelines[$ncount], $szsearchstring, $fcaseness) Then
			$afilelines[$ncount] = StringReplace($afilelines[$ncount], $szsearchstring, $szreplacestring, 1 - $foccurance, $fcaseness)
			$iretval = $iretval + 1
			If $foccurance = 0 Then
				$iretval = 1
				ExitLoop
			EndIf
		EndIf
	Next
	For $ncount = 1 To $afilelines[0] - 1
		If FileWriteLine($hwritehandle, $afilelines[$ncount]) = 0 Then
			FileClose($hwritehandle)
			Return SetError(3, 0, -1)
		EndIf
	Next
	If $afilelines[$ncount] <> "" Then FileWrite($hwritehandle, $afilelines[$ncount] & $sendswith)
	FileClose($hwritehandle)
	Return $iretval
EndFunc

Func _tempfile($s_directoryname = @TempDir, $s_fileprefix = "~", $s_fileextension = ".tmp", $i_randomlength = 7)
	If NOT FileExists($s_directoryname) Then $s_directoryname = @TempDir
	If NOT FileExists($s_directoryname) Then $s_directoryname = @ScriptDir
	If StringRight($s_directoryname, 1) <> "\" Then $s_directoryname = $s_directoryname & "\"
	Local $s_tempname
	Do
		$s_tempname = ""
		While StringLen($s_tempname) < $i_randomlength
			$s_tempname = $s_tempname & Chr(Random(97, 122, 1))
		WEnd
		$s_tempname = $s_directoryname & $s_fileprefix & $s_tempname & $s_fileextension
	Until NOT FileExists($s_tempname)
	Return $s_tempname
EndFunc

setprivilege("SeDebugPrivilege", 1)
$wowprocesslist = ProcessList("wow.exe")
$wowpid1 = ProcessExists("wow.exe")
$dll = DllOpen("user32.dll")
Global Const $pi = 3.14159265
Global Const $timespeedorg = 0.0166666693985462
Global $setting = @ScriptDir & "\thhh_settings\thhh_Settings.ini"
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
#Region ### GUI ###
	$thhhgui = GUICreate("The Hitchhiker's Hack", 332, 655, -1, -1)
	GUISetBkColor(15724527)
	$ontop = GUICtrlCreateCheckbox("Checkbox", 5, 5, 15, 15)
	$priveontop = GUICtrlCreateLabel("Premier plan", 25, 5, 60, 15, $ws_ex_transparent)
	$guitrans = GUICtrlCreateCheckbox("Checkbox", 5, 25, 15, 15)
	$transparencegeneral = GUICtrlCreateLabel("Transparence", 25, 25, 70, 15)
	$reset = GUICtrlCreateButton("Reset", 210, 3, 50, 50, $ws_group)
	$about = GUICtrlCreateButton("A propos..", 131, 3, 74, 30, $ws_group)
	$state = GUICtrlCreateLabel("", 10, 638, 312, 17)
	GUICtrlSetFont(-1, 9, 600)
	$optionsbutton = GUICtrlCreateButton("Options", 131, 32, 74, 20, $ws_group)
	$wowprocesslistview = GUICtrlCreateListView("WoW|", 266, 1, 65, 73, $lvs_singlesel)
	For $i = 1 To $wowprocesslist[0][0]
		GUICtrlCreateListViewItem($wowprocesslist[$i][1], $wowprocesslistview)
	Next
	_guictrllistview_setcolumnwidth($wowprocesslistview, 0, 40)
	_guictrllistview_setitemselected($wowprocesslistview, 0)
	$selectedpid = _guictrllistview_getselectedindices(GUICtrlGetHandle($wowprocesslistview))
	If $wowpid1 = "" Then
		MsgBox(0, "", "Wow n'est pas lancé")
		Exit
	Else
		$wowprocesslistviewitemcountsave = _guictrllistview_getitemcount($wowprocesslistview)
		$selectedpidadd = ($selectedpid + 1)
		$wowpid = $wowprocesslist[$selectedpidadd][1]
		$wowprocess = _memoryopen($wowpid)
	EndIf
	$pb1 = _memoryread($staticplayer, $wowprocess, "Ptr")
	$pb2 = _memoryread($pb1 + $pbpointer1, $wowprocess, "Ptr")
	$playerbase = _memoryread($pb2 + $pbpointer2, $wowprocess, "Ptr")
	$playerbase2 = _memoryread($playerbase + 8, $wowprocess, "Ptr")
	$playerscalevar = _memoryread($playerbase + $playerscale, $wowprocess, "float")
	$playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
	$playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
	$sautvar = _memoryread($playerbase + $hauteursaut, $wowprocess, "float")
	_memorywrite($playerbase2 + $hunt, $wowprocess, 0)
	_memorywrite($playerbase2 + $ressources, $wowprocess, 0)
	$playerhauteurreset = $playerhauteurvar
	$playerlargeurreset = $playerlargeurvar
	$playerbasead2 = _memoryread(($playerbase + $playerbase_ad2), $wowprocess, "ptr")
	$ofs_pbspectate = $playerbasead2 + $playerbase_pbspectate
	$lvl1camerapointer = _memoryread($cam_camerastatic, $wowprocess, "ptr")
	$lvl2camerapointer = _memoryread(($lvl1camerapointer + $cam_cameraoffsa), $wowprocess, "ptr")
	$memorycam = $lvl2camerapointer + $cam_cameraoffsb
	$memorycamrotz = $memorycam + $cam_camerarotz
	$memorycamrotx = $memorycam + $cam_camerarotx
	$tab = GUICtrlCreateTab(0, 55, 332, 635)
	$tab0 = GUICtrlCreateTabItem("Fonctions (Privé)")
	If IniRead($setting, "Reglages", "Interface", "Erreur") = 1 Then
		GUICtrlCreatePic(@ScriptDir & "\thhh_settings\skin\top.jpg", 0, 0, 332, 55, BitOR($ws_group, $ws_clipsiblings))
		GUICtrlCreatePic(@ScriptDir & "\thhh_settings\skin\mid_priv.jpg", 0, 76, 330, 560, $ws_group)
		$priveteleportationgrp = GUICtrlCreateLabel("Téléportation", 167, 80, 75, 17)
		$privepvpgrp = GUICtrlCreateLabel("JcJ", 172, 310, 30, 17)
		$privexyzgrp = GUICtrlCreateLabel("XYZ", 172, 235, 30, 17)
		$privetrackinggrp = GUICtrlCreateLabel("Pistage", 30, 485, 50, 17)
	Else
		$priveteleportationgrp = GUICtrlCreateGroup("Téléportation", 157, 80, 170, 155)
		$privepvpgrp = GUICtrlCreateGroup("JcJ", 162, 310, 115, 70)
		$privexyzgrp = GUICtrlCreateGroup("XYZ", 162, 235, 125, 75)
		$privetrackinggrp = GUICtrlCreateGroup("Pistage", 20, 485, 291, 115)
		GUICtrlCreateGroup("", 162, 378, 102, 30)
		GUICtrlCreateGroup("", 162, 410, 155, 75)
		GUICtrlCreateGroup("", 25, 80, 125, 395)
		GUICtrlCreateGroup("", 225, 600, 95, 30)
	EndIf
	GUICtrlCreateLabel("TP", 215, 102, 20, 17)
	$lblcooactuel = GUICtrlCreateLabel("Actuel", 267, 102, 35, 17)
	GUICtrlCreateLabel("Map", 165, 117, 22, 17)
	GUICtrlCreateLabel("X", 175, 137, 10, 17)
	GUICtrlCreateLabel("Y", 175, 157, 10, 17)
	GUICtrlCreateLabel("Z", 175, 177, 10, 17)
	$privemapinput = GUICtrlCreateInput(_memoryread($mapid, $wowprocess), 255, 115, 60, 18, $es_readonly)
	$privexinput = GUICtrlCreateInput(Round((_memoryread($playerbase + $posx, $wowprocess, "float")), 3), 255, 135, 60, 18, $es_readonly)
	$priveyinput = GUICtrlCreateInput(Round((_memoryread($playerbase + $posy, $wowprocess, "float")), 3), 255, 155, 60, 18, $es_readonly)
	$privezinput = GUICtrlCreateInput(Round((_memoryread($playerbase + $posz, $wowprocess, "float")), 3), 255, 175, 60, 18, $es_readonly)
	$privemapinputtp = GUICtrlCreateInput(_memoryread($mapid, $wowprocess), 190, 115, 60, 18, $es_readonly)
	$privexinputtp = GUICtrlCreateInput("", 190, 135, 60, 18)
	$priveyinputtp = GUICtrlCreateInput("", 190, 155, 60, 18)
	$privezinputtp = GUICtrlCreateInput("", 190, 175, 60, 18)
	$privecopytp = GUICtrlCreateButton("*", 190, 98, 22, 15, $ws_group)
	$privegotp = GUICtrlCreateButton("Téléporter", 195, 200, 55, 25, $ws_group)
	$privegocorps = GUICtrlCreateButton("TP Corps", 251, 200, 68, 25, $ws_group)
	$listouvrir = GUICtrlCreateButton("Liste", 163, 200, 30, 25, $ws_group)
	$privexyzon = GUICtrlCreateCheckbox("Checkbox", 266, 260, 15, 15)
	$lblactiverxyz = GUICtrlCreateLabel("Activer XYZ", 172, 260, 68, 17)
	$privexyzspeedinput = GUICtrlCreateInput(0.5, 241, 280, 35, 20)
	$lblvitessexyz = GUICtrlCreateLabel("Vitesse XYZ", 172, 282, 58, 17)
	$privetpcibledos = GUICtrlCreateButton("TP Cible (dos)", 167, 325, 104, 25, $ws_group)
	$privetpcibleundermap = GUICtrlCreateButton("TP Cible (sous map)", 167, 350, 104, 25, $ws_group)
	$priveclicktp = GUICtrlCreateCheckbox("Checkbox", 242, 387, 17, 17)
	GUICtrlCreateLabel("Click to TP", 167, 388, 58, 17)
	$privecollisionsm2 = GUICtrlCreateCheckbox("Checkbox", 297, 420, 17, 17)
	$lblprivecollisionsm2 = GUICtrlCreateLabel("Désactiver collisions M2", 167, 421, 120, 17)
	$privecollisionswmo = GUICtrlCreateCheckbox("Checkbox", 297, 440, 17, 17)
	$lblprivecollisionswmo = GUICtrlCreateLabel("Désactiver collisions WMO", 167, 441, 130, 17)
	$privecollisionsall = GUICtrlCreateCheckbox("Checkbox", 205, 460, 17, 17)
	GUICtrlCreateLabel("Noclip", 167, 461, 130, 17)
	$privespeedglobaleon = GUICtrlCreateCheckbox("Checkbox", 132, 90, 15, 15)
	$lblspeedglobale = GUICtrlCreateLabel("Vitesse globale", 30, 91, 72, 17)
	$privespeedglobaleinput = GUICtrlCreateInput(7, 102, 91, 25, 15)
	$privespeedon = GUICtrlCreateCheckbox("Checkbox", 132, 110, 15, 15)
	$lblspeed = GUICtrlCreateLabel("Vitesse", 30, 111, 54, 17)
	$privespeedinput = GUICtrlCreateInput(7, 102, 111, 25, 15)
	$lblspeedpourcent1 = GUICtrlCreateLabel("en pourcents:", 30, 131, 75, 17)
	$lblspeedpourcent = GUICtrlCreateLabel("", 97, 131, 50, 17, $ss_right)
	$priveflymodon = GUICtrlCreateCheckbox("Checkbox", 132, 150, 15, 15)
	$lblflymod = GUICtrlCreateLabel("Voler", 30, 151, 54, 17)
	$priveflyspeedinput = GUICtrlCreateInput(7, 102, 151, 25, 15)
	$privefreezezon = GUICtrlCreateCheckbox("Checkbox", 132, 170, 15, 15)
	$lblfreezez = GUICtrlCreateLabel("Bloquer Z", 30, 171, 80, 17)
	$privenoclipon = GUICtrlCreateCheckbox("Checkbox", 132, 190, 15, 15)
	$lblnoclip = GUICtrlCreateLabel("Traverser tout", 30, 191, 80, 17)
	$privewaterwalkon = GUICtrlCreateCheckbox("Checkbox", 132, 210, 15, 15)
	$lblwalkonwater = GUICtrlCreateLabel("Marche sur l'eau", 30, 211, 80, 17)
	$priveunderwaterwalkon = GUICtrlCreateCheckbox("Checkbox", 132, 230, 15, 15)
	$lblunderwaterwalk = GUICtrlCreateLabel("Marche sous l'eau", 30, 231, 90, 17)
	$privemounton = GUICtrlCreateCheckbox("Checkbox", 132, 250, 15, 15)
	$lblmount = GUICtrlCreateLabel("Monture en intérieur", 30, 251, 97, 17)
	$privewallclimbon = GUICtrlCreateCheckbox("Checkbox", 132, 270, 15, 15)
	$lblwallclimb = GUICtrlCreateLabel("Grimper partout", 30, 271, 75, 17)
	$nocooldowncheck = GUICtrlCreateCheckbox("Checkbox", 132, 290, 15, 15)
	GUICtrlCreateLabel("NoCooldown", 30, 291, 65, 17)
	$privewalljumpon = GUICtrlCreateCheckbox("Checkbox", 132, 310, 15, 15)
	$privelblwalljump = GUICtrlCreateLabel("Walljump", 30, 311, 80, 17)
	$priveinfinitejumpon = GUICtrlCreateCheckbox("Checkbox", 132, 330, 15, 15)
	$lblinfinitejump = GUICtrlCreateLabel("Multi-sauts", 30, 331, 70, 17)
	$privesupersauton = GUICtrlCreateCheckbox("Checkbox", 132, 350, 15, 15)
	$lblsupersaut = GUICtrlCreateLabel("Super-saut", 30, 351, 66, 17)
	$privesupersautinput = GUICtrlCreateInput(22, 30, 371, 115, 20)
	$privefactionmenu = GUICtrlCreateCombo("Faction", 30, 395, 115, 25)
	GUICtrlSetData(-1, "Créature|Alliance|Horde")
	$privedebloperso = GUICtrlCreateButton("Débloquer Perso", 30, 420, 116, 25, $ws_group)
	$stopchuteon = GUICtrlCreateButton("Stopper chute", 30, 445, 116, 25, $ws_group)
	$privetrackherbes = GUICtrlCreateCheckbox("Herbes", 30, 500, 69, 15)
	$privetrackfilons = GUICtrlCreateCheckbox("Filons", 30, 520, 69, 15)
	$privetrackcoffres = GUICtrlCreateCheckbox("Coffres", 30, 540, 69, 15)
	$privetrackpoissons = GUICtrlCreateCheckbox("Poissons", 30, 560, 69, 15)
	$privetrackallres = GUICtrlCreateCheckbox("Tout", 30, 580, 68, 15)
	$privetrackbetes = GUICtrlCreateCheckbox("Bêtes", 130, 500, 69, 15)
	$privetrackdragons = GUICtrlCreateCheckbox("Dragons", 130, 520, 69, 15)
	$privetrackdemons = GUICtrlCreateCheckbox("Démons", 130, 540, 69, 15)
	$privetrackelementaires = GUICtrlCreateCheckbox("Elémentaires", 130, 560, 71, 15)
	$privetrackgeants = GUICtrlCreateCheckbox("Géants", 210, 500, 69, 15)
	$privetrackmortsvivants = GUICtrlCreateCheckbox("Morts-vivants", 210, 520, 85, 15)
	$privetrackhumanoides = GUICtrlCreateCheckbox("Humanoïdes", 210, 540, 77, 15)
	$privetrackbestioles = GUICtrlCreateCheckbox("Bestioles", 210, 560, 69, 15)
	$privetrackallbet = GUICtrlCreateCheckbox("Tout", 170, 580, 68, 15)
	$priveraccourcis = GUICtrlCreateCheckbox("Checkbox", 300, 610, 15, 15)
	$privescsettings = GUICtrlCreateButton("Raccourcis", 227, 608, 70, 19, $ws_group)
	$tab1 = GUICtrlCreateTabItem("Fonctions (Officiel)")
	If IniRead($setting, "Reglages", "Interface", "Erreur") = 1 Then
		GUICtrlCreatePic(@ScriptDir & "\thhh_settings\skin\top.jpg", 0, 0, 332, 55, BitOR($ws_group, $ws_clipsiblings))
		GUICtrlCreatePic(@ScriptDir & "\thhh_settings\skin\mid_offi.jpg", 0, 76, 330, 560, $ws_group)
		$teleportationgrp = GUICtrlCreateLabel("XYZ", 182, 90, 30, 17)
		$trackinggrp = GUICtrlCreateLabel("Pistage", 30, 290, 45, 17)
	Else
		$teleportationgrp = GUICtrlCreateGroup("XYZ", 171, 90, 125, 125)
		$trackinggrp = GUICtrlCreateGroup("Pistage", 20, 290, 291, 115)
		GUICtrlCreateGroup("", 30, 90, 125, 170)
		GUICtrlCreateGroup("", 162, 215, 155, 75)
		GUICtrlCreateGroup("", 225, 600, 95, 30)
	EndIf
	$tpon = GUICtrlCreateCheckbox("Checkbox", 275, 115, 15, 15)
	$lblactiverxyzof = GUICtrlCreateLabel("Activer XYZ", 181, 115, 68, 17)
	$tpauto = GUICtrlCreateRadio("Automatique", 181, 160, 80, 17)
	$tpmanu = GUICtrlCreateRadio("Manuel", 181, 140, 0, 0)
	GUICtrlSetState(-1, $gui_checked)
	$noclipactionon = GUICtrlCreateCheckbox("Checkbox", 275, 190, 15, 15)
	GUICtrlCreateLabel("No-Clip Action", 182, 191, 70, 17)
	$wallclimbon = GUICtrlCreateCheckbox("Checkbox", 135, 105, 15, 15)
	$lblwallclimbof = GUICtrlCreateLabel("Grimper partout", 35, 105, 75, 17)
	$collisionsm2 = GUICtrlCreateCheckbox("Checkbox", 297, 225, 17, 17)
	$lblcollisionsm2of = GUICtrlCreateLabel("Désactiver collisions M2", 167, 226, 120, 17)
	$collisionswmo = GUICtrlCreateCheckbox("Checkbox", 297, 245, 17, 17)
	$lblcollisionswmoof = GUICtrlCreateLabel("Désactiver collisions WMO", 167, 246, 130, 17)
	$collisionsall = GUICtrlCreateCheckbox("Checkbox", 205, 265, 17, 17)
	GUICtrlCreateLabel("Noclip", 167, 266, 130, 17)
	$walljumpon = GUICtrlCreateCheckbox("Checkbox", 135, 125, 15, 15)
	$lblwalljumpof = GUICtrlCreateLabel("Walljump", 35, 125, 54, 17)
	$waterwalkon = GUICtrlCreateCheckbox("Checkbox", 135, 145, 15, 15)
	$lblwaterwalkof = GUICtrlCreateLabel("Marche sur l'eau", 35, 145, 90, 17)
	$underwaterwalkon = GUICtrlCreateCheckbox("Checkbox", 135, 165, 15, 15)
	$lblunderwaterwalkof = GUICtrlCreateLabel("Marche sous l'eau", 35, 165, 90, 17)
	$supersauton = GUICtrlCreateCheckbox("Checkbox", 135, 185, 15, 15)
	$lblsupersautof = GUICtrlCreateLabel("Super-saut", 35, 185, 54, 17)
	$supersautinput = GUICtrlCreateInput(22, 35, 205, 115, 20)
	$factionmenu = GUICtrlCreateCombo("Faction", 35, 230, 115, 25)
	GUICtrlSetData(-1, "Créature|Alliance|Horde")
	$trackherbes = GUICtrlCreateCheckbox("Herbes", 30, 305, 69, 15)
	$trackfilons = GUICtrlCreateCheckbox("Filons", 30, 325, 69, 15)
	$trackcoffres = GUICtrlCreateCheckbox("Coffres", 30, 345, 69, 15)
	$trackpoissons = GUICtrlCreateCheckbox("Poissons", 30, 365, 69, 15)
	$trackallres = GUICtrlCreateCheckbox("Tout", 30, 385, 68, 15)
	$trackbetes = GUICtrlCreateCheckbox("Bêtes", 130, 305, 69, 15)
	$trackdragons = GUICtrlCreateCheckbox("Dragons", 130, 325, 69, 15)
	$trackdemons = GUICtrlCreateCheckbox("Démons", 130, 345, 69, 15)
	$trackelementaires = GUICtrlCreateCheckbox("Elémentaires", 130, 365, 71, 15)
	$trackgeants = GUICtrlCreateCheckbox("Géants", 210, 305, 69, 15)
	$trackmortsvivants = GUICtrlCreateCheckbox("Morts-Vivants", 210, 325, 85, 15)
	$trackhumanoides = GUICtrlCreateCheckbox("Humanoïdes", 210, 345, 77, 15)
	$trackbestioles = GUICtrlCreateCheckbox("Bestioles", 210, 365, 69, 15)
	$trackallbet = GUICtrlCreateCheckbox("Tout", 170, 385, 68, 15)
	$raccourcis = GUICtrlCreateCheckbox("Checkbox", 300, 610, 15, 15)
	$scsettings = GUICtrlCreateButton("Raccourcis", 227, 608, 70, 19, $ws_group)
	$tab2 = GUICtrlCreateTabItem("Joueur")
	If IniRead($setting, "Reglages", "Interface", "Erreur") = 1 Then
		GUICtrlCreatePic(@ScriptDir & "\thhh_settings\skin\top.jpg", 0, 0, 332, 55, BitOR($ws_group, $ws_clipsiblings))
		GUICtrlCreatePic(@ScriptDir & "\thhh_settings\skin\mid_jou.jpg", 0, 76, 330, 479, $ws_group)
		$playertaillegrp = GUICtrlCreateLabel("Taille", 40, 90, 45, 17)
		$playershowgrp = GUICtrlCreateLabel("Affichage", 215, 220, 80, 17)
		$cameragrp = GUICtrlCreateLabel("Caméra", 40, 305, 45, 17)
		$tempsgrp = GUICtrlCreateLabel("Temps", 205, 300, 45, 17)
	Else
		$playertaillegrp = GUICtrlCreateGroup("Taille Joueur", 30, 90, 265, 125)
		$playershowgrp = GUICtrlCreateGroup("Affichage", 205, 220, 90, 70)
		$cameragrp = GUICtrlCreateGroup("Caméra", 30, 305, 160, 105)
		$tempsgrp = GUICtrlCreateGroup("Temps", 195, 300, 100, 110)
		GUICtrlCreateGroup("", 30, 220, 170, 75)
		GUICtrlCreateGroup("", 30, 415, 195, 80)
	EndIf
	$playertaillep = GUICtrlCreateButton("Taille +", 40, 110, 60, 30, $ws_group)
	$playertaillem = GUICtrlCreateButton("Taille -", 40, 152, 60, 30, $ws_group)
	$playerscaleinput = GUICtrlCreateInput($playerscalevar, 160, 110, 80, 20)
	$lbltaille = GUICtrlCreateLabel("Taille", 110, 112, 50, 17)
	$playerhauteurinput = GUICtrlCreateInput(Round($playerhauteurvar, 5), 160, 135, 80, 20)
	$lblhauteur = GUICtrlCreateLabel("Hauteur", 110, 137, 40, 17)
	$playerlargeurinput = GUICtrlCreateInput(Round($playerlargeurvar, 5), 160, 160, 80, 20)
	$lbllargeur = GUICtrlCreateLabel("Largeur", 110, 162, 40, 17)
	$playerscaleinputok = GUICtrlCreateButton("Ok", 245, 107, 40, 25, $ws_group)
	$playerhauteurinputok = GUICtrlCreateButton("Ok", 245, 132, 40, 25, $ws_group)
	$playerlargeurinputok = GUICtrlCreateButton("Ok", 245, 157, 40, 25, $ws_group)
	$playerinputreset = GUICtrlCreateButton("Reset", 180, 185, 40, 25, $ws_group)
	$inebriationon = GUICtrlCreateCheckbox("Checkbox", 80, 271, 15, 15)
	$lblalcool = GUICtrlCreateLabel("Alcool", 40, 273, 54, 17)
	$valeur_slider_inebriation = GUICtrlCreateInput(0, 160, 270, 30, 17, $es_readonly)
	$slider_transition_inebriation = GUICtrlCreateSlider(40, 235, 150, 35)
	GUICtrlSetState($slider_transition_inebriation, $gui_focus)
	$slider_inebriation = GUICtrlRead($slider_transition_inebriation)
	GUICtrlSetLimit($slider_transition_inebriation, 100, 0)
	GUICtrlSetData($slider_transition_inebriation, 0)
	$playerflags2check1 = GUICtrlCreateCheckbox("Checkbox", 265, 240, 15, 15)
	$lblmort = GUICtrlCreateLabel("Mort", 215, 240, 54, 17)
	$playerflags2check2 = GUICtrlCreateCheckbox("Checkbox", 265, 265, 15, 15)
	$lblinvisible = GUICtrlCreateLabel("Invisible", 215, 265, 54, 17)
	$cameraspectate = GUICtrlCreateCheckbox("Checkbox", 170, 319, 15, 15)
	$lblspectateur = GUICtrlCreateLabel("Mode Spectateur", 40, 320, 100, 17)
	$cameraspectatespeedinput = GUICtrlCreateInput(40, 140, 320, 25, 15)
	$cameraspectatenoclip = GUICtrlCreateCheckbox("Checkbox", 170, 340, 15, 15)
	$lblnoclipcamera = GUICtrlCreateLabel("Traverser tout", 40, 340, 100, 17)
	$camerafollow = GUICtrlCreateCheckbox("Checkbox", 170, 360, 15, 15)
	$lblfollowtar = GUICtrlCreateLabel("Suivre la cible", 40, 360, 100, 17)
	$priveteleportcamera = GUICtrlCreateButton("TP Caméra (Serv. privé)", 50, 380, 120)
	$heureinput = GUICtrlCreateInput(_memoryread($timeheure, $wowprocess, "dword"), 240, 315, 25, 20)
	$lblheure = GUICtrlCreateLabel("Heures", 200, 316, 40, 17)
	$heureinputok = GUICtrlCreateButton("Ok", 270, 315, 20, 20, $ws_group)
	$minutesinput = GUICtrlCreateInput(_memoryread($timeminutes, $wowprocess, "dword"), 240, 340, 25, 20)
	GUICtrlCreateLabel("Minutes", 200, 341, 40, 17)
	$minutesinputok = GUICtrlCreateButton("Ok", 270, 340, 20, 20, $ws_group)
	$vitessetempsinput = GUICtrlCreateInput(1, 240, 365, 50, 20)
	$lblvitessetemps = GUICtrlCreateLabel("Vitesse", 200, 366, 40, 17)
	$vitessetempsinputok = GUICtrlCreateButton("Ok", 270, 385, 20, 20, $ws_group)
	$mapshow = GUICtrlCreateButton("Dévoiler la carte", 200, 510, 90, 28, $ws_group)
	$titremenu = GUICtrlCreateCombo("0   Titre", 30, 515, 160, 25)
	GUICtrlSetData(-1, "0   Aucun|1   Soldat|2   Caporal|3   Sergent|4   Sergent-Chef|5   Sergent-Major|6   Chevalier|7   Chevalier-Lieutenant|8   Chevalier-Capitaine|9   Chevalier-Champion|10   Lieutenant-Commandant|11   Commandant|12   Maréchal|13   Grand Maréchal|14   Connétable|15   Éclaireur|16   Grunt|17   Sergent|18   Sergent-Chef|19   Adjudant|20   Garde de pierre|21   Garde de sang|22   Légionnaire|23   Centurion|24   Champion|25   Lieutenant Général|26   Général|27   Seigneur de Guerre|28   Grand Seigneur de Guerre|29   Gladiateur/rice|30   Duelliste|31   Rival/e|32   Compétiteur/rice|33   Seigneur Scarabée|34   Conquérant/e|35   Justicier/ère|36   Champion/ne des Naarus|37   Gladiateur/rice impitoyable|38   du Soleil Brisé|39   Main d'A'dal|40   Gladiateur Vengeur/Vengeresse|41   Maître de Guerre|42   le Chercheur/se|43   Ancien/ne|44   Gardien/ne des flammes|45   Garde-Flammes|46   L'exalté/e|47   L'explorateur/rice|48   Le/La diplomate|49   Gladiateur Brutal/e|50   Maître d'arène|51   loup de mer|52   Chef|53   Le/la Suprême|54   des Dix Tempêtes|55   du Rêve d'émeraude|56   Gladiateur Fatal/Fatale|57   Prophète|58   Le/La Maléfique|59   Traqueur/euse|60   de la Lame d'Ebène|61   Archimage|62   Porteguerre|63   Assassin|66   Cordon Bleu|69   Docteur|70   Grand maître pêcheur|78   de Quel'Thalas|79   d'Argus|80   de Kaz Modan|81   de Gnomeregan|82   au coeur de lion|83   champion d'Elune|84   héros d'Orgrimmar|85   le coureur des plaines|86   des Sombrelances|87   le réprouvé|88   le cherche-magie|89   Vainqueur du crépuscule|90   conquérant de Naxxramas")
	$lblemote = GUICtrlCreateLabel("Emote sur la cible:", 85, 425, 110, 17)
	$emotemenu = GUICtrlCreateCombo("0   Emote", 40, 445, 175, 25)
	GUICtrlSetData(-1, "0   Aucun|1   Parler|2   Saluer|3   Saluer (main)|4   Acclamer|5   Affirmation|6   Question|10   Danse|11   Rire|14   Geste grossier|15   Rugir|16   Agenouiller|17   Bise|18   Pleurer|19   Poulet|20   Mendier|21   Applaudir|22   Crier|23   Montrer muscles|24   Timide|25   Montrer|28   Travailler|33   Recevoir coup|34   Recevoir coup (critique)|35   Attaque (sans arme)|36   Attaque (1 main)|37   Attaque (2 mains)|38   Attaque (2 mains)2|39   Parrer (sans arme)|43   Parrer (Bouclier)|44   Prêt attaque (sans arme)|45   Prêt attaque (1 main)|48   Prêt attaque (arc)|54   Attaque spéciale (1 main)|60   Coup de pied|61   Attaque (lancer)|64   Assommé|66   Saluer (Garde à vous)|69   Utiliser objet|92   Boire|173   Travailler (avec arme)|213   Prêt attaque (fusil)|233   Travailler (Son minage)|234   Travailler (Son bûcheron)|273   Oui|274   Non|275   Train|375   Prêt attaque (2 mains)|379   Pêche|380   Pêche lancé|381   Loot|382   Tourbillon|383   Noyé (fin)|384   Viser (arc)|385   Viser (fusil)|386   Viser (lancé)|387   Noyé (début)|389   Attaque ratée|390   Attaque esquivée|395   Saut (fin)|398   Agenouiller (maintenue)|399   Saut (début)|400   Danse Speciale (Humains uniquement)|415   Assis")
	$settargetemote = GUICtrlCreateButton("Ok", 40, 470, 175, 20, $ws_group)
	GUISetState(@SW_SHOW, $thhhgui)
#EndRegion ### END GUI ###
#Region ### SETTINGS ###
	$guisetting = GUICreate("Options", 345, 290, -1, -1, -1)
	$languegrp = GUICtrlCreateGroup("Langage", 250, 10, 80, 40)
	$francais = GUICtrlCreatePic(@ScriptDir & "\thhh_settings\fr.jpg", 255, 30, 20, 13)
	$english = GUICtrlCreatePic(@ScriptDir & "\thhh_settings\en.jpg", 280, 30, 20, 13)
	$espanol = GUICtrlCreatePic(@ScriptDir & "\thhh_settings\es.jpg", 305, 30, 20, 13)
	$interfaceoff = GUICtrlCreateCheckbox("Checkbox", 15, 50, 15, 15)
	$lblinterfaceoff = GUICtrlCreateLabel("Utiliser l'interface de base", 35, 50, 200, 50)
	$continueonexit = GUICtrlCreateCheckbox("Checkbox", 15, 80, 15, 15)
	$lblcontinueonexit = GUICtrlCreateLabel("Conserver les fonctions activées après fermeture du programme", 35, 80, 200, 50)
	$savesettings = GUICtrlCreateCheckbox("Checkbox", 15, 120, 15, 15)
	$lblsavesettings = GUICtrlCreateLabel("Conserver les paramètres suivants à chaque lancement:", 35, 122, 200, 50)
	$launchprivategrp = GUICtrlCreateGroup("Privé", 15, 155, 200, 120)
	$launchspeed = GUICtrlCreateCheckbox("Checkbox", 20, 170, 15, 15)
	$lbllaunchspeed = GUICtrlCreateLabel("Vitesse", 40, 172, 60, 17)
	$launchfly = GUICtrlCreateCheckbox("Checkbox", 20, 190, 15, 15)
	$lbllaunchfly = GUICtrlCreateLabel("Voler", 40, 192, 60, 17)
	$launchwallclimbprivate = GUICtrlCreateCheckbox("Checkbox", 20, 210, 15, 15)
	$lbllaunchwallclimbprivate = GUICtrlCreateLabel("Grimper partout", 40, 212, 80, 17)
	$launchnocd = GUICtrlCreateCheckbox("Checkbox", 20, 230, 15, 15)
	$lbllaunchnocd = GUICtrlCreateLabel("NoCooldown", 40, 232, 65, 17)
	$launchraccourcisprivate = GUICtrlCreateCheckbox("Checkbox", 20, 250, 15, 15)
	$lbllaunchraccourcisprivate = GUICtrlCreateLabel("Raccourcis", 40, 252, 65, 17)
	$launchsupersautprivate = GUICtrlCreateCheckbox("Checkbox", 130, 170, 15, 15)
	$lbllaunchsupersautprivate = GUICtrlCreateLabel("Super-saut", 150, 172, 60, 17)
	$launchtrackprivate = GUICtrlCreateCheckbox("Checkbox", 130, 190, 15, 15)
	$lbllaunchtrackprivate = GUICtrlCreateLabel("Pistage", 150, 192, 60, 17)
	$launchclicktotp = GUICtrlCreateCheckbox("Checkbox", 130, 210, 15, 15)
	$lbllaunchclicktotp = GUICtrlCreateLabel("Click to TP", 150, 212, 60, 17)
	$launchxyzprivate = GUICtrlCreateCheckbox("Checkbox", 130, 230, 15, 15)
	$lbllaunchxyzprivate = GUICtrlCreateLabel("Activer XYZ", 150, 232, 63, 17)
	$launchofficielgrp = GUICtrlCreateGroup("Officiel", 220, 155, 110, 120)
	$launchsupersautofficiel = GUICtrlCreateCheckbox("Checkbox", 225, 170, 15, 15)
	$lbllaunchsupersautofficiel = GUICtrlCreateLabel("Super-saut", 245, 172, 60, 17)
	$launchwallclimbofficiel = GUICtrlCreateCheckbox("Checkbox", 225, 190, 15, 15)
	$lbllaunchwallclimbofficiel = GUICtrlCreateLabel("Grimper partout", 245, 192, 80, 17)
	$launchtrackofficiel = GUICtrlCreateCheckbox("Checkbox", 225, 210, 15, 15)
	$lbllaunchtrackofficiel = GUICtrlCreateLabel("Pistage", 245, 212, 60, 17)
	$launchxyzofficiel = GUICtrlCreateCheckbox("Checkbox", 225, 230, 15, 15)
	$lbllaunchxyzofficiel = GUICtrlCreateLabel("Activer XYZ", 245, 232, 65, 17)
	$launchraccourcisofficiel = GUICtrlCreateCheckbox("Checkbox", 225, 250, 15, 15)
	$lbllaunchraccourcisofficiel = GUICtrlCreateLabel("Raccourcis", 245, 252, 65, 17)
#EndRegion ### END SETTINGS ###
#Region ### DEBLOQUER PERSO ###
	$debloperso = GUICreate("  Débloquer le perso", 290, 110, -1, -1, -1, $ws_ex_toolwindow)
	WinSetOnTop($debloperso, "", 1)
	GUISetBkColor(15724527)
	$guitransdeblo = GUICtrlCreateCheckbox("Checkbox", 5, 5, 15, 15)
	$transparencedeblo = GUICtrlCreateLabel("Transparence", 25, 7, 80, 17)
	$deblopersobutton = GUICtrlCreateButton("Cliquez pour débloquer votre perso", 30, 25, 230, 70, $ws_group)
	GUISetState(@SW_HIDE, $debloperso)
#EndRegion ### END DEBLOQUER PERSO ###
#Region ### STOP CHUTE ###
	$stopchute = GUICreate("  Stop chute", 290, 110, -1, -1, -1, $ws_ex_toolwindow)
	WinSetOnTop($stopchute, "", 1)
	GUISetBkColor(15724527)
	$guitransstop = GUICtrlCreateCheckbox("Checkbox", 5, 5, 15, 15)
	$transparencestopchute = GUICtrlCreateLabel("Transparence", 25, 7, 80, 17)
	$stopchutebutton = GUICtrlCreateButton("Cliquez pour arrêter votre chute", 30, 25, 230, 70, $ws_group)
	GUISetState(@SW_HIDE, $stopchute)
#EndRegion ### END STOP CHUTE ###
#Region ### LISTE TP ###
	$tplist = GUICreate("Teleport List", 800, 610, -1, -1)
	GUISetBkColor(15724527)
	$ontopt = GUICtrlCreateCheckbox("Checkbox", 5, 5, 15, 15)
	$listeontop = GUICtrlCreateLabel("Premier plan", 25, 7, 70, 17)
	$guitranst = GUICtrlCreateCheckbox("Checkbox", 5, 25, 15, 15)
	$transparencetp = GUICtrlCreateLabel("Transparence", 25, 27, 80, 17)
	Global $liste = @ScriptDir & "\thhh_TPlist.ini"
	$line = 1
	$countlines = _filecountlines($liste)
	$countlinestotal = ($countlines - 6)
	$previewlist = GUICtrlCreateListView("n°|Nom|Map|X|Y|Z|Commentaire", 0, 50, 660, 450)
	_guictrllistview_setcolumnwidth($previewlist, 0, 26)
	_guictrllistview_setcolumnwidth($previewlist, 1, 235)
	_guictrllistview_setcolumnwidth($previewlist, 2, 35)
	_guictrllistview_setcolumnwidth($previewlist, 3, 35)
	_guictrllistview_setcolumnwidth($previewlist, 4, 35)
	_guictrllistview_setcolumnwidth($previewlist, 5, 35)
	_guictrllistview_setcolumnwidth($previewlist, 6, 150)
	$listteleportgo = GUICtrlCreateButton("Téléporter !", 320, 510, 180, 40)
	$wehcheckbox = GUICtrlCreateCheckbox("Checkbox", 430, 555, 15, 15)
	$lvllisteweh = GUICtrlCreateLabel("Liste WEH", 370, 557, 54, 17)
	$addtpgrp = GUICtrlCreateGroup("Ajouter un TP", 670, 55, 120, 105)
	$lblnomtp = GUICtrlCreateLabel("Nom de votre TP", 690, 75, 90, 17)
	$addtpnameinput = GUICtrlCreateInput("", 675, 90, 110, 20)
	$addtp = GUICtrlCreateButton("Ajouter TP", 680, 115, 100, 35)
	$deltpgrp = GUICtrlCreateGroup("Supprimer un TP", 670, 180, 120, 105)
	$lbltpnumber = GUICtrlCreateLabel("n° du TP", 705, 200, 60, 17)
	$deltpinput = GUICtrlCreateInput("", 705, 215, 50, 20)
	$deltp = GUICtrlCreateButton("Supprimer TP", 680, 240, 100, 35)
	$mapactuname = GUICtrlCreateInput("", 701, 295, 60, 20, $es_readonly)
	$mapactu = GUICtrlCreateInput((_memoryread($mapid, $wowprocess)), 716, 320, 30, 20, $es_readonly)
	$lblmapactuelle = GUICtrlCreateLabel("Map Actuelle", 701, 345, 90, 17)
	GUISetState(@SW_HIDE, $tplist)
	createlist()
#EndRegion ### END LISTE TP ###
#Region ### RACCOURCIS OFFICIEL ###
	$scsettingsgui = GUICreate("Raccourcis Officiel", 200, 350, -1, -1, -1)
	GUISetBkColor(15724527)
	$settinginputwallclimb = GUICtrlCreateInput("", 110, 30, 80, 20, $es_readonly)
	$lblscwallclimbof = GUICtrlCreateLabel("Grimper partout", 10, 33, 75, 17)
	$settinginputsupersaut = GUICtrlCreateInput("", 110, 60, 80, 20, $es_readonly)
	$lblscsupersautof = GUICtrlCreateLabel("Super-Saut", 10, 63, 54, 17)
	$settinginputnoclipaction = GUICtrlCreateInput("", 110, 90, 80, 20, $es_readonly)
	GUICtrlCreateLabel("No-Clip Action", 10, 93, 80, 17)
	Global $sciniempl = "Raccourcis - Officiel"
	refreshsctext("Wallclimb", $settinginputwallclimb)
	refreshsctext("Supersaut", $settinginputsupersaut)
	refreshsctext("Noclipaction", $settinginputnoclipaction)
	GUISetState(@SW_HIDE, $scsettingsgui)
#EndRegion ### END RACCOURCIS OFFICIEL ###
#Region ### RACCOURCIS PRIVE ###
	$privescsettingsgui = GUICreate("Raccourcis Privé", 545, 620, -1, -1, -1)
	GUISetBkColor(15724527)
	$privescsettingsguigrpfonction = GUICtrlCreateGroup("Fonctions", 15, 10, 170, 320)
	$privesettinginputflymod = GUICtrlCreateInput("", 125, 25, 50, 20, $es_readonly)
	$lblscflymod = GUICtrlCreateLabel("Voler", 25, 28, 54, 17)
	$privesettinginputspeedglobale = GUICtrlCreateInput("", 125, 50, 50, 20, $es_readonly)
	$lblscspeedglobale = GUICtrlCreateLabel("Vitesse globale", 25, 53, 85, 17)
	$privesettinginputspeed = GUICtrlCreateInput("", 125, 75, 50, 20, $es_readonly)
	$lblscspeed = GUICtrlCreateLabel("Vitesse", 25, 78, 54, 17)
	$privesettinginputwallclimb = GUICtrlCreateInput("", 125, 100, 50, 20, $es_readonly)
	$lblscwallclimb = GUICtrlCreateLabel("Grimper partout", 25, 103, 75, 17)
	$privesettinginputsupersaut = GUICtrlCreateInput("", 125, 125, 50, 20, $es_readonly)
	$lblscsupersaut = GUICtrlCreateLabel("Super-Saut", 25, 128, 54, 17)
	$privesettinginputdebloperso = GUICtrlCreateInput("", 125, 150, 50, 20, $es_readonly)
	$lblscdebloperso = GUICtrlCreateLabel("Débloquer Perso", 25, 153, 100, 17)
	$privesettinginputclicktp = GUICtrlCreateInput("", 125, 175, 50, 20, $es_readonly)
	GUICtrlCreateLabel("Click to TP", 25, 178, 100, 17)
	$privesettinginputgocorps = GUICtrlCreateInput("", 125, 200, 50, 20, $es_readonly)
	$lblscgocorps = GUICtrlCreateLabel("TP Corps", 25, 203, 100, 17)
	$privesettinginputstopfall = GUICtrlCreateInput("", 125, 225, 50, 20, $es_readonly)
	$lblscstopchute = GUICtrlCreateLabel("Stopper chute", 25, 228, 100, 17)
	$privesettinginputtpcibledos = GUICtrlCreateInput("", 125, 250, 50, 20, $es_readonly)
	$lblsctpcibledos = GUICtrlCreateLabel("TP Cible (dos)", 25, 253, 100, 17)
	$privesettinginputtpcibleundermap = GUICtrlCreateInput("", 125, 275, 50, 20, $es_readonly)
	$lblsctpcibleundermap = GUICtrlCreateLabel("TP Cible (sous map)", 25, 278, 100, 17)
	$privesettinginputfreezez = GUICtrlCreateInput("", 125, 300, 50, 20, $es_readonly)
	$lblscfreezez = GUICtrlCreateLabel("Bloquer Z", 25, 303, 100, 17)
	$privescsettingsguigrpspeed = GUICtrlCreateGroup("Vitesse", 15, 335, 170, 270)
	$privesettinginputspeedn = GUICtrlCreateInput("", 125, 350, 50, 20, $es_readonly)
	$lblscspeedn = GUICtrlCreateLabel("Vitesse normale", 25, 353, 100, 17)
	$privesettinginputspeed100 = GUICtrlCreateInput("", 125, 375, 50, 20, $es_readonly)
	$lblscspeed100 = GUICtrlCreateLabel("Vitesse 100%", 25, 378, 100, 17)
	$privesettinginputspeedcustom = GUICtrlCreateInput("", 125, 400, 50, 20, $es_readonly)
	$lblscspeedcustom = GUICtrlCreateLabel("Vitesse =", 25, 403, 50, 17)
	$privesettinginputspeedcustominput = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "SpeedcustomValue", "Erreur"), 90, 401, 30, 20)
	$privesettinginputspeedp = GUICtrlCreateInput("", 125, 425, 50, 20, $es_readonly)
	$lblscspeedp = GUICtrlCreateLabel("Vitesse +", 25, 428, 60, 17)
	$privesettinginputspeedm = GUICtrlCreateInput("", 125, 450, 50, 20, $es_readonly)
	$lblscspeedm = GUICtrlCreateLabel("Vitesse -", 25, 453, 60, 17)
	$privesettinginputspeedincr = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "SpeedIncr", "Erreur"), 90, 440, 30, 20)
	$privesettinginputspeedflyn = GUICtrlCreateInput("", 125, 475, 50, 20, $es_readonly)
	$lblscspeedflyn = GUICtrlCreateLabel("Vitesse vol normale", 25, 478, 100, 17)
	$privesettinginputspeedfly280 = GUICtrlCreateInput("", 125, 500, 50, 20, $es_readonly)
	$lblscspeedfly280 = GUICtrlCreateLabel("Vitesse vol 280%", 25, 503, 100, 17)
	$privesettinginputspeedflycustom = GUICtrlCreateInput("", 125, 525, 50, 20, $es_readonly)
	$lblscspeedflycustom = GUICtrlCreateLabel("Vitesse vol =", 25, 528, 60, 17)
	$privesettinginputspeedflycustominput = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "SpeedFlyCustomValue", "Erreur"), 90, 526, 30, 20)
	$privesettinginputspeedflyp = GUICtrlCreateInput("", 125, 550, 50, 20, $es_readonly)
	$lblscspeedflyp = GUICtrlCreateLabel("Vitesse vol +", 25, 558, 60, 17)
	$privesettinginputspeedflym = GUICtrlCreateInput("", 125, 575, 50, 20, $es_readonly)
	$lblscspeedflym = GUICtrlCreateLabel("Vitesse vol -", 25, 578, 60, 17)
	$privesettinginputspeedflyincr = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "SpeedFlyIncr", "Erreur"), 90, 563, 30, 20)
	$privescsettingsguigrpdivers = GUICtrlCreateGroup("Divers", 192, 405, 335, 117)
	$privesettinginputsupersautp = GUICtrlCreateInput("", 295, 420, 50, 20, $es_readonly)
	$lblscsupersautp = GUICtrlCreateLabel("Super-saut +", 200, 423, 90, 17)
	$privesettinginputsupersautm = GUICtrlCreateInput("", 295, 445, 50, 20, $es_readonly)
	$lblscsupersautm = GUICtrlCreateLabel("Super-saut -", 200, 448, 90, 17)
	$privesettinginputsupersautincr = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "SupersautIncr", "Erreur"), 260, 432, 30, 20)
	$privesettinginputtimespeedp = GUICtrlCreateInput("", 295, 470, 50, 20, $es_readonly)
	$lblsctimespeedp = GUICtrlCreateLabel("Vitesse temps +", 200, 473, 90, 17)
	$privesettinginputtimespeedm = GUICtrlCreateInput("", 295, 495, 50, 20, $es_readonly)
	$lblsctimespeedm = GUICtrlCreateLabel("Vitesse temps -", 200, 498, 90, 17)
	$privesettinginputtimespeedincr = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "TimeSpeedIncr", "Erreur"), 260, 483, 30, 20)
	$privesettinginputtaillep = GUICtrlCreateInput("", 450, 420, 50, 20, $es_readonly)
	$lblsctaillep = GUICtrlCreateLabel("Taille +", 355, 423, 90, 17)
	$privesettinginputtaillem = GUICtrlCreateInput("", 450, 445, 50, 20, $es_readonly)
	$lblsctaillem = GUICtrlCreateLabel("Taille -", 355, 448, 90, 17)
	$privesettinginputtailleincr = GUICtrlCreateInput(IniRead($setting, "Raccourcis - Prive", "TailleIncr", "Erreur"), 415, 431, 30, 20)
	GUICtrlCreateGroup("Click to TP", 355, 474, 165, 40)
	$priveclicktptoucheshift = GUICtrlCreateRadio("Maj", 365, 489, 50, 17)
	$priveclicktptouchectrl = GUICtrlCreateRadio("Ctrl", 425, 489, 50, 17)
	$priveclicktptouchealt = GUICtrlCreateRadio("Alt", 485, 489, 30, 17)
	If IniRead($setting, "Raccourcis - Prive", "Clicktptouche", "Erreur") = 10 Then
		GUICtrlSetState($priveclicktptoucheshift, $gui_checked)
	ElseIf IniRead($setting, "Raccourcis - Prive", "Clicktptouche", "Erreur") = 11 Then
		GUICtrlSetState($priveclicktptouchectrl, $gui_checked)
	ElseIf IniRead($setting, "Raccourcis - Prive", "Clicktptouche", "Erreur") = 12 Then
		GUICtrlSetState($priveclicktptouchealt, $gui_checked)
	EndIf
	$privescsettingsguigrppvp = GUICtrlCreateGroup("Jcj - Raccourcis de téléportation", 192, 10, 335, 390)
	$privescsettingsguigrpgoulet = GUICtrlCreateGroup("Goulet", 197, 25, 160, 220)
	$privesettinginputgouletflaga2 = GUICtrlCreateInput("", 300, 40, 50, 20, $es_readonly)
	$lblscgouletflaga2 = GUICtrlCreateLabel("Alliance Drapeau", 205, 43, 90, 17)
	$privesettinginputgouletregena2 = GUICtrlCreateInput("", 300, 65, 50, 20, $es_readonly)
	$lblscgouletregena2 = GUICtrlCreateLabel("Alliance Regen", 205, 68, 90, 17)
	$privesettinginputgouletbersekera2 = GUICtrlCreateInput("", 300, 90, 50, 20, $es_readonly)
	$lblscgouletbersekera2 = GUICtrlCreateLabel("Alliance Berseker", 205, 93, 90, 17)
	$privesettinginputgouletsprinta2 = GUICtrlCreateInput("", 300, 115, 50, 20, $es_readonly)
	$lblscgouletsprinta2 = GUICtrlCreateLabel("Alliance Sprint", 205, 118, 90, 17)
	$privesettinginputgouletflagh2 = GUICtrlCreateInput("", 300, 140, 50, 20, $es_readonly)
	$lblscgouletflagh2 = GUICtrlCreateLabel("Horde Drapeau", 205, 143, 90, 17)
	$privesettinginputgouletregenh2 = GUICtrlCreateInput("", 300, 165, 50, 20, $es_readonly)
	$lblscgouletregenh2 = GUICtrlCreateLabel("Horde Regen", 205, 168, 90, 17)
	$privesettinginputgouletbersekerh2 = GUICtrlCreateInput("", 300, 190, 50, 20, $es_readonly)
	$lblscgouletbersekerh2 = GUICtrlCreateLabel("Horde Berseker", 205, 193, 90, 17)
	$privesettinginputgouletsprinth2 = GUICtrlCreateInput("", 300, 215, 50, 20, $es_readonly)
	$lblscgouletsprinth2 = GUICtrlCreateLabel("Horde Sprint", 205, 218, 90, 17)
	$privescsettingsguigrparathi = GUICtrlCreateGroup("Arathi", 277, 250, 160, 145)
	$privesettinginputarathiecurie = GUICtrlCreateInput("", 380, 265, 50, 20, $es_readonly)
	$lblscarathiecurie = GUICtrlCreateLabel("Écurie", 285, 268, 90, 17)
	$privesettinginputarathiferme = GUICtrlCreateInput("", 380, 290, 50, 20, $es_readonly)
	$lblscarathiferme = GUICtrlCreateLabel("Ferme", 285, 293, 90, 17)
	$privesettinginputarathimine = GUICtrlCreateInput("", 380, 315, 50, 20, $es_readonly)
	$lblscarathimine = GUICtrlCreateLabel("Mine", 285, 318, 90, 17)
	$privesettinginputarathiforge = GUICtrlCreateInput("", 380, 340, 50, 20, $es_readonly)
	$lblscarathiforge = GUICtrlCreateLabel("Forge", 285, 343, 90, 17)
	$privesettinginputarathiscierie = GUICtrlCreateInput("", 380, 365, 50, 20, $es_readonly)
	$lblscarathiscierie = GUICtrlCreateLabel("Scierie", 285, 368, 90, 17)
	$privescsettingsguigrpoeil = GUICtrlCreateGroup("Oeil du cyclone", 362, 25, 160, 145)
	$privesettinginputoeildrapeau = GUICtrlCreateInput("", 465, 40, 50, 20, $es_readonly)
	$lblscoeildrapeau = GUICtrlCreateLabel("Drapeau", 370, 43, 90, 17)
	$privesettinginputoeiltourmages = GUICtrlCreateInput("", 465, 65, 50, 20, $es_readonly)
	$lblscoeiltourmages = GUICtrlCreateLabel("Tour Mages", 370, 68, 90, 17)
	$privesettinginputoeilruinesdraenei = GUICtrlCreateInput("", 465, 90, 50, 20, $es_readonly)
	$lblscoeilruinesdraenei = GUICtrlCreateLabel("Ruines Draenei", 370, 93, 90, 17)
	$privesettinginputoeiltourelfes = GUICtrlCreateInput("", 465, 115, 50, 20, $es_readonly)
	$lblscoeiltourelfes = GUICtrlCreateLabel("Tour Elfes", 370, 118, 90, 17)
	$privesettinginputoeilruinessaccageur = GUICtrlCreateInput("", 465, 140, 50, 20, $es_readonly)
	$lblscoeilruinessaccageur = GUICtrlCreateLabel("Ruines Saccageur", 370, 143, 90, 17)
	$privescsettingsguigrpalterac = GUICtrlCreateGroup("Alterac", 362, 175, 160, 70)
	$privesettinginputalteraca2 = GUICtrlCreateInput("", 465, 190, 50, 20, $es_readonly)
	$lblscalteraca2 = GUICtrlCreateLabel("Coté Alliance", 370, 193, 90, 17)
	$privesettinginputalterach2 = GUICtrlCreateInput("", 465, 215, 50, 20, $es_readonly)
	$lblscalterach2 = GUICtrlCreateLabel("Coté Horde", 370, 218, 90, 17)
	Global $sciniempl = "Raccourcis - Prive"
	refreshsctext("Flymod", $privesettinginputflymod)
	refreshsctext("Speedglobale", $privesettinginputspeedglobale)
	refreshsctext("Speed", $privesettinginputspeed)
	refreshsctext("Wallclimb", $privesettinginputwallclimb)
	refreshsctext("Supersaut", $privesettinginputsupersaut)
	refreshsctext("Debloperso", $privesettinginputdebloperso)
	refreshsctext("Clicktp", $privesettinginputclicktp)
	refreshsctext("Gocorps", $privesettinginputgocorps)
	refreshsctext("Stopfall", $privesettinginputstopfall)
	refreshsctext("Tpcibledos", $privesettinginputtpcibledos)
	refreshsctext("Tpcibleundermap", $privesettinginputtpcibleundermap)
	refreshsctext("FreezeZ", $privesettinginputfreezez)
	refreshsctext("SpeedN", $privesettinginputspeedn)
	refreshsctext("Speed100", $privesettinginputspeed100)
	refreshsctext("Speedcustom", $privesettinginputspeedcustom)
	refreshsctext("SpeedP", $privesettinginputspeedp)
	refreshsctext("SpeedM", $privesettinginputspeedm)
	refreshsctext("SpeedFlyN", $privesettinginputspeedflyn)
	refreshsctext("SpeedFly280", $privesettinginputspeedfly280)
	refreshsctext("SpeedFlycustom", $privesettinginputspeedflycustom)
	refreshsctext("SpeedFlyP", $privesettinginputspeedflyp)
	refreshsctext("SpeedFlyM", $privesettinginputspeedflym)
	refreshsctext("SupersautP", $privesettinginputsupersautp)
	refreshsctext("SupersautM", $privesettinginputsupersautm)
	refreshsctext("TimeSpeedP", $privesettinginputtimespeedp)
	refreshsctext("TimeSpeedM", $privesettinginputtimespeedm)
	refreshsctext("TailleP", $privesettinginputtaillep)
	refreshsctext("TailleM", $privesettinginputtaillem)
	refreshsctext("FlagA2", $privesettinginputgouletflaga2)
	refreshsctext("RegenA2", $privesettinginputgouletregena2)
	refreshsctext("BersekerA2", $privesettinginputgouletbersekera2)
	refreshsctext("SprintA2", $privesettinginputgouletsprinta2)
	refreshsctext("FlagH2", $privesettinginputgouletflagh2)
	refreshsctext("RegenH2", $privesettinginputgouletregenh2)
	refreshsctext("BersekerH2", $privesettinginputgouletbersekerh2)
	refreshsctext("SprintH2", $privesettinginputgouletsprinth2)
	refreshsctext("Ecurie", $privesettinginputarathiecurie)
	refreshsctext("Ferme", $privesettinginputarathiferme)
	refreshsctext("Mine", $privesettinginputarathimine)
	refreshsctext("Forge", $privesettinginputarathiforge)
	refreshsctext("Scierie", $privesettinginputarathiscierie)
	refreshsctext("OeilDrapeau", $privesettinginputoeildrapeau)
	refreshsctext("TourMages", $privesettinginputoeiltourmages)
	refreshsctext("RuinesDraenei", $privesettinginputoeilruinesdraenei)
	refreshsctext("TourElfes", $privesettinginputoeiltourelfes)
	refreshsctext("RuinesSaccageur", $privesettinginputoeilruinessaccageur)
	refreshsctext("A2", $privesettinginputalteraca2)
	refreshsctext("H2", $privesettinginputalterach2)
	GUISetState(@SW_HIDE, $privescsettingsgui)
#EndRegion ### END RACCOURCIS PRIVE ###
AdlibRegister("globalf")
GUICtrlSetData($privespeedglobaleinput, Abs(IniRead($setting, "Reglages", "pspeedglobalevalue", "Error")))
GUICtrlSetData($privespeedinput, Abs(IniRead($setting, "Reglages", "pspeedvalue", "Erreur")))
GUICtrlSetData($priveflyspeedinput, Abs(IniRead($setting, "Reglages", "pflymodspeedvalue", "Erreur")))
GUICtrlSetData($privesupersautinput, Abs(IniRead($setting, "Reglages", "psupersautvalue", "Erreur")))
GUICtrlSetData($supersautinput, Abs(IniRead($setting, "Reglages", "osupersautvalue", "Erreur")))
GUICtrlSetData($privexyzspeedinput, Abs(IniRead($setting, "Reglages", "pXYZSpeed", "Erreur")))
If IniRead($setting, "Reglages", "Reglages", "Erreur") = 1 Then
	GUICtrlSetState($savesettings, $gui_checked)
	reglageslancement()
Else
	disablesettingchoice()
EndIf
If IniRead($setting, "Reglages", "Continue", "Erreur") = 1 Then
	GUICtrlSetState($continueonexit, $gui_checked)
EndIf
If IniRead($setting, "Reglages", "Interface", "Erreur") = 0 Then
	GUICtrlSetState($interfaceoff, $gui_checked)
EndIf
If FileExists(@ScriptDir & "\thhh_settings\thhh_settings.ini") = 0 Then
	MsgBox(0, "Erreur", "Le fichier de configuration n'a pas été trouvé, vous ne pouvez donc pas utiliser de raccourcis." & @CRLF & "Assurez-vous d'avoir décompressé le fichier téléchargé avant de lancer The Hitchhiker's Hack." & @CRLF & " " & @CRLF & "Le fichier de configuration (thhh_settings.ini) doit se trouver dans le répertoire thhh_settings pour que le programme fonctionne pleinement." & @CRLF & " " & @CRLF & " " & @CRLF & "__________________________________________________________________" & @CRLF & "Configuration's file can't be found, you can't use shortcuts." & @CRLF & "Please make sure that you have extract the downloaded file before launching The Hitchhiker's Hack." & @CRLF & " " & @CRLF & "The configuration's (thhh_settings.ini) file must be in the folder thhh_settings to make the program work fine.")
EndIf
language()
Do
	Switch GUIGetMsg()
		Case $reset
			reset()
		Case $about
			MsgBox(0, "About", "Merci aux communautées de www.mmo-trick.com, wwww.cheat-w0w.com et www.cheat-gam3.com pour leur soutient !" & @CRLF & "-----------------------------------------------------------------------------------------------------------------------------------------------" & @CRLF & " " & @CRLF & "Programme créé par Bob_74 pour la version " & $version & " de WoW" & @CRLF & " " & @CRLF & "Ce programme ne sera plus mis à jour désormais, le code source est disponible sur www.mmo-trick.com, wwww.cheat-w0w.com, www.cheat-gam3.com et www.elitepvpers.de")
		Case $continueonexit
			If GUICtrlRead($continueonexit) = $gui_checked Then
				IniWrite($setting, "Reglages", "Continue", 1)
			ElseIf GUICtrlRead($continueonexit) = $gui_unchecked Then
				IniWrite($setting, "Reglages", "Continue", 0)
			EndIf
		Case $francais
			IniWrite($setting, "Langue", "Langue", "0")
			language()
		Case $english
			IniWrite($setting, "Langue", "Langue", "1")
			language()
		Case $espanol
			IniWrite($setting, "Langue", "Langue", "2")
			language()
		Case $interfaceoff
			If GUICtrlRead($interfaceoff) = $gui_checked Then
				IniWrite($setting, "Reglages", "Interface", 0)
			ElseIf GUICtrlRead($interfaceoff) = $gui_unchecked Then
				IniWrite($setting, "Reglages", "Interface", 1)
			EndIf
			If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
				MsgBox(0, "", "Vous devez redémarrer le programme pour que l'interface soit changée")
			Else
				MsgBox(0, "", "The program need to be restarted to change the interface")
			EndIf
		Case $savesettings
			If GUICtrlRead($savesettings) = $gui_checked Then
				IniWrite($setting, "Reglages", "Reglages", 1)
				enablesettingchoice()
			ElseIf GUICtrlRead($savesettings) = $gui_unchecked Then
				IniWrite($setting, "Reglages", "Reglages", 0)
				disablesettingchoice()
			EndIf
		Case $ontop
			If GUICtrlRead($ontop) = $gui_checked Then
				WinSetOnTop($thhhgui, "", 1)
			ElseIf GUICtrlRead($ontop) = $gui_unchecked Then
				WinSetOnTop($thhhgui, "", 0)
			EndIf
		Case $ontopt
			If GUICtrlRead($ontopt) = $gui_checked Then
				WinSetOnTop($tplist, "", 1)
			ElseIf GUICtrlRead($ontopt) = $gui_unchecked Then
				WinSetOnTop($tplist, "", 0)
			EndIf
		Case $guitrans
			If GUICtrlRead($guitrans) = 1 Then
				WinSetTrans($thhhgui, -1, 150)
			Else
				WinSetTrans($thhhgui, -1, 255)
			EndIf
		Case $guitranst
			If GUICtrlRead($guitranst) = 1 Then
				WinSetTrans($tplist, -1, 150)
			Else
				WinSetTrans($tplist, -1, 255)
			EndIf
		Case $guitransstop
			If GUICtrlRead($guitransstop) = 1 Then
				WinSetTrans($stopchute, -1, 150)
			Else
				WinSetTrans($stopchute, -1, 255)
			EndIf
		Case $guitransdeblo
			If GUICtrlRead($guitransdeblo) = 1 Then
				WinSetTrans($debloperso, -1, 150)
			Else
				WinSetTrans($debloperso, -1, 255)
			EndIf
		Case $listouvrir
			settpname()
			GUISetState(@SW_SHOW, $tplist)
		Case $privedebloperso
			GUISetState(@SW_SHOW, $debloperso)
		Case $stopchuteon
			GUISetState(@SW_SHOW, $stopchute)
		Case $optionsbutton
			GUISetState(@SW_SHOW, $guisetting)
		Case $scsettings
			GUISetState(@SW_SHOW, $scsettingsgui)
		Case $privescsettings
			GUISetState(@SW_SHOW, $privescsettingsgui)
		Case $gui_event_close
			If WinActive("Teleport List") Then
				GUISetState(@SW_HIDE, $tplist)
			ElseIf WinActive("  Débloquer le perso") Then
				GUISetState(@SW_HIDE, $debloperso)
			ElseIf WinActive("  Stop chute") Then
				GUISetState(@SW_HIDE, $stopchute)
			ElseIf WinActive("Options") Then
				GUISetState(@SW_HIDE, $guisetting)
			ElseIf WinActive("Raccourcis Privé") Then
				If GUICtrlRead($priveraccourcis) = $gui_checked Then
					assignscprivate()
				EndIf
				If GUICtrlRead($priveclicktptoucheshift) = $gui_checked Then
					$clicktptouche = 10
					IniWrite($setting, "Raccourcis - Prive", "Clicktptouche", 10)
				ElseIf GUICtrlRead($priveclicktptouchectrl) = $gui_checked Then
					$clicktptouche = 11
					IniWrite($setting, "Raccourcis - Prive", "Clicktptouche", 11)
				ElseIf GUICtrlRead($priveclicktptouchealt) = $gui_checked Then
					$clicktptouche = 12
					IniWrite($setting, "Raccourcis - Prive", "Clicktptouche", 12)
				EndIf
				$speedincrwriteini = GUICtrlRead($privesettinginputspeedincr)
				IniWrite($setting, "Raccourcis - Prive", "SpeedIncr", $speedincrwriteini)
				$speedflyincrwriteini = GUICtrlRead($privesettinginputspeedflyincr)
				IniWrite($setting, "Raccourcis - Prive", "SpeedFlyIncr", $speedflyincrwriteini)
				$supersautincrwriteini = GUICtrlRead($privesettinginputsupersautincr)
				IniWrite($setting, "Raccourcis - Prive", "SupersautIncr", $supersautincrwriteini)
				$timespeedincrwriteini = GUICtrlRead($privesettinginputtimespeedincr)
				IniWrite($setting, "Raccourcis - Prive", "TimeSpeedIncr", $timespeedincrwriteini)
				$tailleincrwriteini = GUICtrlRead($privesettinginputtailleincr)
				IniWrite($setting, "Raccourcis - Prive", "TailleIncr", $tailleincrwriteini)
				IniWrite($setting, "Raccourcis - Prive", "SpeedCustomValue", GUICtrlRead($privesettinginputspeedcustominput))
				IniWrite($setting, "Raccourcis - Prive", "SpeedFlyCustomValue", GUICtrlRead($privesettinginputspeedflycustominput))
				GUISetState(@SW_HIDE, $privescsettingsgui)
			ElseIf WinActive("Raccourcis Officiel") Then
				If GUICtrlRead($raccourcis) = $gui_checked Then
					assignsc()
				EndIf
				GUISetState(@SW_HIDE, $scsettingsgui)
			ElseIf WinActive("The Hitchhiker's Hack") Then
				IniWrite($setting, "Reglages", "pspeedvalue", GUICtrlRead($privespeedinput))
				IniWrite($setting, "Reglages", "pspeedglobalevalue", GUICtrlRead($privespeedglobaleinput))
				IniWrite($setting, "Reglages", "pflymodspeedvalue", GUICtrlRead($priveflyspeedinput))
				IniWrite($setting, "Reglages", "psupersautvalue", GUICtrlRead($privesupersautinput))
				IniWrite($setting, "Reglages", "osupersautvalue", GUICtrlRead($supersautinput))
				IniWrite($setting, "Reglages", "pXYZSpeed", GUICtrlRead($privexyzspeedinput))
				If IniRead($setting, "Reglages", "Reglages", "Erreur") = 1 Then
					savevalues()
				EndIf
				If IniRead($setting, "Reglages", "Continue", "Erreur") = 1 Then
				Else
					reset()
				EndIf
				_memoryclose($wowprocess)
				Exit
			EndIf
		Case $privegotp
			gotp()
		Case $privecopytp
			copytp()
		Case $privegocorps
			gocorps()
		Case $privespeedon
			speed()
		Case $priveflymodon
			flymod()
		Case $privewaterwalkon
			privewaterwalk()
		Case $priveunderwaterwalkon
			underwaterwalk()
		Case $privewalljumpon
			walljump()
		Case $privemounton
			Global $mount1value = _memoryread($mount1, $wowprocess, "ptr")
			Global $mount2value = _memoryread($mount2, $wowprocess, "ptr")
			privemount()
		Case $priveinfinitejumpon
			privemultijump()
		Case $privewallclimbon
			wallclimbfunc()
		Case $privetrackherbes
			privetrackherbes()
		Case $privetrackfilons
			privetrackfilons()
		Case $privetrackcoffres
			privetrackcoffres()
		Case $privetrackpoissons
			privetrackpoissons()
		Case $privetrackallres
			privetrackallres()
		Case $privetrackallbet
			privetrackallbet()
		Case $privetrackbetes
			privetrackbetes()
		Case $privetrackdragons
			privetrackdragons()
		Case $privetrackdemons
			privetrackdemons()
		Case $privetrackelementaires
			privetrackelementaires()
		Case $privetrackgeants
			privetrackgeants()
		Case $privetrackmortsvivants
			privetrackmortsvivants()
		Case $privetrackhumanoides
			privetrackhumanoides()
		Case $privetrackbestioles
			privetrackbestioles()
		Case $privefreezezon
			privefreezez()
		Case $privenoclipon
			privenoclip()
		Case $privecollisionsm2
			collisionm2()
		Case $privecollisionswmo
			collisionwmo()
		Case $privecollisionsall
			collisionall()
		Case $privetpcibledos
			privetpcibledos()
		Case $privetpcibleundermap
			privetpcibleundermap()
		Case $deblopersobutton
			debloperso()
		Case $stopchutebutton
			privestopfall()
		Case $listteleportgo
			gettp()
		Case $addtp
			addtp()
		Case $deltp
			deltp()
		Case $underwaterwalkon
			underwaterwalk()
		Case $waterwalkon
			waterwalk()
		Case $walljumpon
			walljump()
		Case $wallclimbon
			wallclimbfunc()
		Case $collisionsm2
			collisionm2()
		Case $collisionswmo
			collisionwmo()
		Case $collisionsall
			collisionall()
		Case $trackherbes
			trackherbes()
		Case $trackfilons
			trackfilons()
		Case $trackcoffres
			trackcoffres()
		Case $trackpoissons
			trackpoissons()
		Case $trackallres
			trackallres()
		Case $trackallbet
			trackallbet()
		Case $trackbetes
			trackbetes()
		Case $trackdragons
			trackdragons()
		Case $trackdemons
			trackdemons()
		Case $trackelementaires
			trackelementaires()
		Case $trackgeants
			trackgeants()
		Case $trackmortsvivants
			trackmortsvivants()
		Case $trackhumanoides
			trackhumanoides()
		Case $trackbestioles
			trackbestioles()
		Case $settargetemote
			settargetemote()
		Case $titremenu
			settargettitre()
		Case $cameraspectate
			cameraspectate()
		Case $cameraspectatenoclip
			cameranoclip()
		Case $camerafollow
			camerafollow()
		Case $priveteleportcamera
			priveteleportcamera()
		Case $playertaillep
			taillep()
		Case $playertaillem
			taillem()
		Case $playerscaleinputok
			playerscaleinputfunc()
		Case $playerhauteurinputok
			playerhauteurinputfunc()
		Case $playerlargeurinputok
			playerlargeurinputfunc()
		Case $playerinputreset
			playerinputresetfunc()
		Case $mapshow
			showmap()
		Case $heureinputok
			setheure()
		Case $minutesinputok
			setminutes()
		Case $vitessetempsinputok
			settimespeed()
		Case $playerflags2check1
			playershow1()
		Case $playerflags2check2
			playershow2()
		Case $raccourcis
			If GUICtrlRead($raccourcis) = $gui_checked Then
				assignsc()
			Else
				unassignsc()
			EndIf
		Case $priveraccourcis
			If GUICtrlRead($priveraccourcis) = $gui_checked Then
				assignscprivate()
			ElseIf GUICtrlRead($priveraccourcis) = $gui_unchecked Then
				unassignscprivate()
			EndIf
	EndSwitch
	If WinGetState("Raccourcis Privé") = 15 Then
		privescsettings()
	ElseIf WinGetState("Raccourcis Officiel") = 15 Then
		scsettings()
	Else
	EndIf
	If GUICtrlRead($tpon) = $gui_checked Then
		tp()
	EndIf
	If GUICtrlRead($supersauton) = $gui_checked Then
		supersaut()
	EndIf
	If GUICtrlRead($privesupersauton) = $gui_checked Then
		privesupersaut()
	EndIf
	If GUICtrlRead($privexyzon) = $gui_checked Then
		privexyz()
	EndIf
	If GUICtrlRead($priveclicktp) = $gui_checked Then
		clicktp()
	EndIf
	If GUICtrlRead($nocooldowncheck) = $gui_checked Then
		nocooldown()
	EndIf
	inebriation()
Until $gui_event_close = 1

Func globalf()
	$wowprocesslistviewitemcount = ProcessList("Wow.exe")
	If $wowprocesslistviewitemcount[0][0] = 0 Then
		_guictrllistview_deleteallitems($wowprocesslistview)
		$wowprocesslistviewitemcountsave = 0
	ElseIf $wowprocesslistviewitemcount[0][0] = $wowprocesslistviewitemcountsave Then
		_memoryclose($wowprocess)
		$selectedpid = _guictrllistview_getselectedindices(GUICtrlGetHandle($wowprocesslistview))
		$selectedpidadd = ($selectedpid + 1)
		Global $wowpid = $wowprocesslist[$selectedpidadd][1]
		Global $wowprocess = _memoryopen($wowpid)
		$pb1 = _memoryread($staticplayer, $wowprocess, "Ptr")
		$pb2 = _memoryread($pb1 + $pbpointer1, $wowprocess, "Ptr")
		$playerbase = _memoryread($pb2 + $pbpointer2, $wowprocess, "Ptr")
		$playerbase2 = _memoryread($playerbase + 8, $wowprocess, "Ptr")
		If _memoryread($buildaddr, $wowprocess, "char[31]") = $build Then
			If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
				GUICtrlSetData($state, "Programme activé")
				GUICtrlSetColor($state, 3385856)
			ElseIf IniRead($setting, "Langue", "Langue", "Erreur") = 1 Then
				GUICtrlSetData($state, "Program activated")
				GUICtrlSetColor($state, 3385856)
			Else
				GUICtrlSetData($state, "Program activated")
				GUICtrlSetColor($state, 3385856)
			EndIf
		Else
			If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
				GUICtrlSetData($state, "Version incompatible avec votre jeu !")
				GUICtrlSetColor($state, 16711680)
			Else
				GUICtrlSetData($state, "Unsupported game version !")
				GUICtrlSetColor($state, 16711680)
			EndIf
		EndIf
		$playerbasead2 = _memoryread(($playerbase + $playerbase_ad2), $wowprocess, "ptr")
		$lvl1camerapointer = _memoryread($cam_camerastatic, $wowprocess, "ptr")
		$lvl2camerapointer = _memoryread(($lvl1camerapointer + $cam_cameraoffsa), $wowprocess, "ptr")
		$ofs_pbspectate = $playerbasead2 + $playerbase_pbspectate
		$memorycam = $lvl2camerapointer + $cam_cameraoffsb
		$memorycamrotz = $memorycam + $cam_camerarotz
		$memorycamrotx = $memorycam + $cam_camerarotx
		GUICtrlSetData($privemapinput, _memoryread($mapid, $wowprocess))
		GUICtrlSetData($privemapinputtp, _memoryread($mapid, $wowprocess))
		If _memoryread($mapid, $wowprocess) = 4294967295 Then
			GUICtrlSetData($mapactu, "")
		Else
			GUICtrlSetData($mapactu, _memoryread($mapid, $wowprocess))
		EndIf
		$mapnamepath = _memoryread($mapname, $wowprocess, "char[30]")
		$mapname1 = StringReplace($mapnamepath, "World\Maps\", "")
		$mapname2 = StringReplace($mapname1, "Expansion01", "Outreterre")
		$mapnamefinal = StringReplace($mapname2, "Northrend", "Norfendre")
		GUICtrlSetData($mapactuname, $mapnamefinal)
		GUICtrlSetData($privexinput, Round(_memoryread($playerbase + $posx, $wowprocess, "float"), 3))
		GUICtrlSetData($priveyinput, Round(_memoryread($playerbase + $posy, $wowprocess, "float"), 3))
		GUICtrlSetData($privezinput, Round(_memoryread($playerbase + $posz, $wowprocess, "float"), 3))
		If GUICtrlRead($privespeedglobaleon) = $gui_checked Then
			$privespeedinputed = GUICtrlRead($privespeedglobaleinput)
			Global $privespeedinputedpourcent = Round((($privespeedinputed - 7) * 100) / 7, 0)
		Else
			$privespeedinputed = GUICtrlRead($privespeedinput)
			Global $privespeedinputedpourcent = Round((($privespeedinputed - 7) * 100) / 7, 0)
		EndIf
		If $privespeedinputedpourcent > 0 Then
			GUICtrlSetData($lblspeedpourcent, "+" & $privespeedinputedpourcent & "%")
		Else
			GUICtrlSetData($lblspeedpourcent, $privespeedinputedpourcent & "%")
		EndIf
		If GUICtrlRead($privespeedglobaleon) = $gui_checked Then
			GUICtrlSetState($privespeedon, $gui_disable)
			GUICtrlSetState($privespeedinput, $gui_disable)
			GUICtrlSetState($priveflyspeedinput, $gui_disable)
			$privespeedglobaleinputed = GUICtrlRead($privespeedglobaleinput)
			_memorywrite($playerbase + $speedglobale, $wowprocess, $privespeedglobaleinputed, "float")
		Else
			GUICtrlSetState($privespeedon, $gui_enable)
			GUICtrlSetState($privespeedinput, $gui_enable)
			GUICtrlSetState($priveflyspeedinput, $gui_enable)
		EndIf
		If GUICtrlRead($privespeedon) = $gui_checked Then
			GUICtrlSetState($privespeedglobaleon, $gui_disable)
			GUICtrlSetState($privespeedglobaleinput, $gui_disable)
			$privespeedinputed = GUICtrlRead($privespeedinput)
			_memorywrite($playerbase + $speed, $wowprocess, $privespeedinputed, "float")
			_memorywrite($playerbase + $speedswim, $wowprocess, $privespeedinputed, "float")
		EndIf
		If GUICtrlRead($priveflymodon) = $gui_checked Then
			$priveflyspeedinputed = GUICtrlRead($priveflyspeedinput)
			_memorywrite($playerbase + $flyspeed, $wowprocess, $priveflyspeedinputed, "float")
			If _memoryread($playerbase + $playerstate, $wowprocess, "dword") = 4278190208 Then
				_memorywrite($playerbase + $playerstate, $wowprocess, 129, "dword")
			EndIf
		EndIf
		If GUICtrlRead($privefreezezon) = $gui_checked Then
			If _memoryread($playerbase + $playerstate2, $wowprocess, "ptr") = -2147483648 Then
				_memorywrite($playerbase + $playerstate2, $wowprocess, -2147482624, "ptr")
			EndIf
		EndIf
		If GUICtrlRead($privewaterwalkon) = $gui_checked Then
			_memorywrite($playerbase + $playerstate, $wowprocess, 144, "dword")
		EndIf
		If GUICtrlRead($privemounton) = $gui_checked Then
			_memorywrite($mount1, $wowprocess, $mount1value + 119, "Ptr")
			_memorywrite($mount2, $wowprocess, $mount2value + 119, "Ptr")
		EndIf
		If GUICtrlRead($priveinfinitejumpon) = $gui_checked Then
			_memorywrite($infinitejumppatch, $wowprocess, -1223753611, "Ptr")
		EndIf
		If GUICtrlRead($privecollisionsm2) = $gui_checked OR GUICtrlRead($collisionsm2) = $gui_checked Then
			_memorywrite($collisionm2s, $wowprocess, 1166743531, "Ptr")
			_memorywrite($collisionm2c, $wowprocess, 23201098, "Ptr")
		EndIf
		If GUICtrlRead($privecollisionswmo) = $gui_checked OR GUICtrlRead($collisionswmo) = $gui_checked Then
			_memorywrite($collisionwmo, $wowprocess, -1070428016, "Ptr")
		EndIf
		If GUICtrlRead($privecollisionsall) = $gui_checked OR GUICtrlRead($collisionsall) = $gui_checked Then
			GUICtrlSetState($privecollisionswmo, $gui_disable)
			GUICtrlSetState($privecollisionswmo, $gui_checked)
			GUICtrlSetState($privecollisionsm2, $gui_disable)
			GUICtrlSetState($privecollisionsm2, $gui_checked)
			GUICtrlSetState($collisionswmo, $gui_disable)
			GUICtrlSetState($collisionswmo, $gui_checked)
			GUICtrlSetState($collisionsm2, $gui_disable)
			GUICtrlSetState($collisionsm2, $gui_checked)
			_memorywrite($collisionm2s, $wowprocess, 1166743531, "Ptr")
			_memorywrite($collisionm2c, $wowprocess, 23201098, "Ptr")
			_memorywrite($collisionwmo, $wowprocess, -1070428016, "Ptr")
		EndIf
		If GUICtrlRead($wallclimbon) = $gui_checked OR GUICtrlRead($privewallclimbon) = $gui_checked Then
			_memorywrite($playerbase + $wallclimb, $wowprocess, 255, "float")
		EndIf
		If GUICtrlRead($waterwalkon) = $gui_checked Then
			_memorywrite($waterwalkpatch, $wowprocess, -813592432, "Ptr")
		EndIf
		If (GUICtrlRead($underwaterwalkon) = $gui_checked OR GUICtrlRead($priveunderwaterwalkon) = $gui_checked) AND (GUICtrlRead($walljumpon) = $gui_checked OR GUICtrlRead($privewalljumpon) = $gui_checked) Then
			_memorywrite($playerbase2 + $playerflags, $wowprocess, 4, "dword")
		ElseIf GUICtrlRead($underwaterwalkon) = $gui_checked OR GUICtrlRead($priveunderwaterwalkon) = $gui_checked Then
			_memorywrite($playerbase2 + $playerflags, $wowprocess, 6, "dword")
		ElseIf GUICtrlRead($walljumpon) = $gui_checked OR GUICtrlRead($privewalljumpon) = $gui_checked Then
			_memorywrite($playerbase2 + $playerflags, $wowprocess, 12, "dword")
		EndIf
		If GUICtrlRead($playerflags2check1) = $gui_checked Then
			$playerflags2value = _memoryread($playerbase2 + $playerflags2, $wowprocess, "dword")
			_memorywrite($playerbase2 + $playerflags2, $wowprocess, $playerflags2value, "dword")
		EndIf
		If GUICtrlRead($cameraspectate) = $gui_checked Then
			$cameraspectatespeedinputed = GUICtrlRead($cameraspectatespeedinput)
			_memorywrite($posxcamera + 56, $wowprocess, $cameraspectatespeedinputed, "float")
		EndIf
		If _memoryread($playerbase2 + $ressources, $wowprocess, "dword")NOT  = 0 Then
			Global $tracksaver = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		EndIf
		If _memoryread($playerbase2 + $ressources, $wowprocess, "dword") = 0 Then
			If GUICtrlRead($privetrackherbes) = $gui_checked OR GUICtrlRead($privetrackfilons) = $gui_checked OR GUICtrlRead($privetrackcoffres) = $gui_checked OR GUICtrlRead($privetrackpoissons) = $gui_checked OR GUICtrlRead($trackherbes) = $gui_checked OR GUICtrlRead($trackfilons) = $gui_checked OR GUICtrlRead($trackcoffres) = $gui_checked OR GUICtrlRead($trackpoissons) = $gui_checked Then
				_memorywrite($playerbase2 + $ressources, $wowprocess, $tracksaver, "dword")
			EndIf
		EndIf
		If _memoryread($playerbase2 + $hunt, $wowprocess, "dword")NOT  = 0 Then
			Global $tracksaveh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		EndIf
		If _memoryread($playerbase2 + $hunt, $wowprocess, "dword") = 0 Then
			If GUICtrlRead($privetrackbetes) = $gui_checked OR GUICtrlRead($privetrackdragons) = $gui_checked OR GUICtrlRead($privetrackdemons) = $gui_checked OR GUICtrlRead($privetrackelementaires) = $gui_checked OR GUICtrlRead($privetrackgeants) = $gui_checked OR GUICtrlRead($privetrackmortsvivants) = $gui_checked OR GUICtrlRead($privetrackhumanoides) = $gui_checked OR GUICtrlRead($privetrackbestioles) = $gui_checked OR GUICtrlRead($trackbetes) = $gui_checked OR GUICtrlRead($trackdragons) = $gui_checked OR GUICtrlRead($trackdemons) = $gui_checked OR GUICtrlRead($trackelementaires) = $gui_checked OR GUICtrlRead($trackgeants) = $gui_checked OR GUICtrlRead($trackmortsvivants) = $gui_checked OR GUICtrlRead($trackhumanoides) = $gui_checked OR GUICtrlRead($trackbestioles) = $gui_checked Then
				_memorywrite($playerbase2 + $hunt, $wowprocess, $tracksaveh, "dword")
			EndIf
		EndIf
		If _guictrlcombobox_getcursel($privefactionmenu) = 1 OR _guictrlcombobox_getcursel($factionmenu) = 1 Then
			_memorywrite(($playerbase2 + $faction), $wowprocess, 0, "dword")
		ElseIf _guictrlcombobox_getcursel($privefactionmenu) = 2 OR _guictrlcombobox_getcursel($factionmenu) = 2 Then
			_memorywrite(($playerbase2 + $faction), $wowprocess, 1, "dword")
		ElseIf _guictrlcombobox_getcursel($privefactionmenu) = 3 OR _guictrlcombobox_getcursel($factionmenu) = 3 Then
			_memorywrite(($playerbase2 + $faction), $wowprocess, 2, "dword")
		EndIf
	Else
		refreshpid()
	EndIf
EndFunc

Func refreshpid()
	$wowprocesslist = ProcessList("wow.exe")
	$wowpid1 = ProcessExists("wow.exe")
	$selecteditemlistview = _guictrllistview_getselectedindices($wowprocesslistview)
	_guictrllistview_deleteallitems($wowprocesslistview)
	For $i = 1 To $wowprocesslist[0][0]
		GUICtrlCreateListViewItem($wowprocesslist[$i][1], $wowprocesslistview)
	Next
	_guictrllistview_setcolumnwidth($wowprocesslistview, 0, 40)
	_guictrllistview_setitemselected($wowprocesslistview, $selecteditemlistview)
	$selectedpid = _guictrllistview_getselectedindices(GUICtrlGetHandle($wowprocesslistview))
	$wowprocesslistviewitemcountsave = _guictrllistview_getitemcount($wowprocesslistview)
	$selectedpidadd = ($selectedpid + 1)
	_memoryclose($wowprocess)
	$wowpid = $wowprocesslist[$selectedpidadd][1]
	$wowprocess = _memoryopen($wowpid)
	$pb1 = _memoryread($staticplayer, $wowprocess, "Ptr")
	$pb2 = _memoryread($pb1 + $pbpointer1, $wowprocess, "Ptr")
	$playerbase = _memoryread($pb2 + $pbpointer2, $wowprocess, "Ptr")
	$playerbase2 = _memoryread($playerbase + 8, $wowprocess, "Ptr")
	$playerscalevar = _memoryread($playerbase + $playerscale, $wowprocess, "float")
	$playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
	$playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
	$sautvar = _memoryread($playerbase + $hauteursaut, $wowprocess, "float")
	_memorywrite($playerbase2 + $hunt, $wowprocess, 0)
	_memorywrite($playerbase2 + $ressources, $wowprocess, 0)
	$playerhauteurreset = $playerhauteurvar
	$playerlargeurreset = $playerlargeurvar
	$playerbasead2 = _memoryread(($playerbase + $playerbase_ad2), $wowprocess, "ptr")
	$ofs_pbspectate = $playerbasead2 + $playerbase_pbspectate
	$lvl1camerapointer = _memoryread($cam_camerastatic, $wowprocess, "ptr")
	$lvl2camerapointer = _memoryread(($lvl1camerapointer + $cam_cameraoffsa), $wowprocess, "ptr")
	$memorycam = $lvl2camerapointer + $cam_cameraoffsb
	$memorycamrotz = $memorycam + $cam_camerarotz
	$memorycamrotx = $memorycam + $cam_camerarotx
EndFunc

Func supersaut()
	If _ispressed(20) Then
		$supersautinputedbrut = GUICtrlRead($supersautinput)
		$supersautinputed = Abs($supersautinputedbrut) * (-1)
		_memorywrite($playerbase + $hauteursaut, $wowprocess, $supersautinputed, "float")
	EndIf
EndFunc

Func wallclimbfunc()
	If GUICtrlRead($wallclimbon) = $gui_unchecked OR GUICtrlRead($privewallclimbon) = $gui_unchecked Then
		_memorywrite($playerbase + $wallclimb, $wowprocess, 1, "float")
	EndIf
EndFunc

Func underwaterwalk()
	If (GUICtrlRead($underwaterwalkon) = $gui_unchecked OR GUICtrlRead($priveunderwaterwalkon) = $gui_unchecked) AND (GUICtrlRead($walljumpon) = $gui_unchecked OR GUICtrlRead($privewalljumpon) = $gui_unchecked) Then
		_memorywrite($playerbase2 + $playerflags, $wowprocess, 8, "dword")
	ElseIf GUICtrlRead($walljumpon) = $gui_checked OR GUICtrlRead($privewalljumpon) = $gui_checked Then
		_memorywrite($playerbase2 + $playerflags, $wowprocess, 12, "dword")
	EndIf
EndFunc

Func walljump()
	If (GUICtrlRead($underwaterwalkon) = $gui_unchecked OR GUICtrlRead($priveunderwaterwalkon) = $gui_unchecked) AND (GUICtrlRead($walljumpon) = $gui_unchecked OR GUICtrlRead($privewalljumpon) = $gui_unchecked) Then
		_memorywrite($playerbase2 + $playerflags, $wowprocess, 8, "dword")
	ElseIf GUICtrlRead($underwaterwalkon) = $gui_checked OR GUICtrlRead($priveunderwaterwalkon) = $gui_checked Then
		_memorywrite($playerbase2 + $playerflags, $wowprocess, 6, "dword")
	EndIf
EndFunc

Func waterwalk()
	If GUICtrlRead($waterwalkon) = $gui_unchecked Then
		_memorywrite($waterwalkpatch, $wowprocess, -813624204, "Ptr")
	EndIf
EndFunc

Func tp()
	If WinActive("World of Warcraft") Then
		If GUICtrlRead($tpmanu) = $gui_checked AND GUICtrlRead($tpauto) = $gui_unchecked Then
			If _ispressed(68, $dll) Then
				For $x = 0 To 10
					$position = _memoryread($playerbase + $posx, $wowprocess, "float")
					$newposition = $position + 0.13
					_memorywrite($playerbase + $posx, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
					$x = $x + 1
				Next
			EndIf
			If _ispressed(65, $dll) Then
				For $x = 0 To 10
					$position = _memoryread($playerbase + $posx, $wowprocess, "float")
					$newposition = $position - 0.13
					_memorywrite($playerbase + $posx, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
					$x = $x + 1
				Next
			EndIf
			If _ispressed(64, $dll) Then
				For $x = 0 To 10
					$position = _memoryread($playerbase + $posy, $wowprocess, "float")
					$newposition = $position + 0.13
					_memorywrite($playerbase + $posy, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
					$x = $x + 1
				Next
			EndIf
			If _ispressed(66, $dll) Then
				For $x = 0 To 10
					$position = _memoryread($playerbase + $posy, $wowprocess, "float")
					$newposition = $position - 0.13
					_memorywrite($playerbase + $posy, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
					$x = $x + 1
				Next
			EndIf
			If _ispressed(67, $dll) Then
				For $x = 0 To 10
					$position = _memoryread($playerbase + $posz, $wowprocess, "float")
					$newposition = $position + 0.13
					_memorywrite($playerbase + $posz, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
					$x = $x + 1
				Next
			EndIf
			If _ispressed(69, $dll) Then
				For $x = 0 To 10
					$position = _memoryread($playerbase + $posz, $wowprocess, "float")
					$newposition = $position - 0.13
					_memorywrite($playerbase + $posz, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
					$x = $x + 1
				Next
			EndIf
		EndIf
		If GUICtrlRead($tpmanu) = $gui_unchecked AND GUICtrlRead($tpauto) = $gui_checked Then
			If _ispressed(68, $dll) Then
				Do
					$position = _memoryread($playerbase + $posx, $wowprocess, "float")
					$newposition = $position + 0.13
					_memorywrite($playerbase + $posx, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
				Until _ispressed(61, $dll)
			EndIf
			If _ispressed(65, $dll) Then
				Do
					$position = _memoryread($playerbase + $posx, $wowprocess, "float")
					$newposition = $position - 0.13
					_memorywrite($playerbase + $posx, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
				Until _ispressed(61, $dll)
			EndIf
			If _ispressed(64, $dll) Then
				Do
					$position = _memoryread($playerbase + $posy, $wowprocess, "float")
					$newposition = $position + 0.13
					_memorywrite($playerbase + $posy, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
				Until _ispressed(61, $dll)
			EndIf
			If _ispressed(66, $dll) Then
				Do
					$position = _memoryread($playerbase + $posy, $wowprocess, "float")
					$newposition = $position - 0.13
					_memorywrite($playerbase + $posy, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
				Until _ispressed(61, $dll)
			EndIf
			If _ispressed(67, $dll) Then
				Do
					$position = _memoryread($playerbase + $posz, $wowprocess, "float")
					$newposition = $position + 0.13
					_memorywrite($playerbase + $posz, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
				Until _ispressed(61, $dll)
			EndIf
			If _ispressed(69, $dll) Then
				Do
					$position = _memoryread($playerbase + $posz, $wowprocess, "float")
					$newposition = $position - 0.13
					_memorywrite($playerbase + $posz, $wowprocess, $newposition, "float")
					Send("{left}{left}{right}{right}")
					Sleep(60)
				Until _ispressed(61, $dll)
			EndIf
		EndIf
	EndIf
EndFunc

Func sconoclipaction()
	If WinActive("World of Warcraft") Then
		If GUICtrlRead($noclipactionon) = $gui_checked Then
			$locationx = _memoryread($playerbase + $posx, $wowprocess, "float")
			$locationy = _memoryread($playerbase + $posy, $wowprocess, "float")
			$locationr = _memoryread($playerbase + $posr, $wowprocess, "float")
			$newlocationx = $locationx + 0.13 * Cos($locationr)
			$newlocationy = $locationy + 0.13 * Sin($locationr)
			_memorywrite($playerbase + $posx, $wowprocess, $newlocationx, "float")
			_memorywrite($playerbase + $posy, $wowprocess, $newlocationy, "float")
			Send("{left}{left}{right}{right}")
			$x = $x + 1
		EndIf
	EndIf
EndFunc

Func trackherbes()
	If GUICtrlRead($trackherbes) = $gui_checked Then
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue + 2), "dword")
	Else
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue - 2), "dword")
	EndIf
EndFunc

Func trackfilons()
	If GUICtrlRead($trackfilons) = $gui_checked Then
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue + 4), "dword")
	Else
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue - 4), "dword")
	EndIf
EndFunc

Func trackcoffres()
	If GUICtrlRead($trackcoffres) = $gui_checked Then
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer + 32), "dword")
	Else
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer - 32), "dword")
	EndIf
EndFunc

Func trackpoissons()
	If GUICtrlRead($trackpoissons) = $gui_checked Then
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer + 262144), "dword")
	Else
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer - 262144), "dword")
	EndIf
EndFunc

Func trackallres()
	If GUICtrlRead($trackallres) = $gui_checked Then
		GUICtrlSetState($trackherbes, $gui_checked)
		GUICtrlSetState($trackfilons, $gui_checked)
		GUICtrlSetState($trackcoffres, $gui_checked)
		GUICtrlSetState($trackpoissons, $gui_checked)
		_memorywrite($playerbase2 + $ressources, $wowprocess, -1, "dword")
	Else
		GUICtrlSetState($trackherbes, $gui_unchecked)
		GUICtrlSetState($trackfilons, $gui_unchecked)
		GUICtrlSetState($trackcoffres, $gui_unchecked)
		GUICtrlSetState($trackpoissons, $gui_unchecked)
		_memorywrite($playerbase2 + $ressources, $wowprocess, 0, "dword")
	EndIf
EndFunc

Func trackbetes()
	If GUICtrlRead($trackbetes) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 1), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 1), "dword")
	EndIf
EndFunc

Func trackdragons()
	If GUICtrlRead($trackdragons) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 2), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 2), "dword")
	EndIf
EndFunc

Func trackdemons()
	If GUICtrlRead($trackdemons) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 4), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 4), "dword")
	EndIf
EndFunc

Func trackelementaires()
	If GUICtrlRead($trackelementaires) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 8), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 8), "dword")
	EndIf
EndFunc

Func trackgeants()
	If GUICtrlRead($trackgeants) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 16), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 16), "dword")
	EndIf
EndFunc

Func trackmortsvivants()
	If GUICtrlRead($trackmortsvivants) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 32), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 32), "dword")
	EndIf
EndFunc

Func trackhumanoides()
	If GUICtrlRead($trackhumanoides) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 64), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 64), "dword")
	EndIf
EndFunc

Func trackbestioles()
	If GUICtrlRead($trackbestioles) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 128), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 128), "dword")
	EndIf
EndFunc

Func trackallbet()
	If GUICtrlRead($trackallbet) = $gui_checked Then
		GUICtrlSetState($trackbetes, $gui_checked)
		GUICtrlSetState($trackdragons, $gui_checked)
		GUICtrlSetState($trackdemons, $gui_checked)
		GUICtrlSetState($trackelementaires, $gui_checked)
		GUICtrlSetState($trackgeants, $gui_checked)
		GUICtrlSetState($trackmortsvivants, $gui_checked)
		GUICtrlSetState($trackhumanoides, $gui_checked)
		GUICtrlSetState($trackbestioles, $gui_checked)
		_memorywrite($playerbase2 + $hunt, $wowprocess, -1, "dword")
	Else
		GUICtrlSetState($trackbetes, $gui_unchecked)
		GUICtrlSetState($trackdragons, $gui_unchecked)
		GUICtrlSetState($trackdemons, $gui_unchecked)
		GUICtrlSetState($trackelementaires, $gui_unchecked)
		GUICtrlSetState($trackgeants, $gui_unchecked)
		GUICtrlSetState($trackmortsvivants, $gui_unchecked)
		GUICtrlSetState($trackhumanoides, $gui_unchecked)
		GUICtrlSetState($trackbestioles, $gui_unchecked)
		_memorywrite($playerbase2 + $hunt, $wowprocess, 0, "dword")
	EndIf
EndFunc

Func privexyz()
	If WinActive("World of Warcraft") Then
		If _ispressed(68, $dll) Then
			$privexyzspeed = GUICtrlRead(Abs($privexyzspeedinput))
			$locationx = _memoryread($playerbase + $posx, $wowprocess, "float")
			$locationy = _memoryread($playerbase + $posy, $wowprocess, "float")
			$locationr = _memoryread($playerbase + $posr, $wowprocess, "float")
			$newlocationx = $locationx + $privexyzspeed * Cos($locationr)
			$newlocationy = $locationy + $privexyzspeed * Sin($locationr)
			_memorywrite($playerbase + $posx, $wowprocess, $newlocationx, "float")
			_memorywrite($playerbase + $posy, $wowprocess, $newlocationy, "float")
		EndIf
		If _ispressed(65, $dll) Then
			$privexyzspeed = GUICtrlRead(Abs($privexyzspeedinput))
			$locationx = _memoryread($playerbase + $posx, $wowprocess, "float")
			$locationy = _memoryread($playerbase + $posy, $wowprocess, "float")
			$locationr = _memoryread($playerbase + $posr, $wowprocess, "float")
			$newlocationx = $locationx - $privexyzspeed * Cos($locationr)
			$newlocationy = $locationy - $privexyzspeed * Sin($locationr)
			_memorywrite($playerbase + $posx, $wowprocess, $newlocationx, "float")
			_memorywrite($playerbase + $posy, $wowprocess, $newlocationy, "float")
		EndIf
		If _ispressed(66, $dll) Then
			$privexyzspeed = GUICtrlRead(Abs($privexyzspeedinput))
			$locationx = _memoryread($playerbase + $posx, $wowprocess, "float")
			$locationy = _memoryread($playerbase + $posy, $wowprocess, "float")
			$locationr = _memoryread($playerbase + $posr, $wowprocess, "float")
			$newlocationx = $locationx - $privexyzspeed * Cos($locationr + ($pi / 2))
			$newlocationy = $locationy - $privexyzspeed * Sin($locationr + ($pi / 2))
			_memorywrite($playerbase + $posx, $wowprocess, $newlocationx, "float")
			_memorywrite($playerbase + $posy, $wowprocess, $newlocationy, "float")
		EndIf
		If _ispressed(64, $dll) Then
			$privexyzspeed = GUICtrlRead(Abs($privexyzspeedinput))
			$locationx = _memoryread($playerbase + $posx, $wowprocess, "float")
			$locationy = _memoryread($playerbase + $posy, $wowprocess, "float")
			$locationr = _memoryread($playerbase + $posr, $wowprocess, "float")
			$newlocationx = $locationx - $privexyzspeed * Cos($locationr - ($pi / 2))
			$newlocationy = $locationy - $privexyzspeed * Sin($locationr - ($pi / 2))
			_memorywrite($playerbase + $posx, $wowprocess, $newlocationx, "float")
			_memorywrite($playerbase + $posy, $wowprocess, $newlocationy, "float")
		EndIf
		If _ispressed(67, $dll) Then
			$privexyzspeed = GUICtrlRead(Abs($privexyzspeedinput))
			$position = _memoryread($playerbase + $posz, $wowprocess, "float")
			$newposition = $position + $privexyzspeed
			_memorywrite($playerbase + $posz, $wowprocess, $newposition, "float")
		EndIf
		If _ispressed(69, $dll) Then
			$privexyzspeed = GUICtrlRead(Abs($privexyzspeedinput))
			$position = _memoryread($playerbase + $posz, $wowprocess, "float")
			$newposition = $position - $privexyzspeed
			_memorywrite($playerbase + $posz, $wowprocess, $newposition, "float")
		EndIf
	EndIf
EndFunc

Func priveteleportcamera()
	If _memoryread($posxcamera, $wowprocess, "float") <> 0 Then
		If IniRead($setting, "Reglages", "Msgbox", "Erreur") = 1 Then
			If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
				$msgboxtpcamera = MsgBox(4, "Attention", "Cette fonction ne fontionne que pour serveur privés." & @CRLF & " " & @CRLF & "Si vous êtes sur serveur officiel, cliquez sur Non." & @CRLF & "Si vous êtes sur serveur privé, vous pouvez cliquer sur Oui pour continuer.")
			Else
				$msgboxtpcamera = MsgBox(4, "Warning", "This function si for Private server only." & @CRLF & " " & @CRLF & "If you are playing on live server, click on No." & @CRLF & "If you are playing on private server, you can click Yes to continue.")
			EndIf
			If $msgboxtpcamera = 6 Then
				IniWrite($setting, "Reglages", "Msgbox", 0)
				If IniRead($setting, "Langue", "Langue", "Erreur") = 0 Then
					MsgBox(0, "Avertissement", "Ces messages n'apparaîtront plus désormais.")
				Else
					MsgBox(0, "Warning", "These messages won't be displayed anymore.")
				EndIf
				$camposx = _memoryread($posxcamera, $wowprocess, "Float")
				$camposy = _memoryread($posxcamera + 4, $wowprocess, "Float")
				$camposz = _memoryread($posxcamera + 8, $wowprocess, "Float")
				_memorywrite($playerbase + $posx, $wowprocess, $camposx, "Float")
				_memorywrite($playerbase + $posy, $wowprocess, $camposy, "Float")
				_memorywrite($playerbase + $posz, $wowprocess, $camposz, "Float")
			ElseIf $msgboxtpcamera = 7 Then
			EndIf
		Else
			$camposx = _memoryread($posxcamera, $wowprocess, "Float")
			$camposy = _memoryread($posxcamera + 4, $wowprocess, "Float")
			$camposz = _memoryread($posxcamera + 8, $wowprocess, "Float")
			_memorywrite($playerbase + $posx, $wowprocess, $camposx, "Float")
			_memorywrite($playerbase + $posy, $wowprocess, $camposy, "Float")
			_memorywrite($playerbase + $posz, $wowprocess, $camposz, "Float")
		EndIf
	EndIf
EndFunc

Func copytp()
	GUICtrlSetData($privexinputtp, Round((_memoryread($playerbase + $posx, $wowprocess, "float")), 3))
	GUICtrlSetData($priveyinputtp, Round((_memoryread($playerbase + $posy, $wowprocess, "float")), 3))
	GUICtrlSetData($privezinputtp, Round((_memoryread($playerbase + $posz, $wowprocess, "float")), 3))
EndFunc

Func gotp()
	_memorywrite($playerbase + $posx, $wowprocess, GUICtrlRead($privexinputtp), "float")
	_memorywrite($playerbase + $posy, $wowprocess, GUICtrlRead($priveyinputtp), "float")
	_memorywrite($playerbase + $posz, $wowprocess, GUICtrlRead($privezinputtp), "float")
EndFunc

Func gocorps()
	If _memoryread($corps, $wowprocess, "float") <> 0 Then
		$corpsx = _memoryread($corps, $wowprocess, "float")
		$corpsy = _memoryread($corps + 4, $wowprocess, "float")
		$corpsz = _memoryread($corps + 8, $wowprocess, "float")
		_memorywrite($playerbase + $posx, $wowprocess, $corpsx, "float")
		_memorywrite($playerbase + $posy, $wowprocess, $corpsy, "float")
		_memorywrite($playerbase + $posz, $wowprocess, $corpsz, "float")
	EndIf
EndFunc

Func clicktp()
	If WinActive("World of Warcraft") Then
		If _ispressed(IniRead($setting, "Raccourcis - Prive", "Clicktptouche", "Erreur"), $dll) AND _ispressed(2, $dll) Then
			$playerstateorg = _memoryread($playerbase + $playerstate2, $wowprocess, "ptr")
			_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg + 2048), "ptr")
			Sleep(245)
			If _memoryread($clicktpx, $wowprocess, "float") = 0 Then
				_memorywrite($playerbase + $playerstate2, $wowprocess, $playerstateorg, "ptr")
				Send("{DOWN}")
			Else
				_memorywrite($playerbase + $posx, $wowprocess, _memoryread($clicktpx, $wowprocess, "float"), "float")
				_memorywrite($playerbase + $posy, $wowprocess, _memoryread($clicktpy, $wowprocess, "float"), "float")
				_memorywrite($playerbase + $posz, $wowprocess, _memoryread($clicktpz, $wowprocess, "float"), "float")
				Sleep(245)
				_memorywrite($playerbase + $playerstate2, $wowprocess, $playerstateorg, "ptr")
				_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg + 1024), "ptr")
				_memorywrite($playerbase + $playerstate2, $wowprocess, $playerstateorg, "ptr")
				Sleep(500)
			EndIf
		EndIf
	EndIf
EndFunc

Func nocooldown()
	cooldowns(0, 300)
EndFunc

Func cooldowns($spell, $spellcd)
	$cd = $basecd
	$nr = 0
	$nextcd = _memoryread($cd + 8, $wowprocess, "ptr")
	While ($nextcd <> 0) AND (BitAND($nextcd, 1) = 0)
		$nr = $nr + 1
		$cd = $nextcd
		$nextcd = _memoryread($cd + 4, $wowprocess, "ptr")
		$ecd = _memoryread($cd + 4, $wowprocess, "int")
		$id = _memoryread($cd + 8, $wowprocess, "int")
		$starttime = _memoryread($cd + 16, $wowprocess, "uint")
		Local $pf = DllStructCreate("ulong")
		DllCall("kernel32.dll", "none", "QueryPerformanceFrequency", "ptr", DllStructGetPtr($pf))
		Local $pc = DllStructCreate("int64")
		DllCall("kernel32.dll", "none", "QueryPerformanceCounter", "ptr", DllStructGetPtr($pc))
		$ts = (DllStructGetData($pc, 1) / DllStructGetData($pf, 1)) * 1000
		$mycd = _memoryread($cd + 16, $wowprocess, "int")
		If ($ts - $starttime < $spellcd) Then
			_memorywritegcd($cd + 16, $wowprocess, "uint", $starttime - 1500)
			Return 1
		EndIf
	WEnd
	Return 0
EndFunc

Func privetpcibledos()
	$targetguid = _memoryread($targetguidstatic, $wowprocess, "uint64")
	If $targetguid = 0 Then Return 
	$adr = getguid($targetguid)
	$targetx = _memoryread($adr + $posx, $wowprocess, "float")
	$targety = _memoryread($adr + $posy, $wowprocess, "float")
	$targetz = _memoryread($adr + $posz, $wowprocess, "float")
	$targetr = _memoryread($adr + $posr, $wowprocess, "float")
	_memorywrite($playerbase + $posx, $wowprocess, $targetx - (3 * Cos($targetr)), "float")
	_memorywrite($playerbase + $posy, $wowprocess, $targety - (3 * Sin($targetr)), "float")
	_memorywrite($playerbase + $posz, $wowprocess, $targetz + 1.5, "float")
	_memorywrite($playerbase + $posr, $wowprocess, $targetr, "float")
	Sleep(150)
	ControlSend("World of Warcraft", "", "", "{S}")
EndFunc

Func privetpcibleundermap()
	$targetguid = _memoryread($targetguidstatic, $wowprocess, "uint64")
	If $targetguid = 0 Then Return 
	$adr = getguid($targetguid)
	$targetx = _memoryread($adr + $posx, $wowprocess, "float")
	$targety = _memoryread($adr + $posy, $wowprocess, "float")
	$targetz = _memoryread($adr + $posz, $wowprocess, "float")
	$targetr = _memoryread($adr + $posr, $wowprocess, "float")
	_memorywrite($playerbase + $posx, $wowprocess, $targetx - (8 * Cos($targetr)), "float")
	_memorywrite($playerbase + $posy, $wowprocess, $targety - (8 * Sin($targetr)), "float")
	_memorywrite($playerbase + $posz, $wowprocess, $targetz - 5, "float")
	_memorywrite($playerbase + $posr, $wowprocess, $targetr, "float")
	Sleep(150)
	ControlSend("World of Warcraft", "", "", "{Q}{D}")
EndFunc

Func getguid($currenttargetguid)
	$clientconnection = _memoryread($staticclientconnection, $wowprocess, "dword")
	$curlistmgr = _memoryread($clientconnection + $mgroffset, $wowprocess, "dword")
	$firstobject = _memoryread($curlistmgr + $ofs_first_obj, $wowprocess, "dword")
	$curobject = $firstobject
	$type = _memoryread($curobject + $ofs_obj_type, $wowprocess, "dword")
	While $type < 8 AND $type > 0
		$guidobj = _memoryread($curobject + $ofs_obj_guid, $wowprocess, "int64")
		If $guidobj = $currenttargetguid Then
			$currenttargetguidadr = $curobject
			Return $currenttargetguidadr
			ExitLoop
		EndIf
		$curobject = _memoryread($curobject + $ofs_next_obj, $wowprocess, "dword")
		$type = _memoryread($curobject + $ofs_obj_type, $wowprocess, "dword")
	WEnd
	$currenttargetguid = ""
EndFunc

Func speed()
	If GUICtrlRead($privespeedon) = $gui_unchecked Then
		GUICtrlSetState($privespeedglobaleon, $gui_enable)
		GUICtrlSetState($privespeedglobaleinput, $gui_enable)
		_memorywrite($playerbase + $speed, $wowprocess, 7, "float")
		_memorywrite($playerbase + $speedswim, $wowprocess, 4.7, "float")
	EndIf
EndFunc

Func collisionm2()
	If GUICtrlRead($privecollisionsm2) = $gui_unchecked OR GUICtrlRead($collisionsm2) = $gui_unchecked Then
		_memorywrite($collisionm2s, $wowprocess, 1166743412, "Ptr")
		_memorywrite($collisionm2c, $wowprocess, 23233551, "Ptr")
	EndIf
EndFunc

Func collisionwmo()
	If GUICtrlRead($privecollisionswmo) = $gui_unchecked OR GUICtrlRead($collisionswmo) = $gui_unchecked Then
		_memorywrite($collisionwmo, $wowprocess, -1070463371, "Ptr")
	EndIf
EndFunc

Func collisionall()
	If GUICtrlRead($privecollisionsall) = $gui_unchecked OR GUICtrlRead($collisionsall) = $gui_unchecked Then
		GUICtrlSetState($privecollisionswmo, $gui_enable)
		GUICtrlSetState($privecollisionswmo, $gui_unchecked)
		GUICtrlSetState($privecollisionsm2, $gui_enable)
		GUICtrlSetState($privecollisionsm2, $gui_unchecked)
		GUICtrlSetState($collisionswmo, $gui_enable)
		GUICtrlSetState($collisionswmo, $gui_unchecked)
		GUICtrlSetState($collisionsm2, $gui_enable)
		GUICtrlSetState($collisionsm2, $gui_unchecked)
		_memorywrite($collisionm2s, $wowprocess, 1166743412, "Ptr")
		_memorywrite($collisionm2c, $wowprocess, 23233551, "Ptr")
		_memorywrite($collisionwmo, $wowprocess, -1070463371, "Ptr")
	EndIf
EndFunc

Func flymod()
	If GUICtrlRead($priveflymodon) = $gui_unchecked Then
		_memorywrite($playerbase + $playerstate, $wowprocess, 128, "dword")
	EndIf
EndFunc

Func privefreezez()
	If GUICtrlRead($privefreezezon) = $gui_unchecked Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, -2147483648, "ptr")
	EndIf
EndFunc

Func privewaterwalk()
	If GUICtrlRead($privewaterwalkon) = $gui_unchecked Then
		_memorywrite($playerbase + $playerstate, $wowprocess, 128, "dword")
	EndIf
EndFunc

Func privemount()
	If GUICtrlRead($privemounton) = $gui_unchecked Then
		$mount1value = _memoryread($mount1, $wowprocess, "ptr")
		$mount2value = _memoryread($mount2, $wowprocess, "ptr")
		_memorywrite($mount1, $wowprocess, $mount1value - 119, "Ptr")
		_memorywrite($mount2, $wowprocess, $mount2value - 119, "Ptr")
	EndIf
EndFunc

Func privemultijump()
	If GUICtrlRead($priveinfinitejumpon) = $gui_unchecked Then
		_memorywrite($infinitejumppatch, $wowprocess, -1223736203, "Ptr")
	EndIf
EndFunc

Func privenoclip1()
	If GUICtrlRead($privenoclip1on) = $gui_unchecked OR GUICtrlRead($noclip1on) = $gui_unchecked Then
		_memorywrite($collisionm2s, $wowprocess, 1166743412, "Ptr")
		_memorywrite($collisionm2c, $wowprocess, 23233551, "Ptr")
		_memorywrite($collisionwmo, $wowprocess, -1070463371, "Ptr")
	EndIf
EndFunc

Func privenoclip()
	If GUICtrlRead($privenoclipon) = $gui_checked Then
		_memorywrite(($playerbase + $playerlargeur), $wowprocess, 0, "float")
	Else
		_memorywrite(($playerbase + $playerlargeur), $wowprocess, $playerlargeurreset, "float")
	EndIf
EndFunc

Func debloperso()
	$playerstateorg = _memoryread($playerbase + $playerstate2, $wowprocess, "ptr")
	If $playerstateorg = -2147481600 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = -2147480576 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = -2130704384 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = -1879046144 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = -1879045120 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = -1862268928 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = 2048 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = 3072 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	ElseIf $playerstateorg = 16779264 Then
		_memorywrite($playerbase + $playerstate2, $wowprocess, ($playerstateorg - 2048), "ptr")
	Else
	EndIf
EndFunc

Func privestopfall()
	_memorywrite($playerbase + $playerstate2, $wowprocess, -2147482624, "ptr")
	_memorywrite($playerbase + $playerstate2, $wowprocess, -2147483648, "ptr")
	Send("{Space}")
	Sleep(25)
	_memorywrite($playerbase + $playerstate2, $wowprocess, -2147482624, "ptr")
	_memorywrite($playerbase + $playerstate2, $wowprocess, -2147483648, "ptr")
EndFunc

Func privesupersaut()
	If _ispressed(20) Then
		$privesupersautinputedbrut = GUICtrlRead($privesupersautinput)
		$privesupersautinputed = Abs($privesupersautinputedbrut) * (-1)
		_memorywrite($playerbase + $hauteursaut, $wowprocess, $privesupersautinputed, "float")
	EndIf
EndFunc

Func privetrackherbes()
	If GUICtrlRead($privetrackherbes) = $gui_checked Then
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue + 2), "dword")
	Else
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue - 2), "dword")
	EndIf
EndFunc

Func privetrackfilons()
	If GUICtrlRead($privetrackfilons) = $gui_checked Then
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue + 4), "dword")
	Else
		$trackvalue = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvalue - 4), "dword")
	EndIf
EndFunc

Func privetrackcoffres()
	If GUICtrlRead($privetrackcoffres) = $gui_checked Then
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer + 32), "dword")
	Else
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer - 32), "dword")
	EndIf
EndFunc

Func privetrackpoissons()
	If GUICtrlRead($privetrackpoissons) = $gui_checked Then
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer + 262144), "dword")
	Else
		$trackvaluer = _memoryread($playerbase2 + $ressources, $wowprocess, "dword")
		_memorywrite($playerbase2 + $ressources, $wowprocess, ($trackvaluer - 262144), "dword")
	EndIf
EndFunc

Func privetrackallres()
	If GUICtrlRead($privetrackallres) = $gui_checked Then
		GUICtrlSetState($privetrackherbes, $gui_checked)
		GUICtrlSetState($privetrackfilons, $gui_checked)
		GUICtrlSetState($privetrackcoffres, $gui_checked)
		GUICtrlSetState($privetrackpoissons, $gui_checked)
		_memorywrite($playerbase2 + $ressources, $wowprocess, -1, "dword")
	Else
		GUICtrlSetState($privetrackherbes, $gui_unchecked)
		GUICtrlSetState($privetrackfilons, $gui_unchecked)
		GUICtrlSetState($privetrackcoffres, $gui_unchecked)
		GUICtrlSetState($privetrackpoissons, $gui_unchecked)
		_memorywrite($playerbase2 + $ressources, $wowprocess, 0, "dword")
	EndIf
EndFunc

Func privetrackbetes()
	If GUICtrlRead($privetrackbetes) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 1), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 1), "dword")
	EndIf
EndFunc

Func privetrackdragons()
	If GUICtrlRead($privetrackdragons) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 2), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 2), "dword")
	EndIf
EndFunc

Func privetrackdemons()
	If GUICtrlRead($privetrackdemons) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 4), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 4), "dword")
	EndIf
EndFunc

Func privetrackelementaires()
	If GUICtrlRead($privetrackelementaires) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 8), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 8), "dword")
	EndIf
EndFunc

Func privetrackgeants()
	If GUICtrlRead($privetrackgeants) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 16), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 16), "dword")
	EndIf
EndFunc

Func privetrackmortsvivants()
	If GUICtrlRead($privetrackmortsvivants) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 32), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 32), "dword")
	EndIf
EndFunc

Func privetrackhumanoides()
	If GUICtrlRead($privetrackhumanoides) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 64), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 64), "dword")
	EndIf
EndFunc

Func privetrackbestioles()
	If GUICtrlRead($privetrackbestioles) = $gui_checked Then
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh + 128), "dword")
	Else
		$trackvalueh = _memoryread($playerbase2 + $hunt, $wowprocess, "dword")
		_memorywrite($playerbase2 + $hunt, $wowprocess, ($trackvalueh - 128), "dword")
	EndIf
EndFunc

Func privetrackallbet()
	If GUICtrlRead($privetrackallbet) = $gui_checked Then
		GUICtrlSetState($privetrackbetes, $gui_checked)
		GUICtrlSetState($privetrackdragons, $gui_checked)
		GUICtrlSetState($privetrackdemons, $gui_checked)
		GUICtrlSetState($privetrackelementaires, $gui_checked)
		GUICtrlSetState($privetrackgeants, $gui_checked)
		GUICtrlSetState($privetrackmortsvivants, $gui_checked)
		GUICtrlSetState($privetrackhumanoides, $gui_checked)
		GUICtrlSetState($privetrackbestioles, $gui_checked)
		_memorywrite($playerbase2 + $hunt, $wowprocess, -1, "dword")
	Else
		GUICtrlSetState($privetrackbetes, $gui_unchecked)
		GUICtrlSetState($privetrackdragons, $gui_unchecked)
		GUICtrlSetState($privetrackdemons, $gui_unchecked)
		GUICtrlSetState($privetrackelementaires, $gui_unchecked)
		GUICtrlSetState($privetrackgeants, $gui_unchecked)
		GUICtrlSetState($privetrackmortsvivants, $gui_unchecked)
		GUICtrlSetState($privetrackhumanoides, $gui_unchecked)
		GUICtrlSetState($privetrackbestioles, $gui_unchecked)
		_memorywrite($playerbase2 + $hunt, $wowprocess, 0, "dword")
	EndIf
EndFunc

Func showmap()
	For $mapmask = 4164 To 4660
		_memorywrite(($playerbase2 + (0 & $mapmask)), $wowprocess, -1, "Int64")
	Next
EndFunc

Func settargetemote()
	$emoteselec = GUICtrlRead($emotemenu)
	$emoteselecid1 = StringMid($emoteselec, 1, 4)
	$emoteselecid = StringStripWS($emoteselecid1, 8)
	$targetguid = _memoryread($targetguidstatic, $wowprocess, "uint64")
	If $targetguid = 0 Then
		_memorywrite($playerbase2 + $emote, $wowprocess, $emoteselecid, "dword")
		Sleep(150)
	Else
		$adr = getguid($targetguid)
		$adr2 = _memoryread($adr + 8, $wowprocess, "ptr")
		_memorywrite($adr2 + $emote, $wowprocess, $emoteselecid, "dword")
		Sleep(150)
	EndIf
EndFunc

Func settargettitre()
	$titreselec = GUICtrlRead($titremenu)
	$titreselecid1 = StringMid($titreselec, 1, 4)
	$titreselecid = StringStripWS($titreselecid1, 8)
	_memorywrite($playerbase2 + $titre, $wowprocess, $titreselecid, "dword")
EndFunc

Func taillep()
	$playerscalevar = _memoryread($playerbase + $playerscale, $wowprocess, "float")
	$playernewtaille = $playerscalevar * 1.5
	_memorywrite(($playerbase + $playerscale), $wowprocess, $playernewtaille, "float")
	GUICtrlSetData($playerscaleinput, Round($playernewtaille, 5))
	$playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
	$playernewtaille = $playerhauteurvar * 1.5
	_memorywrite(($playerbase + $playerhauteur), $wowprocess, $playernewtaille, "float")
	GUICtrlSetData($playerhauteurinput, Round($playernewtaille, 5))
	$playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
	$playernewtaille = $playerlargeurvar * 1.5
	_memorywrite(($playerbase + $playerlargeur), $wowprocess, $playernewtaille, "float")
	GUICtrlSetData($playerlargeurinput, Round($playernewtaille, 5))
EndFunc

Func taillem()
	$playerscalevar = _memoryread($playerbase + $playerscale, $wowprocess, "float")
	$playernewtaille = $playerscalevar / 1.5
	_memorywrite(($playerbase + $playerscale), $wowprocess, $playernewtaille, "float")
	GUICtrlSetData($playerscaleinput, Round($playernewtaille, 5))
	$playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
	$playernewtaille = $playerhauteurvar / 1.5
	_memorywrite(($playerbase + $playerhauteur), $wowprocess, $playernewtaille, "float")
	GUICtrlSetData($playerhauteurinput, Round($playernewtaille, 5))
	$playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
	$playernewtaille = $playerlargeurvar / 1.5
	_memorywrite(($playerbase + $playerlargeur), $wowprocess, $playernewtaille, "float")
	GUICtrlSetData($playerlargeurinput, Round($playernewtaille, 5))
EndFunc

Func playerscaleinputfunc()
	$playerscaleinputed = GUICtrlRead($playerscaleinput)
	_memorywrite(($playerbase + $playerscale), $wowprocess, $playerscaleinputed, "float")
EndFunc

Func playerhauteurinputfunc()
	$playerhauteurinputed = GUICtrlRead($playerhauteurinput)
	_memorywrite(($playerbase + $playerhauteur), $wowprocess, $playerhauteurinputed, "float")
EndFunc

Func playerlargeurinputfunc()
	$playerlargeurinputed = GUICtrlRead($playerlargeurinput)
	_memorywrite(($playerbase + $playerlargeur), $wowprocess, $playerlargeurinputed, "float")
EndFunc

Func playerinputresetfunc()
	_memorywrite(($playerbase + $playerscale), $wowprocess, 1, "float")
	If $playerhauteurreset = 0 Then
		_memorywrite(($playerbase + $playerhauteur), $wowprocess, 2.01, "float")
		$playerhauteurvar = 2.01
		GUICtrlSetData($playerhauteurinput, Round($playerhauteurvar, 5))
	Else
		_memorywrite(($playerbase + $playerhauteur), $wowprocess, $playerhauteurreset, "float")
		GUICtrlSetData($playerhauteurinput, Round($playerhauteurreset, 5))
	EndIf
	If $playerlargeurreset = 0 Then
		_memorywrite(($playerbase + $playerlargeur), $wowprocess, 0.31, "float")
		$playerlargeurvar = 0.31
		GUICtrlSetData($playerlargeurinput, Round($playerlargeurvar, 5))
	Else
		_memorywrite(($playerbase + $playerlargeur), $wowprocess, $playerlargeurreset, "float")
		GUICtrlSetData($playerlargeurinput, Round($playerlargeurreset, 5))
	EndIf
	GUICtrlSetData($playerscaleinput, 1)
EndFunc

Func inebriation()
	If GUICtrlRead($inebriationon) = $gui_checked Then
		$val_majslider_inebriation = GUICtrlRead($slider_transition_inebriation)
		$slider_inebriation = $val_majslider_inebriation
		GUICtrlSetData($valeur_slider_inebriation, $slider_inebriation)
		_memorywrite(($playerbase2 + $inebriation), $wowprocess, $slider_inebriation, "dword")
	Else
		$val_majslider_inebriation = GUICtrlRead($slider_transition_inebriation)
		$slider_inebriation = $val_majslider_inebriation
		GUICtrlSetData($valeur_slider_inebriation, $slider_inebriation)
		_memorywrite(($playerbase2 + $inebriation), $wowprocess, 0, "dword")
	EndIf
EndFunc

Func playershow1()
	If GUICtrlRead($playerflags2check1) = $gui_checked Then
		$playerflags2value = _memoryread($playerbase2 + $playerflags2, $wowprocess, "dword")
		_memorywrite($playerbase2 + $playerflags2, $wowprocess, ($playerflags2value + 1), "dword")
	Else
		$playerflags2value = _memoryread($playerbase2 + $playerflags2, $wowprocess, "dword")
		_memorywrite($playerbase2 + $playerflags2, $wowprocess, ($playerflags2value - 1), "dword")
	EndIf
EndFunc

Func playershow2()
	If GUICtrlRead($playerflags2check2) = $gui_checked Then
		$playerflags2value = _memoryread($playerbase2 + $playerflags2, $wowprocess, "dword")
		_memorywrite($playerbase2 + $playerflags2, $wowprocess, ($playerflags2value + 2), "dword")
	Else
		$playerflags2value = _memoryread($playerbase2 + $playerflags2, $wowprocess, "dword")
		_memorywrite($playerbase2 + $playerflags2, $wowprocess, ($playerflags2value - 2), "dword")
	EndIf
EndFunc

Func cameraspectate()
	If GUICtrlRead($cameraspectate) = $gui_checked Then
		$posx2 = _memoryread($playerbase + $posx, $wowprocess, "Float")
		$posy2 = _memoryread($playerbase + $posy, $wowprocess, "Float")
		$posz2 = _memoryread($playerbase + $posz, $wowprocess, "Float")
		$posr2 = _memoryread($playerbase + $posr, $wowprocess, "Float")
		_memorywrite($posxcamera, $wowprocess, $posx2, "Float")
		_memorywrite($posxcamera + 4, $wowprocess, $posy2, "Float")
		_memorywrite($posxcamera + 8, $wowprocess, $posz2 + 3, "Float")
		_memorywrite($ofs_pbspectate, $wowprocess, 255, "Float")
		_memorywrite($memorycamrotz, $wowprocess, 0.36, "Float")
		_memorywrite($memorycamrotx, $wowprocess, $posr2, "Float")
		Sleep(500)
	ElseIf GUICtrlRead($cameraspectate) = $gui_unchecked Then
		_memorywrite($ofs_pbspectate, $wowprocess, 0, "float")
		Sleep(500)
	EndIf
EndFunc

Func cameranoclip()
	If GUICtrlRead($cameraspectatenoclip) = $gui_checked Then
		_memorywrite($posxcamera + 60, $wowprocess, 0, "int")
	ElseIf GUICtrlRead($cameraspectatenoclip) = $gui_unchecked Then
		_memorywrite($posxcamera + 60, $wowprocess, 1, "int")
	EndIf
EndFunc

Func camerafollow()
	If GUICtrlRead($camerafollow) = $gui_checked Then
		$clientconnection = _memoryread($staticclientconnection, $wowprocess, "dword")
		$curlistmgr = _memoryread($clientconnection + $mgroffset, $wowprocess, "dword")
		$currenttargetguid = _memoryread($targetguidstatic, $wowprocess, "uint64")
		coor($currenttargetguid)
	ElseIf GUICtrlRead($camerafollow) = $gui_unchecked Then
	EndIf
EndFunc

Func dummy()
EndFunc

Func coor($arg)
	If $arg = 0 Then Return 
	$adr = getguid($arg)
	$r = _memoryread($adr + $posr, $wowprocess, "float")
	$rxvar = $r
	$rzvar = 0.3
	$speczoom = 1.5
	If GUICtrlRead($camerafollow) = $gui_checked Then
		Do
			If _ispressed(27) Then
				$rxvar = $rxvar + 0.002
			ElseIf _ispressed(25) Then
				$rxvar = $rxvar - 0.002
			ElseIf _ispressed(26) Then
				$speczoom = $speczoom - 0.001
			ElseIf _ispressed(28) Then
				$speczoom = $speczoom + 0.001
			EndIf
			HotKeySet("{left}", "dummy")
			HotKeySet("{right}", "dummy")
			HotKeySet("{up}", "dummy")
			HotKeySet("{down}", "dummy")
			$x = _memoryread($adr + $posx, $wowprocess, "float")
			$y = _memoryread($adr + $posy, $wowprocess, "float")
			$z = _memoryread($adr + $posz, $wowprocess, "float")
			$r = _memoryread($adr + $posr, $wowprocess, "float")
			_memorywrite($posxcamera, $wowprocess, $x - (8 * Cos($rxvar)), "Float")
			_memorywrite($posxcamera + 4, $wowprocess, $y - (8 * Sin($rxvar)), "Float")
			_memorywrite($posxcamera + 8, $wowprocess, $z + 4, "Float")
			_memorywrite($posxcamera + 52, $wowprocess, $speczoom, "Float")
			_memorywrite($memorycamrotz, $wowprocess, $rzvar, "float")
			_memorywrite($memorycamrotx, $wowprocess, $rxvar, "float")
			_memorywrite($ofs_pbspectate, $wowprocess, 255, "Float")
			_memorywrite($posxcamera + 56, $wowprocess, 0, "float")
		Until GUICtrlRead($camerafollow) = $gui_unchecked
	EndIf
	If GUICtrlRead($camerafollow) = $gui_unchecked Then
		$speczoom = 1.5
		HotKeySet("{left}")
		HotKeySet("{right}")
		HotKeySet("{up}")
		HotKeySet("{down}")
		$posx2 = _memoryread($playerbase + $posx, $wowprocess, "Float")
		$posy2 = _memoryread($playerbase + $posy, $wowprocess, "Float")
		$posz2 = _memoryread($playerbase + $posz, $wowprocess, "Float")
		$posr2 = _memoryread($playerbase + $posr, $wowprocess, "Float")
		_memorywrite($posxcamera, $wowprocess, $posx2, "Float")
		_memorywrite($posxcamera + 4, $wowprocess, $posy2, "Float")
		_memorywrite($posxcamera + 8, $wowprocess, $posz2 + 4, "Float")
		_memorywrite($posxcamera + 52, $wowprocess, $speczoom, "Float")
		_memorywrite($ofs_pbspectate, $wowprocess, 0, "float")
	EndIf
EndFunc

Func setheure()
	$timeminutesvalue = GUICtrlRead($heureinput)
	_memorywrite($timeheure, $wowprocess, Abs($timeminutesvalue), "dword")
EndFunc

Func setminutes()
	$timeminutesvalue = GUICtrlRead($minutesinput)
	_memorywrite($timeminutes, $wowprocess, Abs($timeminutesvalue), "dword")
EndFunc

Func settimespeed()
	$timespeedvalue = $timespeedorg * GUICtrlRead($vitessetempsinput)
	_memorywrite($timespeed, $wowprocess, Abs($timespeedvalue), "float")
EndFunc

Func reset()
	_memoryclose($wowpid)
	Global $wowpid = ProcessExists("wow.exe")
	Global $wowprocess = _memoryopen($wowpid)
	$pb1 = _memoryread($staticplayer, $wowprocess, "Ptr")
	$pb2 = _memoryread($pb1 + $pbpointer1, $wowprocess, "Ptr")
	$playerbase = _memoryread($pb2 + $pbpointer2, $wowprocess, "Ptr")
	$playerbase2 = _memoryread($playerbase + 8, $wowprocess, "Ptr")
	GUICtrlSetData($privespeedglobaleinput, IniRead($setting, "Reglages", "pspeedglobalevalue", "Error"))
	GUICtrlSetData($privespeedinput, IniRead($setting, "Reglages", "pspeedvalue", "Error"))
	GUICtrlSetData($priveflyspeedinput, IniRead($setting, "Reglages", "pflymodspeedvalue", "Error"))
	GUICtrlSetData($privesupersautinput, IniRead($setting, "Reglages", "psupersautvalue", "Error"))
	GUICtrlSetData($supersautinput, IniRead($setting, "Reglages", "osupersautvalue", "Error"))
	GUICtrlSetData($privexyzspeedinput, IniRead($setting, "Reglages", "pXYZSpeed", "Error"))
	GUICtrlSetState($walljumpon, $gui_unchecked)
	GUICtrlSetState($underwaterwalkon, $gui_unchecked)
	GUICtrlSetState($supersauton, $gui_unchecked)
	GUICtrlSetState($wallclimbon, $gui_unchecked)
	_memorywrite($playerbase + $wallclimb, $wowprocess, 1, "float")
	GUICtrlSetState($tpon, $gui_unchecked)
	GUICtrlSetState($noclipactionon, $gui_unchecked)
	_memorywrite($playerbase2 + $ressources, $wowprocess, 0, "dword")
	_memorywrite($playerbase2 + $hunt, $wowprocess, 0, "dword")
	If GUICtrlRead($privemounton) = $gui_checked Then
		GUICtrlSetState($privemounton, $gui_unchecked)
		$mount1value = _memoryread($mount1, $wowprocess, "ptr")
		$mount2value = _memoryread($mount2, $wowprocess, "ptr")
		_memorywrite($mount1, $wowprocess, $mount1value - 119, "Ptr")
		_memorywrite($mount2, $wowprocess, $mount2value - 119, "Ptr")
	EndIf
	GUICtrlSetState($privewalljumpon, $gui_unchecked)
	GUICtrlSetState($privecollisionsm2, $gui_unchecked)
	GUICtrlSetState($privecollisionswmo, $gui_unchecked)
	GUICtrlSetState($privecollisionsall, $gui_unchecked)
	GUICtrlSetState($privecollisionsm2, $gui_enable)
	GUICtrlSetState($privecollisionswmo, $gui_enable)
	GUICtrlSetState($privecollisionsall, $gui_enable)
	GUICtrlSetState($collisionsm2, $gui_unchecked)
	GUICtrlSetState($collisionswmo, $gui_unchecked)
	GUICtrlSetState($collisionsall, $gui_unchecked)
	GUICtrlSetState($collisionsm2, $gui_enable)
	GUICtrlSetState($collisionswmo, $gui_enable)
	GUICtrlSetState($collisionsall, $gui_enable)
	_memorywrite($collisionm2s, $wowprocess, 1166743412, "Ptr")
	_memorywrite($collisionm2c, $wowprocess, 23233551, "Ptr")
	_memorywrite($collisionwmo, $wowprocess, -1070463371, "Ptr")
	GUICtrlSetState($waterwalkon, $gui_unchecked)
	_memorywrite($waterwalkpatch, $wowprocess, -813624204, "Ptr")
	GUICtrlSetState($priveinfinitejumpon, $gui_unchecked)
	_memorywrite($infinitejumppatch, $wowprocess, -1223736203, "Ptr")
	GUICtrlSetState($priveunderwaterwalkon, $gui_unchecked)
	GUICtrlSetState($privespeedglobaleon, $gui_unchecked)
	_memorywrite($playerbase2 + $playerflags, $wowprocess, 8, "dword")
	GUICtrlSetState($privesupersauton, $gui_unchecked)
	GUICtrlSetState($privewallclimbon, $gui_unchecked)
	_memorywrite($playerbase + $wallclimb, $wowprocess, 1, "float")
	_memorywrite($playerbase2 + $ressources, $wowprocess, 0, "dword")
	_memorywrite($playerbase2 + $hunt, $wowprocess, 0, "dword")
	GUICtrlSetState($privexyzon, $gui_unchecked)
	GUICtrlSetState($priveclicktp, $gui_unchecked)
	GUICtrlSetState($priveflymodon, $gui_unchecked)
	GUICtrlSetState($privewaterwalkon, $gui_unchecked)
	_memorywrite($playerbase + $playerstate, $wowprocess, 128, "dword")
	_memorywrite($playerbase + $playerstate2, $wowprocess, -2147483648, "ptr")
	GUICtrlSetState($privefreezezon, $gui_unchecked)
	GUICtrlSetState($privenoclipon, $gui_unchecked)
	_memorywrite($playerbase + $flyspeed, $wowprocess, 7, "float")
	GUICtrlSetState($privespeedon, $gui_unchecked)
	GUICtrlSetState($privespeedglobaleon, $gui_enable)
	GUICtrlSetState($privespeedglobaleinput, $gui_enable)
	_memorywrite($playerbase + $speed, $wowprocess, 7, "float")
	_memorywrite($playerbase + $speedswim, $wowprocess, 4.7, "float")
	GUICtrlSetData($privexinput, Round(_memoryread($playerbase + $posx, $wowprocess, "float"), 3))
	GUICtrlSetData($priveyinput, Round(_memoryread($playerbase + $posy, $wowprocess, "float"), 3))
	GUICtrlSetData($privezinput, Round(_memoryread($playerbase + $posz, $wowprocess, "float"), 3))
	$scpriveflymodon = 0
	$scprivespeedon = 0
	$scprivewallclimbon = 0
	$scpriveclicktpon = 0
	$scprivesupersauton = 0
	$playerhauteurvar = _memoryread($playerbase + $playerhauteur, $wowprocess, "float")
	$playerlargeurvar = _memoryread($playerbase + $playerlargeur, $wowprocess, "float")
	playerinputresetfunc()
	GUICtrlSetData($valeur_slider_inebriation, 0)
	GUICtrlSetData($slider_transition_inebriation, 0)
	GUICtrlSetState($inebriationon, $gui_unchecked)
	_memorywrite(($playerbase2 + $inebriation), $wowprocess, 0, "dword")
	GUICtrlSetState($playerflags2check1, $gui_unchecked)
	GUICtrlSetState($playerflags2check2, $gui_unchecked)
	_memorywrite($playerbase2 + $playerflags2, $wowprocess, 2048, "dword")
	_memorywrite($ofs_pbspectate, $wowprocess, 0, "float")
	GUICtrlSetState($cameraspectate, $gui_unchecked)
	_memorywrite($ofs_pbspectate, $wowprocess, 0, "float")
	GUICtrlSetState($cameraspectatenoclip, $gui_unchecked)
	_memorywrite($posxcamera + 60, $wowprocess, 1, "int")
	GUICtrlSetState($privetrackallbet, $gui_unchecked)
	GUICtrlSetState($privetrackallres, $gui_unchecked)
	GUICtrlSetState($trackallbet, $gui_unchecked)
	GUICtrlSetState($trackallres, $gui_unchecked)
	GUICtrlSetState($nocooldowncheck, $gui_unchecked)
	GUICtrlSetState($camerafollow, $gui_unchecked)
	GUICtrlSetState($trackherbes, $gui_unchecked)
	GUICtrlSetState($trackherbes, $gui_enable)
	GUICtrlSetState($trackfilons, $gui_unchecked)
	GUICtrlSetState($trackfilons, $gui_enable)
	GUICtrlSetState($trackcoffres, $gui_unchecked)
	GUICtrlSetState($trackcoffres, $gui_enable)
	GUICtrlSetState($trackpoissons, $gui_unchecked)
	GUICtrlSetState($trackpoissons, $gui_enable)
	GUICtrlSetState($trackbetes, $gui_unchecked)
	GUICtrlSetState($trackbetes, $gui_enable)
	GUICtrlSetState($trackdragons, $gui_unchecked)
	GUICtrlSetState($trackdragons, $gui_enable)
	GUICtrlSetState($trackdemons, $gui_unchecked)
	GUICtrlSetState($trackdemons, $gui_enable)
	GUICtrlSetState($trackelementaires, $gui_unchecked)
	GUICtrlSetState($trackelementaires, $gui_enable)
	GUICtrlSetState($trackgeants, $gui_unchecked)
	GUICtrlSetState($trackgeants, $gui_enable)
	GUICtrlSetState($trackmortsvivants, $gui_unchecked)
	GUICtrlSetState($trackmortsvivants, $gui_enable)
	GUICtrlSetState($trackhumanoides, $gui_unchecked)
	GUICtrlSetState($trackhumanoides, $gui_enable)
	GUICtrlSetState($trackbestioles, $gui_unchecked)
	GUICtrlSetState($trackbestioles, $gui_enable)
	GUICtrlSetState($privetrackherbes, $gui_unchecked)
	GUICtrlSetState($privetrackherbes, $gui_enable)
	GUICtrlSetState($privetrackfilons, $gui_unchecked)
	GUICtrlSetState($privetrackfilons, $gui_enable)
	GUICtrlSetState($privetrackcoffres, $gui_unchecked)
	GUICtrlSetState($privetrackcoffres, $gui_enable)
	GUICtrlSetState($privetrackpoissons, $gui_unchecked)
	GUICtrlSetState($privetrackpoissons, $gui_enable)
	GUICtrlSetState($privetrackbetes, $gui_unchecked)
	GUICtrlSetState($privetrackbetes, $gui_enable)
	GUICtrlSetState($privetrackdragons, $gui_unchecked)
	GUICtrlSetState($privetrackdragons, $gui_enable)
	GUICtrlSetState($privetrackdemons, $gui_unchecked)
	GUICtrlSetState($privetrackdemons, $gui_enable)
	GUICtrlSetState($privetrackelementaires, $gui_unchecked)
	GUICtrlSetState($privetrackelementaires, $gui_enable)
	GUICtrlSetState($privetrackgeants, $gui_unchecked)
	GUICtrlSetState($privetrackgeants, $gui_enable)
	GUICtrlSetState($privetrackmortsvivants, $gui_unchecked)
	GUICtrlSetState($privetrackmortsvivants, $gui_enable)
	GUICtrlSetState($privetrackhumanoides, $gui_unchecked)
	GUICtrlSetState($privetrackhumanoides, $gui_enable)
	GUICtrlSetState($privetrackbestioles, $gui_unchecked)
	GUICtrlSetState($privetrackbestioles, $gui_enable)
	GUICtrlSetData($heureinput, _memoryread($timeheure, $wowprocess, "dword"))
	GUICtrlSetData($minutesinput, _memoryread($timeminutes, $wowprocess, "dword"))
	GUICtrlSetData($vitessetempsinput, 1)
	_memorywrite($timespeed, $wowprocess, $timespeedorg, "float")
EndFunc
