@echo off

set smtpServer=<smtpServer>
set smtpPort=<smtpPort>
set username=<usernameEmail>
set password=<password>
set recipient=<recipientEmail>
set subject="Server Unreachable"
set ipAddress=<ipAddressOrHost>
set body=The server ^!ipAddress^! is currently unreachable.

set blatPath=<fullBlatPath>

ping %ipAddress% -n 1 | findstr /C:"Destination host unreachable" >nul && (
  setlocal enabledelayedexpansion
  %blatPath% -server %smtpServer% -port %smtpPort% -u %username% -pw %password% -to %recipient% -subject %subject% -body "%body%"
) || (
  ping %ipAddress% -n 1 | findstr /C:"Request timed out." >nul && (
    setlocal enabledelayedexpansion
    %blatPath% -server %smtpServer% -port %smtpPort% -u %username% -pw %password% -to %recipient% -subject %subject% -body "%body%"
  ) || (
    echo The server is reachable.
  )
)

exit