return
{
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      layout_strategy = "horizontal",
      layout_config = {
        vertical = {
          preview_cutoff = 0.2,
          preview_height = 0.4
        },
        height = 0.9,
        width = 0.9
      },
      mappings = {
        i = {
          ["<C-j>"] = function(...)
            return require("telescope.actions").move_selection_next(...)
          end,
          ["<C-k>"] = function(...)
            return require("telescope.actions").move_selection_previous(...)
          end,
          ["<C-p>"] = function(...)
            return require("telescope.actions.layout").toggle_preview(...)
          end
        },
        n = {
          ["j"] = function(...)
            return require("telescope.actions").move_selection_next(...)
          end,
          ["k"] = function(...)
            return require("telescope.actions").move_selection_previous(...)
          end,
          ["gg"] = function(...)
            return require("telescope.actions").move_to_top(...)
          end,
          ["G"] = function(...)
            return require("telescope.actions").move_to_bottom(...)
          end,
          ["<C-p>"] = function(...)
            return require("telescope.actions.layout").toggle_preview(...)
          end
        }
      },
    },
  },
}


