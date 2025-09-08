return {
    {
    "snacks.nvim",
    opts = {
        dashboard = {
        preset = {
            pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
            end,
            header = [[

  sSSs. d    d d ss.  d   sss. d ss.  d s.   d s   sb d sss    sSSSs   d s  b 
 S      S    S S    b S d      S    b S  ~O  S  S S S S       S     S  S  S S 
S       S    S S    P S Y      S    P S   `b S   S  S S      S       S S   SS 
S       S sSSS S sS'  S   ss.  S sS'  S sSSO S      S S sSSs S       S S    S 
S       S    S S   S  S      b S   S  S    O S      S S      S       S S    S 
 S      S    S S    S S      P S    S S    O S      S S       S     S  S    S 
  "sss' P    P P    P P ` ss'  P    P P    P P      P P        "sss"   P     
                                                                              
         ]],
            -- stylua: ignore
            ---@type snacks.dashboard.Item[]
            keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
        },
        },
    },
    }
}
