local Concord = require("libs/concord/concord")

local MoveSystem = Concord.system({
    pool = {"position", "velocity"}
})

function MoveSystem:update(dt)
    for _, entity in ipairs(self.pool) do
        entity.position.x = entity.position.x + entity.velocity.x * dt
        entity.position.y = entity.position.y + entity.velocity.y * dt
    end
end