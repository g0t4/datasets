ask gptoss120b to summarize major changes to Ansible Core since March 2023... TODO I need to compare notes but in general this looks good!
- this is exactly a scenario for a subthread/subagent to do the heavy lifting of searching and then report back with a summary...
  - I should clarify subagent is useful if I needed this research in the context of another thread/agent... and only wanted summary to affect the history of that thread
  - at the same time, I don't need this as part of a separate agent thread... so I can just run a one-off instance of neovim to get this too!

- complaints:
  - model stopped looking after 2.16!
    then guessed or just used internal knowledge for a few points about 2.17+...
    model should've kept going for each major release!
  - also model stoppped at 20K chars/tokens? for 2.16 release (2.15/14 too).. and yet 2.15.0/2.14.0/2.16.0 are all listed last in change log and have the BULK of the material changes in them! patch releases are less important for knowing about major changes)
