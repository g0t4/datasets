RAG + FIM FTW

test case that I just added (with now failing test for > 60s => show minutes)... that was shown in RAG matches!

makes it easy to see the format I want for minutes too

TODO undo the new code, change to `m` for minutes, restart nvim to clear yanks, and redo the FIM

## 1783100089-trace.json

Redo FIM w/ `m` for minutes, gptoss nailed it!

NOTE I chose a FIM spot that would avoid issues with whitespace duplication at start of cursor line.. so the example serves to be correct and not have the flaw of duplicated whitespace

## 1783100268-trace.json

Redo test w/o the space before `m` ... so this starts to contradict other scenarios that this code handles for seconds, ms, etc...

This particular FIM followed the assertions to decide the output format (no space before units)... other FIMs before this gptoss went with the space like other scenarios in the code
- note in this FIM that it explicitly calls out the test format!
