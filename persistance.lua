function setupColi()

	if not coli then coli = {} end
	if not coli.ticks then coli.ticks = {} end
	if not coli.on_added then coli.on_added = {} end
	if not coli.on_remove then coli.on_remove = {} end
	if not coli.on_adjust then coli.on_adjust = {} end
	if not coli.on_pick_up then coli.on_pick_up = {} end


	if global ~= nil then
		if not global.coli then global.coli = {} end
		if not global.coli.fishing_inserters then global.coli.fishing_inserters = {} end
		if not global.players then global.players = {} end
		if not global.coli.players then global.coli.players = {} end
	end
end
