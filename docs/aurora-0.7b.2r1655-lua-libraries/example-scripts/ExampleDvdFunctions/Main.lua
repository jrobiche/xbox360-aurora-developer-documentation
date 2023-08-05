scriptTitle = "Example Script - Dvd Functions"
scriptAuthor = "jrobiche"
scriptVersion = 1
scriptDescription = "Example script"
scriptPermissions = { "filesystem" }

-- import enums
package.path = 'Game:\\Media\\Scripts\\Content\\Enums.lua;' .. package.path
require("Enums")

DvdTrayStateText = {}
DvdTrayStateText[DvdTrayState.Open] = "Opened"
DvdTrayStateText[DvdTrayState.Closed] = "Closed"
DvdTrayStateText[DvdTrayState.Opening] = "Opening"
DvdTrayStateText[DvdTrayState.Closing] = "Closing"
DvdTrayStateText[DvdTrayState.Error] = "Error"
-- set DvdTrayStateText table to return "Unknown" if key is not in table
setmetatable(DvdTrayStateText, {__index = function () return "Unknown" end})

DvdMediaTypeText = {}
DvdMediaTypeText[DvdMediaType.None] = "None"
DvdMediaTypeText[DvdMediaType.Xbox360Game] = "Xbox 360 Game"
DvdMediaTypeText[DvdMediaType.XboxGame] = "Xbox Classic Game"
DvdMediaTypeText[DvdMediaType.Unknown] = "Unknown Disc"
DvdMediaTypeText[DvdMediaType.DVDAudio] = "Audio DVD"
DvdMediaTypeText[DvdMediaType.DVDMovie] = "Movie DVD"
DvdMediaTypeText[DvdMediaType.CDVideo] = "Video CD"
DvdMediaTypeText[DvdMediaType.CDAudio] = "Audio CD"
DvdMediaTypeText[DvdMediaType.CDData] = "Data CD"
DvdMediaTypeText[DvdMediaType.Hybrid] = "Hybrid"
DvdMediaTypeText[DvdMediaType.DVDHD] = "HD-DVD"
DvdMediaTypeText[254] = "Initializing"
-- set DvdMediaType table to return "Unknown" if key is not in table
setmetatable(DvdMediaTypeText, {__index = function () return "Unknown" end})

function main()
	local currentTrayState = Dvd.GetTrayState()
	local exitScript = false
	local options = {}
	options[1] = "Open DVD Tray"
	options[2] = "Close DVD Tray"
	options[3] = "Get Media Type"
	options[4] = "Get Tray State"
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
			Dvd.OpenTray()
			repeat
				currentTrayState = Dvd.GetTrayState()
				currentMediaType = Dvd.GetMediaType()
				SetScriptStatus(currentTrayState, currentMediaType)
			until(currentTrayState == DvdTrayState.Error or currentTrayState == DvdTrayState.Open)
		elseif ret.Selected.Key == 2 then
			-- user selected "Close DVD Tray" option
			Dvd.CloseTray()
			repeat
				currentTrayState = Dvd.GetTrayState()
				currentMediaType = Dvd.GetMediaType()
				SetScriptStatus(currentTrayState, currentMediaType)
			until(currentTrayState == DvdTrayState.Error or currentTrayState == DvdTrayState.Closed)
		elseif ret.Selected.Key == 3 then
			-- user selected "Get Media Type" option
			local mediaType = Dvd.GetMediaType()
			local messageText = string.format(
				"Media Type: %d (%s)",
				mediaType,
				DvdMediaTypeText[mediaType]
			)
			Script.ShowMessageBox("DVD Media Type", messageText, "OK")
		elseif ret.Selected.Key == 4 then
			-- user selected "Get Tray State" option
			local trayState = Dvd.GetTrayState()
			local messageText = string.format(
				"Tray State: %d (%s)",
				trayState,
				DvdTrayStateText[trayState]
			)
			Script.ShowMessageBox("DVD Tray State", messageText, "OK")
		end
		Script.SetStatus("Executing Script...")
	until(exitScript)
end

function SetScriptStatus(trayState, mediaType)
	local statusText = string.format(
		"Tray State: %d, Media Type: %d",
		trayState,
		mediaType
	)
	Script.SetStatus(statusText)
end
