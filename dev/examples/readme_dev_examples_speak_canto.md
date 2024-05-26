# File watcher
* that does it on save?/changed?


## Check list
### Voices Download list - 2022
* last updated as of 2024... interestesd
* https://www.microsoft.com/en-us/download/details.aspx?id=27224
  * https://superuser.com/questions/590779/how-to-install-more-voices-to-windows-speech
* MSSpeech_SR_zh-HK_TELE.msi
* MSSpeech_TTS_zh-HK_HunYee.msi
  * TTS note


### debug
#### Non-natural voices here...
* TTS_MS_ZH-HK_TRACY_11.0
* TTS_MS_ZH-TW_HANHAN_11.0
* TTS_MS_ZH-CN_HUIHUI_11.0

* TTS_MS_EN-US_DAVID_11.0
* TTS_MS_EN-US_ZIRA_11.0
```ps1
# https://learn.microsoft.com/en-us/uwp/api/windows.media.speechsynthesis.speechsynthesizer?view=winrt-22621
$Speech = New-Object Windows.Media.SpeechSynthesis.SpeechSynthesize
# https://learn.microsoft.com/en-us/dotnet/api/system.speech.synthesis.speechsynthesizer?view=net-8.0`

$Speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Speech.GetInstalledVoices().VoiceInfo
$Speech.GetInstalledVoices().VoiceInfo | ft
# danny and tracy works for chinese
# but dont see danny in the speech. only in the voices
# * time * language * speech
```

* [ ] Check for natural voices like
  * hui hui
  * hanhan

