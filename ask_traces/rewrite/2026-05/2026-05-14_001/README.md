it works! regex based abbr for grev1 => git revert HEAD~1, grev2 => HEAD~2 etc
... so while this works, it is not exactly optimal

good:
- uses my common prefix `_abbr_expand_` which was in RAG matches and gptoss paid attention!

critique:
- capture group (\d+) is pointless just do `\d+`
  - ahhh I think I know why it added this... if you look at `"grbi(\d+)" "` in the RAG matches, that's used as a capture group... but it is INSIDE the expansion function, not the abbr's regex... that makes sense
    - honestly having some instructions around how abbrs work would mitigate most of this... and some code conventions about what I prefer for naming and maybe even implementing these for common scenarios
      - i.e. enumerating distinct types:
        1. compressed prefix => replace prefix with expanded
          - IOTW variable part is at the END of the typed abbr
          - AND the variable part is located at the end of the expanded command
          - approach: string replace --regex '^prefix' 'expanded command prefix --foo'
          - arguably it would be fine to add the capture group instead (that generalizes)
        2. expansion is around the variable part `e10t` => `echo 10 times`
          - use a capture group in the inner expansion's string replace so you can expand both prefix and suffix in one pass
          - still use `string replace` but w/ capture group so you can organize before/after text expansion
        - if you enumerate common patterns for regex abbrs... that would go a long way towards consistency
          - but, does consistency even really matter if it works? ;)
        3. OTHERS... TODO have gptoss review all mine and identify patterns
  - to use captures you'd use `string match --regex` inside the body of the expanion function
- IMO extracting count is pointlessly complex...
    and... hilariously it uses `string replace` to strip the prefix `grev` (not replace, strip!)
    and then emitting a new "prefix" with the `echo "git revert HEAD~$count"`
    combine the two steps into one command!!!
    which gets you to the better solution
       ***** just replace the typed prefix `grev` with `git revert HEAD~` !!!
- also frustrating is the RAG matches literally show examples of this with `glX` abbr... so why not follow that one?!
    RAG also has _abbr_expand_grbi_d ... which clearly is where the name inspiration comes from!

