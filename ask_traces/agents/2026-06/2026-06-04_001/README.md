ok qwen did a good job adapting my completion logger to log raw prompt/completion for /v1/completion in llama-server when I use with Qwen2.5-Coder (and newer Qwen models) for FIM/PredictionsFrontend.

ALSO, I was _JUST ASKING_ to confirm my suspicion... I didn't intend for a "fix" or changing the code to support it...

and yet Qwen had a simple edit to get something meaningful captured... in a way, Qwen sometimes can communicate best by making code changes! I can always reset those changes too.

Qwen's changes got the last_sse+request_body captured which is great... but it failed to get the content accumulated too but it got really close on that and I fixed the rest of that so I could think about how I want this captured (Qwen suggested mapping completion into a synthetic message object but I don't want that... I am happy adjusting my trace viewer to look at raw prompt/completion using separate code... i.e. can format the raw prompt per the raw prompt format (i.e. harmony with gptoss) ... this is all in contrast to chat completions that I have been logging via the messages list
