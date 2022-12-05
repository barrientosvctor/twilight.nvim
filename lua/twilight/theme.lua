local theme = {}
local colors = require("twilight.colors")

function theme.loadEditor()
    return {
        Normal = { fg = colors.white, bg = colors.dark_grey },
        NonText = { fg = colors.white, bg = colors.dark_grey },
        ColorColumn = { fg = colors.white, bg = colors.red },
        MatchParen = { fg = colors.white, bg = "#80a090", style = "bold" },

        TabLine = { fg = "#a09998", bg = "#202020" },
        TabLineFill = { fg = "#a09998", bg = "#202020" },
        TabLineSel = { fg = "#a09998", bg = "#404850", style = "underline" },

        -- Menu autocompletion
        Pmenu = { fg = colors.light_grey, bg = colors.grey },
        PmenuSel = { fg = colors.white, bg = "#404040", style = "underline" },
        PmenuSbar = { bg = colors.green, },

        Visual = { bg = "#404040" },
        VisualNOS = { link = "Visual" },

        Cursor = { bg = "#b0d0f0" },
        CursorLine = { bg = colors.dark_grey },
        CursorLineNR = { bg = colors.dark_grey_blue, fg = colors.white },

        SpecialKey = { fg = colors.grey, bg = colors.dark_grey },

        LineNR = { fg = colors.grey_blue, bg = colors.dark_grey_blue },
        LineNrAbove = { link = "LineNR" },
        LineNrBelow = { link = "LineNR" },

        StatusLine = { fg = colors.white, bg = colors.grey },
        StatusLineNC = { fg = colors.light_grey, bg = colors.grey },

        VertSplit = { fg = colors.grey, bg = colors.grey },

        Folded = { fg = colors.grey_blue, bg = colors.dark_grey_blue },
        FoldColumn = { fg = colors.grey_blue, bg = colors.dark_grey_blue },
        SignColumn = { fg = colors.grey_blue, bg = colors.dark_grey_blue },

        Search = { fg = "#606000", bg = "#c0c000" },
        Directory = { fg = "#dad085" },
        Error = { bg = "#602020" },

        Whitespace = { fg = colors.dark_grey },

        WinBar = { fg = colors.white, bg = colors.dark_grey },
        WinBarNC = { link = "WinBar" },

        -- Diffs
        diffAdded = { fg = colors.green },
	diffRemoved = { fg = colors.red },
	diffChanged = { fg = colors.yellow },
	diffOldFile = { link = "diffRemoved" },
	diffNewFile = { link = "diffAdded" },
	diffFile = { fg = colors.red, style = "bold" },
	diffLine = { link = "diffFile" },
	diffIndexLine = { fg = colors.beige },

        -- Health
        healthError = { fg = colors.red },
	healthSuccess = { fg = colors.green },
	healthWarning = { fg = colors.yellow },
    }
end

function theme.loadSyntax()
    return {
        Underlined = { fg = colors.white, bg = colors.dark_grey, style = "underline" },

        Comment = { fg = colors.mid_grey_blue, bg = "NONE", style = "italic" },
        Todo = { fg = colors.grey_blue, bg = "NONE", style = "italic,bold" },

        Title = { fg = colors.red, bg = "NONE", style = "underline" },

        Constant = { fg = colors.red, bg = "NONE" },
        String = { fg = colors.green, bg = "NONE" },
        Special = { fg = colors.light_green, bg = "NONE" },

        Identifier = { fg = colors.grey_blue, bg = "NONE" },
        Statement = { fg = colors.beige, bg = "NONE" },
        Conditional = { link = "Statement" },
        Repeat = { link = "Statement" },
        Structure = { link = "Statement" },
        Function = { fg = colors.violet },
        Boolean = { fg = colors.red },
        Property = { fg = colors.white },
        Exception = { fg = colors.light_green },

        PreProc = { fg = colors.grey_blue, bg = "NONE" },
        Operator = { fg = colors.light_orange, bg = "NONE" },
        Type = { fg = colors.yellow, bg = "NONE" },
    }
end

