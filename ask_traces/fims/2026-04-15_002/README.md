FIM short => long option names for curl command

## Eval test case that should be pretty much deterministic if the model can recall the long option name

this would be a great way to test model performance + memorization of various common commands
set it up to complete simple scenarios with what is arguably only ever going to be one right answer
- have 5 lines before all doing the same thing completed for examples (short => long option expansion in fish)
- generate test cases for all curl options short => long and test each one!
  do the same with other common tools (ls, grep, rg, fd, etc)
