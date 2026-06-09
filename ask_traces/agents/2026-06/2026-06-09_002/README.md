wowsers Qwen3.6 just updated both ISO URLs + checksums for my ubuntu 26.04 and arch (rolling) packer builds of vagrant boxes... stellar job overall... both boxes built and pushed to vagrant cloud on first try! NICE WORK
- love that qwen went to the trouble to securely build the sha256sum for the arch ISO...
- I had left it set to "none" because the ISO site only shows b2sum ... which AFAICT packer doesn't support ... qwen id it the right way and grabbed https link to get the checksum!
- got versions updated correctly on both boxes... love love love
- only complaint is removing some of my comments that I use to resolve the current ISO URLs... NBD it put them back when asked!

## and then some...

I asked for tons of things from Qwen3.6... token count is 190K+ now... and it's working great still

- asked it to leave notes in qwen.md for future runs
- add debian13 box build
- remove debian12
- update all boxes to use vagrant-registry post processor + custom variables for client_id/secret
  - and then update all ./validate-fmt.fish scripts to pass dummy variables so they don't need vagrant_cloud_token call to get real ones
  - update build scripts to pass env vars values (from invoking vagrant_cloud_token) through the new variable
  - run validate on all boxes to make sure stuff works

