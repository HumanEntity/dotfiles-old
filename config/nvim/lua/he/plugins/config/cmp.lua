local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

local function border(hl_name)
	return {
		{ "╭", hl_name },
		{ "─", hl_name },
		{ "╮", hl_name },
		{ "│", hl_name },
		{ "╯", hl_name },
		{ "─", hl_name },
		{ "╰", hl_name },
		{ "│", hl_name },
	}
end

local cmp_kinds = {
	Text = "  ",
	Method = "  ",
	Function = "  ",
	Constructor = "  ",
	Field = "  ",
	Variable = "  ",
	Class = "  ",
	Interface = "  ",
	Module = "  ",
	Property = "  ",
	Unit = "  ",
	Value = "  ",
	Enum = "  ",
	Keyword = "  ",
	Snippet = "  ",
	Color = "  ",
	File = "  ",
	Reference = "  ",
	Folder = "  ",
	EnumMember = "  ",
	Constant = "  ",
	Struct = "  ",
	Event = "  ",
	Operator = "  ",
	TypeParameter = "  ",
}

cmp.setup({
	formatting = {
		fields = {
			cmp.ItemField.Abbr,
			cmp.ItemField.Kind,
			cmp.ItemField.Menu,
		},

		-- fields = { "abbr", "kind", "menu" },
		format = function(entry, vim_item)
			--vim_item.kind = cmp_kinds[vim_item.kind] or ""
			--local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
			--local strings = vim.split(kind.kind, "%s", { trimempty = true })
			vim_item.menu = "    (" .. (vim_item.kind or "") .. ")" .. " [" .. (entry.source.name or "") .. "]"
			vim_item.kind = " " .. (cmp_kinds[vim_item.kind] or "") .. " "

			return vim_item
		end,
	},
	mapping = {
		-- ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		["<S-Tab>"] = cmp.mapping.select_next_item(cmp_select),
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "orgmode" },
		{ name = "path" },
		{ name = "buffer" },
		{ name = "luasnip" },
		{ name = "crates" },
	}),
	window = {
		documentation = {
			border = border("CmpDocBorder"),
			winhighlight = "Normal:CmpDoc",
		},
		completion = {
			border = border("CmpBorder"),
			winhighlight = "Normal:CmpPmenu,Search:PmenuSel", -- CursorLine:CmpSel,
			scrollbar = false,
		},
	},
	completion = {
		--     border = border "CmpBorder",
		completeopt = "menu,menuone,noinsert",
	},
})
