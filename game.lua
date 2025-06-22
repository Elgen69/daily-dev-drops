-- game.lua - Simple Lua loop

player = {name = "Elgen", hp = 100}

function attack(damage)
    player.hp = player.hp - damage
    print(player.name .. " took " .. damage .. " damage. HP: " .. player.hp)
end

attack(10)
attack(20)
