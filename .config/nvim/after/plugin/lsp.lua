-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'rust_analyzer',
})

lsp.set_preferences({
    set_lsp_keymaps = true,
    sign_icons = { error = " ", warn = " ", hint = " ", info = " " },
})

-- (Optional) Configure lua language server for neovim
--lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

--                  client
--                     |
--                     V
lsp.on_attach(function(_, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
    --open_float = true,
})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

lsp.setup({
    quickfix = true,
})

--local cmp_kinds = {
    --  Text = '  ',
    --  Method = '  ',
    --  Function = '  ',
    --  Constructor = '  ',
    --  Field = '  ',
    --  Variable = '  ',
    --  Class = '  ',
    --  Interface = '  ',
    --  Module = '  ',
    --  Property = '  ',
    --  Unit = '  ',
    --  Value = '  ',
    --  Enum = '  ',
    --  Keyword = '  ',
    --  Snippet = '  ',
    --  Color = '  ',
    --  File = '  ',
    --  Reference = '  ',
    --  Folder = '  ',
    --  EnumMember = '  ',
    --  Constant = '  ',
    --  Struct = '  ',
    --  Event = '  ',
    --  Operator = '  ',
    --  TypeParameter = '  ',
    --}

    local cmp_kinds = {
        Class = " ",
        Color = " ",
        Constant = " ",
        Constructor = " ",
        Enum = "了 ",
        EnumMember = " ",
        Event = '  ',
        Field = " ",
        File = " ",
        Reference = '  ',
        Folder = " ",
        Function = "ƒ ",
        Interface = "ﰮ ",
        Keyword = " ",
        Method = "ƒ ",
        Module = " ",
        Property = " ",
        Snippet = "﬌ ",
        Struct = " ",
        Text = " ",
        Unit = " ",
        Value = " ",
        Variable = " ",
        Operator = ' ',
        TypeParameter = '',
    }

    local tabnine = require('cmp_tabnine.config')
    tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
        run_on_every_keystroke = true;
        snippet_placeholder = '﬌';
        show_prediction_strength = false
    })

    require("cmp").setup({
        mapping = cmp_mappings,
        window = {
            completion = {
                winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                col_offset = 0,
                side_padding = 0,
            },
        },
        sources = {
            { name = 'nvim_lsp' },
            { name = 'cmp_path' },
            { name = 'cmp_buffer' },
            { name = 'cmp_luasnip' },
            { name = 'cmp_tabnine' },
        },
        formatting = {
            fields = {"abbr", "kind", "menu"},
            format = function (entry, vim_item)
                --vim_item.kind = cmp_kinds[vim_item.kind] or ""
                --local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                --local strings = vim.split(kind.kind, "%s", { trimempty = true })
                vim_item.menu = "    (" .. (vim_item.kind or "") .. ")" .. " [" .. (entry.source.name or "") .. "]"
                vim_item.kind = " " .. (cmp_kinds[vim_item.kind] or "") .. " "

                return vim_item
            end,
        },
        experimental = {
            ghost_text = true
        }
        --function(entry, item)
            --    local menu_icon = {
                --        nvim_lsp = 'λ',
                --        luasnip = '⋗',
                --        buffer = 'Ω',
                --        path = '🖫',
                --        nvim_lua = 'Π',
                --    }
                --    item.menu = menu_icon[entry.source.name]
                --    local kind_icon = {
                    --        Class = " ",
                    --        Color = " ",
                    --        Constant = " ",
                    --        Constructor = " ",
                    --        Enum = "了 ",
                    --        EnumMember = " ",
                    --        Field = " ",
                    --        File = " ",
                    --        Folder = " ",
                    --        Function = " ",
                    --        Interface = "ﰮ ",
                    --        Keyword = " ",
                    --        Method = "ƒ ",
                    --        Module = " ",
                    --        Property = " ",
                    --        Snippet = "﬌ ",
                    --        Struct = " ",
                    --        Text = " ",
                    --        Unit = " ",
                    --        Value = " ",
                    --        Variable = " ",
                    --    }
                    --    item.kind = kind_icon[entry.kind.name]
                    --    return item
                    --end,
                    --},
                })

                --lsp.setup({
                    --    kind = function ()
                        --        return {
                            --            Class = " ",
                            --            Color = " ",
                            --            Constant = " ",
                            --            Constructor = " ",
                            --            Enum = "了 ",
                            --            EnumMember = " ",
                            --            Field = " ",
                            --            File = " ",
                            --            Folder = " ",
                            --            Function = " ",
                            --            Interface = "ﰮ ",
                            --            Keyword = " ",
                            --            Method = "ƒ ",
                            --            Module = " ",
                            --            Property = " ",
                            --            Snippet = "﬌ ",
                            --            Struct = " ",
                            --            Text = " ",
                            --            Unit = " ",
                            --            Value = " ",
                            --            Variable = " ",
                            --        } end
                            --    });
                            --
                            --    --icons.sign = function()
                                --        --    return {
                                    --            --        error = '✘',
                                    --            --        warn = '▲',
                                    --            --        hint = '⚑',
                                    --            --        info = ''
                                    --            --    }
                                    --            --end
                                    --
                                    --            --return M

                                    --require('vim.lsp.protocol').CompletionItemKind = {
                                        --    '', -- Text
                                        --    '', -- Method
                                        --    '', -- Function
                                        --    '', -- Constructor
                                        --    '', -- Field
                                        --    '', -- Variable
                                        --    '', -- Class
                                        --    'ﰮ', -- Interface
                                        --    '', -- Module
                                        --    '', -- Property
                                        --    '', -- Unit
                                        --    '', -- Value
                                        --    '了', -- Enum
                                        --    '', -- Keyword
                                        --    '﬌', -- Snippet
                                        --    '', -- Color
                                        --    '', -- File
                                        --    '', -- Reference
                                        --    '', -- Folder
                                        --    '', -- EnumMember
                                        --    '', -- Constant
                                        --    '', -- Struct
                                        --    '', -- Event
                                        --    'ﬦ', -- Operator
                                        --    '', -- TypeParameter
                                        --}
