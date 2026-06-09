first task to gemma4 and it got it done, I am in the process of reviewing it... it does at least partially work!
insane how much it struggled just to change a few spots in one file?! this can't be right, something has to be horribly wrong somewhere... or it has no idea how to edit files without a tool? or the QATs are crap?
   TODO was it trained with tools I should add (or immitate)? i.e. apply_patch/gptoss like tools in training data

observations:
- complaint - it should use heredocs alone to execute python to edit files... not create real files! and if it does create real files, use a TMP file FFS
  - complaint - it left behind several python files!
- it seems to lean on python to edit files, interesting! alot like Qwen3.6
  - however llama-server (or maybe the model) only has single tool calling (not parallel) and so it takes way longer than Qwen can bang out repeated command calls!
