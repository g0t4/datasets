## fim 1775226709-thread.json
pretty good first take at implementing pbcommand (see impl notes in code above FIM cursor)
- only issue is not pbcopying both values... but that's easy to fix...

## rewrite 1775226762-thread.json

terrible prompt to fix it with a rewrite :)... mostly works...
- only issue is... used `(...)` is not valid for grouping commands in a subshell *in fish shell*
- fixed with `begin ... end` by hand
