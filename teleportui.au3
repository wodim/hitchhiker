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
