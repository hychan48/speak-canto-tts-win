# Using Microsoft Tracy Desktop voice to speak Cantonese
Add-Type -AssemblyName System.Speech
$Speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Speech.SelectVoice("Microsoft Tracy Desktop") # Hong Kong Chinese and English
$Message = '你好，我叫曉言。我會為你讀出你所輸入嘅文字。';$Speech.Speak($Message)
