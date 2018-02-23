Func reglageslancement()
    If IniRead($setting, "Options", "pspeed", "Erreur") = 1 Then
        GUICtrlSetState($launchspeed, $gui_checked)
        GUICtrlSetState($privespeedon, $gui_checked)
        speed()
    EndIf
    If IniRead($setting, "Options", "pflymod", "Erreur") = 1 Then
        GUICtrlSetState($launchfly, $gui_checked)
        GUICtrlSetState($priveflymodon, $gui_checked)
        flymod()
    EndIf
    If IniRead($setting, "Options", "pSupersaut", "Erreur") = 1 Then
        GUICtrlSetState($launchsupersautprivate, $gui_checked)
        GUICtrlSetState($privesupersauton, $gui_checked)
    EndIf
    If IniRead($setting, "Options", "oSupersaut", "Erreur") = 1 Then
        GUICtrlSetState($launchsupersautofficiel, $gui_checked)
        GUICtrlSetState($supersauton, $gui_checked)
    EndIf
    If IniRead($setting, "Options", "pXYZActivate", "Erreur") = 1 Then
        GUICtrlSetState($launchxyzprivate, $gui_checked)
        GUICtrlSetState($privexyzon, $gui_checked)
    EndIf
    If IniRead($setting, "Options", "pWallclimb", "Erreur") = 1 Then
        GUICtrlSetState($launchwallclimbprivate, $gui_checked)
        GUICtrlSetState($privewallclimbon, $gui_checked)
        privewallclimbfunc()
    EndIf
    If IniRead($setting, "Options", "oWallclimb", "Erreur") = 1 Then
        GUICtrlSetState($launchwallclimbofficiel, $gui_checked)
        GUICtrlSetState($wallclimbon, $gui_checked)
        wallclimbfunc()
    EndIf
    If IniRead($setting, "Options", "pNocooldown", "Erreur") = 1 Then
        GUICtrlSetState($launchnocd, $gui_checked)
        GUICtrlSetState($nocooldowncheck, $gui_checked)
        nocooldown()
    EndIf
    If IniRead($setting, "Options", "pRaccourcis", "Erreur") = 1 Then
        GUICtrlSetState($launchraccourcisprivate, $gui_checked)
        GUICtrlSetState($priveraccourcis, $gui_checked)
        assignscprivate()
    EndIf
    If IniRead($setting, "Options", "pclicktotp", "Erreur") = 1 Then
        GUICtrlSetState($launchclicktotp, $gui_checked)
        GUICtrlSetState($priveclicktp, $gui_checked)
    EndIf
    If IniRead($setting, "Options", "oXYZActivate", "Erreur") = 1 Then
        GUICtrlSetState($launchxyzofficiel, $gui_checked)
        GUICtrlSetState($tpon, $gui_checked)
    EndIf
    If IniRead($setting, "Options", "oXYZActivate", "Erreur") = 1 Then
        GUICtrlSetState($launchxyzofficiel, $gui_checked)
        GUICtrlSetState($tpon, $gui_checked)
    EndIf
    If IniRead($setting, "Options", "oRaccourcis", "Erreur") = 1 Then
        GUICtrlSetState($launchraccourcisofficiel, $gui_checked)
        GUICtrlSetState($raccourcis, $gui_checked)
        assignsc()
    EndIf
    If IniRead($setting, "Options", "ptrack", "Erreur") = 1 Then
        GUICtrlSetState($launchtrackprivate, $gui_checked)
        If IniRead($setting, "Options", "pRTout", "Erreur") = 1 Then
            GUICtrlSetState($privetrackallres, $gui_checked)
            privetrackallres()
        Else
            If IniRead($setting, "Options", "pHerbes", "Erreur") = 1 Then
                GUICtrlSetState($privetrackherbes, $gui_checked)
                privetrackherbes()
            EndIf
            If IniRead($setting, "Options", "pFilons", "Erreur") = 1 Then
                GUICtrlSetState($privetrackfilons, $gui_checked)
                privetrackfilons()
            EndIf
            If IniRead($setting, "Options", "pCoffres", "Erreur") = 1 Then
                GUICtrlSetState($privetrackcoffres, $gui_checked)
                privetrackcoffres()
            EndIf
            If IniRead($setting, "Options", "pPoissons", "Erreur") = 1 Then
                GUICtrlSetState($privetrackpoissons, $gui_checked)
                privetrackpoissons()
            EndIf
        EndIf
        If IniRead($setting, "Options", "pHTout", "Erreur") = 1 Then
            GUICtrlSetState($privetrackallbet, $gui_checked)
            privetrackallbet()
        Else
            If IniRead($setting, "Options", "pBetes", "Erreur") = 1 Then
                GUICtrlSetState($privetrackbetes, $gui_checked)
                privetrackbetes()
            EndIf
            If IniRead($setting, "Options", "pDragons", "Erreur") = 1 Then
                GUICtrlSetState($privetrackdragons, $gui_checked)
                privetrackdragons()
            EndIf
            If IniRead($setting, "Options", "pDemons", "Erreur") = 1 Then
                GUICtrlSetState($privetrackdemons, $gui_checked)
                privetrackdemons()
            EndIf
            If IniRead($setting, "Options", "pElementaires", "Erreur") = 1 Then
                GUICtrlSetState($privetrackelementaires, $gui_checked)
                privetrackelementaires()
            EndIf
            If IniRead($setting, "Options", "pGeants", "Erreur") = 1 Then
                GUICtrlSetState($privetrackgeants, $gui_checked)
                privetrackgeants()
            EndIf
            If IniRead($setting, "Options", "pMorts-vivants", "Erreur") = 1 Then
                GUICtrlSetState($privetrackmortsvivants, $gui_checked)
                privetrackmortsvivants()
            EndIf
            If IniRead($setting, "Options", "pHumanoides", "Erreur") = 1 Then
                GUICtrlSetState($privetrackhumanoides, $gui_checked)
                privetrackhumanoides()
            EndIf
            If IniRead($setting, "Options", "pBestioles", "Erreur") = 1 Then
                GUICtrlSetState($privetrackbestioles, $gui_checked)
                privetrackbestioles()
            EndIf
        EndIf
    EndIf
    If IniRead($setting, "Options", "otrack", "Erreur") = 1 Then
        GUICtrlSetState($launchtrackprivate, $gui_checked)
        If IniRead($setting, "Options", "oRTout", "Erreur") = 1 Then
            GUICtrlSetState($trackallres, $gui_checked)
            trackallres()
        Else
            If IniRead($setting, "Options", "oHerbes", "Erreur") = 1 Then
                GUICtrlSetState($trackherbes, $gui_checked)
                trackherbes()
            EndIf
            If IniRead($setting, "Options", "oFilons", "Erreur") = 1 Then
                GUICtrlSetState($trackfilons, $gui_checked)
                trackfilons()
            EndIf
            If IniRead($setting, "Options", "oCoffres", "Erreur") = 1 Then
                GUICtrlSetState($trackcoffres, $gui_checked)
                trackcoffres()
            EndIf
            If IniRead($setting, "Options", "oPoissons", "Erreur") = 1 Then
                GUICtrlSetState($trackpoissons, $gui_checked)
                trackpoissons()
            EndIf
        EndIf
        If IniRead($setting, "Options", "oHTout", "Erreur") = 1 Then
            GUICtrlSetState($trackallbet, $gui_checked)
            trackallbet()
        Else
            If IniRead($setting, "Options", "oBetes", "Erreur") = 1 Then
                GUICtrlSetState($trackbetes, $gui_checked)
                trackbetes()
            EndIf
            If IniRead($setting, "Options", "oDragons", "Erreur") = 1 Then
                GUICtrlSetState($trackdragons, $gui_checked)
                trackdragons()
            EndIf
            If IniRead($setting, "Options", "oDemons", "Erreur") = 1 Then
                GUICtrlSetState($trackdemons, $gui_checked)
                trackdemons()
            EndIf
            If IniRead($setting, "Options", "oElementaires", "Erreur") = 1 Then
                GUICtrlSetState($trackelementaires, $gui_checked)
                trackelementaires()
            EndIf
            If IniRead($setting, "Options", "oGeants", "Erreur") = 1 Then
                GUICtrlSetState($trackgeants, $gui_checked)
                trackgeants()
            EndIf
            If IniRead($setting, "Options", "oMorts-vivants", "Erreur") = 1 Then
                GUICtrlSetState($trackmortsvivants, $gui_checked)
                trackmortsvivants()
            EndIf
            If IniRead($setting, "Options", "oHumanoides", "Erreur") = 1 Then
                GUICtrlSetState($trackhumanoides, $gui_checked)
                trackhumanoides()
            EndIf
            If IniRead($setting, "Options", "oBestioles", "Erreur") = 1 Then
                GUICtrlSetState($trackbestioles, $gui_checked)
                trackbestioles()
            EndIf
        EndIf
    EndIf
