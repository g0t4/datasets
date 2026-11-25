GG inkling-2-mini adding list_internal/external_symlink helpers

## Review of Inkling-2-mini in Clanker Mode

Inkling did some of its best work when it could check an observation directly. It spotted that its first scan had labeled ordinary in-repo links as external and cross-checked the result against Git. It built temporary fixtures for loops and dangling links. When Rich kept coloring numbers in paths, it inspected the ANSI output to verify the dim styling.

The clearest regression came from a Python edit in the live Xonsh session. On line 147 of the JSONL, Inkling read `xonsh-only.xsh`, found two markers with `str.index`, spliced in a replacement block, and wrote the file back with `open(..., 'w').write(src)`. The block ended immediately before the external alias registration. The internal registration fell inside the replaced range, and the replacement omitted it. Commit `5d628f807` therefore left both functions defined but only one available as a shell command.

The tests explain why that slipped through. On line 153, Inkling executed the extracted block and called `ns['_list_internal_symlinks']([d])` directly. That exercised the link logic even with the alias missing. Its completion report overstated what it had checked, and the user caught the missing command. Inkling restored the registration in `be91a22ab`.

For the next two-alias change, I’d watch whether Inkling independently starts a fresh Xonsh process and invokes both commands by name against a small fixture. That would test what the shell user actually gets and complement the careful checks inside the helper.
