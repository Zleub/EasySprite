--          `--::-.`
--      ./shddddddddhs+.
--    :yddddddddddddddddy:
--  `sdddddddddddddddddddds`
--  ydddh+sdddddddddy+ydddds  EasySprite:main
-- /ddddy:oddddddddds:sddddd/ By adebray - adebray
-- sdddddddddddddddddddddddds
-- sdddddddddddddddddddddddds Created: 2015-05-06 10:25:25
-- :ddddddddddhyyddddddddddd: Modified: 2015-05-08 05:37:50
--  odddddddd/`:-`sdddddddds
--   +ddddddh`+dh +dddddddo
--    -sdddddh///sdddddds-
--      .+ydddddddddhs/.
--          .-::::-`

EC = require 'EasyColor'
EF = {}
EF.frames = {}

function EF:makeFrame(t)
	table.insert(EF.frames, t)
end

function EF:newFrame(x, y, width, height)
	if type(x) == 'table' then
		self:makeFrame(x)
	elseif type(x) == 'number' then
		self:makeFrame({x = x, y = y, width = width, height = height})
	end
end

function EF:searchOrigin(x, y)
	for k,v in pairs(EF.frames) do
		if v.x == x and v.y == y then
			print("match")
			return v
		end
	end
end

function make(ImageData, width, height)
	local _sample = {}
	_sample.r, _sample.g, _sample.b, _sample.a = _data:getPixel(0, 0)
	print(_sample.r, _sample.g, _sample.b, _sample.a)

	for j=0,height - 1 do
		for i=0,width - 1 do
			local tmp = {}
			tmp.r, tmp.g, tmp.b, tmp.a = _data:getPixel(i, j)
			if not EC:compareTable(tmp, _sample) then
				local test1 = EF:searchOrigin(i - 1, j)
				local test2 = EF:searchOrigin(i, j - 1)

				if test1 or test2 then
					print(test1, test2)
				else
					EF:newFrame(i, j, 1, 1)
				end
			end
		end
	end
end

function love.load()
	_in = love.graphics.newImage('24693.png')
	-- _in = love.graphics.newImage('Q boy.png')
	_data = _in:getData()
	_width = _data:getWidth()
	_height = _data:getHeight()

	make(_data, _width, _height)

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
