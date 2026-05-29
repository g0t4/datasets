❤️ working with Qwen3.6.. to diff a moved function in its original vs destination files...

- Why? To spot if there are also changes ...
  Why? becuase changes are hard to see without a diff of the same line ranges in the separate files
    scanning each line on original vs destination is a dumb idea... after all that's why we have diff tools!
  think of a treesitter diff of a moved node (function)
- the part I hate is finding the file names + line ranges (and sometimes the specific commit/sha)
  Qwen did that for me and did it very well! SPOT ON!
- and Qwen only had a slight issue with HEAD for original when it needed to be HEAD~1...
  - the rest of my asks for `| psub` were cosmetic vs temp files that work fine too...

## TODO

I really like a world in which I can chat with my terminal and we can co-author commands together so I can cut the parts out that cost me too much time...
- i.e. I could've pull a prior example of what I wanted and shown it to the model and just have it update for a given commit + files + lines for a given change...
- it can look at the diff and find the relevant ranges and setup everything for me in a split second
- and this particular use case, happens enough that it would justify a slash command for help with it...
  to provide examples + instructions about what I am asking it to do
  w.r.t. finding files and line numbers and for what commit(s)
- with precanned instructions I can be much more concise in my prompt... vs needing to be very precise otherwise (or at least provide an example)
  honestly I should've provided an example to start
  - TODO I should add a slash command to inject info about my dotfiles repo where the examples would live in the actual code to build them, i.e. `diff_last_two_commands`
    when I was typing the request, I felt the urge to reference this but then was like meh I don't wanna go get the path
    maybe `/dotfiles` => `~/repos/github/g0t4/dotfiles` ? and a brief explainer on what this repo is?
