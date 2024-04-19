vim.api.nvim_create_autocmd({"VimEnter"}, {
    pattern = "*",
    command = "NvimTreeOpen",
})

vim.api.nvim_create_autocmd({"VimEnter"}, {
    pattern = "*",
    command = "TSEnable highlight",
})

vim.api.nvim_create_user_command( 'TODO', 
    function(opts)
        vim.cmd('vim "TODO" **/*')
        vim.cmd('Telescope quickfix')
    end, {})

vim.api.nvim_create_user_command( 'FIXME', 
    function(opts) 
        vim.cmd('vim "FIXME" **/*') 
        vim.cmd('Telescope quickfix')
    end, {})

vim.api.nvim_create_user_command( 'NOTE',  
    function(opts) 
        vim.cmd('vim "NOTE" **/*')  
        vim.cmd('Telescope quickfix')
    end, {})

vim.api.nvim_create_user_command( 'Compile', 
    function(opts)
        vim.cmd('FloatermNew --autoclose=0 gcc \'%:p\' -o \'%<\' && ./\'%<\'')
        vim.cmd('FloatermShow')
    end , {})

