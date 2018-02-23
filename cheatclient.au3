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
