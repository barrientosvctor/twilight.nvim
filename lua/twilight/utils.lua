local util = {}
local theme = require("twilight.theme")

function util.highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp
    vim.cmd(hl)

    if color.link then
        vim.cmd("highlight! link " .. group .. " " .. color.link)
    end
end

function util.loadHighlightGroup(highlightGroup)
    for group, colors in pairs(highlightGroup) do
        util.highlight(group, colors)
    end
end

function util.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "twilight"

    -- Load editor
    util.loadHighlightGroup(theme.loadEditor())
    -- Load syntax
    util.loadHighlightGroup(theme.loadSyntax())
    -- Load Treesitter
    util.loadHighlightGroup(theme.loadTreesitter())
    -- Load LSP
    util.loadHighlightGroup(theme.loadLSP())
    -- Load plugins
    util.loadHighlightGroup(theme.loadPlugins())
end
return util
