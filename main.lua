--          `--::-.`
--      ./shddddddddhs+.
--    :yddddddddddddddddy:
--  `sdddddddddddddddddddds`
--  ydddh+sdddddddddy+ydddds  EasySprite:main
-- /ddddy:oddddddddds:sddddd/ By adebray - adebray
-- sdddddddddddddddddddddddds
-- sdddddddddddddddddddddddds Created: 2015-05-06 10:25:25
-- :ddddddddddhyyddddddddddd: Modified: 2015-05-07 01:29:53
--  odddddddd/`:-`sdddddddds
--   +ddddddh`+dh +dddddddo
--    -sdddddh///sdddddds-
--      .+ydddddddddhs/.
--          .-::::-`

EC = require 'EasyColor'

function newFrame(x, y, width, height)
	return {
		x = x,
		y = y,
		width = width,
		height = height
	}
end

function love.load()
	_in = love.graphics.newImage('24693.png')
	-- _in = love.graphics.newImage('Q boy.png')
	_data = _in:getData()
	_width = _data:getWidth()
	_height = _data:getHeight()


	for j=0,_height - 1 do
		for i=0,_width - 1 do
			local tmp = {}
			tmp.r, tmp.g, tmp.b, tmp.a = _data:getPixel(i, j)
			EC:newColor(i..':'..j, tmp)
		end
	end

	EC:dump()
end

function love.update(dt)
	_width_scale = love.window.getWidth() / 2 / _width
	_height_scale = love.window.getHeight() / _height
end

function love.draw()
	if _width_scale < _height_scale then
		love.graphics.draw(_in, 0, 0, 0, _width_scale)
	else
		love.graphics.draw(_in, 0, 0, 0, 0, _height_scale)
	end
end

-- function love.keypressed(key)
-- 	if key == 'up' then t.y = t.y - 1
-- 	elseif key == 'down' then t.y = t.y + 1
-- 	elseif key == 'left' then t.x = t.x - 1
-- 	elseif key == 'right' then t.x = t.x + 1
-- 	end
-- end
