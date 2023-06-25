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
    local point = CG.housing.vpci.apt1.loc
    local model = lib.requestmodel(HS.shells.midapt, false)

    shell = CreateObject(model, point.x, point.y, point.z, false, false, false)
    Utils.mihsshell(shell, CG.housing.vpci.head)
end, false)

RegisterCommand('dshell', function()
    if not shell then 
        return 
    end

    DeleteEntity(shell)
    shell = nil
end, false)


lib.callback.register('mihs:shell:spawn',  function()

end)

lib.callback.register('mihs:shell:delete',  function()

end)
