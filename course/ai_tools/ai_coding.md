---
title: "AI-Assisted Coding: Clean Code and Documentation"
author: "Dr. Anthea Alberto and Dr. Maximilian Hindermann"
institute: "RISE and UB"
theme: Metropolis
date: "January 19, 2026"
---

# AI-Assisted Coding: Clean Code and Documentation

## Today's Agenda (13:00-16:00)

- **13:00-13:30**: AI in research & coding landscape
- **13:30-14:15**: Clean code with AI (hands-on exercises)
- **14:15-14:30**: Break
- **14:30-15:30**: Documentation with AI (live demo)
- **15:30-16:00**: Best practices & discussion

# Part 1: AI in Research (30 min)

## Quick Poll

**Who has used:**
- ChatGPT/Claude for coding?
- GitHub Copilot?
- AI for documentation or data analysis?

## AI Tools Landscape

| Type | Examples | Best For |
|------|----------|----------|
| **Code Completion** | GitHub Copilot, Tabnine | Real-time suggestions while typing |
| **AI Agents** | Claude Code, Cursor | Full file/project refactoring |
| **Conversational** | ChatGPT, Claude | Learning, explanations, debugging |
| **APIs** | | Bulk requests | 

## Common Research Use Cases

✅ **AI helps with:**
- Data analysis scripts (pandas, tidyverse)
- Documentation (README, docstrings)
- Code refactoring and cleanup
- Understanding legacy code
- Following style guides

❌ **AI struggles with:**
- Domain-specific logic
- Novel research methods
- Security-critical code
- Replacing human judgment

## Ethics & Best Practices

**Key considerations:**
- **Verify everything**: Test and understand AI output
- **Be transparent**: Document AI usage in your projects
- **Privacy**: Don't share sensitive data
- **Check policies**: Institutional and journal guidelines on AI use

# Part 2: Clean Code with AI (45 min)

## Exercise (15 min)

**File**: `course/clean_code_in_context/cc_exercise/bad_script.R`

**Problems**: Poor names, repeated code, no functions, unclear logic

**Goal**: Apply clean code principles using AI assistance

### Clean Code Principles

| Principle | AI Can Help With |
|-----------|------------------|
| **DRY** | Extract repeated code into functions |
| **KISS** | Simplify complex logic |
| **Meaningful Names** | Suggest descriptive variable/function names |
| **Structure** | Organize code into logical sections |

## Discussion (15 min)

- What worked well?
- What needed correction?
- How will you use this?

## Live demo (15 min)
- Msty (API keys will be provided)
- LeChat (access via Unibas)

# Part 3: Claude Code for Documentation (60 min)

## What is Claude Code?

> An AI agent that reads, writes, edits, and understands entire codebases.

**Key capabilities:**
- Navigate and search project files
- Explain and analyze code
- Refactor and edit systematically
- Generate documentation

## Installation & PyCharm Workflow (Windows)

**Prerequisites**: WSL (Windows Subsystem for Linux)

**Install Claude Code**:
```bash
# In WSL terminal
curl https://claude.ai/install.sh | bash
```

**Using with PyCharm**:
1. Open your project in PyCharm
2. Configure PyCharm to use WSL terminal
3. Run `claude` in PyCharm's WSL terminal
4. Claude Code can read/edit files in your project
5. Changes appear immediately in PyCharm
6. Review and test all changes

## Writing Effective Prompts

### Structure: Context + Action + Constraints

❌ **Vague**: "Fix this code" or "Make it better"

✅ **Specific**: "Refactor the data_processing function (lines 45-80) to use tidyverse style and extract repeated code into helper functions"

### Prompt Template
```
"In [file/function], [action] following [style guide/principle].
Use [specific constraints]."
```

# Part 4: Best Practices & Discussion (30 min)

## Workflow Integration

### Recommended Process

1. **Draft** (you or AI) → Get it working
2. **Refine with AI** → Improve structure, docs, style
3. **Critical Review** (always human!) → Understand, test, verify
4. **Version Control** → Commit with clear messages
5. **Iterate** → Refine prompts, learn patterns

### When to Use AI

✅ **Good for**: Boilerplate, documentation, refactoring, learning patterns

❌ **Not for**: Critical calculations, security code, novel methods, learning fundamentals

⚠️ **Always verify**: Statistical logic, privacy, research integrity

## Practical Tips

**Iterate prompts**: Start broad → Get specific → Refine further

**Ask questions**: "Why this approach?" "What are trade-offs?" "Edge cases?"

**Use git**: Commit before AI changes, document AI assistance in commit messages

## Be Transparent About AI Use

Add to your README:
```markdown
## Development Notes
Code developed with AI assistance (Claude Code) for refactoring
and documentation. All output reviewed and tested by [Your Name].
```

## Discussion

**Share your experience:**
1. What worked well? What saved time?
2. What needed correction? When did AI misunderstand?
3. Concerns or hesitations?
4. Will you integrate AI into your workflow? How?


## Key Takeaways

1. Use AI to write cleaner code faster
2. Always review and verify AI output
3. Be transparent about AI assistance
4. Maintain research integrity
5. Iterate on prompts for better results

**For your assignment:**
- Use AI for documentation (optional)
- Be transparent about AI use in README
- Review and test all AI-generated content


## Resources
- [Claude Code Docs](https://docs.anthropic.com/claude-code)
- [GitHub Copilot for Students](https://github.com/education)
- Course materials: https://github.com/RISE-UNIBAS/clean-code
