ok still stubborn BUT finally I got gptoss120b to pass `stdin` one time!!!!
- BTW I told it to use`stdin_text` and thought I was testing the new name `stdin_text` but... the tool's build directory was not rebuilt so it still had `stdin`... so this counts as using the old name!
- TODO I need to double check something isn't a miss in my tool calling infrastructure that might be dropping some or all of what it passes?
  - prompt the model directly w/o my tooling
