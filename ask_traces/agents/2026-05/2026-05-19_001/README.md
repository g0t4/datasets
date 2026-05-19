love it! I asked the agent to go find ansible-doc pages w.r.t. ansible's `--limit` option...
- third link is EXACTLY what I wanted! saved me the time searching!!

HRM... I would prefer if it had checked each link before listing it, it is clearly listing some from memory? or I guess maybe finding some in the first page it requested...
- I want it to have to fetch each one and review before showing me... I'll follow up with that request


ok after follow up I see why some pages are included (i.e intro to inventory touches on patterns (links to it too) that are used by --limit)... ok that's fine then...

TODO
- I wanna build out a research prompt template that helps me convey what I want the agent to do to save me time! maybe even validation criteria for a tool it  can use to verify its work (i.e. another agent as a judge)?
   - this should be done via subagents... in fact fetch itself should probably be a tool that uses an agent to fetch and then summarize the page with a question in mind... or make that an optional toggle to fetch... so we're not blasting the context with irrelevant page research...
   - TODO or give agent ability to make request and another tool that removes the research messages it partook in... rollback type tool that allows it to get messages, then summarize them, then remove the research tool call messages and replace with a single summary of key findings

