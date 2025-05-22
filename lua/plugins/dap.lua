return {
  {
    "mfussenegger/nvim-dap",
    name = "dap",
    lazy = true,
    config = function() end,
    keys = {
      { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
      { "<leader>dc", function() require("dap").continue() end, desc = "Start/Continue Debugging" },
      { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
      { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate Debugging" },
      { "<leader>do", function() require("dap").step_over() end, desc = "Step Over" },
      { "<leader>di", function() require("dap").step_into() end, desc = "Step Into" },
      { "<leader>dw", function() require("dap").repl.open() end, desc = "Inspect the State" },
      { "<leader>du", function() require("dapui").toggle() end, desc = "Toggle UI" },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }, -- Ensures correct load order
    config = function()
      require("dapui").setup()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}

