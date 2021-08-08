set hidden
set noswapfile
set number
set termguicolors
set expandtab
set tabstop=4

filetype plugin indent on

set rtp=$VIMRUNTIME
set rtp+=../interesting-words.nvim

lua << EOF
function _G.dump(...)
	local objects = vim.tbl_map(vim.inspect, { ... })
	print(unpack(objects))
end
vim.g.mapleader = " "
EOF

