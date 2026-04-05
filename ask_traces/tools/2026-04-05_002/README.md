fascinating that I cannot get gptoss120b to use the `stdin` argument to `run_process` ... it discusses with itself and then doesn't do it.
- AND IT REFLECTS on this in a loop, tries again, fails to add it... I checked raw tool call, there is no `stdin` arg added... WTH?!
- I was running a test to see how well it would do with `stdin` vs if I renamed it `stdin_text`... seems like `stdin` doesn't work for gptoss120b at all!!!!
