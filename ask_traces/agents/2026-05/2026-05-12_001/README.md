---
dings:
- initially it did not change code, instead it just produced a patch file in a final assistant message's content
- did not test using it! then again I didn't give it a location for a trace.json file
      TODO I should add that as a stock instruction anytime I modify files in that directory .. here are example trace.json files (maybe even have several and describe the scenarios why they are selected and how they are useful for testing
        better yet, ADD TESTS WITH REAL ONES!! then let semantic_grep work its magic through regular embeddings!
        OR let retrieval decide when to include it (put it in a big bag of contextual project instructions and let semantic_grep decide)
        think semantic_grep + skills
- insistence that it wasn't overwriting the json file with the html, when it was! it should have looked to be sure when I first asked
    - once I said no filenames it fixed things, to instead use the trace.json file + ".html" then it fixed the issue
good:
- a few bugs fixed with me pasting error message only, that's convenien
- when I followed up with "go ahead", the model correctly understood that to mean apply changes
---

