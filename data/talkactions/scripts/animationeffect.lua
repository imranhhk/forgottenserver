function onSay(player, words, param)
	local effect = tonumber(param)
	local block = {43, 46, 47, 52}
	
	if not player:getGroup():getAccess() or effect == nil or isInArray(block, effect) or effect <= 0 or effect > 54 then
		return false
	end
	
	local orig = player:getPosition()
	local d1, d2 = {z = orig.z}, {z = orig.z}

	d1.x = orig.x - 7
	d2.x = orig.x + 7
	for i = -5, 5 do
		d1.y = orig.y + i
		d2.y = d1.y
		orig:sendDistanceEffect(d1, effect)
		orig:sendDistanceEffect(d2, effect)
	end

	d1.y = orig.y - 5
	d2.y = orig.y + 5
	for i = -6, 6 do
		d1.x = orig.x + i
		d2.x = d1.x
		orig:sendDistanceEffect(d1, effect)
		orig:sendDistanceEffect(d2, effect)
	end
	return false
end
