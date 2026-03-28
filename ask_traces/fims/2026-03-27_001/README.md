## 1774672566-thread.json

First, I was adding an abbr for ff_volumedetect_help to open the website for the filter's docs...
 but then it generated this first suggestion and I loved it (command line help too)
 so then I was like, ok how about do both! open the site and show command line help!


suggestion does this:

```sh
Filter volumedetect
  Detect audio volume.
    Inputs:
       #0: default (audio)
    Outputs:
       #0: default (audio)
```

## 1774672635-thread.json

So, I went back in to open the webpage and I typed `&& open` and then paused to see if it would get the drift!
  gptoss120b read my mind!
  opened the help page which was all I was going to originally do, now I love both parts! (above and this)

BTW, `volumedetect` doesn't have a ton of help in command line output, but other filters will...
  and I can structure an abbr help function next that takes a filter name and generates both help parts into the abbr

Final result after both FIM suggestions:
```sh
abbr ff_volumedetect_help "ffmpeg -hide_banner -h filter=volumedetect && open https://ffmpeg.org/ffmpeg-filters.html#volumedetect"
```
