-- Options loaded before lazy.nvim startup
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.termguicolors = true
vim.o.autoread = true
vim.o.confirm = false
vim.g.snacks_animate = false

-- Docker-compose filetype detection
vim.filetype.add({
  filename = {
    ["docker-compose.yaml"] = "yaml.docker-compose",
    ["docker-compose.yml"] = "yaml.docker-compose",
  },
})
