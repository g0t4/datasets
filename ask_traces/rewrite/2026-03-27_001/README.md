## 1774671321-thread.json

turn a function into fish abbr, got it right too! nicely done!

## 1774671579-thread.json

rewrite abbr to allow for --set-cursor when no video file found in current directory, gptoss120b nailed it first try!
- note RAG matches give away the game if the model isn't trained well on fish abbrs
- and this underscores a key point... with RAG (retrieval)... as long as I have other examples of how to do something (i.e. in this case default to % for --set-cursor)...
  - even if I forget a style (or my preferred style) of doing something... RAG matches are very likely to find it for me!
    I can remember w/o actually remembering!
  - note Qwen3-Embedding chose multiple `or _` examples for defaulting the value if not set!
    and it found an example of --set-cursor (not the same as this one but also that uses % to mark where to move the cursor)

