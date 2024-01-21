#Requires AutoHotkey v2.0
#SingleInstance
SetWorkingDir A_ScriptDir
; Works!, but terminal still popups with ahk

; Get Clipboard
Clipboard := A_Clipboard ; expressed as text

Run('PowerShell -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "speak-canto.ps1" -text "' . Clipboard . '"', "C:\Users\Jason\OneDrive\Documents\GitHub\speak-canto-tts-win\src")

;----------------------
; sleep 1000
Exit(0)
