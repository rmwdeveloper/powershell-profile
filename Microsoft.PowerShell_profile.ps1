set-location C:\users\robert.westenberger

Import-Module -Name Tools
Get-Command -Module Tools


Get-Module Tools -ListAvailable
$Host.UI.RawUI.BackgroundColor = ($bckgrnd = 'Black')
$Host.UI.RawUI.ForegroundColor = 'Green'
$Host.PrivateData.ErrorForegroundColor = 'Red'
$Host.PrivateData.ErrorBackgroundColor = $bckgrnd
$Host.PrivateData.WarningForegroundColor = 'Magenta'
$Host.PrivateData.WarningBackgroundColor = $bckgrnd
$Host.PrivateData.DebugForegroundColor = 'Yellow'
$Host.PrivateData.DebugBackgroundColor = $bckgrnd
$Host.PrivateData.VerboseForegroundColor = 'Green'
$Host.PrivateData.VerboseBackgroundColor = $bckgrnd
$Host.PrivateData.ProgressForegroundColor = 'Cyan'
$Host.PrivateData.ProgressBackgroundColor = $bckgrnd
Clear-Host

$Shell = $Host.UI.RawUI
$size = $Shell.WindowSize
$size.width=175
$size.height=50
$Shell.WindowSize = $size
$size = $Shell.BufferSize
$size.width=180
$size.height=5000
$Shell.BufferSize = $size

