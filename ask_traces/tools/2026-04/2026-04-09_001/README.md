Add --logFile to my mcp-server-commands command + testing script, nice work all around



FYI a few last turns around trying to amend commits to change author.email failed but that's NBD I just gave up on that...
- issue is probably related to non-blocking git commands (vs blocking)... or just taking a while... I abandoned that and will just update my prompt going forward (I added an account on github for gptoss120b for my tooling commits to show that account/logo to make clear where commits came from)
- I just removed these turns as they were a giant waste of space for command output

## 1775721231-thread.json

fix for using global cliLogFile instead of unused passing logFile per always_log() call

FYI I was in a nested dir (3 deep) and so gptoss struggled a bit to find the file to edit and eventually did an absolute path to edit it, good deal
- TODO I might want to mention 3 deep == ../../../ for relative paths then in system message too? it is rare I am in a repo's nested dir so NBD to take up tokens
