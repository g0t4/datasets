this was just a test of /file in an AskRewrite... looks like Qwen figured it out so we'll go with it!
- I changed message for the file context to convey /file is including full file for context w.r.t. what was selected (when I want the model to see surrounding code)

Anyways I was happy to see what is slightly vague in the `rename` prompt... that qwen still does fine with rewriting the part I want help with

I am actually surprised I don't have any notes about this being a "rewrite" request... that my prompts alone have worked! and the model knows to rewrite all the code selected... and I never really have trouble with that ?! wowsers
- That said, sometimes I get the model trying to give me multiple snippets (in md code blocks) and now that makes sense when it is trying to tell me what changes to make in multiple spots (beyond just the selection)
- TODO I am going to add some explanation of the request as a rewrite of the selection only... that will help I suspect
