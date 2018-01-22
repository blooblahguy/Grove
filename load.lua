-- Runs first
function love.load()
	g = {} -- namespace for game
	require("functions")

	-- set globals heres
	dtotal = 0
	curgame = nil

	-- UI
	require("ui/ui")


	g = {}
	g.events = {}
	function g:trigger(event)

	end

end

function GetGame()

end

-- Runs second
function love.update(elapsed) -- dt = time since last frame update
	dtotal = dtotal + elapsed

	curgame = GetGame()
	if (not curgame) then
		
	end 

	if (dtotal >= 0.1) then
		g:trigger("0.1_second")
	end
	if (dtotal >= 1) then
		g:trigger("1_second")
	end

end

-- Runs third
function love.draw()
    love.graphics.print(ui.text, 400, 300)
end
-- Display happens