another Qwen banger!

another task I wanted to do myself, and challenged myself to let Qwen handle it... Qwen nailed it!!

## Observations

- Inefficiencies
  - Qwen tried to find some files using MCP docs tools, NBD but a waste of time! Qwen switched to RAG in short order and got going on the real work!
  - a few broken usages of ripgrep b/c of double quoting of
    - it ran `rg -n \"start_mcp_server_stdio\|start_mcp_server_http\" ~/repos/github/g0t4/ask-openai.nvim/lua/ask-openai/tools/mcp/init.lua`
        - `\"` was left in final command which resulted in looking for literal double quote
        - and `\|` which breaks the regex by forcing it to be an exact match not an either-or
  - also strange that it was looking for `\"start_mcp_server_stdio\|start_mcp_server_http\"` at all given the matches it would find would be literally in the cat output of the prior command
  - TLDR => these are irrelevant giving a correct final solution + the speed of token generation makes it not even worth thinking about unless it impacts quality of final changes
- Pros
  - used RAG matches to find the two key files to edit!
    - followed up with RAG to find the parts of the file to edit (though it did dump the file too)
  - verified work repeatedly, after each change, caught errors in original edits
  - committed when done!
  - changed code is 100% operational for both server types (STDIO+HTTP)

## Editing Files

- used python to make edits to code base
  - perhaps make it a tool that takes old and new code alone? or give it apply_patch again?
    gravitates to `find`/`replace` + `verify` for editing
  - IDEA: what if harness detects all changed files, regardless of how
    then the harness runs universal verifications (i.e. luac, python compiler)
    runs tests (if applicable) => probably via project config that links tests to files (or just configures entire test suite)
    and auto prompts agent for another turn to fix the issues
      OR prompts user to decide if model should be prompted to fix them

