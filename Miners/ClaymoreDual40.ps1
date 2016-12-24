﻿$Path = '.\Claymore\Ethash\EthDcrMiner64.exe'

[PSCustomObject]@{
    Path = $Path
    Arguments = '-epool $($Pools.Ethash.Host):$($Pools.Ethash.Port) -ewal $($Pools.Ethash.User) -epsw x -esm 3 -allpools 1 -dpool $($Pools.Sia.Host):$($Pools.Sia.Port) -dwal $($Pools.Sia.User) -dpsw x -dcoin sc -dcri 40'
    HashRates = @{Ethash = '$($Stats.ClaymoreDual40_Ethash_HashRate.Day)'; Sia = '$($Stats.ClaymoreDual40_Sia_HashRate.Day)'}
}