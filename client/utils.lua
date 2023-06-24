Utils = {}

Utils.mihsshell = function(obj)
    FreezeEntityPosition(obj, true)
    SetEntityAsMissionEntity(obj, true, true)
    SetEntityHeading(obj, 0.0)
end