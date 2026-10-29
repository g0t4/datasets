DeepSeek v4 Flash Vision Experimental

Stellar job with the process (I didn't review implementation code as I don't care to... I tested the trace parsed for me and that worked in neovim!)
- deepseek ran all tests => found failures => stashed his changes => ran all tests again => popped stash ... AWESOME
- meticulously reviewed my custom assertions modules in lua.. and switched to them after initial tests were vanilla asserts
- git diff before commit, nice!
- added a good range of tests per my request!

Great use case for letting the agent handle everything and going forward just hand traces that you have problems with (or new languages/fwks) and let agent handle it
- no need to read the code => eiher the trace parsers or it doesn't
- test driving cases means much less likely to trigger a regression bug
