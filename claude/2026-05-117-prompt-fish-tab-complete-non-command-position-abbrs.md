❯ ok so abbr in fish, you can tab complete them when they are in command position (basically the first part of a new command line or after pipe)... but, I often have abbrs for non-command positions (anywhere)... those abbrs will expand in the command position too.. but they won't expand later in a command line args..
  probably has to do with completions of commands themselves (i.e. command defines its own completions) but even when a command/function does not have completions defined... the non-command position abbr will not tab complete

  here are examples to make sure we are on same page:
  ```fish
  # this is a command position only abbr:
  abbr gst "git status"
  # same as if I had done:
  abbr --position=command gst "git status"
  # in this case, gst will show as a tab completion choice in the completion menu when I do this:
  gs<TAB>

  # position anywhere
  abbr pgr "| grep -i"
  # this one will show in tab completion menu too (although in this case not useful in command position)
  # this one is intended to be used like this
  cat foo.log pgr<SPACE> # expands to: `cat foo.log | grep -i `
  # I would love it if this one tab completes in non-command position like this:
  cat foo.log pg<TAB> # would love to see `pgr` in the list of choices so I can tab complete it
  # why do I care? because I have many `pg` prefixed abbrs, and I often forget what all I have and I can't easily tab complete to see my choices!

  what would it take to make these abbrs tab complete in non-command position?

  basically it would be akin to general purpose file tab completion
  - which can be turned off with --no-files... and I mention that because that might be a hint about where to look for changes needed to support tab completing non-command abbrs!1
  ```

  can you look into this and report back if it's complex, else if it is an easy fix, do it and I'll test it!

  ask me any questions you might have

  here are more of my abbrs that this would apply to:

  abbr -a --position anywhere -- pbat '| bat -l'
  abbr -a --position anywhere -- pgr '| rg_grep -i'
  abbr -a --position anywhere -- pgrv '| rg_grep -i --invert-match'
  abbr -a --position anywhere -- phelp '| bat -l help'
  abbr -a --position anywhere -- pini '| bat -pl ini'
  abbr -a --position anywhere -- pjq '| jq .'
  abbr -a --position anywhere -- pjqr '| jq -r .'
  abbr -a --position anywhere -- pjqj '| jq --join-output .'
  abbr -a --position anywhere -- pmd '| bat -pl md'
  abbr -a --position anywhere -- prb '| bat -pl rb'
  abbr -a --position anywhere -- psh '| bat -pl sh'
  abbr -a --position anywhere -- pxml '| bat -l xml'
  abbr -a --position anywhere -- pyml '| bat -l yml'
  abbr -a --position anywhere -- puniq '| sort | uniq -c'
  abbr -a --position anywhere -- psort '| sort -h'

  another good use case in this set... `pj<TAB>` to see all my jq related pipe abbrs

  right now if I don't know the exact abbr in non-command position, I can't use the abbr... but when I am learning abbrs, if I can tab complete to see choices, that often helps me learn them
