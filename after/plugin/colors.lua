require('rose-pine').setup({
    disable_background = true
})

function ColorShit(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
    -- imports
    vim.cmd("highlight Include guifg=#3e8fb0")
    -- keywords
    vim.cmd("highlight Keyword guifg=#eb6f92")
    -- types
    vim.cmd("highlight Type guifg=#908caa")
    -- string
    vim.cmd("highlight String guifg=#c4a7e7")
    -- label
    vim.cmd("highlight Label guifg=#f6c177")
    -- conditional
    vim.cmd("highlight Conditional guifg=#eb6f92")
end

ColorShit()
