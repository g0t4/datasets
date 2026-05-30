had a startup timing issue, this is definitely part of it, I found this on my own and wanted to see if Qwen could decipher it... AND also wanted to see if it spotted anything else that might also be a culprit that I missed...
- then I followed up with the preferences I wanted for how to resolve the timeouts on different requests that it proposed originally...
  notably I asked it not to apply timeout to agent requests and also MCP tool requests as it is ok for those to run for a while and I wouldn't want to interrupt them prematurely

## observations

- interesting that in some cases Qwen uses parallel tool calling by just running multiple commands within a single tool call to `run_process` like this one:

  `cd ~/repos/github/g0t4/ask-openai.nvim && git diff --cached && echo "---" && git diff && echo "---" && git status`

## follow up

I absolutely love this pinging of ideas back and forth, I see the code, I decide if I like it or want further refactorings... look at end of trace for a final solution that I am very happy with for passing differing timeouts
- btw I did research separately to find I wanted connect timeout added too... I didn't see if Qwen ever mentioned that ... so still this requires me to have (and use) a brain...
  and if I use my brain, then together Qwen can bang out code changes that would otherwise take me an hour to do... WHAT IS THE POINT OF TYPING THEM MYSELF? I know what they look like, what I want them to look like... why can't I just let Qwen do that?
  this is like rejecting the help of someone that can type 1000 words per minute when I can only type 50 WPM... that's just dumb
  - aside: I am baffled by anti-AI policies for some GitHub repos like `fish-shell`... why exactly is it a problem to have AI do the typing?
    AI across the board is NEITHER GOOD nor BAD... neither rots your brain or enhances it... it is all about how you use it that decides...
    it's not just fanbois that react in really idiotic ways these days... it's the opposite end of the spectrum too.
