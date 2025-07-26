vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

function set_wrapping()
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.api.nvim_command "nnoremap j gj"
    vim.api.nvim_command "vnoremap j gj"

    vim.api.nvim_command "nnoremap k gk"
    vim.api.nvim_command "vnoremap k gk"

    vim.api.nvim_command "nnoremap <Down> gj"
    vim.api.nvim_command "vnoremap <Down> gj"
    vim.api.nvim_command "inoremap <Down> <C-o>gj"

    vim.api.nvim_command "nnoremap <Up> gk"
    vim.api.nvim_command "vnoremap <Up> gk"
    vim.api.nvim_command "inoremap <Up> <C-o>gk"
end

vim.cmd[[
  augroup markdown_wrap
    autocmd!
    autocmd FileType markdown,text,plaintex,tex lua set_wrapping()
  augroup END
]]

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.api.nvim_command "set list"
vim.api.nvim_command "set listchars=tab:→\\ ,space:·"

