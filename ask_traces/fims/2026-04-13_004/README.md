FIM+RAG FTW... once again, no way this would populate for you if you didn't have RAG to find the match
- perhaps CoC completions would get you closer and you could tab complete... still cool to have this too
- FYI I did need the C here to get RAG to match ... once the line started with `---@param context C`
   and RAG+FIM failed on `---@param context` alone did not rag match any code with "CurrentContext" type
   I included both requests:
   - 1776110376-thread.json - did not have CurrentContext => FIM not used
   - 1776110379-thread.json - had CurrentContext => FIM used
