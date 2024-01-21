<#
  Assumes you have installed the Cantonese voice pack from Microsoft
  Windows Desktop Language Pack (Traditional Chinese - Hong Kong SAR)
#>
param([string]$text)

Add-Type -AssemblyName System.Speech
$Speech = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Speech.SelectVoice("Microsoft Tracy Desktop")
$Speech.Speak($text)
