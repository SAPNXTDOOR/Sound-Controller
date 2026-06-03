#Requires AutoHotkey v2.0
#SingleInstance Force


if VerCompare(A_OSVersion, "10.0.17763") >= 0 {
    uxtheme := DllCall("GetModuleHandle", "Str", "uxtheme", "Ptr")
    
    SetPreferredAppMode := DllCall("GetProcAddress", "Ptr", uxtheme, "Ptr", 135, "Ptr")
    FlushMenuThemes := DllCall("GetProcAddress", "Ptr", uxtheme, "Ptr", 136, "Ptr")
    
    DllCall(SetPreferredAppMode, "Int", 2)
    DllCall(FlushMenuThemes)
}

A_TrayMenu.Delete("&Pause Script")
A_TrayMenu.Rename("&Suspend Hotkeys", "Disable Hotkeys")


F16:: Run("Nircmd/nircmd.exe changeappvolume Spotify.exe +0.02", , "Hide")
F17:: Run("Nircmd/nircmd.exe changeappvolume Spotify.exe -0.02", , "Hide")
F22:: Run("Nircmd/nircmd.exe muteappvolume Spotify.exe 2", , "Hide")


F18:: Run("Nircmd/nircmd.exe changeappvolume opera.exe +0.02", , "Hide")
F19:: Run("Nircmd/nircmd.exe changeappvolume opera.exe -0.02", , "Hide")
F23:: Run("Nircmd/nircmd.exe muteappvolume opera.exe 2", , "Hide")


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


F13:: Run('SoundVolumeView/SoundVolumeView.exe /SetDefault "IEM" 0', , "Hide")

F14:: Run('SoundVolumeView/SoundVolumeView.exe /SetDefault "Headset" 0', , "Hide")

F15:: Run('SoundVolumeView/SoundVolumeView.exe /SetDefault "Speakers" 0', , "Hide")