scriptTitle = "Example Script - Aurora Functions"
scriptAuthor = "jrobiche"
scriptVersion = 1
scriptDescription = "Example script"
scriptPermissions = {}

function main()
	local exitScript = false
	local options = {}
	options[1] = "Get Current Language"
	options[2] = "Get Current Skin"
	options[3] = "Get Dash Version"
	options[4] = "Get Date"
	options[5] = "Get FS Plugin Version"
	options[6] = "Get IP Address"
	options[7] = "Get MAC Address"
	options[8] = "Get Memory Info"
	options[9] = "Get Skin Version"
	options[10] = "Get Temperatures"
	options[11] = "Get Time"
	options[12] = "Has Internet Connection"
	options[13] = "Reboot Console"
	options[14] = "Restart Aurora"
	options[15] = "Shutdown Console"

	repeat
		local ret = Script.ShowPopupList(
			"Options",
			"No options available",
			options
		)
		if ret.Canceled then
			exitScript = true
		elseif ret.Selected.Key == 1 then
			-- user selected "Get Current Language" option
			local res = Aurora.GetCurrentLanguage()
			local msg = string.format(
				"File Name: %s\nIcon Path: %s\nLanguage: %s\nLanguage Code: %s\nName: %s\nTranslator: %s",
				res["FileName"],
				res["IconPath"],
				res["Language"],
				res["LanguageCode"],
				res["Name"],
				res["Translator"]
			)
			Script.ShowMessageBox("Current Language", msg, "OK")
		elseif ret.Selected.Key == 2 then
			-- user selected "Get Current Skin" option
			local res = Aurora.GetCurrentSkin()
			local msg = string.format(
				"Author: %s\nCompressed: %s\nCreation Date: %s\nDescription: %s\nFile Path: %s"
				.. "\nName: %s\nResource Path: %s\nRevision: %d\nUpdate Id: %s",
				res["Author"],
				tostring(res["Compressed"]),
				res["CreationDate"],
				res["Description"],
				res["FilePath"],
				res["Name"],
				res["ResourcePath"],
				res["Revision"],
				res["UpdateId"]
			)
			Script.ShowMessageBox("Current Skin", msg, "OK")
		elseif ret.Selected.Key == 3 then
			-- user selected "Get Dash Version" option
			local res = Aurora.GetDashVersion()
			local msg = string.format(
				"Major: %d\nMinor: %d\nType: %d\nRevision: %d",
				res["Major"],
				res["Minor"],
				res["Type"],
				res["Revision"]
			)
			Script.ShowMessageBox("Dash Version", msg, "OK")
		elseif ret.Selected.Key == 4 then
			-- user selected "Get Date" option
			local days = {}
			days[0] = "Sunday"
			days[1] = "Monday"
			days[2] = "Tuesday"
			days[3] = "Wednesday"
			days[4] = "Thursday"
			days[5] = "Friday"
			days[6] = "Saturday"
			local res = Aurora.GetDate()
			local msg = string.format(
				"Day: %d\nDay of Week: %d (%s)\nMonth: %d\nYear: %d",
				res["Day"],
				res["DayOfWeek"],
				days[res["DayOfWeek"]],
				res["Month"],
				res["Year"]
			)
			Script.ShowMessageBox("Date", msg, "OK")
		elseif ret.Selected.Key == 5 then
			-- user selected "Get FS Plugin Version" option
			local res = Aurora.GetFSPluginVersion()
			local msg = string.format(
				"Major: %d\nMinor: %d\nType: %d\nRevision: %d",
				res["Major"],
				res["Minor"],
				res["Type"],
				res["Revision"]
			)
			Script.ShowMessageBox("FS Plugin Version", msg, "OK")
		elseif ret.Selected.Key == 6 then
			-- user selected "Get IP Address" option
			local res = Aurora.GetIPAddress()
			Script.ShowMessageBox("IP Address", res, "OK")
		elseif ret.Selected.Key == 7 then
			-- user selected "Get MAC Address" option
			local res = Aurora.GetMACAddress()
			Script.ShowMessageBox("MAC Address", res, "OK")
		elseif ret.Selected.Key == 8 then
			-- user selected "Get Memory Info" option
			local res = Aurora.GetMemoryInfo()
			local msg = string.format(
				"Available: %d\nTotal: %d\nUsed: %d",
				res["Available"],
				res["Total"],
				res["Used"]
			)
			Script.ShowMessageBox("Memory Info", msg, "OK")
		elseif ret.Selected.Key == 9 then
			-- user selected "Get Skin Version" option
			local res = Aurora.GetSkinVersion()
			local msg = string.format(
				"Major: %d\nMinor: %d\nType: %d\nRevision: %d",
				res["Major"],
				res["Minor"],
				res["Type"],
				res["Revision"]
			)
			Script.ShowMessageBox("Skin Version", msg, "OK")
		elseif ret.Selected.Key == 10 then
			-- user selected "Get Temperatures" option
			local res = Aurora.GetTemperatures()
			local msg = string.format(
				"Motherboard: %f\nCPU: %f\nGPU: %f\nRAM: %f",
				res["BRD"],
				res["CPU"],
				res["GPU"],
				res["RAM"]
			)
			Script.ShowMessageBox("Temperatures", msg, "OK")
		elseif ret.Selected.Key == 11 then
			-- user selected "Get Time" option
			local res = Aurora.GetTime()
			local msg = string.format(
				"Hour: %d\nMinute: %d\nSecond: %d\nMillisecond: %d",
				res["Hour"],
				res["Minute"],
				res["Second"],
				res["Milliseconds"]
			)
			Script.ShowMessageBox("Time", msg, "OK")
		elseif ret.Selected.Key == 12 then
			-- user selected "Has Internet Connection" option
			local res = Aurora.HasInternetConnection()
			local msg = tostring(res)
			Script.ShowMessageBox("Has Internet Connection", msg, "OK")
		elseif ret.Selected.Key == 13 then
			-- user selected "Reboot Console" option
			local res = Script.ShowMessageBox(
				"Reboot Console",
				"Would you like to reboot the console?",
				"No", "Yes"
			)
			if res.Button == 2 then
				Aurora.Reboot()
			end
		elseif ret.Selected.Key == 14 then
			-- user selected "Restart Aurora" option
			local res = Script.ShowMessageBox(
				"Restart Aurora",
				"Would you like to restart Aurora?",
				"No", "Yes"
			)
			if res.Button == 2 then
				Aurora.Restart()
			end
		elseif ret.Selected.Key == 15 then
			-- user selected "Shutdown Console" option
			local res = Script.ShowMessageBox(
				"Shutdown Console",
				"Would you like to shutdown the console?",
				"No", "Yes"
			)
			if res.Button == 2 then
				Aurora.Shutdown()
			end
		end
	until(exitScript)
end
