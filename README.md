# speak-canto-tts-win
Quick and dirty script for using Window's 11 tts "Tracy" for Cantonese
## Install
* [ ] Manually install the Cantonese voice pack for Windows 11 
  * Microsoft Desktop Tracy
* [ ] AHK Version 2

## Usage
```ps1
# Clone repo
git clone git@github.com:hychan48/speak-canto-tts-win.git
# Load ahkv2 - Check #hotif / and hotkey
src/speak-canto.ahk

# Text to Speech TTS Clipboard - Shortcut Default
## Ctrl+F1

```


## Smoke Test
* Example from Amazon Polly
```ps1
Add-Type -AssemblyName System.Speech
$Speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Speech.SelectVoice("Microsoft Tracy Desktop") # Hong Kong Chinese and English
$Message = '你好，我叫曉言。我會為你讀出你所輸入嘅文字。';$Speech.Speak($Message)
```

### References
* https://www.cantoneseclass101.com/key-cantonese-phrases/

# Node Dot Net
* https://github.com/microsoft/node-api-dotnet