function theme.loadTreesitter()
    return {
        TSConstructor = { fg = colors.white },
        TSConstant = { link = "Constant" },
        TSVariable = { fg = colors.white },
        TSVariableBuiltin = { fg = colors.yellow },
        TSField = { fg = colors.white },
        TSNumber = { fg = colors.red },
        TSFloat = { link = "TSNumber" },
        TSAttribute = { fg = colors.white }, -- (unstable)
        TSError = { link = "Error" },
        TSInclude = { fg = colors.light_green },
        TSLabel = { fg = colors.light_green },
        TSOperator = { fg = colors.white },
        TSParameter = { fg = colors.light_grey_blue },
        TSParameterReference = { link = "TSParameter" },
        TSPunctDelimiter = { fg = colors.white },
        TSPunctBracket = { link = "TSPunctDelimiter" },
        TSPunctSpecial = { link = "TSPunctDelimiter" },
        TSSymbol = { link = "TSPunctDelimiter" },
        TSType = { link = "Type" },
        TSTypeBuiltin = { link = "Type" },
        TSText = { fg = colors.white },
        TSTextReference = { fg = colors.green },
        TSEmphasis = { fg = colors.green, style = "underline,bold" },
        TSUnderline = { link = "Underlined" },
        TSLiteral = { link = "TSText" },
        TSURI = { style = "underline" },
        TSProperty = { link = "Property" },
        TSException = { link = "Exception" },

        ["@comment"] = { link = "Comment" },
        ["@constructor"] = { link = "TSConstructor" },
        ["@constant"] = { link = "TSConstant" },
        ["@variable"] = { link = "TSVariable" },
        ["@variable.builtin"] = { link = "TSVariableBuiltin" },
        ["@field"] = { link = "TSField" },
        ["@number"] = { link = "TSNumber" },
        ["@float"] = { link = "TSFloat" },
        ["@attribute"] = { link = "TSAttribute" },
        ["@error"] = { link = "TSError" },
        ["@include"] = { link = "TSInclude" },
        ["@label"] = { link = "TSLabel" },
        ["@operator"] = { link = "TSOperator" },
        ["@parameter"] = { link = "TSParameter" },
        ["@parameter.reference"] = { link = "TSParameterReference" },
        ["@punctuation.delimiter"] = { link = "TSPunctDelimiter" },
        ["@punctuation.bracket"] = { link = "TSPunctDelimiter" },
        ["@punctuation.special"] = { link = "TSPunctDelimiter" },
        ["@symbol"] = { link = "TSPunctDelimiter" },
        ["@type"] = { link = "TSType" },
        ["type.builtin"] = { link = "TSType" },
        ["@text"] = { link = "TSText" },
        ["@text.reference"] = { link = "TSTextReference" },
        ["@text.emphasis"] = { link = "TSEmphasis" },
        ["@text.underline"] = { link = "TSUnderline" },
        ["@text.literal"] = { link = "TSLiteral" },
        ["@text.uri"] = { link = "TSLiteral" },
        ["@property"] = { link = "TSProperty" },
        ["@exception"] = { link = "TSException" },
    }
end

