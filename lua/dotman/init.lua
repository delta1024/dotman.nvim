---@class Dotman
---@field git_url string
---@field dotfile_path string
---@field config_path string
local M = {}
---@param config Dotman
---@return Dotman
function M.setup(config)
	local config_path = nil
	if config.config_path == nil then
		local path = os.getenv("XDG_CONFIG_HOME")
		if path == nil then
			path = os.getenv("HOME") .. "/" .. ".config"
		end
		config_path = path
	else
		config_path = config.config_path
	end
	return {
		config_path = config_path,
	}
end
return M
