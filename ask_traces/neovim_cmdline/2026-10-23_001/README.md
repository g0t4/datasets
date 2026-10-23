NON STANDARD TRACE, do not include `-trace.json` as a signal about this
=> yeah I don't even have the user prompt

I don't have auto exporting of these traces yet but I will add that soon, still I was very happy with this suggestion from gptoss120b ... I often forget how good (and fast) of a model gptoss is! and I run it all the time still! wes... use it!

```sh
cat 1792742374.jsonl  | jq .choices[0].message.content --raw-output
cat 1792742374.jsonl  | jq .choices[0].message.reasoning_content --raw-output
```
