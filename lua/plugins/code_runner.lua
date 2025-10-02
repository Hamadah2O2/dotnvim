return {
    {
        "CRAG666/code_runner.nvim",
        cmd = {
            "RunCode",
            "RunFile",
            "RunClose",
            "RunProject"
        },
        keys = {
            { "<leader>rr", "<CMD>RunCode<CR>", mode = { "n" }, desc = "Run RUN!"},
            { "<leader>rf", "<CMD>RunFile<CR>", mode = { "n" }, desc = "Run File"},
        },
        config = function()
            local config = require("configs.code_runner")
            require('code_runner').setup(config)
        end
    },
}
