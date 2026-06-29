good game qwen!

## minor complaints
- I don't like using `get_instance` for a singleton... 
  - unnecessary indirection for a static method that can just exist directly on the state tracker class
  - and, the name `get_instance` doesn't add any utility to understand what's going on IMO
  - should just be `CoroutineStateTracker:set(...)` (same for `:get()`
- left behind a backup file
  - in a git repo, no reason for backups IMO
  - if you do want a `.bak` file (tmp file) then get rid of it when you are done!
  - better yet, put it into a tmp dir that is cleaned up automatically
- NBD b/c qwen recovered, but qwen initially tried to create a file using a HEREDOC+cat approach except qwen messed up the << and the heredoc's delimiter... tried to use `'` single quotes + `<` redirect operator instead of `<<`
  - almost feels like Qwen mixed up using python to creete a file + HEREDOC shell command... that would explain '' around file contents
  - anyways, NBD as qwen recovers fine

