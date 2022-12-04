local colors = {
    black = "#1e1e1e",
    dark_grey = "#323537",
    mid_grey = "#464b50",
    mid_white = "#a7a7a7",
    beige = "#cf6a4c",
    light_orange = "#ebc471",
    yellow = "#CDA869",
    dark_yellow = "#997f52",
    green = "#8f9d6a",
    blue = "#7587a6",
    violet = "#9b859d",
}

return {
    normal = {
        a = { bg = colors.green, fg = colors.dark_grey, gui = "bold" },
        b = { bg = colors.mid_grey, fg = colors.mid_white },
        c = { bg = colors.dark_grey, fg = colors.yellow },
    },
    insert = {
        a = { bg = colors.blue, fg = colors.dark_grey, gui = "bold" },
        b = { bg = colors.mid_grey, fg = colors.mid_white },
        c = { bg = colors.dark_grey, fg = colors.yellow },
    },
    visual = {
        a = { bg = colors.violet, fg = colors.dark_grey, gui = "bold" },
        b = { bg = colors.mid_grey, fg = colors.mid_white },
        c = { bg = colors.dark_grey, fg = colors.yellow },
    },
    replace = {
        a = { bg = colors.beige, fg = colors.dark_grey, gui = "bold" },
        b = { bg = colors.mid_grey, fg = colors.mid_white },
        c = { bg = colors.dark_grey, fg = colors.yellow },
    },
    command = {
        a = { bg = colors.light_orange, fg = colors.dark_grey, gui = "bold" },
        b = { bg = colors.mid_grey, fg = colors.mid_white },
        c = { bg = colors.dark_grey, fg = colors.yellow },
    },
    inactive = {
        a = { bg = colors.black, fg = colors.mid_white, gui = "bold" },
        b = { bg = colors.black, fg = colors.mid_white },
        c = { bg = colors.black, fg = colors.dark_yellow },
    },
}
