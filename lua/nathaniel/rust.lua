-- Function to compile and run Rust program in a terminal
function CompileAndRunRustInTerminal()
	-- Save the current buffer
	vim.cmd("w")

	-- Open a new terminal split at the bottom
	vim.cmd("belowright split | terminal")

	-- Get the terminal buffer number
	local term_buf = vim.api.nvim_get_current_buf()

	-- Compile the Rust program
	vim.fn.chansend(vim.b.terminal_job_id, "cargo build\n")

	-- Run the compiled program if compilation is successful
	vim.fn.chansend(vim.b.terminal_job_id, "if [ $? -eq 0 ]; then cargo run; fi\n")
end
