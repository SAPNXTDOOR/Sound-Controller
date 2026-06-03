#Requires AutoHotkey v2.0
#SingleInstance Force

SetWorkingDir A_ScriptDir

iniPath := A_ScriptDir "\config.ini"


if !FileExist(iniPath) {
    defaultConfig := "[Applications]`nApp1=Spotify.exe`nApp2=opera.exe`n`n[Devices]`nDevice1=IEM`nDevice2=Headset`nDevice3=Speakers"
    FileAppend(defaultConfig, iniPath)
}

App1 := IniRead(iniPath, "Applications", "App1", "Spotify.exe")
App2 := IniRead(iniPath, "Applications", "App2", "opera.exe")

Device1 := IniRead(iniPath, "Devices", "Device1", "IEM")
Device2 := IniRead(iniPath, "Devices", "Device2", "Headset")
Device3 := IniRead(iniPath, "Devices", "Device3", "Speakers")


A_IconTip := "Sound Controller"

if VerCompare(A_OSVersion, "10.0.17763") >= 0 {
    uxtheme := DllCall("GetModuleHandle", "Str", "uxtheme", "Ptr")
    
    SetPreferredAppMode := DllCall("GetProcAddress", "Ptr", uxtheme, "Ptr", 135, "Ptr")
    FlushMenuThemes := DllCall("GetProcAddress", "Ptr", uxtheme, "Ptr", 136, "Ptr")
    
    DllCall(SetPreferredAppMode, "Int", 2)
    DllCall(FlushMenuThemes)
}

A_TrayMenu.Delete("&Pause Script")
A_TrayMenu.Rename("&Suspend Hotkeys", "Disable Hotkeys")


F16:: Run("Nircmd/nircmd.exe changeappvolume " App1 " +0.02", , "Hide")
F17:: Run("Nircmd/nircmd.exe changeappvolume " App1 " -0.02", , "Hide")
F22:: Run("Nircmd/nircmd.exe muteappvolume " App1 " 2", , "Hide")


F18:: Run("Nircmd/nircmd.exe changeappvolume " App2 " +0.02", , "Hide")
F19:: Run("Nircmd/nircmd.exe changeappvolume " App2 " -0.02", , "Hide")
F23:: Run("Nircmd/nircmd.exe muteappvolume " App2 " 2", , "Hide")


F20::
{
    active_process := WinGetProcessName("A")
    Run("Nircmd/nircmd.exe changeappvolume " active_process " +0.02", , "Hide")
}

F21::
{
    active_process := WinGetProcessName("A")
    Run("Nircmd/nircmd.exe changeappvolume " active_process " -0.02", , "Hide")
}

F24::
{
    active_process := WinGetProcessName("A")
    Run("Nircmd/nircmd.exe muteappvolume " active_process " 2", , "Hide")
}


F13:: Run('SoundVolumeView/SoundVolumeView.exe /SetDefault "' Device1 '" 0', , "Hide")
F14:: Run('SoundVolumeView/SoundVolumeView.exe /SetDefault "' Device2 '" 0', , "Hide")
F15:: Run('SoundVolumeView/SoundVolumeView.exe /SetDefault "' Device3 '" 0', , "Hide")