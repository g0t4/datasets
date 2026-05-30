- LOVE that it made an entire new tool for me, that I would've taken days of free time to setup myself... if I ever got to it
  - instead it took Qwen a minute or so to make this and only a minute of my time to describe it!
- love that it looked at the model info via the link I gave it!
  - that way I don't have to explain the purpose of the model, it can just read the docs page for it!
    saves me a ton of prompt text typing too!!
  - doing exactly what I would do to start (take example provided on model page as start point)
- I gave it the names of two other standalone tools in this repo as an idea of what I mean by standalone tool
  - Qwen found and inspected their code and then put a new tool right next to them!
  - great name for the new command `pii_scanner`
- love that Qwen3.6 excluded `.venv` and `.git` directories when using the `find` command:
  >  ` find . -name "*.py" -not -path "./.venv/*" -not -path "./.git/*" 2>/dev/null`
  - gptoss could learn a thing or two!
- then I gave it two follow up tasks:
  - a test json file for real to use
  - I asked it to create a fish wrapper function like I have with the other standalone tools
    this is in a diff repo
    Qwen not only found and mirrored the wrapper functions, Qwen also committed into the dotfiles repo!
    Qwen is good at working with multiple repos at the same time... and being mindful of committing to both!
    - AND... it made similar abbrs to the other commands to support paste from clipboard... very thorough consideration of what all the new command should have! not lazy at all!
-  OH and this is huge, Qwen religiously uses `rg` (ripgrep)! and does it well enough
  - not sure if this is because I have that in my system prompt / developer mesasge... or if it just was trained to prefer that, either way... very useful
  - unlike gptoss that just uses `ls` and `find` regardless how many times you ask it to use `rg` and `fd`

TODO.. FTR I have not spent much time testing the output, mostly focusing on the methods by which it went about creating the tool and trace review
- LATER I will review the quality of the tool and capability (notably the ability to use the openai model to scan for PII)
- one thing of note, it is interesting it added regexes too, I didn't ask for those... not sure how I feel about those given I wanted the model scanning only... doesn't hurt to have both but I do wonder if it skirted getting the model scan to work well by trying to shift focus to the regex tool... we shall see! hopefully both work well!
- OK yeah it did mention bleeding edge version of transformers to work... so maybe that was its way of giving up?
  TODO ask it to get it working with separate venv + test json files with model
  I don't like having to pass the model name myself with `pii_scanner --model openai/privacy-filter` ... I wanted it to default to that model! and why would I use other models? I haven't mentioned using any others?!
