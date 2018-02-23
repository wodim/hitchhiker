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

Func reset()
    _memoryclose($wowpid)
    Global $wowpid = ProcessExists("wow.exe")
    Global $wowprocess = _memoryopen($wowpid)
    $pb1 = _memoryread($staticplayer, $wowprocess, "Ptr")
    $pb2 = _memoryread($pb1 + $pbpointer1, $wowprocess, "Ptr")
    $playerbase = _memoryread($pb2 + $pbpointer2, $wowprocess, "Ptr")
    $playerbase2 = _memoryread($playerbase + 8, $wowprocess, "Ptr")
    GUICtrlSetData($privespeedglobaleinput, IniRead($setting, "Options", "pspeedglobalevalue", "Error"))
    GUICtrlSetData($privespeedinput, IniRead($setting, "Options", "pspeedvalue", "Error"))
    GUICtrlSetData($priveflyspeedinput, IniRead($setting, "Options", "pflymodspeedvalue", "Error"))
    GUICtrlSetData($privesupersautinput, IniRead($setting, "Options", "psupersautvalue", "Error"))
    GUICtrlSetData($supersautinput, IniRead($setting, "Options", "osupersautvalue", "Error"))
    GUICtrlSetData($privexyzspeedinput, IniRead($setting, "Options", "pXYZSpeed", "Error"))
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