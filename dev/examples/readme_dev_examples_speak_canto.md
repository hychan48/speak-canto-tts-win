# File watcher
* 


## Check list
### Voices Download list - 2022
* last updated as of 2024... interestesd
* https://www.microsoft.com/en-us/download/details.aspx?id=27224
  * https://superuser.com/questions/590779/how-to-install-more-voices-to-windows-speech
* MSSpeech_SR_zh-HK_TELE.msi
* MSSpeech_TTS_zh-HK_HunYee.msi
  * TTS note


### debug
```ps1
$Speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Speech.GetInstalledVoices().VoiceInfo
$Speech.GetInstalledVoices().VoiceInfo | ft

```