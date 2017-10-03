'FILEPATHING and LOAD/SAVE vars and function methods : CORE

Include "File.bmx"

Global APP_ROOT:String
Global USERDATA_ROOT:String
Global PROJECT_ROOT:String

Function InitialiseEnvironment()
	APP_ROOT=GetAppRoot()
	ChangeDir(APP_ROOT)
	
	USERDATA_ROOT=FixDirectoryPath(GetUserDataRoot())
	
	PROJECT_ROOT=FixDirectoryPath(GetUserProjectRoot())
End Function

Function GetAppRoot:String()
	Return FixDirectoryPath(AppDir$)
End Function

Function GetUserDataRoot:String()
	Local UserPath:String=FixDirectoryPath(GetEnv("LOCALAPPDATA"))
	Local ForgeDir:String=Userpath+"EKD\FORGE\"
	If (FileType(ForgeDir)<>2)
		CreateDir(ForgeDir,True)
	End If
	Return ForgeDir	
End Function

Function GetUserProjectRoot:String()
	Local UserPath:String=FixDirectoryPath(GetEnv("USERPROFILE"))
	Local ProjectDir:String=Userpath+"Documents\EKD\FORGE\Projects\"
	If (FileType(ProjectDir)<>2)
		CreateDir(ProjectDir,True)
	End If
	Return ProjectDir
End Function