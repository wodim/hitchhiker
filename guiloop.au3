Do
    Switch GUIGetMsg()
        Case $reset
            reset()
        Case $about
            MsgBox(0, "About", "Merci aux communautées de www.mmo-trick.com, wwww.cheat-w0w.com et www.cheat-gam3.com pour leur soutient !" & @CRLF & "-----------------------------------------------------------------------------------------------------------------------------------------------" & @CRLF & " " & @CRLF & "Programme créé par Bob_74 pour la version " & $version & " de WoW" & @CRLF & " " & @CRLF & "Ce programme ne sera plus mis à jour désormais, le code source est disponible sur www.mmo-trick.com, wwww.cheat-w0w.com, www.cheat-gam3.com et www.elitepvpers.de")
        Case $continueonexit
            If GUICtrlRead($continueonexit) = $gui_checked Then
                IniWrite($setting, "Options", "Continue", 1)
            ElseIf GUICtrlRead($continueonexit) = $gui_unchecked Then
                IniWrite($setting, "Options", "Continue", 0)
            EndIf
        Case $savesettings
            If GUICtrlRead($savesettings) = $gui_checked Then
                IniWrite($setting, "Options", "Options", 1)
                enablesettingchoice()
            ElseIf GUICtrlRead($savesettings) = $gui_unchecked Then
                IniWrite($setting, "Options", "Options", 0)
                disablesettingchoice()
            EndIf
        Case $ontop
            If GUICtrlRead($ontop) = $gui_checked Then
                WinSetOnTop($ftwogui, "", 1)
            ElseIf GUICtrlRead($ontop) = $gui_unchecked Then
                WinSetOnTop($ftwogui, "", 0)
            EndIf
        Case $ontopt
            If GUICtrlRead($ontopt) = $gui_checked Then
                WinSetOnTop($tplist, "", 1)
            ElseIf GUICtrlRead($ontopt) = $gui_unchecked Then
                WinSetOnTop($tplist, "", 0)
            EndIf
        Case $guitrans
            If GUICtrlRead($guitrans) = 1 Then
                WinSetTrans($ftwogui, -1, 150)
            Else
                WinSetTrans($ftwogui, -1, 255)
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
            ElseIf WinActive("World of Warcraft") Then
                IniWrite($setting, "Options", "pspeedvalue", GUICtrlRead($privespeedinput))
                IniWrite($setting, "Options", "pspeedglobalevalue", GUICtrlRead($privespeedglobaleinput))
                IniWrite($setting, "Options", "pflymodspeedvalue", GUICtrlRead($priveflyspeedinput))
                IniWrite($setting, "Options", "psupersautvalue", GUICtrlRead($privesupersautinput))
                IniWrite($setting, "Options", "pXYZSpeed", GUICtrlRead($privexyzspeedinput))
                If IniRead($setting, "Options", "Options", "Erreur") = 1 Then
                    savevalues()
                EndIf
                If IniRead($setting, "Options", "Continue", "Erreur") = 1 Then
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
