-- local Hydra = require("hydra")
-- local splits = require("smart-splits")
--
-- local cmd = require("hydra.keymap-util").cmd
-- local pcmd = require("hydra.keymap-util").pcmd
--
-- local window_hint = [[
--  ^^^^^^^^^^^^     Move      ^^    Size   ^^   ^^     Split
--  ^^^^^^^^^^^^-------------  ^^-----------^^   ^^---------------
--  ^ ^ _k_ ^ ^  ^ ^ _K_ ^ ^   ^   _<C-k>_   ^   _s_: horizontally 
--  _h_ ^ ^ _l_  _H_ ^ ^ _L_   _<C-h>_ _<C-l>_   _v_: vertically
--  ^ ^ _j_ ^ ^  ^ ^ _J_ ^ ^   ^   _<C-j>_   ^   _q_, _c_: close
--  focus^^^^^^  window^^^^^^  ^_=_: equalize^   _z_: maximize
--  ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^   ^^ ^          ^   _o_: remain only
-- ]]

--[[ Hydra({
	name = "Windows",
	config = {
		invoke_on_body = true,
		hint = {
			type = "cmdline",
			-- Offset of the floating window from the nearest editor border
			offset = 0,

			-- options passed to `nvim_open_win()`, see :h nvim_open_win()
			-- Lets you set border, header, footer, etc etc.
			float_opts = {
				-- row, col, height, width, relative, and anchor should not be
				-- overridden
				style = "minimal",
				focusable = false,
				noautocmd = true,
			},
		},
	},
	mode = "n",
	body = "<C-w>",
	heads = {
		{ "h", "<C-w>h" },
		{ "j", "<C-w>j" },
		{ "k", pcmd("wincmd k", "E11", "close") },
		{ "l", "<C-w>l" },

		{ "H", cmd("WinShift left") },
		{ "J", cmd("WinShift down") },
		{ "K", cmd("WinShift up") },
		{ "L", cmd("WinShift right") },

		{ "<C-h>", function() splits.resize_left(2) end, },
		{ "<C-j>", function() splits.resize_down(2) end, },
		{ "<C-k>", function() splits.resize_up(2) end, },
		{ "<C-l>", function() splits.resize_right(2) end, },
		{ "=", "<C-w>=", { desc = "equalize" } },

		{ "s", pcmd("split", "E36") },
		{ "<C-s>", pcmd("split", "E36"), { desc = false } },
		{ "v", pcmd("vsplit", "E36") },
		{ "<C-v>", pcmd("vsplit", "E36"), { desc = false } },

		{ "w", "<C-w>w", { exit = true, desc = false } },
		{ "<C-w>", "<C-w>w", { exit = true, desc = false } },

		{ "z", cmd("WindowsMaximaze"), { exit = true, desc = "maximize" } },
		{ "<C-z>", cmd("WindowsMaximaze"), { exit = true, desc = false } },

		{ "o", "<C-w>o", { exit = true, desc = "remain only" } },
		{ "<C-o>", "<C-w>o", { exit = true, desc = false } },

		{ "c", pcmd("close", "E444") },
		{ "q", pcmd("close", "E444"), { desc = "close window" } },
		{ "<C-c>", pcmd("close", "E444"), { desc = false } },
		{ "<C-q>", pcmd("close", "E444"), { desc = false } },

		{ "<Esc>", nil, { exit = true, desc = false } },
	},
})
]]--
