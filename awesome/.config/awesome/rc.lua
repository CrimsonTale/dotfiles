-- Error handling
local errors = require("errors")

--  Variable definitions
local variables = require("variables")

-- Tag
local tags = require("tag")

-- Menu
local menu = require("menu")

-- Wibar
local wibar = require("wibar")

-- Keybinds and mousebinds
local keys = require("keys")

-- Rules
local rules = require("rules")

-- Titlebars
local titlebars = require("titlebars")

-- Notifications
local notifications = require("notifications")

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:activate { context = "mouse_enter", raise = false }
end)

--client.connect_signal("manage", function (c)
--    c.shape = gears.shape.rounded_rect
--end)

-- Autostart
local autostart = require("autostart")
