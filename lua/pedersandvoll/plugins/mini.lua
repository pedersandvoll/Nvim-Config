return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.indentscope").setup()
			-- require("mini.animate").setup()
			require("mini.completion").setup()
		end,
	},
}
