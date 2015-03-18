function onSay(player, words, param)
	local effect = tonumber(param)
	
	if not player:getGroup():getAccess() or effect <= 0 or effect > 170 or effect == nil then
		return false
	end

	player:getPosition():sendMagicEffect(tonumber(param))
	return false
end