function theme.loadLSP()
    return {
        LspDiagnosticsDefaultError = { fg = colors.red }, -- used for "Error" diagnostic virtual text
	LspDiagnosticsSignError = { fg = colors.red }, -- used for "Error" diagnostic signs in sign column
	LspDiagnosticsFloatingError = { fg = colors.red }, -- used for "Error" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextError = { fg = colors.red }, -- Virtual text "Error"
	LspDiagnosticsUnderlineError = { style = "undercurl", sp = colors.red }, -- used to underline "Error" diagnostics.
	LspDiagnosticsDefaultWarning = { fg = colors.yellow }, -- used for "Warning" diagnostic signs in sign column
	LspDiagnosticsSignWarning = { fg = colors.yellow }, -- used for "Warning" diagnostic signs in sign column
	LspDiagnosticsFloatingWarning = { fg = colors.yellow }, -- used for "Warning" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextWarning = { fg = colors.yellow }, -- Virtual text "Warning"
	LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = colors.yellow }, -- used to underline "Warning" diagnostics.
	LspDiagnosticsDefaultInformation = { fg = colors.cyan }, -- used for "Information" diagnostic virtual text
	LspDiagnosticsSignInformation = { fg = colors.cyan }, -- used for "Information" diagnostic signs in sign column
	LspDiagnosticsFloatingInformation = { fg = colors.cyan }, -- used for "Information" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextInformation = { fg = colors.cyan }, -- Virtual text "Information"
	LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = colors.cyan }, -- used to underline "Information" diagnostics.
	LspDiagnosticsDefaultHint = { fg = colors.white }, -- used for "Hint" diagnostic virtual text
	LspDiagnosticsSignHint = { fg = colors.white }, -- used for "Hint" diagnostic signs in sign column
	LspDiagnosticsFloatingHint = { fg = colors.white }, -- used for "Hint" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextHint = { fg = colors.white }, -- Virtual text "Hint"
	LspDiagnosticsUnderlineHint = { style = "undercurl", sp = colors.white }, -- used to underline "Hint" diagnostics.
	LspReferenceText = { fg = colors.white, bg = colors.dark_grey }, -- used for highlighting "text" references
	LspReferenceRead = { fg = colors.white, bg = colors.dark_grey }, -- used for highlighting "read" references
	LspReferenceWrite = { fg = colors.white, bg = colors.dark_grey }, -- used for highlighting "write" references

        DiagnosticError = { link = "LspDiagnosticsDefaultError" },
	DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
	DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
	DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
	DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
	DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
	DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
	DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
	DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
	DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
	DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
	DiagnosticSignError = { link = "LspDiagnosticsSignError" },
	DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
	DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
	DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
	DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
	DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
	DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
	DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
	DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
    }
end

