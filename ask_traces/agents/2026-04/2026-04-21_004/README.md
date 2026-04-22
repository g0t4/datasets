ok with /norag... it actually did preserve some of my comments... AND it mentioned that as what it did in its summary.. huge improvement
- also the refactor seems a bit better overall... i.e. using internal send_generic
- but it did drop some of my comments... and/or reworded some ...
   STILL an IMPROVEMENT... longer prompt seems to obscure my request... perhaps w/ refactors I should not auto include rag context and just let the model decide to do that? OR default off and let me opt in to it? or I can just use /norag too

OK wait in the trace review, in its first attempt to move the code it kept my comments... that failed and then in subsequent attempts later, when it split changes up into smaller apply_patch calls, it no longer quite a few comments...
- FYI it used semantic_grep after first failure, a few times... that might be splatting distractions into the context? maybe fully disable RAG and see how this goes?
- is the issue with smaller steps? if so maybe instructions about failures that say if a big change fails, don't forget to preserve comments (or code) when splitting it into smaller changes?
