## EASY EVAL too

Most models will be trained on JSON-RPC spec: https://www.jsonrpc.org/specification which includes pre-defined error codes... so test FIM on these codes!

- 1776304167-trace.json => FIM the description for a code that I typed out (left of cursor)
- 1776304175-trace.json => FIM the rest of the lines for the remaining pre-defined codes and descriptions (both values FIM'd)
  - add one error code+desc above this line to encourage a particular format... can test on how well the model mirrors the format of prior line(s)
  - can test with differing number of examples on lines above (0, 1, 2, 3 etc)
  - can test with just headers on lines above too?
  - test w/ markdown table style too (in addition to freeform text on each line)?
