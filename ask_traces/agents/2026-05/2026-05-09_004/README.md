Agents ❤️

I asked for a refactor to reuse the recently extracted split_markdown_sections in a new spot: show_unapproved_rag_matches
then asked to fix scope of split_markdown_sections to be available in show_unapproved_rag_matches
- b/c I was vague, gptoss also moved show_unapproved_rag_matches out of its inner most scope where it was initially defined inline... this is fine too
   and encourages me to think about reuse here... by decoupling from closure
