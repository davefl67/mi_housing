Utils = {}

Utils.mihsshell = function(obj, head)
    FreezeEntityPosition(obj, true)
    SetEntityAsMissionEntity(obj, true, true)
    SetEntityHeading(obj, head)
end