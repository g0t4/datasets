asked qwen3.6 to setup type hint for MCPTool type in lua
- great job with the custom type!
- good use of apply_patch tool (two usages) by Qwen3.6
- but, then it applied it in some spots using python like type annotations! yikes... it fixed it upon request...
  part of the issue with lua/python code is it is easy to confuse... so NBD... in the future I can setup an INSTRUCT to do this and be very specific based on filetype
