local o = vim.opt

o.expandtab = false
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.number = true
o.relativenumber = false
o.smartindent = true
o.autoindent = true
o.ignorecase = true
o.smartcase = true
o.updatetime = 300
o.wrap = false
o.list = true
o.listchars = {
	space = "·",
	tab = " ->",
	trail = "•",
	extends = "⟩",
	precedes = "⟨"
}
o.clipboard = "unnamedplus"
