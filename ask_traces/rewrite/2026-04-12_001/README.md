rewrite my env var dump to work on linux too

also was testing if RAG would flag the IS_MACOS variable I have in my dotfiles fish config and yup it must've
- AND it found and used IS_LINUX!
- retrieval found all of it!
- these are both set one time for perf reasons (cached into these variables) ... else you find lots of spots in your fish config that re-runs uname or w/e and adds milliseconds every time!
