'EXTERNAL library vars and function methods : CORE

Extern "Win32"

	Function GetEnvironmentVariable(lpName:Byte Ptr, lpBuffer:Byte Ptr, nSize:Int)= "GetEnvironmentVariableA@12" 

End Extern


Function GetEnv$(envVar$)


	Local buff:Byte[256]

	Local rtnLen:Long = GetEnvironmentVariable(envVar$, buff, buff.length) 


	If rtnLen > (buff.length - 1)


		buff = buff[..rtnLen]

		rtnLen = GetEnvironmentVariable(envVar$, buff, buff.length)


	EndIf

	Return String.FromBytes(buff, rtnLen)

End Function