local dap = require('dap')
dap.adapters.go = {
    type = 'executable',
    command = 'node',
    args = { '/opt/vscode-go/dist/debugAdapter.js' },
}
dap.configurations.go = {
    {
        type = "go",
        name = "Attach",
        request = "attach",
        processId = require("dap.utils").pick_process,
        program = "${workspaceFolder}",
        dlvToolPath = vim.fn.exepath('dlv')
    },
    {
        type = "go",
        name = "Remote",
        request = "attach",
        mode = "remote",
        remotePath = "",
        port = "4000",
        host = "0.0.0.0",
        cwd = "${workspaceFolder}",
    },
}

require("dapui").setup()
