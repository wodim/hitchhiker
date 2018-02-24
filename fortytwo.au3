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
Global Const $version = "3.3.5"
Global Const $build = "World of WarCraft (build 12340)"

#include "hotkeys.au3"
#include "teleportui.au3"
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

#include "offsets.au3"
#include "cheatserver.au3"
#include "cheatclient.au3"
#include "guiinit.au3"
#include "guiloop.au3"
#include "eventloop.au3"
#include "guiaux.au3"
