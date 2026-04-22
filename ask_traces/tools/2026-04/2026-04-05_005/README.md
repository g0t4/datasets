threads related to adding blocking feature and adding tests for it (several follow ups in original thread to iterate on tests and behavior)

threads:
- initial back and forth of features/tests to add: 1775382032-thread.json
- testing if `ls -R` is blocked when it is in the middle of another innocuous command: 1775382887-thread.json
- then I ran `npm run build` to rebuild the tool used by my agent
- test `ls -R` again within a command => this time blocked: 1775382931-thread.json
- add test to ensure innocuous `ls -R` is not blocked (failing test for now): 1775382948-thread.json

