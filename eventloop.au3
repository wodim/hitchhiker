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
            GUICtrlSetData($state, "Program activated")
            GUICtrlSetColor($state, 3385856)
        Else
            GUICtrlSetData($state, "Unsupported game version !")
            GUICtrlSetColor($state, 16711680)
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
