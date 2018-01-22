-- Runs first
function love.load()
	-- set globals heres
	dtotal = 0
end

-- Runs second
function love.update(elapsed) -- dt = time since last frame update
   dtotal = dtotal + elapsed

   if (dtotal >= 0.1) then
		g:trigger("0.1_second")
   if (dtotal >= 1) then
		g:trigger("1_second")
   end
end

-- Runs third
function love.draw()
    love.graphics.print('Hello World!', 400, 300)
end
-- Display happens