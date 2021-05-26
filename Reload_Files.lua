if script_properties then
	script_properties('work-in-pause', 'forced-reloading-only')
end

function main()
	if not isSampfuncsLoaded() or not isSampLoaded() then return end
	while not isSampAvailable() do wait(0) end
	sampRegisterChatCommand('reload', cmdAll)
	wait(-1)
end

function cmdAll(arg)
	if arg == 'all' then
		reloadScripts()
	else
		sampAddChatMessage('Ошибка: {F73E3E}Неверный аргумент! Введите /reload all', 0x808080)
	end
end