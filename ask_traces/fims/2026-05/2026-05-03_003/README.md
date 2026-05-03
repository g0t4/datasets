## 1777785898-trace.json

FIM ❤️

you have to understand the math to realize this is the simple way to decide if back a second will be a problem!

mind reading FIM + good at the maths FIM + simplified the maths
- naive approach might be to do the math and check the x position of timeline control again... for min x and then decide on that... but this all simplifies to just `relative < 0`

## 1777787260-trace.json

ok now later on when I added the ability to move both directions, I needed the other end of the assertion (go past right side of timeline)...
- so I typed `or ` and bam FIM nailed this condition too! ❤️
- right side simplifies to `> timeline's width`... which is a different simplication than just `< 0` for left side

