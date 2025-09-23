local dap = require("dap")

dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { "/root/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js" },
}

vim.g.lazyvim_php_lsp = "intelephense"

dap.configurations.php = {
  {
    type = "php",
    request = "launch",
    name = "Listen for Xdebug",
    port = 9001,  -- Default port for Xdebug 3.x
    pathMappings = {
      ["/srv/camus/api"] = "${workspaceFolder}",  -- Adjust this to your server's document root and local project path
    },
  },
}

