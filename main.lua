--          `--::-.`
--      ./shddddddddhs+.
--    :yddddddddddddddddy:
--  `sdddddddddddddddddddds`
--  ydddh+sdddddddddy+ydddds  EasySprite:main
-- /ddddy:oddddddddds:sddddd/ By adebray - adebray
-- sdddddddddddddddddddddddds
-- sdddddddddddddddddddddddds Created: 2015-05-06 10:25:25
-- :ddddddddddhyyddddddddddd: Modified: 2015-05-06 18:17:08
--  odddddddd/`:-`sdddddddds
--   +ddddddh`+dh +dddddddo
--    -sdddddh///sdddddds-
--      .+ydddddddddhs/.
--          .-::::-`

function love.load()
	_in = love.graphics.newImage('1791319.jpg')
	_data = _in:getData()
	print(_data:getString())
end

function love.update(dt)
end

function love.draw()
	love.graphics.draw(_in, 0, 0, 0, 0.5, 0.5)
	-- love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
end
