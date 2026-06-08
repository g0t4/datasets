first gemma-4 trace... YIKES it messed up run_process tool call twice in a row!
it did get date right on the final try and it did retry, so that's good... was that a fluke or?
   TODO or is smth wrong with llama-server support for gemma-4 at this point? i.e. the thought parsing seems maybe not done?

looking at the tool calls... had quoting mistakes...
 TODO is there an issue with the template? IIRC some one else was saying their uncensored version of gemma4 fixes the template "jankiness"
  this is the model that mentioned issues with template... though it looks like smth w.r.t. responding with tool call when not appropriate:
  https://huggingface.co/Jiunsong/supergemma4-26b-uncensored-gguf-v2

`cat ./1780923907-trace.json | jq '.request_body.messages[].tool_calls | select(. != null) | .[].function.arguments' | jq --raw-output`

```json
{"argv":{"\"date\"],command_line":"date"}}
{"argv":{"\"date\"]] ,command_line":null}}
{"command_line":"date"}
```
