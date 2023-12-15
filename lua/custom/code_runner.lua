local code_runner = {}

function code_runner.compileAndRunCppCode()
      local filename = vim.fn.expand("%")
      local executablename = vim.fn.fnamemodify(filename, ":r")
      local compile_run_cmd = "clang++ --debug " .. filename .. " -o " .. executablename .. " && " .. executablename
      vim.cmd("split | terminal " .. compile_run_cmd)
end

function code_runner.runPythonCode()
  local python_filename = vim.fn.expand("%")
  local run_cmd = "python3 " .. python_filename 
  vim.cmd("split | terminal " .. run_cmd)
end

return code_runner 
