﻿#InstallKeybdHook
#NoEnv

processName := "arma3_x64.exe"
if (WinExist("ahk_exe " . processName)){
	WinGetTitle, title, ahk_exe %processName%
	WinActivate %title%

	Sleep 500

	Send {LShift down}
	Sleep 500
	Send {NumpadSub down}
	Sleep 100
	Send {NumpadSub up}
	Sleep 100
	Send {LShift up}

	Sleep 100
	Send, exportnogrid
	Sleep 1000
	Send, m
	
	Return
}