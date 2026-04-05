## 1775375497-thread.json - old `stdin` name

ok still stubborn BUT finally I got gptoss120b to pass `stdin` one time!!!!
- BTW I told it to use`stdin_text` and thought I was testing the new name `stdin_text` but... the tool's build directory was not rebuilt so it still had `stdin`... so this counts as using the old name!
- TODO I need to double check something isn't a miss in my tool calling infrastructure that might be dropping some or all of what it passes?
  - prompt the model directly w/o my tooling

## 1775376052-thread.json, 1775376283-thread.json - new `stdin_text` name

WORKED ON FIRST REQUEST!!!! for BOTH attempts (new thread each time)


## EVAL

this would be a very simple eval to judge, just look at generated tool call
- TODO and then how about instruct on other basic tool calls just to see how well a model listens to explicit instructions
- ALSO, add evals to test if a model will use paraemters that are not in the tool definition
- ALSO evals for if model ever forgets required parameters
- ETC... basic tool call checks that are MY EVALS!

TODO and then a suite of basic tasks to perform like listing files in a directory
- EVALS to see if model sets `cwd` pointlessly? not sure that should be considered bad, maybe, maybe not?
- EVALS for if model does things told not to do in system/developer prompt/message
