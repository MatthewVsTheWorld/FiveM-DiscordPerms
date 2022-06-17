config = {}


config.restrictedWeapons =  {
    205991906, 
    2132975508, 
    -1600701090, 
    -37975472
}

config.restrictedVehs = {
    GetHashKey('pun13')
}

config.rolePerms = {
    ['nitro_booster'] = { 
        roleId = '974022612214763551', 
        weapons = {
            205991906, -- Heavy Sniper 
            2132975508, -- SA18 / Bullup Rifle 
            -1600701090, -- BZ Gas
            37975472, -- Smoke Grenade
        }, 
        vehs = {
            GetHashKey('pun13') -- Unmakred Police VW Golf
        }
    },
    ['sro'] = { 
        roleId = '985528215584006184', 
        weapons = {
            205991906, -- Heavy Sniper 
            2132975508, -- SA18 / Bullup Rifle 
            -1600701090, -- BZ Gas
            37975472, -- Smoke Grenade
        }, 
        vehs = {
           
        }
    }
}


config.weaponRestrictedMessage = "This weapon is restricted."
config.vehicleRestrictedMessage = "This vehicle is restricted."