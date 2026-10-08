muse wrapped completion in single backticks... and they were not stripped out by updates to predictions front end... does predictions only strip triple backticks... or did it do single on its own line or?

btw looks like `\n` trailing was probably why?

cat './1791440642-trace.json' | jq '.request_body.messages[4].content' -r
