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
        If IniRead($setting, "Options", "Msgbox", "Erreur") = 1 Then
            $msgboxtpcamera = MsgBox(4, "Warning", "This function si for Private server only." & @CRLF & " " & @CRLF & "If you are playing on live server, click on No." & @CRLF & "If you are playing on private server, you can click Yes to continue.")
            If $msgboxtpcamera = 6 Then
                IniWrite($setting, "Options", "Msgbox", 0)
                MsgBox(0, "Warning", "These messages won't be displayed anymore.")
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
