#Requires AutoHotkey v2.0
#SingleInstance
SetWorkingDir A_ScriptDir

; Watch clipboard for changes later
; If chrome or setup group
GroupAdd "Cantonese", "ahk_class Chrome_WidgetWin_1" ; vscode, chrome etc
; #HotIf WinActive("ahk_group Cantonese")
; on hotkey left ctrl f1. let's go with that
; Using PS1 for now
; maybe add to clipboard just in case? or check if i can get chrome's selected text
<^F1::ReadFromClipboard

; Need a way to stop the script...
ReadFromClipboard(){
  ClipWait 2
  Clipboard := A_Clipboard
  Run('PowerShell -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "speak-canto.ps1" -text "' . Clipboard . '"', "C:\Users\Jason\OneDrive\Documents\GitHub\speak-canto-tts-win\src")

}
