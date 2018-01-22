require('libs/light_world/')
require('engine')
require("functions")
require("ui/ui")

-- Runs first
function love.load()
	-- set globals heres
	dtotal = 0
	curgame = nil
	seconds = 0
	print("loaded")

	g:hook("1_second", function()
		seconds = seconds + 1
		ui.text = seconds
	end)
end

function GetGame()

end

-- Runs second
function love.update(elapsed) -- dt = time since last frame update
	require('libs/lurker').update() -- file hotswapping

	dtotal = dtotal + elapsed

	curgame = GetGame()
	if (not curgame) then
		
	end 


	if (dtotal >= 1) then
		dtotal = 0
		g:trigger("1_second")
	end

end

-- Runs third
function love.draw()
    love.graphics.print(ui.text, 400, 300)
end
-- Display happens