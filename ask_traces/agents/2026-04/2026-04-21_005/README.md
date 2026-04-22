OK I GOT IT TO WORK!
- /norag
  + disable RAG in neovim so the semantic_grep tool is not even available to gptoss!
  way better this time... fascinating discovery!

## repeatable => appears so!

- replayed the request... after revert changes obviously...  trace: 1776788699-trace.json
   - nearly verbatim same changes too! wow...
     once again summary clearly articulated that it preserved comments too
   AND NOTABLE => first attempt to apply_patch worked with a HUUUUUUGE change!... gut feeling HUUUGE changes normally fail (they do)... and I suspect it might be due to explosion of context distractcions from careless RAG auto matches (maybe even the model's sloppy RAG queries at times)
      TODO I should identify if it RAG in particular or the size of context... or smth else.. that is the culprit...
        maybe just need to setup more reasonable limits on RAG queries too? i.e. no 20 matches on a tool call which gptosos often sets top_k=20 which is nuts... and it will re-run verbatim queries... perhaps deny that? especially back to back?


