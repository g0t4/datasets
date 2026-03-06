## summary
unsloth/Qwen3.5-9B-GGUF:BF16

resilent double (and triple) checker!
 - I really like the double checking part of this model
   and WHY NOT!? it's incredibly fast (even 77 tok/sec on BF16 felt VERY fast vs tool calls)

## notes

clearly qwen3.5 9b is struggling with apply_patch tool...
   do the bigger models have this problem?
   not end of world, I'd want to find a better edit tool for it... OR just drop out apply_patch and let it use sed (etc)

wow the model is very diligent about double checking work, that is a good thing
- and being resilient to failures!
- ***** TODO qwen3.5 - find what tools (if any) they fine tuned it to use for editing files, that way I can match that in my harness

it did very well with the task
 - left one bug with `import..svelte''`
 - BUT, when I asked it to commit (not telling it about the bug)
      it found and fixed it!
 VERY VERY COOL!

- it actually attempted to fix the `''` earlier on, IIUC from reviewing trace... or smth nearby
   that was before it was done with turn 1
   honestly I wouldn't consider this a good demo of editing files given it had trouble with commands for a few reasons
     I think my `fd` and `rg` examples are throwing off qwen3.5 ... I might've seen this with gptoss120b too..
        perhaps ditch my examples, they are NOT essential and just see how a model does
        obviously a model HAS to be well trained on the tools to use them effectively so why provide examples?
   TODO make tool / edit file changes and redo this test run to see how things go

Clearly a big part about using this model is to make sure it double checks its work
-  I bet it would do very well if it was asked to run the web app and check the page works
   or run tests

THIS is twice in a row it doubled back to fix issues or just improve something in the original code
