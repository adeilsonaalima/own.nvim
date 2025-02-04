local map = vim.keymap.set

map('i', 'jj', '<Esc>', {
    noremap = true,
    silent = true
})

map('n', '<leader>Fp', ':let @+ = expand("%:p") | silent! normal! "+y<CR>', { desc = "Path" })  
map('n', '<leader>Fn', ':let @+ = expand("%:t") | silent! normal! "+y<CR>', { desc = "Name" })  
map('n', '<leader>Fr', ':let @+ = expand("%") | silent! normal! "+y<CR>', { desc = "Relative Path" })  