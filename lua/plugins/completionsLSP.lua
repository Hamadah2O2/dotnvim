local command = { "CocCommand", "CocConfig", "CocDiagnostics", "CocDisable", "CocEnable", "CocFirst", "CocInfo", "CocInstall", "CocLast", "CocList", "CocListCancel", "CocListResume", "CocLocalConfig", "CocNext", "CocOpenLog", "CocOutline", "CocPrev", "CocPrintErrors", "CocRestart", "CocSearch", "CocStart", "CocUninstall", "CocUpdate", "CocUpdateSync", "CocWatch", }

return {
	-- { "mattn/emmet-vim" },
	{
		"neoclide/coc.nvim",
		branch = "release",
		lazy = true,
		event = {
			"InsertEnter",
			-- "VeryLazy",
		},
		cmd = command,
		dependencies = {
			{ "windwp/nvim-autopairs" },
			{ "SirVer/ultisnips" },
			{ "honza/vim-snippets" },
		},
		config = function()
			require("configs.coc")
		end,
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
}
