*** TLDR: VERY HAPPY WITH THESE TRACES

implement a check for response headers => content-type... if text/event-stream no problem, but anything  else (i.e. application/json) then throw error so I know when I encounter a server that isn't using SSEs to respond to JSONRPC requests at least some of the time...

anyways two agents/traces to tackle this...

## 1776822369-trace.json - header check

I asked this agent to modify my HTTP POST (via curl) to dump headers too and check the content type header for text/event-stream vs application/json (actually all others)
  - if it is not text/event-stream it should throw for now
  - model did a good job adding a header buffer+parser that then hands off to the SSEDataOnlyParser
  - this is exactly the PITA code that I like agents to write, to add some simple buffering logic and then I can review it... and in this case the header buffer flows into the SSE events buffer... so it was good to have a second set of eyes if you will and then just let me review its work... (I become the second set of eyes, ideally!)

BUT, I ran into one small problem... empty SSEs (triggered b/c of \r\n\r\n between response headers and response body) blow up on_data_sse callback... so I started the second agent to fix this issue once I found it

observations:
- oddly enough the agent called the langchain docs tool... which wasn't going to help fix the issue!

## 1776822909-trace.json - fix the empty SSEs issue, the SSEDataOnlyParser should ignore (skip) empty SSE events
  - had the agent add a failing test, commit, fix it, commit
      - I chose a different implementation in parser to detect empty SSE... but its solution was good too
      - GOOD example of how I can WORK WITH an agent, to take over at times and then ask it to resume!
          - SMALLER steps like this make it a lot easier to switch drivers
  - then I found a new scenario to test for... same thing add failing test, fix it, commit
  - STELLAR example of small steps and working with an agent (gptoss120b)

side agent to add a fix for empty SSEs blowing up consumers (on_data_sse callbacks)... I want the parser to skip empty SSEs
