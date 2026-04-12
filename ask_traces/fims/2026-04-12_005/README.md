sometimes the RAG fails to find all the matches needed!
- in this case it missed including the UPPERCASE key name table mapping to know that this one has diff command and field names vs the "constant" key name in code

this one should be:
    ensure_skill_embedded_command("WIP_template", "apply_template_only")

