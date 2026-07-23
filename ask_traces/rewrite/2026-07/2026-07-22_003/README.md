pleasantly suprised that it not only simplified this but used a function I had defined thanks to RAG matches that makes it very clear what this is doing!

note it may seem weird it did an inline require... but this AskRewrite request did not include surrounding scope to see that there was already a files module reference variable available...
- and actually this way it did it is correct b/c this code runs no matter the surrounding context
- and an easy fix for me to swap in `files`
