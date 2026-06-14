RAG + QWEN FTW

I asked Qwen to find the best spot to add a new abbr to fish shell config... me being lazy!

`abbr lns "ln -s"`

Qwen found a good spot next to `abbr cpr "cp -r"` actually... THANKS TO semantic_grep!
but it was in pbcopy-specific.fish and RAG also found another good match (which I discovered when reviewing the agent trace to share it)... files-specific.fish

so I asked Qwen to move both cpr and lns abbrs to files-specific.fish

so you might think it's pointless to have an LLM help with a simple task like this..
- but, there's good LLM tooling like RAG that can help find better spots than my memory can recall
and sometimes you notice other things you might want to do along the way that you also wouldn't likely find in pasting an abbr into the first spot that you think of
- models take a TINY fraction of the time to consider a plethora of spots and are really good at patterns... so finding candidates... that is exactly what they're good at!
- also using RAG to find this yourself wouldn't be a bad idea, use semantic_grep telescope UI to search for "where to add abbr lns ln -s"
