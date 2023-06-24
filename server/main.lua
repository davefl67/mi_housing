
-- test zone


lib.callback.register('mihs:user:info', function(charid, name)
    local player = Ox.GetPlayer(source)
    charid = player.charid
    name = player.name

    return charid, name
    
end)

