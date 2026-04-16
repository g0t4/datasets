original port missed grouping by batch size
-  upon initial inspection the code looks good (as far as grouping by batch size)!
- FYI a good example of AskRewrite+Yanks FTW (I yanked python IMPL and asked to match it)
  - in part I did this b/c auto RAG context only uses current file's extension (filetype) to find auto context matches
    hence wouldn't find the python code
    no doubt if I setup RAG auto matches to include all languages (or also python) that the python code would be a top hit and auto included
