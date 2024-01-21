#Requires AutoHotkey v2.0
#SingleInstance
SetWorkingDir A_ScriptDir
; out:= EnvGet("LOCALAPPDATA") "\Programs\AutoHotkey\Compiler\Ahk2Exe.exe"
; C:\Program Files\AutoHotkey
; if not A_IsAdmin
; 	Run *RunAs "%A_ScriptFullPath%" ;
; WinGet, active_id, ID, "A"
active_id := WinGetID("A")
WinActivate(active_id)
MouseGetPos &ogxpos, &ogypos
; FileDelete('log.txt')
; tooltip "hi"
; FileAppend("X11VNC :" StartTime ":" ElapsedTime "`n", "log.txt")
; Return Back to current editor
;----------------------

; Run('PowerShell -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "speak-canto.ps1" "hi"', "C:\Users\Jason\OneDrive\Documents\GitHub\speak-canto-tts-win\src")
; HelloWorld := "Hello"
; HelloWorld := "HelloWorld"
HelloWorld := "Hello World"
Run('PowerShell -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "speak-canto.ps1" "' . HelloWorld . '"', "C:\Users\Jason\OneDrive\Documents\GitHub\speak-canto-tts-win\src")

;----------------------
WinActivate(active_id)
MouseMove ogxpos, ogypos
; sleep 1000
Exit(0)
