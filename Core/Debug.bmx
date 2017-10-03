'DEBUGGING and error checking vars and function methods : CORE

Const DEBUG_FILE:String="Debug.log"
Global DEBUG_PATH:String

Function InitialiseDebug()
			DEBUG_PATH=USERDATA_ROOT+DEBUG_FILE		
	
			Local LogFile:TStream=WriteFile(DEBUG_PATH)	
			WriteLine(LogFile,LSet(CurrentTime(),9)+" | "+LSet("CORE",10)+" | "+LSet("Debug.bmx",15)+" | "+LSet("Initialise Debug",20)+" | "+LSet("1",15)+" | "+"Initialisation Complete")		
			CloseFile(LogFile)	
End Function
		
Function Debug(Codebase:String,File:String,Obj:String,Meth:String,Val:String,Message:String)
			Local Line:String=LSet(CurrentTime(),9)+" | "+LSet(Codebase,10)+" | "+LSet(File,15)+" | "+LSet(Meth,20)+" | "+LSet(Val,15)+" | "+Message
			
			DebugLog(Line)
			
			Local LogFile:TStream=OpenStream(DEBUG_PATH)
						
			'Omission of the -1 prompts line feed.
			Local Pos:Long=FileSize(DEBUG_PATH)'-1
			LogFile.Seek(Pos)
			
			LogFile.WriteLine(Line)
			CloseStream(LogFile)
End Function