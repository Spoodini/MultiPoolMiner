cd /d %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set "command=& .\multipoolminer.ps1 -wallet 1B55eg9jDGX5vkg4H5M3geVcAq128xhvcS -username Spoodini -workername dddd -region europe -currency btc,usd -type nvidia -poolname miningpoolhub,miningpoolhubcoins,zpool,nicehash -algorithm cryptonight,decred,decrednicehash,ethash,ethash2gb,equihash,groestl,lbry,lyra2re2,lyra2z,neoscrypt,pascal,sia,siaclaymore,sianicehash,sib,skunk -donate 120 -watchdog -switchingprevention 2"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc.2/PowerShell-6.0.0-rc.2-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause