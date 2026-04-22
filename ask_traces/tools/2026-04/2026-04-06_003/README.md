ask gptoss120b to review log messages and use a new `server_name` variable... instead of `name` for consistent logging of name...
- it removed the [] in most log messages and then added this in other logs that used name!
  3 minutes saved combing through log messages!

Also did the commit! I would love to know what causes the model to remember to do commit vs not?
- is it proportional to # turns for tool calls? more == less likely?
