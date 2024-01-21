; DIDNT WORK
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


; Create COM object for speech synthesis
; Speech := ComObject("System.Speech.Synthesis.SpeechSynthesizer")
; Speech := ComObject("System.Speech")
obj := ComObject("Scripting.Dictionary")

Speech := ComObject("System")
; Speech := ComObjConnect("System.Speech.Synthesis.SpeechSynthesizer")

; Select voice
Speech.SelectVoice("Microsoft Tracy Desktop")

; Message to be spoken
Message := "你好，我叫曉言。我會為你讀出你所輸入嘅文字。"

; Speak the message
Speech.Speak(Message)


;----------------------
WinActivate(active_id)
MouseMove ogxpos, ogypos
; sleep 1000
Exit(0)
