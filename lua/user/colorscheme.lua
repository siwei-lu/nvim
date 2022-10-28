vim.cmd([[
try
  colorscheme github_dimmed
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
