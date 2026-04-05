## EVAL

I want to turn this challenge into an eval, it's a good test of a model's capabilities... both as an agent and then also to reason through a modest refactoring challenge (not that difficult cuz it has no impact on consumers beyond import file name.. but there's plenty of complexity in the merging of the two functions...  especially because I had already started movign things and the code was in a broken state!)

BEFORE commit: eval-merge-runProcess-into-spawn_wrapped-before (start of eval, where I left off with some broken code)
AFTER commit: eval-merge-runProcess-into-spawn_wrapped-after (gptoss120b solution)

GIST of steps:
- take `runProcess` logic and move it into `spawn_wrapped`
  - handle the fact that I call `spawn_wrapped` one of two ways in `runProcess` ... some if/else logic
  - map variable names (cleanup broken references too)... for command/args/etc to spawn a process
  - rename `spawn_wrapped` to `runProcess`
  - moved code to `exec-utils.ts` because most of the code there remains unchanged and it is just additions (mostly) toward top of `spawn_wrapped` so git history wise that would be easier to review
    - it is important in an EVAL to understand how well a model can do with keeping the commit diff / review of changes to a minimum, or intelligible...
    - IOTW if there's an opportunity to simplify the final set of changes w.r.t. git's diff perspective... does the model capitalize on that?
      - For example, the merged code could have been put into `runProcess.ts` ... but that'd be a ton more changed lines given most of the final result was already in `exec-utils.ts`
      - OR, could've created a new `merged.ts` file w/ everything and delete both originals!
      - so, goal wise is simplify verification of the agent's work! so long as it has no negative impact on the actual solution space
    - if I had asked to rename the file too, that would make more sense in a follow up commit!
    - When I (human) refactor, I take baby steps to verify each step carefully
      - When AI agents refactor... they don't need to take baby steps... well, actually they could if they commit along the way just like me (small step, small commit, small step, commit, step, commit, etc)
      - OR, the AI agent can take medium sized steps (not reckless in size)... but somewhere between baby and reckless!
- delete runProcess.ts file
- update imports of runProcess.ts file name to use exec-util.ts instead
  - but, `runProcess` name is kept so consumers otherwise don't have any changes

## gptoss120b's summary of actions taken => plan of action eval too?

Part of the eval can be asking for this plan and then judging the one the user comes up with vs the following:

```gptoss120b-plan.md
Implemented full migration:
- Renamed `spawn_wrapped` to `runProcess` and updated its signature to accept only `RunProcessArgs`.
- Integrated argument validation and command resolution directly into `runProcess`.
- Adjusted logging to use resolved command and args.
- Updated imports across tests to use the new `runProcess` from `exec-utils.ts`.
- Removed obsolete `run_process.ts` file.
- Cleaned up remaining references and ensured internal logic aligns with the new function name.
```

## original request from me

> AskQuestion /tools I am half way done merging runProcess into the start of spawn_wrapped, can you finish for me? move runProcess logic into the file for exec-utils.ts into spawn_wrapped that way the bulk of the logic doesn't move...