function theme.loadPlugins()
    return {
        -- nvim-cmp
        CmpItemKind = { fg = colors.green },
	CmpItemAbbrMatch = { fg = colors.yellow, style = "bold" },
	CmpItemAbbrMatchFuzzy = { fg = colors.light_grey, style = "bold" },
	CmpItemAbbr = { fg = colors.light_grey },
	CmpItemMenu = { fg = colors.yellow},
	CmpItemKindText = { fg = colors.green },
	CmpItemKindMethod = { fg = colors.yellow },
	CmpItemKindFunction = { link = "CmpItemKindMethod" },
	CmpItemKindConstructor = { link = "CmpItemKindMethod" },
	CmpItemKindField = { fg = colors.white },
	CmpItemKindVariable = { link = "CmpItemKindField" },
	CmpItemKindClass = { fg = colors.yellow },
	CmpItemKindInterface = { link = "CmpItemKindClass" },
	CmpItemKindModule = { link = "CmpItemKindField" },
	CmpItemKindProperty = { fg = colors.cyan },
	CmpItemKindUnit = { link = "CmpItemKindField" },
	CmpItemKindValue = { link = "CmpItemKindText" },
	CmpItemKindEnum = { link = "CmpItemKindField" },
	CmpItemKindKeyword = { link = "CmpItemKindField" },
	CmpItemKindSnippet = { fg = colors.light_orange },
	CmpItemKindColor = { link = "CmpItemKindProperty" },
	CmpItemKindFile = { fg = colors.red },
	CmpItemKindReference = { link = "CmpItemKindMethod" },
	CmpItemKindFolder = { fg = colors.red },
	CmpItemKindEnumMember = { link = "CmpItemKindField" },
	CmpItemKindConstant = { fg = colors.violet },
	CmpItemKindStruct = { link = "CmpItemKindClass" },
	CmpItemKindEvent = { link = "CmpItemKindMethod" },
	CmpItemKindOperator = { fg = colors.violet },
	CmpItemKindTypeParameter = { link = "CmpItemKindProperty" },

        -- Git signs
        GitSignsAddLn = { fg = colors.green },
	GitSignsAddNr = { fg = colors.green },
	GitSignsChangeLn = { fg = colors.yellow },
	GitSignsChangeNr = { fg = colors.yellow },
	GitSignsDeleteLn = { fg = colors.red },
	GitSignsDeleteNr = { fg = colors.red },
	GitSignsCurrentLineBlame = { fg = colors.light_orange, style = "bold" },

        -- Git gutter
        GitGutterAdd = { fg = colors.green },
	GitGutterChange = { fg = colors.yellow },
	GitGutterDelete = { fg = colors.red },
	GitGutterChangeDelete = { fg = colors.red },

        -- Lspsaga
        DiagnosticError = { fg = colors.red },
	DiagnosticWarning = { fg = colors.yellow },
	DiagnosticInformation = { fg = colors.cyan },
	DiagnosticHint = { fg = colors.white },
	DiagnosticTruncateLine = { fg = colors.white },
	LspFloatWinNormal = { bg = colors.dark_grey },
	LspFloatWinBorder = { fg = colors.white },
	LspSagaBorderTitle = { fg = colors.yellow },
	LspSagaHoverBorder = { fg = colors.yellow },
	LspSagaRenameBorder = { fg = colors.light_orange },
	LspSagaDefPreviewBorder = { fg = colors.yellow },
	LspSagaCodeActionBorder = { fg = colors.red },
	LspSagaFinderSelection = { fg = colors.yellow },
	LspSagaCodeActionTitle = { fg = colors.yellow },
	LspSagaCodeActionContent = { fg = colors.white },
	LspSagaSignatureHelpBorder = { fg = colors.light_orange },
	ReferencesCount = { fg = colors.white },
	DefinitionCount = { fg = colors.white },
	DefinitionIcon = { fg = colors.cyan },
	ReferencesIcon = { fg = colors.yellow },
	TargetWord = { fg = colors.red },

        -- NvimTree
        NvimTreeRootFolder = { fg = colors.yellow, style = "bold" },
	NvimTreeGitDirty = { fg = colors.light_orange },
	NvimTreeGitNew = { fg = colors.green },
	NvimTreeImageFile = { fg = colors.light_green },
	NvimTreeExecFile = { fg = colors.white },
	NvimTreeSpecialFile = { fg = colors.yellow, style = "underline" },
	NvimTreeFolderName = { fg = colors.white },
	NvimTreeEmptyFolderName = { fg = colors.white },
	NvimTreeFolderIcon = { fg = colors.cyan },
	NvimTreeIndentMarker = { fg = colors.white },
	LspDiagnosticsError = { fg = colors.red },
	LspDiagnosticsWarning = { fg = colors.yellow },
	LspDiagnosticsInformation = { fg = colors.cyan },
	LspDiagnosticsHint = { fg = colors.white },

        -- Packer
        packerString = { fg = colors.green, bg = colors.none },
	packerHash = { fg = colors.yellow, bg = colors.none, style = "bold" },
	packerRelDate = { fg = colors.light_grey, style = "bold,underline" },
	packerSuccess = { fg = colors.green, bg = colors.none, style = "bold" },
	packerStatusSuccess = { link = "PackerSuccess" },

        -- Indent Blankline
        IndentBlanklineChar = { fg = colors.dark_grey_blue },
	IndentBlanklineContextChar = { fg = colors.cyan },

        -- Neo-tree
        NeoTreeRootName = { fg = colors.white, style = "bold" },

        -- Notify
        NotifyERROR = { fg = colors.red },
	NotifyWARN = { fg = colors.yellow },
	NotifyINFO = { fg = colors.white },
	NotifyDEBUG = { fg = colors.grey_blue },
	NotifyTRACE = { fg = colors.light_grey },
	NotifyERRORTitle = { fg = colors.red },
	NotifyWARNTitle = { fg = colors.yellow },
	NotifyINFOTitle = { fg = colors.white },
	NotifyDEBUGTitle = { fg = colors.grey_blue },
	NotifyTRACETitle = { fg = colors.light_grey },

        -- Dashboard
        DashboardShortCut = { fg = colors.light_orange },
	DashboardHeader = { fg = colors.green },
	DashboardCenter = { fg = colors.yellow },
	DashboardFooter = { fg = colors.white, style = "italic" },
    }
end

return theme
-- Full documentation: https://neovim.io/doc/user/syntax.html#highlight-groups
