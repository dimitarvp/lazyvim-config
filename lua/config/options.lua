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

-- Clipboard over SSH: yanks reach the local machine's clipboard through OSC 52
-- (the terminal escape that sets the clipboard of the terminal we sit at), as
-- they reach the system clipboard when editing locally. Pasting cannot read
-- the remote clipboard back (WezTerm refuses OSC 52 reads), so `p` pastes the
-- last yank or delete of this Neovim; Cmd+V brings the local clipboard in.
if vim.env.SSH_TTY then
  local osc52 = require("vim.ui.clipboard.osc52")
  local last = {}
  local function copy(reg)
    return function(lines, regtype)
      last[reg] = { lines, regtype }
      osc52.copy(reg)(lines)
    end
  end
  local function paste(reg)
    return function()
      return last[reg] or { {}, "v" }
    end
  end
  vim.g.clipboard = {
    name = "OSC 52 copy, local paste",
    copy = { ["+"] = copy("+"), ["*"] = copy("*") },
    paste = { ["+"] = paste("+"), ["*"] = paste("*") },
  }
  vim.opt.clipboard = "unnamedplus"
end

-- Docker-compose filetype detection
vim.filetype.add({
  filename = {
    ["docker-compose.yaml"] = "yaml.docker-compose",
    ["docker-compose.yml"] = "yaml.docker-compose",
  },
})
