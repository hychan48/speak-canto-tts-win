<#
  Assumes you have installed the Cantonese voice pack from Microsoft
  Windows Desktop Language Pack (Traditional Chinese - Hong Kong SAR)
  parameter should be -text.
  
  perhaps i should make it a module or function?
  To make it load faster. I know I can mantain a background process if really needed.
#>
param([string]$text)

Add-Type -AssemblyName System.Speech
$Speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Speech.SelectVoice("Microsoft Tracy Desktop")
$Speech.Speak($text)
