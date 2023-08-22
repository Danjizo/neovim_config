-- :help options

vim.cmd("syntax on")

local options = {

    cmdheight = 2,                  -- Number of screen lines to use for the command-line 
    undofile = true,                -- Automatically save undo history to an undo file when writing a buffer to a file, and restore undo history from the same file on buffer read (persistent undo)
    backup = false,                 -- Make a backup before overwriting a file
    swapfile = false,               -- Use a swapfile for the buffer
    conceallevel = 0,               -- Concealable text is shown normally (`` is visible in md files)
    fileencoding = "utf-8",         -- File encoding
    timeoutlen = 1000,               -- Time in milliseconds to wait for a mapped sequence to complete
    signcolumn = "yes",             -- When and how to draw the signcolumn ("yes" = always)
    wrap = false,                   -- When true, lines longer than the width of the window will wrap and displaying continues on the next line  

    -- Cursor related
    cursorline = true,              -- Highlight current line
    scrolloff = 10,                 -- Minimal number of screen lines to keep above and below the cursor.
    sidescrolloff = 10,             -- The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.

    -- Line numbers
    number = true,                  -- Print the line number in front of each line
    relativenumber = true,          -- Show the line number relative to the line with the cursor in front of each line
    numberwidth = 2,                -- Minimal number of columns to use for the line number 

    -- <Tab> and indentation
    expandtab = true,		        -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>
    tabstop = 4,                    -- Number of spaces that a <Tab> in the file counts for
    shiftwidth = 4,			        -- Number of spaces to use for each step of (auto)indent
    smartindent = true,             -- Do smart autoindenting when starting a new line

    -- Tabs 
    showtabline = 2,                -- When the line with tab page labels will be displayed: (0: never, 1: only if there are at least two tab pages, 2: always)

    -- Insert mode completion
    completeopt = {
        "menuone",                  -- Use the popup menu also when there is only one match
        "noselect",                 -- Do not select a match in the menu, force the user to select one from the menu
    },

    -- Command-line autocompletion
    wildmenu = true,                -- When 'wildmenu' is on, command-line completion operates in an enhanced mode
    wildchar = 9,                   -- Character you have to type to start wildcard expansion in the command-line, as specified with 'wildmode'
    wildmode = {                    -- Completion mode that is used for the character specified with 'wildchar' 
        "longest",                  -- Complete till longest common string
        --"list",                     -- When more than one match, list all matches
        "full",                     -- Complete the next full match.
    },

    updatetime = 300,               --If this many milliseconds nothing is typed the swap file will be written to disk (faster autocompletion)

    -- Search options
    ignorecase = true,              -- Ignore case in search patterns
    smartcase = true,               -- Override the 'ignorecase' option if the search pattern contains uppercase characters
    hlsearch = true,                -- When there is a previous search pattern, highlight all its matches 
    -- The |hl-Search| highlight group determines the highlighting for all
    --	matches not under the cursor while the |hl-CurSearch| highlight group
    --	(if defined) determines the highlighting for the match under the
    --	cursor.

    -- Split navigation options
    splitbelow = true,              -- Horizontal splits go to below
    splitright = true,              -- Vertical splits go to the right

    -- Popup menu
    pumheight = 30,                 -- Maximum number of items to show in the popup menu. Zero means "use available screen space"
    pumblend = 30,                  -- Pseudo-transparency for the popup-menu (0 for fully opaque (disabled) to 100 for fully transparent) 

    -- Terminal colors
    termguicolors = vim.fn.has('termguicolors') == 1,

}

-- Apply options
for key, val in pairs(options) do
    vim.opt[key] = val
end

vim.opt.shortmess:append("c")               -- Helps to avoid all the hit-enter prompts caused by file messages (c = Don't give ins-completion-menu messages)
vim.opt.iskeyword:append("-")               -- Keywords are used in searching and recognizing with many commands ("-" is recognzed as part of a word)
vim.opt.whichwrap:append("<,>,[,]")     -- Allow specified keys that move the cursor left/right to move to the	previous/next line when the cursor is on the first/last character in the line
vim.opt.clipboard:append("unnamedplus")	    -- Access the system clipboard
