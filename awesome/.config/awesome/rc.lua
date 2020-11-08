-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
-- Declarative object management
local ruled = require("ruled")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
naughty.connect_signal("request::display_error", function(message, startup)
    naughty.notification {
        urgency = "critical",
        title   = "Oops, an error happened"..(startup and " during startup!" or "!"),
        message = message
    }
end)
-- }}}

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

-- awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("wal -R")
awful.spawn.with_shell("razer-cli -e reactive -a")
awful.spawn.with_shell("picom --experimental-backends -b")
-- awful.spawn.with_shell("redshift -l 1.3521:103.8198")

