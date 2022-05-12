local cmd = vim.api.nvim_command

cmd([[
    let g:tagbar_ctags_bin = '/usr/bin'
    let g:tagbar_type_go = { 'ctagstype': 'go', 'kinds': [ 'p: package', 'f: function', 'v:variables', 't:type', 'c:const' ]}
]])
