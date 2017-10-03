'MAIN runtime functionality and entrypoint for app
Import MaxGUI.Drivers

SuperStrict

Include "Main_Dependency.bmx"

Initialise

Function Initialise()
	InitialiseEnvironment
	InitialiseVersion
	InitialiseUI
	InitialiseDebug
	
	Debug("Main.bmx","ROOT","Core","Initialise","1","Confirmation")
	Debug("Main.bmx","ROOT","Core","Initialise","APP_ROOT",APP_ROOT)
	Debug("Main.bmx","ROOT","Core","Initialise","USERDATA_ROOT",USERDATA_ROOT)
	Debug("Main.bmx","ROOT","Core","Initialise","PROJECT_ROOT",PROJECT_ROOT)	
End Function
