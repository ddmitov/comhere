OutFile "comhere.exe"
Caption "Command Line Starter"
SilentInstall silent
Icon "blanker.ico"

VIProductVersion "1.0.0.0"
VIAddVersionKey FileDescription "Command Line Starter"
VIAddVersionKey LegalCopyright "Public domain"
VIAddVersionKey CompanyName "ddmitov@yahoo.com"
VIAddVersionKey FileVersion "1.0"

RequestExecutionLevel user

Var COMSPEC

Section "Main"
	# Reading the COMSPEC environment variable.
	ReadEnvStr $COMSPEC COMSPEC

	# Optional message box for debuging purposes.
	#MessageBox MB_OK|MB_ICONEXCLAMATION|MB_TOPMOST `COMSPEC: $COMSPEC`

	SetOutPath "$EXEDIR"
	Exec '"$COMSPEC"'
	GoTo End

	End:
SectionEnd
