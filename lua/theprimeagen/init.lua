require("theprimeagen.remap")
require("theprimeagen.set")
require("theprimeagen.packer")
require("theprimeagen.lsp")
require('bufferline').setup {
  options = {
    -- Display numbers (options: "none", "ordinal", "buffer_id", "both")
    numbers = "ordinal",
    -- Close buffers using a close icon
    close_command = "bdelete! %d",
    -- Right-click to close buffer (macOS Cmd+Click can also work in GUIs)
    middle_mouse_command = "bdelete! %d",
    -- Separator style (options: "slant", "thick", "thin", etc.)
    separator_style = "slant",
    -- Enable or disable filetype icons
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    -- Enable diagnostics (e.g., LSP)
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, _, _)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    -- Customize offsets for other UI plugins (e.g., NvimTree)
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      },
    },
    -- Enforce buffer order (options: "directory", "tabs", etc.)
    sort_by = "insert_at_end",
  },
}

