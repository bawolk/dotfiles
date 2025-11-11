return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    --Close neo-tree window when file opened
    event_handlers = {
      {
        event = "file_opened",
        handler = function(file_path)
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
