had a startup timing issue, this is definitely part of it, I found this on my own and wanted to see if Qwen could decipher it... AND also wanted to see if it spotted anything else that might also be a culprit that I missed...
- then I followed up with the preferences I wanted for how to resolve the timeouts on different requests that it proposed originally...
  notably I asked it not to apply timeout to agent requests and also MCP tool requests as it is ok for those to run for a while and I wouldn't want to interrupt them prematurely

## observations

- interesting that in some cases Qwen uses parallel tool calling by just running multiple commands within a single tool call to `run_process` like this one:

  `cd ~/repos/github/g0t4/ask-openai.nvim && git diff --cached && echo "---" && git diff && echo "---" && git status`
