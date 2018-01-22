require("ui/ui_functions")
ui = {}
ui.parent = {}
ui.parent.w = love.graphics.getWidth()
ui.parent.h = love.graphics.getHeight()

function love.resize(w, h)
	ui.parent.w = love.graphics.getWidth()
	ui.parent.h = love.graphics.getHeight()
end

ui.text = "here we go"

-- 

-- Main Menu


-- Escape Menu