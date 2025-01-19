local function is_terminal_window()
	local buf = vim.api.nvim_get_current_buf()
	local filetype = vim.api.nvim_buf_get_option(buf, "filetype")
	return filetype == "terminal"
end

-- Define a function to close the current window
function close_current_window()
	local current_window = vim.api.nvim_get_current_win()
	vim.api.nvim_win_close(current_window, true)
end

-- Function to toggle terminal mode and return to the previous window
function toggle_term()
	-- Open a new terminal in a horizontal split
	vim.cmd("belowright split | terminal")

	-- Make sure terminal starts in insert mode
	vim.cmd("startinsert")
end
