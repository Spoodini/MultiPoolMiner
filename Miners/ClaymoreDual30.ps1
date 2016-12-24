﻿$Path = '.\Claymore\Ethash\EthDcrMiner64.exe'

[PSCustomObject]@{
    Path = $Path
    Arguments = '-epool $($Pools.Ethash.Host):$($Pools.Ethash.Port) -ewal $($Pools.Ethash.User) -epsw x -esm 3 -allpools 1 -dpool $($Pools.Sia.Host):$($Pools.Sia.Port) -dwal $($Pools.Sia.User) -dpsw x -dcoin sc -dcri 30'
    HashRates = @{Ethash = '$($Stats.ClaymoreDual30_Ethash_HashRate.Day)'; Sia = '$($Stats.ClaymoreDual30_Sia_HashRate.Day)'}
}