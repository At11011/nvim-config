--
-- Filename" remap.lua
-- Author: Nathaniel Thomas
-- Date: June 2nd, 2024
-- Description: This is a key remap configuration file written following the advice in this video:
-- 		https://www.youtube.com/watch?v=w7i4amO_zaE

-- 
vim.g.mapleader = " "

-- In "n"ormal mode, execute <leader>pv, where <leader> is the space defined above, as a vim command ("Ex").
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
