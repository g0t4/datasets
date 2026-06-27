## code comments

ok it just hit me... it seems, Qwen-AgentWorld is the first model to not fuck up code comments?!

... look at the changes in this trace... every model ever (even Qwen3.6) would:
- add trivial comments to explain new code
- comment on moved code (i.e. in original location, leave behind a "DONE" TODO if you will
- reword unrelated comments
- AND nuke unrelated comments en masse

in this trace, Qwen-AgentWorld did NONE of these!!!!
- and across two requests!

I am in ❤️

## other observations

other positive observations:
- both file edits (using cat to rewrite) worked the first time
  vs Qwen3.6 which does mess up file edits at times... I feel like it is markedly less mistakes with Qwen-AgentWorld

neutral observations:
- lots of thinking, which is fine by me! if it helps, do it!

neutral-ish (recovered, so it doesn't really matter):
- tried to commit before staging changes
  interestingly, the second commit in this trace, didn't make this mistake (staged first before attempting to commit)

complaints:
- I had to ask to apply the change... TODO can I modify my prompt to encourage changing the code?
