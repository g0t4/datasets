I am fed up with shit diff display algorithms... but, often picking a new diff tool improves one diff presentation and shits all over another...
- case in point `delta` cannot handle line indentation for shit... it shows a fucking mess nearly every time.
  so, a return early refactor in python code... instead of if statement around guarded logic... good luck understanding what you changed from `git diff`

Step 1 is to build a dataset of common diff challenges... i.e. the return early refactor.
- catalog examples with `repo`, `commit sha` or `commit range` and `description` of the problem + `tools` pros/cons (which tools can do well with a given problem vs those that fall apart on the commit.
