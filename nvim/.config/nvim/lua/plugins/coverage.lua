return {
  {
    "andythigpen/nvim-coverage",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("coverage").setup({
        auto_reload = true,
        lang = {
          go = {
            coverage_file = vim.fn.getcwd() .. "/coverage/coverage.out",
          },
        },
      })
    end,
    keys = {
      { "<leader>tc", "<cmd>Coverage<cr>", desc = "Show Coverage (signs)" },
      { "<leader>tC", "<cmd>CoverageSummary<cr>", desc = "Coverage Summary" },
      { "<leader>tX", "<cmd>CoverageClear<cr>", desc = "Clear Coverage Signs" },
    },
  },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-golang"] = {
          go_test_args = { "-v", "-race", "-count=1", "-coverprofile=" .. vim.fn.getcwd() .. "/coverage/coverage.out" },
        },
      },
    },
  },
}
