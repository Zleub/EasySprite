--          `--::-.`
--      ./shddddddddhs+.
--    :yddddddddddddddddy:
--  `sdddddddddddddddddddds`
--  ydddh+sdddddddddy+ydddds  EasySprite:main
-- /ddddy:oddddddddds:sddddd/ By adebray - adebray
-- sdddddddddddddddddddddddds
-- sdddddddddddddddddddddddds Created: 2015-05-06 10:25:25
-- :ddddddddddhyyddddddddddd: Modified: 2015-05-06 19:11:40
--  odddddddd/`:-`sdddddddds
--   +ddddddh`+dh +dddddddo
--    -sdddddh///sdddddds-
--      .+ydddddddddhs/.
--          .-::::-`

function love.load()
	_in = love.graphics.newImage('Q boy.png')
	_data = _in:getData()
	-- print(_data:getString())

	t = {
		x = 0,
		y = 0,
		width = 100,
		height = 50
	}
end

function love.update(dt)
end

function love.draw()
	love.graphics.draw(_in)
	love.graphics.rectangle('line', t.x, t.y, t.width, t.height)
	-- love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
end

-- function love.keypressed(key)
-- 	if key == 'up' then t.y = t.y - 1
-- 	elseif key == 'down' then t.y = t.y + 1
-- 	elseif key == 'left' then t.x = t.x - 1
-- 	elseif key == 'right' then t.x = t.x + 1
-- 	end
-- end
