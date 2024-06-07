local Concord = require("libs/concord/concord")
Concord.utils.loadNamespace("components")

local Systems = {}
Concord.utils.loadNamespace("systems", Systems)

local world = Concord.world()

for _, system in ipairs(Systems) do
    world:addSystem(system)
end

local entity_1 = Concord.entity(world)
:give("position", 100, 100)
:give("velocity", 100, 0)
:give("drawable")

local entity_2 = Concord.entity(world)
:give("position", 50, 50)
:give("drawable")

function love.load()
end

function love.update(dt)
    world:emit("update", dt)
end

function love.draw()
    world:emit("draw")
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