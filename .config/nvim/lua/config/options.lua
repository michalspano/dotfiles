-- Options (encoding, fileformat, syntax and filetype detection are Neovim defaults)
local o = vim.o

-- Line numbers
o.number         = true             -- Show line numbers
o.relativenumber = true             -- Show relative line numbers for easy jumping

-- Indentation settings
o.expandtab   = true                -- Convert tabs to spaces
o.tabstop     = 4                   -- Number of spaces a tab counts for
o.shiftwidth  = 4                   -- Number of spaces to use for auto-indenting
o.softtabstop = 4                   -- Number of spaces a tab counts for during editing
o.breakindent = true                -- Wrapped lines keep their indentation
o.linebreak   = true                -- Wrap at word boundaries

-- Visual aids
o.cursorline   = true               -- Highlight the current line
o.cursorcolumn = true               -- Highlight the current column
o.scrolloff    = 8                  -- Keep 8 lines visible above/below cursor when scrolling
o.signcolumn   = 'yes'              -- Disable line error 'jump'
o.laststatus   = 3                  -- One global statusline
o.showmode     = false              -- Lualine already shows the mode
o.winborder    = 'rounded'          -- Borders on all floats (hover, diagnostics, signature)

-- Search and splits
o.ignorecase = true                 -- Case-insensitive search...
o.smartcase  = true                 -- ...unless the pattern has capitals
o.inccommand = 'split'              -- Live preview of :s
o.splitright = true
o.splitbelow = true

-- Files
o.swapfile = false                  -- Disable swap file creation
o.undofile = true                   -- Persistent undo across sessions
o.confirm  = true                   -- Ask instead of failing on unsaved changes
o.updatetime = 250                  -- Faster CursorHold and gitsigns updates

-- Clipboard: y/p use the system clipboard
o.clipboard = 'unnamedplus'

-- Spelling
o.spelllang = 'en_us,sk,sv'

-- Completion (used by the built-in LSP completion)
o.completeopt = 'menu,menuone,noselect,fuzzy,popup'

-- Folding via treesitter, all folds open by default
o.foldmethod = 'expr'
o.foldexpr   = 'v:lua.vim.treesitter.foldexpr()'
o.foldlevel  = 99
