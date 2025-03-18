return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		cmd = "CopilotChat",
		opts = function()
			local user = vim.env.USER or "User"

			user = user:sub(1, 1):upper() .. user:sub(2)
			return {
				mappings = {
					reset = {
						normal = "<leader>ax",
						insert = "<C-s>",
					},
                    close = {
                        normal = "<C-c>",
                        insert = "",
                    },
                    complete = {
                        insert = "",
                    }
				},
				show_help = "yes",
				disable_extra_info = "no",
				hide_system_prompt = "yes",
				auto_insert_mode = true,
				question_header = "  " .. user .. " ",
				answer_header = "  Copilot ",
				window = {
                    number = false,
                    relativenumber = false,
				    layout = "vertical", -- 'vertical', 'horizontal', 'float', 'replace'
					width = 0.3, -- fractional width of parent, or absolute width in columns when > 1
					height = 0.5, -- fractional height of parent, or absolute height in rows when > 1
					-- Options below only apply to floating windows
					relative = "editor", -- 'editor', 'win', 'cursor', 'mouse'
					border = "single", -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
					row = nil, -- row position of the window, default is centered

					col = nil, -- column position of the window, default is centered
					title = "Copilot Chat", -- title of chat window
					footer = nil, -- footer of chat window
					zindex = 1, -- determines if window is on top or below other floating windows
				},
			}
		end,
		keys = {
			{
				"<c-s>",
				"<CR>",
				ft = "copilot-chat",
				desc = "Submit Prompt",
				remap = true,
			},
			{
				"<leader>a",
				"",
				desc = "+ai",
				mode = { "n", "v" },
			},
			{
				"<leader>aa",
				function()
					return require("CopilotChat").toggle()
				end,
				desc = "Toggle (CopilotChat)",
				mode = { "n", "v" },
			},
			{
				"<leader>ax",
				function()
					return require("CopilotChat").reset()
				end,
				desc = "Clear (CopilotChat)",

				mode = { "n", "v" },
			},
			{
				"<leader>aq",

				function()
					vim.ui.input({

						prompt = "Quick Chat: ",
					}, function(input)
						if input ~= "" then
							require("CopilotChat").ask(input)
						end
					end)
				end,
				desc = "Quick Chat (CopilotChat)",
				mode = { "n", "v" },
			},
			{
				"<leader>ap",
				function()
					require("CopilotChat").select_prompt()
				end,
				desc = "Prompt Actions (CopilotChat)",

				mode = { "n", "v" },
			},
		},

		config = function(_, opts)
			local chat = require("CopilotChat")

			vim.api.nvim_create_autocmd("BufEnter", {
				pattern = "copilot-chat",
				callback = function()
					vim.opt_local.relativenumber = false
					vim.opt_local.number = false
				end,
			})

			chat.setup(opts)
		end,
	},
}
