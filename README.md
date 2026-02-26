# datasets

This repo has several of my datasets, key part right now is the local AI tool use chat threads.

## chat thread viewer

This repo houses select threads from my local AI tools. Mostly `gptoss120b` at this time.  

- Use my web app to view chats:
  - just provide a link to a `*-thread.json` file from this repo (see example below)
  - or click around to find one, has builtin directory viewer for this repo
  - example of asking for a minecraft add on for a transparent block for my daughter:
    - https://g0t4.github.io/ask-openai.nvim/?github=g0t4/dataset-gfy/master/semantic_grep_auto_context/tools/2026-02-16_001/1771302574-thread.json
- Active sections:
  - [agent / tool use - multi-turn](https://g0t4.github.io/ask-openai.nvim/?github=g0t4/dataset-gfy/master/semantic_grep_auto_context/tools/)
  - [select code => rewrite - single-turn](https://g0t4.github.io/ask-openai.nvim/?github=g0t4/dataset-gfy/master/semantic_grep_auto_context/rewrites/)
  - [FIM/prediction (ala GitHub copilot) - single-turn](https://g0t4.github.io/ask-openai.nvim/?github=g0t4/dataset-gfy/master/semantic_grep_auto_context/fims/)
    - has TLDR diff at top (showing suggested code)
    - example: https://g0t4.github.io/ask-openai.nvim/?github=g0t4/dataset-gfy/master/semantic_grep_auto_context/fims/2026-02-26_002/1772092950-thread.json
