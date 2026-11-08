DAAAAANG deepseek4flash knew the exact path to use to grab lazy installed packages in neovim! nice!
- see message 10 => tool calls ... I didn't see a path for that in any RAG matches

wicked cool, it even knew the symbol to look for...
```sh
fd -t f 'previewers' ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/previewers/ | head; echo "---"; rg -n "buffer_previewer_maker" ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/previewers/buffer_previewer.lua 2>/dev/null | head
```

Also love to see it multitasking... presumably getting `git show` output to validate assumptions and/or how my git config might alter things... and it did this while looking for `buffer_previewer_maker` in the same message 10 tool calls that I got the above in!
```sh
git log --oneline -5; echo "---rev test---"; git show --pretty=format: --unified=0 --no-color HEAD~2 2>&1 | head -20
```

