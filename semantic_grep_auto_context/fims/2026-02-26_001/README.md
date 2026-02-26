## 1772091524-thread.json

simple example of adding type hints and in this case I had yanked the type I wanted (unbeknownst to me!)

## TODO consider an EditPredictionsFrontend!
- OR, just add this to PredictionsFrontend!
- allow the model to EITHER return
  - prediction alone (no changes around the cursor)
  - and/or edits
- TODO how about just add apply_patch as a tool that's available!
  - no ability to lookup other files or run commands, just apply_patch calls (one by one)
  - encourage the model to make ONE apply_patch call
  - I could even have a hotkey to FORCE using this instead of a vanilla prediction

