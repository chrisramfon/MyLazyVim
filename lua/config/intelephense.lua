-- Intelephense config:
--  * Prioritise composer.json over .git for the workspace root (the IABundle
--    has its own nested .git, which would otherwise root Intelephense inside
--    the bundle, hiding vendor/).
--  * Auto-detect the target PHP version from the installed php binary (the
--    version the code actually runs on) instead of hardcoding it.

-- Query the installed PHP for its x.y.z version. Uses PHP_*_VERSION constants
-- so we get a clean "7.1.33" without any distro build suffix. Returns nil on
-- any failure (php missing, non-zero exit, unexpected output).
local function detect_php_version()
  local out = vim.fn.system({
    "php",
    "-r",
    "echo PHP_MAJOR_VERSION, '.', PHP_MINOR_VERSION, '.', PHP_RELEASE_VERSION;",
  })
  if vim.v.shell_error ~= 0 then return nil end
  out = vim.trim(out)
  if out:match("^%d+%.%d+%.%d+$") then return out end
  return nil
end

vim.lsp.config("intelephense", {
  root_markers = { "composer.json", ".git" },
  before_init = function(params, config)
    local php_version = detect_php_version()
    if php_version then
      config.settings = config.settings or {}
      config.settings.intelephense = config.settings.intelephense or {}
      config.settings.intelephense.environment = config.settings.intelephense.environment or {}
      config.settings.intelephense.environment.phpVersion = php_version
    end
  end,
})