EndFunc

func savevalues()
    IniWrite($setting, "Options", "pspeed", GUICtrlRead($launchspeed))
    IniWrite($setting, "Options", "pflymod", GUICtrlRead($launchfly))
    IniWrite($setting, "Options", "pWallclimb", GUICtrlRead($launchwallclimbprivate))
    IniWrite($setting, "Options", "pNocooldown", GUICtrlRead($launchnocd))
    IniWrite($setting, "Options", "pRaccourcis", GUICtrlRead($launchraccourcisprivate))
    IniWrite($setting, "Options", "pSupersaut", GUICtrlRead($launchsupersautprivate))
    IniWrite($setting, "Options", "ptrack", GUICtrlRead($launchtrackprivate))
    IniWrite($setting, "Options", "pclicktotp", GUICtrlRead($launchclicktotp))
    IniWrite($setting, "Options", "pXYZActivate", GUICtrlRead($launchxyzprivate))
    IniWrite($setting, "Options", "oSupersaut", GUICtrlRead($launchsupersautofficiel))
    IniWrite($setting, "Options", "oWallclimb", GUICtrlRead($launchwallclimbofficiel))
    IniWrite($setting, "Options", "otrack", GUICtrlRead($launchtrackofficiel))
    IniWrite($setting, "Options", "oXYZActivate", GUICtrlRead($launchxyzofficiel))
    IniWrite($setting, "Options", "oRaccourcis", GUICtrlRead($launchraccourcisofficiel))
    IniWrite($setting, "Options", "pHerbes", GUICtrlRead($privetrackherbes))
    IniWrite($setting, "Options", "pFilons", GUICtrlRead($privetrackfilons))
    IniWrite($setting, "Options", "pCoffres", GUICtrlRead($privetrackcoffres))
    IniWrite($setting, "Options", "pPoissons", GUICtrlRead($privetrackpoissons))
    IniWrite($setting, "Options", "pRTout", GUICtrlRead($privetrackallres))
    IniWrite($setting, "Options", "pBetes", GUICtrlRead($privetrackbetes))
    IniWrite($setting, "Options", "pDragons", GUICtrlRead($privetrackdragons))
    IniWrite($setting, "Options", "pDemons", GUICtrlRead($privetrackdemons))
    IniWrite($setting, "Options", "pElementaires", GUICtrlRead($privetrackelementaires))
    IniWrite($setting, "Options", "pGeants", GUICtrlRead($privetrackgeants))
    IniWrite($setting, "Options", "pMorts-vivants", GUICtrlRead($privetrackmortsvivants))
    IniWrite($setting, "Options", "pHumanoides", GUICtrlRead($privetrackhumanoides))
    IniWrite($setting, "Options", "pBestioles", GUICtrlRead($privetrackbestioles))
    IniWrite($setting, "Options", "pHTout", GUICtrlRead($privetrackallbet))
    IniWrite($setting, "Options", "oHerbes", GUICtrlRead($trackherbes))
    IniWrite($setting, "Options", "oFilons", GUICtrlRead($trackfilons))
    IniWrite($setting, "Options", "oCoffres", GUICtrlRead($trackcoffres))
    IniWrite($setting, "Options", "oPoissons", GUICtrlRead($trackpoissons))
    IniWrite($setting, "Options", "oRTout", GUICtrlRead($trackallres))
    IniWrite($setting, "Options", "oBetes", GUICtrlRead($trackbetes))
    IniWrite($setting, "Options", "oDragons", GUICtrlRead($trackdragons))
    IniWrite($setting, "Options", "oDemons", GUICtrlRead($trackdemons))
    IniWrite($setting, "Options", "oElementaires", GUICtrlRead($trackelementaires))
    IniWrite($setting, "Options", "oGeants", GUICtrlRead($trackgeants))
    IniWrite($setting, "Options", "oMorts-vivants", GUICtrlRead($trackmortsvivants))
    IniWrite($setting, "Options", "oHumanoides", GUICtrlRead($trackhumanoides))
    IniWrite($setting, "Options", "oBestioles", GUICtrlRead($trackbestioles))
    IniWrite($setting, "Options", "oHTout", GUICtrlRead($trackallbet))
EndFunc
