## TEST CASES:
test if gptoss120b grabs raw content README.md for a github repo summary request => WORKED! with system message instructions added

### 1775631075-thread.json - no system instructions to get README.md

without instructions:
1. fetches `https://github.com/langchain-ai/deepagents`
2. fetches raw README! `https://raw.githubusercontent.com/langchain-ai/deepagents/main/README.md`

this is what I observed a few times!
- first request results in wasted tokens like `Sign in` repeatedly...
- overall character wise: 5202 + 6474 for both requests above...
  vs below with system instruction and going to raw README => only 5341
  and both threads grab essentially the same parts of README through Discussions section at least...
  - so, we save 50% of tokens... probably justifies increased system message size...
    - especially if the system message were pushed into a subagent thread and the top level agent system instructions didn't have web specific guidance!
    - OR, honestly even with subagent w/o instructions => we can ignore the double request token impact b/c we discard the thread... so in this case this is a matter of timing/latency only and not tokens really when dealing with subagent fetch tool

### 1775630771-thread.json - includes system instructions for README.md preference

1. single request to the README's raw content!





## EVAL easy => make sure the tool call it makes is for the raw content for the README.md!

can test just one tool call request response from model => did it build the right link or not?
also verify the model knows to use fetch tool right away! and not do this from memory

could also spin off another challenge to summarize it without fetch, with just run_process and expect it to use curl (and still explain for GitHub links that it should use raw README.md) in system message

