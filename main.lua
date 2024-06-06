local Concord = require("libs/concord/concord")
Concord.utils.loadNamespace("components")

local Systems = {}
Concord.utils.loadNamespace("systems", Systems)

print(Systems.MoveSystem)

local world = Concord.world()

world:addSystems(Systems.MoveSystem, Systems.DrawSystem) -- error because Systems.* are boolean???

function love.load()
end

function love.update(dt)
end

function love.draw()
end

function love.mousepressed()
end

function love.mousereleased()
end

function love.keypressed()
end

function love.keyreleased()
end

function love.focus()
end

function love.quit()
end