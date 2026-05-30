## observations

- Pros
  - Editing files w/ cat and python...
    - Qwen has opened my eyes to just using `cat` to rewrite an entire file...
      - Qwen is so darn fast, WHO CARES about tactical edits of only what changed? just rewrite the file!
        - gptoss opened my eyes in this direction albeit not with file edits...
          - gptoss helped me see stop caring about optimizing prompts...
          - cram in anything possibly useful! the cost/perf doesn't matter..
          - TLDR: "if you include it, it will find it" (w.r.t. RAG matches and FIM completions with code in far away spots/files)
          - THAT SAID, confusing the model still matters... just no longer need to worry much about performance/cost which is a huge mental shift alone
      - for context considerations... yes rewriting takes up tokens...
        - FIRST, I run local so I don't care...
          - and I usually only run one agent at a time... so the usage is cached which means it has zero material impact on timing for me, and cost isn't a thing as I pay for hardware, not tokens
        - caching partially obviates the problem for paid API usage
          - issue is 200 tool calls later and it adds up even at cache hit rates!
        - there are a ton of cool solutions that could help reduce the context impact long term (after the edit is done) for paid users which can add up
          - provide a tool for Qwen to remove last message and replace it with a new one... and the new one can be a verify command to run that will dump and show the file edit worked...
            IOTW qwen edits file by rewriting the entire thing... one time token hit... NBD...
            at some point then later on Qwen can remove the rewritten file from its context by dropping that message
            it just needs to make sure it notes that the edit took place (and likely verify it by dumping lines)... so the next turn knows the edit worked!
            I suppose it could just describe the edit that it made in text words and leave it up to future turns to dump lines if it wants to see the exact changes
          - use a subagent for the edit and then the trace is discarded anyways
            advantage of keeping subagent focused too
            supervisor agent can give instructions about edits to make that don't have to fit into a tool call and the subagent can figure out the rest
            when it is done it can provide a diff of changes or just dump line range or entire file to help supervisor verify changes...
      - TLDR => stop trying to create the perfect `edit` tool... just let the model do whatever it wants to make the edit!
        for fast models, patching is probably a waste of time vs rewriting subset/entire file ... especially when model repeatedly fails to craft a proper patch file!
    - Qwen is also good at using ad-hoc `python` code to make edits!
      - often including "old code" and "new code" as multiline strings and then a simple find replace is it!
      - and once again I am left wondering, what's wrong with this!? maybe this is a good thing!
      - basically this is an improvement over using cat/sed to edit a file! can make strategic edits using anything in python's stdlib + pypi packages too if you really need it
      - TODO ... any utility in providing some APIs for this and including those in the system prompt... to reduce the python code it needs to write? maybe only mention these if a python based edit fails and then you can be like hey I have things to help you!
        inject INSTRUCT only when its needed! after all if it is doing just fine with find/replace why bother steering it to your API?
      - ALSO - makes me want reusable session (think ipython REPL or jupyter notebook) across tool calls where the tool calls are python code that run in the context of prior runs
  - I like how it proposed a solution, and then I asked for changes and then when I was happy I could ask it to apply the change! this is a productive way to work too
    - That said I lose the ability to see a diff of just what changed...
    - This proposal style w/o changing files is useful but probably only for smaller changes/features... less so for huge/complex changes where the diff is your best way to propose/edit/accept changes
    - I should qualify and say, proposing with a diff is a great way too and arguably better in many cases than generating new code to review...
      can always git reset/checkout to start over!
      and can always rewrite git commits once you're happy with the changes to squash multiple commits... which gives you a history of edits to review piecemeal when asking for corrections/alterations
      YMMV... I just like collaborative code editing... where I can skip the typing but I still get to have a fundamental say about what's going to be typed!
        the model looks more like a WPM boost in this case than anything else b/c I am guiding the decisions up and until the keystrokes (mostly)
  - Fixed one bug with just the error output from my first test of the new code!
    - legit mistake to make thinking you can pass args to vim.schedule after the function...
    - all that matters is that Qwen fixed the issue when I simply pasted the stack trace / error output...
      - I didn't have to explain anything else, it figured out what I meant!
        Qwen has done this repeatedly with bugs... it is very strong at understanding and fixing bugs!
  - Code works as I wanted! Intended to be used with lualine status which repeatedly hits the function for name so it is perfectly acceptable to return nil after first request and then fetch in the background and have it ready for a future lualine status update
  - I like the **refactor** to use `ModelCacheEntry` and moving the static list of lookups out of the function makes sense
  - Also like making an extract_model_name function to isolate code related to extracting name from v1/models response
  - I like the tendency to do some refactoring too, not just to satisfy the original request with only code additions
    - That said, refactoring can get out of hand, so judicious use is worth praise... like here
  - Love that it understands what I mean by `squash the last commit`... that I want the fix merged with the original commit
  - Love that I was able to parlay the squash into making a new INSTRUCT for /squash
    - saves me from typing "squash the last commit (with the one before it)"
    - I like that it provided a command example to squash the commit, that's useful for models that aren't as strong with editing commit history
- Complaints
  - should've amended the follow up fix commit to fix vim.schedule (doesn't take args for function you pass to it)...

