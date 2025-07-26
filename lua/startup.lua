--[[ 
local function run_at_startup()
  vim.api.nvim_command "Neotree"
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = run_at_startup
})
--]]
