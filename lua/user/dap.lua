local dap = require("dap")

local js_based_languages = {
	"typescript",
	"javascript",
	"typescriptreact",
	"javascriptreact",
	"vue",
}

local lazy_path = "/home/elmm/.local/share/lunarvim/site/pack/lazy/opt/vscode-js-debug/src/vsDebugServer.js"

for _, language in ipairs(js_based_languages) do
	dap.configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = vim.fn.getcwd(),
			sourceMaps = true,
			runtimeExecutable = "node",
			runtimeArgs = { lazy_path },
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = vim.fn.getcwd(),
			sourceMaps = true,
			runtimeArgs = { lazy_path },
		},
    {
			type = "pwa-node",
			request = "launch",
			name = "Server: Nuxt",
      program = "${workspaceFolder}/node_modules/nuxi/bin/nuxi.mjs dev",
      cwd= "${workspaceFolder}",
      outputCapture= "std",
      sourceMaps= "true",
      runtimeArgs={"dev"},
		},
		{
			type = "pwa-chrome",
			request = "launch",
			name = "Launch & Debug Chrome",
			url = function()
				local co = coroutine.running()
				return coroutine.create(function()
					vim.ui.input({
						prompt = "Enter URL: ",
						default = "http://localhost:3000",
					}, function(url)
						if url == nil or url == "" then
							return
						else
							coroutine.resume(co, url)
						end
					end)
				end)
			end,
			webRoot = vim.fn.getcwd(),
			protocol = "inspector",
			sourceMaps = true,
			runtimeExecutable = "/usr/bin/brave-browser-beta", -- Path to Brave browser executable
			userDataDir = false,
		},
		{
			name = "----- ↓ launch.json configs ↓ -----",
			type = "",
			request = "launch",
		},
	}
end
