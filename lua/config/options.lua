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

-- No plugin here needs the remote-plugin providers; the interpreters they
-- would probe (pynvim, ruby, perl) are not installed on purpose
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- Docker-compose filetype detection
vim.filetype.add({
  filename = {
    ["docker-compose.yaml"] = "yaml.docker-compose",
    ["docker-compose.yml"] = "yaml.docker-compose",
  },
})
