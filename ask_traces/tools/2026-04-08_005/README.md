test if gptoss120b grabs raw content README.md for a github repo summary request => WORKED! with system message instructions added


## EVAL easy => make sure the tool call it makes is for the raw content for the README.md!

can test just one tool call request response from model => did it build the right link or not?
also verify the model knows to use fetch tool right away! and not do this from memory

could also spin off another challenge to summarize it without fetch, with just run_process and expect it to use curl (and still explain for GitHub links that it should use raw README.md) in system message
