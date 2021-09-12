--[[
AdiButtonAuras - Display auras on action buttons.
Copyright 2013-2021 Adirelle (adirelle@gmail.com)
All rights reserved.

This file is part of AdiButtonAuras.

AdiButtonAuras is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

AdiButtonAuras is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with AdiButtonAuras. If not, see <http://www.gnu.org/licenses/>.
--]]

local _, addon = ...

if not addon.isClass('DEMONHUNTER') then return end

AdiButtonAuras:RegisterRules(function()
	Debug('Adding demonhunter rules')
	return {
		ImportPlayerSpells {
			-- import all spells for
			'DEMONHUNTER'
		},

		ShowDispellable {
			258920, -- Immolation Aura (Vengeance)
			'player',
			'Magic',
			205625, -- Cleansed by Flame (Vengeance honor talent)
		},
	}
end)
