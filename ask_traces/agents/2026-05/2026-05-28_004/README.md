this is perhaps my FAVORITE Qwen3.6 chat/cowork session...
- first time I've felt confident using a model to perform a series of related changes and to keep it all in one chat
- I can describe the code changes I want, Qwen executes on it... exactly as requested
  and I can incrementally build on the changes (commit by commit)
- I can ask for something and to undo it if I don't like what Qwen did, and I can ask for different trajectory and it does it all in one go!
- Qwen has an affinity both to commit AND to amend commits...
  seems to do well knowing when to make a new commit vs amend prior commit
  one time it made a new commit, I asked it to amend that one instead... it squashed it with prior! no problems!
- Qwen finds all relevant uses of things that are symbols I want changed.. it's not lazy like gptoss120b (which will only refactor one usage and stop)

This feels like a new workflow where I make most code decisions (refactoring, moving, arranging, etc)... and then rely on Qwen to do the actual edits thus saving me hours of time every day...
- Why do I need to make the edits? I see no reason why I can't leap frog the editing part!
- Every day of my programming life involves many decisions about what to do with code (high level) and then that's followed by painful hours of editing/moving/refactoring/etc...
  now I can do the first part and see how it looks after and decide yes/no/redo... and save all the time spent changing the code
  what a brilliant use of my time!
  I still get to be a hard core programmer, I just cut out the BS
  AND... there are times when I won't care what chagnes are made, I can articulate that too... and then decide afterwards if I like the solution or not...
  lots of flexibility!

  I need a new name for this "workflow" ... something along the lines of the utility I derived from:
  - `AskPrediction` (FIM/copilot)
  - `AskToolUse` (later renamed AskAgent)
  - `AskRewrite` (inline select code, and rewrite it given a prompt)
  - `AskRewriteFile`
  IOTW something I will use repeatedly, daily... so I need a way to quickly enter a session

  maybe `AskHands`

  unlike an agent that you just let it lose and it does whatever and you maybe look at the code after... this is more aligned with using AI as a set of hands to code faster...
  - you don't turn over full control
  - rely on your expertise to architect the code
    even smaller decision like where a function lives (move to this file)...
      doing that often affects callers that need new imports/requires...
      sometimes it's connected to a module's global state, so that needs moved and/or reconnected
    that's work that's TRIVIAL for an AI.. but that takes us humans OMG too much time and its such a waste of our talent

- First time I've entertained context management as I would like to keep this thread going for a while!
  I have next steps galore! all related...
  I'd love to resume this thread later too
  TODO add crude summarize and replace of messages? or summarize => new conversation should work too
