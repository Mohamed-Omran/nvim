-- this i file documents my usage for nvim



------------------------ Neo-tree -------------------------
git_status = {
symbols = {
-- Change type
added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
deleted   = "✖",-- this can only be used in the git_status source
renamed   = "󰁕",-- this can only be used in the git_status source
-- Status type
untracked = "",
ignored   = "",
unstaged  = "󰄱",
staged    = "",
conflict  = "",
}
}
-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError",
{text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
{text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
{text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
{text = "󰌵", texthl = "DiagnosticSignHint"})



------------------------ Telescope -------------------------
keys = {
{ "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Switch Buffer", },
{ "<leader>/", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
{ "<leader><space>", LazyVim.pick("auto"), desc = "Find Files (Root Dir)" },
-- find
{ "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
{ "<leader>fc", LazyVim.pick.config_files(), desc = "Find Config File" },
{ "<leader>ff", LazyVim.pick("auto"), desc = "Find Files (Root Dir)" },
{ "<leader>fF", LazyVim.pick("auto", { root = false }), desc = "Find Files (cwd)" },
{ "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
{ "<leader>fR", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
-- git
{ "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
-- search
{ '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
{ "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
{ "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
{ "<leader>sg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
{ "<leader>sG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
{ "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
{ "<leader>sj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
{ "<leader>sl", "<cmd>Telescope loclist<cr>", desc = "Location List" },
{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
{ "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
{ "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
{ "<leader>sq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix List" },
{ "<leader>sw", LazyVim.pick("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
{ "<leader>sW", LazyVim.pick("grep_string", { root = false, word_match = "-w" }), desc = "Word (cwd)" },
{ "<leader>sw", LazyVim.pick("grep_string"), mode = "v", desc = "Selection (Root Dir)" },
{ "<leader>sW", LazyVim.pick("grep_string", { root = false }), mode = "v", desc = "Selection (cwd)" },
{ "<leader>uC", LazyVim.pick("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview" },
{ "<leader>ss", function() require("telescope.builtin").lsp_document_symbols({ symbols = LazyVim.config.get_kind_filter(), }) end, desc = "Goto Symbol", },
{ "<leader>sS", function() require("telescope.builtin").lsp_dynamic_workspace_symbols({ symbols = LazyVim.config.get_kind_filter(), }) end, desc = "Goto Symbol (Workspace)", },
},

mappings = {
i = {
["<c-t>"] = open_with_trouble,
["<a-t>"] = open_with_trouble,
["<a-i>"] = find_files_no_ignore,
["<a-h>"] = find_files_with_hidden,
["<C-Down>"] = actions.cycle_history_next,
["<C-Up>"] = actions.cycle_history_prev,
["<C-f>"] = actions.preview_scrolling_down,
["<C-b>"] = actions.preview_scrolling_up,
},
n = {
["q"] = actions.close, },
}


------------------------ Buffer Git Signs -------------------------
signs = {
  add = { text = "▎" },
  change = { text = "▎" },
  delete = { text = "" },
  topdelete = { text = "" },
  changedelete = { text = "▎" },
  untracked = { text = "▎" },
}
signs_staged = {
  add = { text = "▎" },
  change = { text = "▎" },
  delete = { text = "" },
  topdelete = { text = "" },
  changedelete = { text = "▎" },
}
