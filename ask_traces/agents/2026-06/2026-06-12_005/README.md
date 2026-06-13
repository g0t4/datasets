OMG I just wanna marry Qwen! he knows me so well!.. he friggin NAILED this one! with tests and all, and yeah man COOL it worked on my first try...
- great job finding tests (efficiently too)
- and now I wanna have Qwen look into simplifying the begin/middle/end find/replace that I know I left there sloppily (IIRC)... Qwen copied existing code which is spot on IMO...
- TODO ask Qwen to `function replace_cwd_in_prompt(prompt)` to something registered earlier and generic like `function register_replace_slash_command("/cwd", function() vim.fn.getcwd() end)
  - any instance of /cmd (or other slash command) is replaced with returned value from function
  - might be ok to register constant (non-function) value until that's expensive to compute at registration time... or I need dynamic values for slash command replacements
    i.e. if vim.fn.getcwd() takes 10ms then yeah probably don't do that until an instance is found to replace!
  - basicaly make this generic like with `strip_slash_command_from_prompt(prompt)`
- complaints:
  - Qwen found a change it didn't make in `float_window.lua`: `---@return vim.api.keyset.win_config` ... Qwen should NOT revert (checkout) to erase that but it should just not add it! yikes
