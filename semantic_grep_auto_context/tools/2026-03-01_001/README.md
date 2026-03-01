tool use => ask for it to find where I print server capabilities and only print them once per root
- good solution actually! just tack a flag onto the client!
    not sure, would the client instance ever change for the same client_id?
    worked when I tested it!
    I didn't ask for a specific solution, so this is perfectly ok! (per my request)

TODO => it appears that the spacing in the RAG match text was not used for apply_patch?
  3 indents (3x4=12 spaces) in apply_patch
  4 indents (4x4=16 spaces) in the RAG match text
  I believe 4x4 is correct... so why did apply_patch work?! YIKES!
  ALSO, I don't really recall issues w/ gptoss and whitespace indentation w.r.t. Tool Use... did smth change?
    or is this just a case where it only had RAG matches and those don't always provide enough context to get spaces right?
    I am probably thinking of cases where tool use involved dumping lines in the file

    TODO do you observe issues w/ gptoss and sed (partial file) dump resulting in spacing issues?

  TODO should I enforce exact whitespace match on apply_patch?
    TODO actually first find out if it does allow less whitespace (at front of line only, or)
    TODO or was the actual file 3x4?
        then again gptoss didn't check the actual file either so...


  TODO when showing RAG matches, I should double check with the actual files?
    what does that do to timing? s/b fine actually
      TODO flag cases where there's a mismatch so I can investigate bugs...
      that said, if I have multiple nvim instances w/ same repo... very possible I just updated it in a diff instance and the others do not know... TODO should I turn on file watcher for this case? that way all LS instances update?
        TODO long term I should run one LS instance per root/workspace
            else => I am updating embeddings 2+ times! for the same files! yuck!
            also I waste memory and resources with multiple copies of RAG index loaded!
        BUT... how often do I actually open the same repo enough times for it to matter? probably actually lol plenty often
           do a timing check with 2/3/5/8/10 instances and see how things are affected if watching changes and running the same update 2/3/5/8/10 times in a row!

TODO cap semantic_grep at 10x results max?
  gptoss is almost always doing 20x and that's always absurd!
  OR, suggest no more than 5 per call... if not in first 5 to 10, run the query a different way?
  and yeah the matches I find are almost ALWAYS #1 and maybe 2/3... very rare for it to be  5+
  I could even say re-run the same query with bigger count of results
     AND THEN... I could track that in the same tool thread and not include verbatim copies of the first X (i.e. 5) if they still match
