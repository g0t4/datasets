formatter for delegate tool in neovim chat viewer

## observations
- escaping mistake with `rg "subagent\|delegate\|task_description\|recursion" lua/ --type lua -l | head -10`
   the `pipe` is now a literal pipe not an either-or condition
   TODO add instructions for qwen3 about this if I observe this happens often enough to justify it?
     or another remediation?
     OR do not fix, leave it broken?
- complaint: it spent a ton of time searching for the delegate tool's definition ... when, it has the tool in its tools list!
  - to be fair, it is possible that I am asking it to edit a different delegate tool...
    PRN add an ability for the model to interrupt and ask me a question... it could've clarified if they are the same and skipped most of this!
    ALSO I should've known to provide the definition... and at the end that is why I had it create an explainer INSTRUCT file to use in the future
- BTW it created a markdown file for the instruct in a different spot than I intended but I didn't really specify where to put it, so that's fine, I will move it later
