let AI be creative for you!
- I didn't have an idea of a name for the abbr for `2>&1` so I asked gptoss120b to come up with something
  - I was thinking maybe `2...` but given its short, I can't really abbreviate the expansion...
  - I was not even considering letters!
    `errout` is PERFECT! (now we'll see if I can remember it)
    errout is easier to type
    it exactly represents what is happening
    spot on!

## observations for agent

- auto semantic grep matches were python cuz I had a python file open, my bad!
- model correctly looked up fish abbrs
   - it found a relevant spot => near other --position=anywhere abbrs!
     - I forgot I had a spot where I put most of them!
- then it got tripped up initialy about where to put the abbr!
  - I mentioned probably want to use a `misc` fish file
  - semantic_grep returned a `misc-specific.fish` fish file as I mentioned
    - right next to `globals-specific.fish` no less!
  - and so it first issued an apply_patch to the `misc-specific.fish` file when it should've used `globals-specific.fish`
    - NBD it figured it out!
  - just interesting that my suggestion collided with the matches in a unique way!

 TODO how about have the `apply_patch` tool (on a failure) search nearby files for context lines! and then maybe suggest a mistake was made?
 - I dunno if I would want this to always happen? maybe a threshold is met?
   - perhaps if there are no lines with say 80% similarity to the context lines? then go ahead and look at nearby files
     look for exact matches in other files BTW, not fuzzy => on exact match => then it makse sense to recommend (else no recommends)
     not sure what # specifically => I guess I could say like no 50% matching lines in file => look elsewhere
       or maybe look at other files referenced in the chat thread!!! (i.e. previous semantic_grep matches could be used to feed the limited pool of files to check?)
       or straight up grab paths from chat history?
     maybe only recommend if say less than 3 matches in nearby files?
       list all three is fine
       change wording based on #
       => can 1 match sound more certain?
       => 3 less so
       => NO recommend if over 3? (or 10 or w/e #)
 - I'd want the model to know that the suggestion is not necessarily relevant and that it is just a convenience
     => if this distracts a model, not good!

## grep => GAHHHH

Damn gptoss is using `grep` .... GRRRRR
- TODO can I give explicit examples to avoid this?
  maybe only warn about this when grep is used (not pre-emptive in system message?)
  so, command output can say hey I would really prefer you use `ripgrep` and NOT `grep`

## committing

did not commit when done, not end of world
- however, when it did commit it didn't follow instructions to mark co-authored
TODO - add a /commit slash command that populates the entire message and instructs how to commit
  - honestly me deciding when to commit is not the worst thing
  - also could setup tooling to look for dirty repo before/after and ask model if it should /commit automatically?
     can instruct that it is ok to not commit
     just a gentle nudge (NOT make it seem required) => so say either commit or NOT commit and just say NOT READY TO COMMIT! and max one sentence if you want to explain why
