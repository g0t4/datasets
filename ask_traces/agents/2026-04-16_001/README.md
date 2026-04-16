new approach to detailed prompting => put the instructions into notes inside the file (in this case a new file will be created)...
- I need to better prompt gptoss120b to pay attention to the notes, to not skip things

complaints:
- gptoss120b said it added the code in embeddings.lua w/o actually doing it!
  - IN FACT, it had not even drafted the code yet!
  - perhaps b/c of volume of code in semantic_grep queries, it confused that with implementing it?
    - problem is nothing in my existing lua code (let alone the semantic_grep results to its queries) includes an embeddings client for lua!
      (python yes but not lua)
  - TODO look into why gpt-oss makes claims about edits it never makes!
    TODO I could have another agent review and decide when this happens to prompt it to actually make the edits!
  - FYI this harkens back to the prompt instructions for apply_patch.md ... even though I removed them, the model was very likely fine tuned on the exact instructions they shared:
      see: ~/repos/github/g0t4/gpt-oss/gpt_oss/tools/apply_patch.md
      which includes this problematic blurb (IMO):

          > - Use `apply_patch` to edit files.
          > - If completing the user's task requires writing or modifying files:
          >   - Your code and final answer should follow these _CODING GUIDELINES_:
          >     - Avoid unneeded complexity in your solution. Minimize program size.
          >     - Keep changes consistent with the style of the existing codebase. Changes should be minimal and focused on the task.
          >     - NEVER add copyright or license headers unless specifically requested.
          > - Never implement function stubs. Provide complete working implementations.

      if I had to wager, this is in part why gpt-oss is at times lazy
        TODO try finetuning to remove this behavior? need a way to eval and then do it!
           use all my ask traces!

