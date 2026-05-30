FIM mind reader! add required was what I wanted...
complaints about gptoss
- duplicated the `'type': 'object',` line which is already above the FIM cursor position
- duplicated indent for FIM cursor line which already had the indent it needed (ongoing issue with gptoss for FIM)
  TODO would be super easy to remediate if I insert the suggestion into the original code at `<|fim_middle|>` and feed it into gptoss again and ask it to fix (or leave alone if ok) the suggestion
  essentially a second pass to review the suggestion again and fix any issues merging it into the actual code
