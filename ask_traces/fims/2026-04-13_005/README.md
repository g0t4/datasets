in this case, the RAG search I performed was not very useful given the limited characters on the current line (and not specific)...
=> THUS FIM suggestion was useless
- TODO in these cases perhaps I should treat ({ and }) as just whitespace and ignore them and expand my context? perhaps... expand with treesitter to current node (or up a level?)

That said, I have been very happy with limiting the RAG query to the current line's prefix only.. it works very well overall
- just maybe treat more characters as if an empty line? (non alphanumeric?)
