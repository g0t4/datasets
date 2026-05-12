---
describe:
- asking for time w/ tool use
- both cases I left RAG auto matches on
pros:
- ran date command
dings:
- wouldn't check with date command when I asked for the time, made up times instead
- had to tell model to run date command
- I suspect some of reluctance to actually check is due to rag auto matches as those have a tendency to confuse, especially if not related to the request at hand
rating: mixed-bag
should_have:
- run date command or otherwise retrieved the time on first request
---

## 1778618565-trace.json

Asked the model to double check and it did not! Insisted it knew the time.

## 1778618586-trace.json

Asked "check" and it did not check
