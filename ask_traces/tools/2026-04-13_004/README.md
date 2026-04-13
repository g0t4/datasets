help with neovim cmdline to colorize vim.inspect output in a one liner :)
- this might end up in a new help_neovim_cmdline skill... and/or parts of it will be wrapped into a devtools function to simplify doing this!

here's what I used this for:
```vim
lua require('devtools.messages').append(io.popen(string.format("printf %q|bat --color always -l lua", vim.inspect({a="bar"}))):read('*a'))
```
