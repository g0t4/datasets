this is a good solution to my prompt... but, I was hoping it would leave `qwen3`/`gptoss` endpoints in the table constructor (like below).. but I did not put that constraint into the prompt...

```lua
    local endpoints = {
        cmdline = {
            name = nil,
            base_url = M.get_cmdline_base_url(),
        },
        qwen3 = {
            name = qwen3_model or "OFFLINE",
            base_url = qwen3_url,
        },
        gptoss = {
            name = gptoss_model or "OFFLINE",
            base_url = gptoss_url,
        },
    }

    endpoints.agents = endpoints.qwen3
    endpoints.rewrite = endpoints.qwen3
    endpoints.summarizer = endpoints.gptoss
```

