local Concord = require("libs/concord/concord")

Concord.component("position", function(component, x, y)
    component.x = x or 0
    component.y = y or 0
end)

Concord.component("velocity", function(component, x, y)
    component.x = x or 0
    component.y = y or 0
end)

local Drawable = Concord.component("drawable")