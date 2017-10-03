'VERSION and app titling vars and function methods : CORE

Const VERS_NAME$="FORGE World Editor"

Const VERS_MAJOR:Int=1
Const VERS_MINOR:Int=0

'Sets application title according to version
Function InitialiseVersion()
	AppTitle=VERS_NAME+" v"+GetVersionString()
End Function

'Returns current version as String object
Function GetVersionString:String()
	Return String.FromInt(VERS_MAJOR)+"."+String.FromInt(VERS_MINOR)
End Function

'Accepts floating point argument and returns FALSE if lower than current version
Function CompareVersion:Int(TestVersion:Float)
	Local sVersion:String=GetVersionString()
	Local fVersion:Float=sVersion.ToFloat()
	
	Return fVersion>=TestVersion
End Function