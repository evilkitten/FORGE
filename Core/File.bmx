'Returns fully qualified directory path with separator suffix
Function FixDirectoryPath:String(Path:String)
	Path=RealPath(Path$)
	
	If (Len(Path)>0)
		Path=Replace(Path,"/","\")
		If (Right(Path,1)<>"\")		
			Path:+"\"
		End If
	End If
	
	Return Path$
End Function