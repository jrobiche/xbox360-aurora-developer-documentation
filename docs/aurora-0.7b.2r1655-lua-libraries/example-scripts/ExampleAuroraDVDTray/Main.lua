scriptTitle = "Example Script - Aurora DVD Tray"
scriptAuthor = "jrobiche"
scriptVersion = 1
scriptDescription = "Example script"
scriptPermissions = {}

DVDTrayState = enum {
	Open = 0,
	-- ??? = 1,
	Closed = 2,
	Opening = 3,
	Closing = 4
}

DVDTrayStateText = {}
DVDTrayStateText[DVDTrayState.Open] = "Opened"
DVDTrayStateText[DVDTrayState.Closed] = "Closed"
DVDTrayStateText[DVDTrayState.Opening] = "Opening"
DVDTrayStateText[DVDTrayState.Closing] = "Closing"
-- set DVDTrayStateText table to return "Unknown" if key is not in table
setmetatable(DVDTrayStateText, {__index = function () return "Unknown" end})

function main()
	local currentTrayState = Aurora.GetDVDTrayState()
	local exitScript = false
	local options = {}
	options[1] = "Open DVD Tray"
	options[2] = "Close DVD Tray"
	repeat
		-- ask user to select an option
		local ret = Script.ShowPopupList(
			"Options",
			"No options available",
			options
		)
		if ret.Canceled then
			exitScript = true
		elseif ret.Selected.Key == 1 then
			-- user selected "Open DVD Tray" option
			Aurora.OpenDVDTray()
			repeat
				currentTrayState = Aurora.GetDVDTrayState()
				SetScriptStatus(currentTrayState)
				-- note: the until condition below should be
				-- `currentTrayState == DVDTrayState.Open or currentTrayState == DVDTrayState.Error`
				-- but the value of `DVDTrayState.Error` is unknown, so we have to check against all
				-- other values in DVDTrayState
			until(
				currentTrayState ~= DVDTrayState.Opening
				and currentTrayState ~= DVDTrayState.Closing
				and currentTrayState ~= DVDTrayState.Closed
			)
		elseif ret.Selected.Key == 2 then
			-- user selected "Close DVD Tray" option
			Aurora.CloseDVDTray()
			repeat
				currentTrayState = Aurora.GetDVDTrayState()
				SetScriptStatus(currentTrayState)
				-- note: the until condition below should be
				-- `currentTrayState == DVDTrayState.Closed or currentTrayState == DVDTrayState.Error`
				-- but the value of `DVDTrayState.Error` is unknown, so we have to check against all
				-- other values in DVDTrayState
			until(
				currentTrayState ~= DVDTrayState.Open
				and currentTrayState ~= DVDTrayState.Opening
				and currentTrayState ~= DVDTrayState.Closing
			)
		end
	until(exitScript)
end

function SetScriptStatus(trayState)
	local statusText = string.format(
		"Tray State: %d (%s)",
		trayState,
		DVDTrayStateText[trayState]
	)
	Script.SetStatus(statusText)
end
