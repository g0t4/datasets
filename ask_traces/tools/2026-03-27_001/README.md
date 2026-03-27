I didn't have the apply_patch command available to use for the apply_patch tool (so tool calls repeatedly failed, I kept asking for retries as I put pieces in place)
- once I got repos cloned for it... and built the tool... the agent got it to work!
- fun example of asking for retry even in light of errors and having the agent understand that that means not trying a different way, but to just retry exact same prior tool call
  - "try again" is a special power... might be good to do /try_again slash command to word it the same each time (not long template, just a sentence is fine)
