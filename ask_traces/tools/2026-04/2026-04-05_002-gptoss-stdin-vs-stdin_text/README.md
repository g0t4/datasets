# old `stdin` name

TLDR: just not working at all (once out of like 30+ tries in 3 threads)

FYI no real correlation at all to `stdin` arg order position... in fact it was first the one time it worked in one thread after many failed attempts in that thread...

## 1775367684-thread.json

Round 1 chat thread... can't do it! and this is even with source code access to my run_process tool that it is using!!! yikes
- legit it is confused because in one spot I use `stdin_text` in the code and that is not the name in the tool definition (`stdin` is the tool parameter name)...
  but, it picked up on what I am ultimately testing here... I want to know if renaming to `stdin_text` on the tool call definition would make gptoss120b capable of using the argument!
    I originaly wondered if clarifying the name would make it more likely to be used (when appropriate)... now it seems the rename might be necessary to use it at all!?!
  BTW the chat thread is hilarious, it thinks about adding `stdin` including the value => then it generates tool call request w/o `stdin` => then it reflects on the fact that it didn't add it!
    and then it says, must try again! (fails again in a loop)
    and eventually gives up with "Let's pass.", lol:
    > Our tool calls maybe require "stdin": string field but we haven't included. Let's pass.

## 1775367699-thread.json

fascinating that I cannot get gptoss120b to use the `stdin` argument to `run_process` ... it discusses with itself and then doesn't do it.
- AND IT REFLECTS on this in a loop, tries again, fails to add it... I checked raw tool call, there is no `stdin` arg added... WTH?!
- I was running a test to see how well it would do with `stdin` vs if I renamed it `stdin_text`... seems like `stdin` doesn't work for gptoss120b at all!!!!

## 1775375497-thread.json - old `stdin` name

ok still stubborn BUT finally I got gptoss120b to pass `stdin` one time!!!!
- BTW I told it to use`stdin_text` and thought I was testing the new name `stdin_text` but... the tool's build directory was not rebuilt so it still had `stdin`... so this counts as using the old name!
- TODO I need to double check something isn't a miss in my tool calling infrastructure that might be dropping some or all of what it passes?
  - prompt the model directly w/o my tooling

# `stdin_text` name

TLDR: worked first and second times!

## 1775376052-thread.json, 1775376283-thread.json - new `stdin_text` name

WORKED ON FIRST REQUEST!!!! for BOTH attempts (new thread each time)

3 more threads after the first two... one worked first try, other two failed first try and repeatedly!
- interestingly for all the times it worked on first_try... the argument `stdin_text` as NOT listed first... whereas both failed times had `stdin_text` listed as a first argument in the tool definition
  - TODO can I get tool definition parameter ordering to remain the same always? at a minimum it would make things more reproducible!
  - FYI prove this matters before obsessing about order at all?
  - issue likely is lua tables and ordering of keys is not guaranteed/deterministic

## EVAL

this would be a very simple eval to judge, just look at generated tool call
- TODO and then how about instruct on other basic tool calls just to see how well a model listens to explicit instructions
- ALSO, add evals to test if a model will use paraemters that are not in the tool definition
- ALSO evals for if model ever forgets required parameters
- ETC... basic tool call checks that are MY EVALS!

TODO and then a suite of basic tasks to perform like listing files in a directory
- EVALS to see if model sets `cwd` pointlessly? not sure that should be considered bad, maybe, maybe not?
- EVALS for if model does things told not to do in system/developer prompt/message
