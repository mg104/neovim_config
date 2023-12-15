local M = {}

local function setRunKeymapForFileType()
  if vim.bo.filetype == 'cpp' then
    vim.api.nvim_set_keymap('n', '<leader>R', ':lua require("custom.code_runner").compileAndRunCppCode()<CR>', { noremap = true, silent = true })
  elseif vim.bo.filetype == 'python' then
    vim.api.nvim_set_keymap('n', '<leader>R', ':lua require("custom.code_runner").runPythonCode()<CR>', { noremap = true, silent = true })
  end
end

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger"
    },
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end,
    },
  },
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = {'cpp', 'python'},
  callback = setRunKeymapForFileType,
})

return M
