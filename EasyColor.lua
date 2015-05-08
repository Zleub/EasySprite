--          `--::-.`
--      ./shddddddddhs+.
--    :yddddddddddddddddy:
--  `sdddddddddddddddddddds`
--  ydddh+sdddddddddy+ydddds  EasySprite:EasyColor
-- /ddddy:oddddddddds:sddddd/ By adebray - adebray
-- sdddddddddddddddddddddddds
-- sdddddddddddddddddddddddds Created: 2015-05-06 20:41:57
-- :ddddddddddhyyddddddddddd: Modified: 2015-05-08 05:19:29
--  odddddddd/`:-`sdddddddds
--   +ddddddh`+dh +dddddddo
--    -sdddddh///sdddddds-
--      .+ydddddddddhs/.
--          .-::::-`

EC = {}
EC.colors = {}
EC.verb = false

function EC:reset()
	EC.colors = {}
end

function EC:dump()
	for k,v in pairs(self.colors) do
		print(k, 'r: '..v.r..',\tg: '..v.g..',\tb: '..v.b..',\ta: '..v.a)
	end
end

function EC:compareTable(lhs, rhs)
	return lhs.r == rhs.r and lhs.g == rhs.g and
			lhs.b == rhs.b and lhs.a == rhs.a
end

function EC:searchTable(table)
	for k,v in pairs(self.colors) do
		if self:compareTable(v, table) then
			return true
		end
	end
	return false
end

function EC:searchIndex(name)
	for k,v in pairs(self.colors) do
		if k == name then
			return true
		end
	end
	return false
end

function EC:askColor(r, g, b, a)
	if type(r) == 'table' then
		self:search(r)
	elseif type(r) == 'number' then
		self:search({r = r, g = g, b = b, a = a})
	end
end

function EC:makeColor(name, table)
	if self:searchTable(table) then
		if self.verb then print('already present color table') end
		return
	end
	if self:searchIndex(name) then
		if self.verb then print('already present color name') end
		return
	end
	self.colors[name] = table
end

function EC:newColor(name, r, g, b, a)
	if type(r) == 'table' then
		self:makeColor(name, r)
	elseif type(r) == 'number' then
		self:makeColor(name, {r = r, g = g, b = b, a = a})
	end
end

return EC
