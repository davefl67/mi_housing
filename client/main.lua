local shell, box

lib.callback.register('mihs:sys:function1', function(source)
    
end)

RegisterCommand('luasync', function(source)
    lib.callback('mihs:user:info', false, function(charid, name)
        print(charid)
        print(name)
    end)
end, false)


RegisterCommand('shell', function()
    local point = CG.housing.msnrow.apt1
    local model = lib.requestmodel(HS.shells.apt.low1, false)

    shell = CreateObject(model, point.x, point.y, point.z, false, false, false)
    Utils.mihsshell(shell)
end, false)

RegisterCommand('dshell', function()
    if not shell then 
        return 
    end

    DeleteEntity(shell)
    shell = nil
end, false)


lib.callback.register('mihs:shell:spawn',  function()
    local point = CG.apt1.spawn
    local model = lib.requestmodel(HS.apt1.model, false)

    shell = CreateObject(model, point.x, point.y, point.z, false, false, false)
    Utils.mihsshell(shell)
end)

lib.callback.register('mihs:shell:delete',  function()
    if not shell then 
        return 
    end

    DeleteEntity(shell)
    shell = nil
end)
