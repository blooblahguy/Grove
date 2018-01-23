player = {}
player.pos = {}
player.pos.x = 50
player.pos.y = 50

player.width = 20
player.height = 26

player.float = 0
player.maxFloat = 3


function player:Draw()
	if player.floatingUp then
		player.float = player.float - 1
	else
		player.float = player.float + 1
	end

	if player.float  > player.maxFloat then
		player.floatingUp = player
	end

	if player.float  < 0 then
		player.floatingUp = false
	end

	-- torso
	love.graphics.setColor( 0, 255, 0, 255 )
	love.graphics.rectangle("fill", player.pos.x, player.pos.y - player.height, player.width, player.height, player.width / 2)

	-- arms

	-- feet
	love.graphics.setColor( 255, 0, 0, 255 )
	love.graphics.rectangle("fill", player.pos.x, player.pos.y - player.float, (player.width / 2) - 2, 4)

	-- heads
	-- love.graphics.setColor( 255, 0, 0, 255 )
	-- love.graphics.rectangle("fill", player.pos.x, (player.pos.y-12), player.width, player.width, player.width)

	love.graphics.setColor( 255,255,255,255)
end