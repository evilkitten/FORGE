'UI specific classes, variables and function methods : UI

Const MNU_FILE_NAME:String="File"

Const MNU_FILE_SUB_NEW_NAME:String="New"


Global GW:Int
Global GH:Int

Global PRJ_HWND:TGadget

Const PRJ_MNU_DATA_FILE_NEW:Int=1

Function InitialiseUI()
	GW=GadgetWidth(Desktop())
	GH=GadgetHeight(Desktop())

	BuildProjectWindow

	WaitKey()
End Function

Function BuildProjectWindow()
	Local Width:Int=GW
	Local Height:Int=GH-24'Accounts for TitleBar and TaskBar
	
	PRJ_HWND:TGadget=CreateWindow(AppTitle,0,0,Width,Height,Null,WINDOW_TITLEBAR|WINDOW_MENU|WINDOW_STATUS)

	BuildProjectWindowMenu

End Function

Function BuildProjectWindowMenu()
	Local Master:TGadget=WindowMenu(PRJ_HWND)
 
	Local FileMenu:TGadget=CreateMenu("&"+MNU_FILE_NAME,0,Master)
	CreateMenu("New",PRJ_MNU_DATA_FILE_NEW,FileMenu,KEY_N,MODIFIER_COMMAND)	
		
	
	
	
	
	UpdateWindowMenu(PRJ_HWND)
End Function