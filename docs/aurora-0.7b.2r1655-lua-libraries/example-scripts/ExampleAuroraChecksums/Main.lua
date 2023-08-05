scriptTitle = "Example Script - Aurora Checksums"
scriptAuthor = "jrobiche"
scriptVersion = 1
scriptDescription = "Example script"
scriptPermissions = {}

function main()
	local exampleFilePath = Script.GetBasePath() .. "hello.txt"
	local exampleString = "Hello, world!"
	local exitScript = false
	local options = {}
	options[1] = "File Checksums"
	options[2] = "String Checksums"
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
			-- user selected "File Checksums" option
			local messageText = string.format(
				"File Path: %s\nCRC-32: %s\nMD5: %s\nSHA-1: %s",
				exampleFilePath,
				Aurora.Crc32HashFile(exampleFilePath),
				Aurora.Md5HashFile(exampleFilePath),
				Aurora.Sha1HashFile(exampleFilePath)
			)
			Script.ShowMessageBox("File Checksums", messageText, "OK")
		elseif ret.Selected.Key == 2 then
			-- user selected "String Checksums" option
			local messageText = string.format(
				"String: %s\nCRC-32: %s\nMD5: %s\nSHA-1: %s",
				exampleString,
				Aurora.Crc32Hash(exampleString),
				Aurora.Md5Hash(exampleString),
				Aurora.Sha1Hash(exampleString)
			)
			Script.ShowMessageBox("String Checksums", messageText, "OK")
		end
	until(exitScript)
end
