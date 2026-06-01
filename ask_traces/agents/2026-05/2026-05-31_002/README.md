## observations

- asked model to come up with new names for `n_ctx` etc on model info... it did a good job mapping to meaningful names for me! I don't particularly care right now I just would like to avoid abbreviations that can be confusing
  - later I can always adjust hte names if they confuse me!
  - let the model name things you don't care about! don't waste time on that
- I like the fallback logic to use `.data[1]` first and then `.models[1]` second... I didn't ask for that, but that works even better than what I asked for
- I like models generating tests
  - test code added was not indented correctly, NBD as it ran just fine... I had model format the file afterwards and it looks like stylua works well with my coc tooling (must be what coc-lua is using and/or compatible with my style config)... and so I had it add to general filetype instructions for lua files.. so going forward the model has a way to make sure code is consistently formatted (i.e. indented)!
    if stylua conflicts with my current tooling then I will either recommend my tooling and/or just adopt stylua since it works well for models
    interestingly the model was able to `brew install stylua` which should've failed b/c of user... but meh... I probably should discourage models from installing software, I was watching at the time so it was fine but yeah... not a good idea
- good use of `extract_model_info` to isolate the extraction of details into the `ModelInfo` type... testable and isolated, I love it!
- model left behind deprecated method `M.get_llama_server_model(`... not the end of the world, the code still works is what matters... I didn't say to get rid of it either... so I followed up by asking to have it removed and now it's gone... which is a great workflow! for when I care about what the code contains

## complaints:
- minor, the model left a `<` file behind... I saw it and asked about it since its contents included the new ModelInfo code... must've been a failed tool call
  NBD just leave this as is for now, it is super easy to spot and cleanup with git repos.. in fact most of the time I bet the model will find it when committing... remaining times, it's fine for me to handle it


