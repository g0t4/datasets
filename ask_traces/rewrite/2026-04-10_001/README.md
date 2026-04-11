I love I can just say "funcify" and it works!
- TODO I should turn this into a simple prompt though (think skill) with some basic guidance

btw this was a good funcification of a fish script

only a few issues:
- using {} curl braces for parameter expansion is not valid in fish
  - use "$foo"bar instead of "${foo}bar" in fish... to interpolate the $foo variable
- did not call with my original color hex value!
