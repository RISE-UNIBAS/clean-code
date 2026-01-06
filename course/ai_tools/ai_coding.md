---
title: "AI-Assisted Coding: Clean Code and Documentation"
author: "Dr. Anthea Alberto and Dr. Maximilian Hindermann"
institute: "RISE and UB"
theme: Metropolis
date: "January 19, 2026"
---

# AI-Assisted Coding: Clean Code and Documentation

## Today's Agenda (13:00-16:00)

- **13:00-13:20**: AI in research & coding landscape
- **13:20-14:00**: Introduction to Claude Code (live demo)
- **14:00-14:15**: Break
- **14:15-15:00**: Clean code with AI (hands-on exercises)
- **15:00-15:45**: Documentation with AI (hands-on exercises)
- **15:45-16:00**: Best practices & discussion

# Part 1: AI in Research (20 min)

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

# Part 2: Claude Code with PyCharm (40 min)

## What is Claude Code?

> An AI agent that reads, writes, edits, and understands entire codebases.

**Key capabilities:**
- Navigate and search project files
- Explain and analyze code
- Refactor and edit systematically
- Generate documentation

## Live Demos

### Demo 1: Understanding Code
```
"Read bad_script.R and explain what it does"
```

### Demo 2: Finding Patterns
```
"Where are CSV files loaded in this project?"
```

### Demo 3: Making Edits
```
"Rename variable 'df1' to 'election_data' throughout the file"
```

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

# Part 3: Clean Code with AI (45 min)

## Setup & Goals

**File**: `course/clean_code_in_context/cc_exercise/bad_script.R`

**Problems**: Poor names, repeated code, no functions, unclear logic

**Goal**: Apply clean code principles using AI assistance

## Clean Code Principles

| Principle | AI Can Help With |
|-----------|------------------|
| **DRY** | Extract repeated code into functions |
| **KISS** | Simplify complex logic |
| **Meaningful Names** | Suggest descriptive variable/function names |
| **Structure** | Organize code into logical sections |

## Exercise 1: Better Variable Names

**Prompt**:
```
"Suggest better names for all variables in bad_script.R
based on what the data represents."
```

**Then apply**:
```
"Apply the variable name changes you suggested."
```

**Example**: `df1` → `election_results`, `x` → `vote_percentage`

## Exercise 2: Extract Functions (DRY)

**Prompt**:
```
"Identify repeated code in bad_script.R and extract
into reusable functions with descriptive names."
```

**Example refactoring**:
```r
# Before: Code repeated for df1, df2, df3...
# After: Single function
load_and_clean_election_data <- function(file_path, min_votes = 100) {
  data <- read.csv(file_path)
  data <- data[data$votes > min_votes, ]
  data <- data[!is.na(data$district), ]
  return(data)
}
```

## Exercise 3: Simplify Logic (KISS)

**Prompt**:
```
"Simplify complex logic in [section] using tidyverse/base R
best practices while preserving functionality."
```

**Example**: Replace verbose loops with vectorized operations or tidyverse pipes

## Exercise 4: Organize Structure

**Prompt**:
```
"Reorganize into sections: libraries, configuration, functions,
main execution. Add clear section headers."
```

## Discussion (10 min)

- What worked well?
- What needed correction?
- How will you use this?

# Part 4: Documentation with AI (45 min)

## AI for Documentation

> "Without documentation, your future self won't be able to read your code and your code won't be FAIR."

**AI helps with**: Docstrings, READMEs, comments (when needed)

## Exercise 5: Adding Docstrings

### R: Roxygen2 Style
**Prompt**:
```
"Add roxygen2 documentation to all functions.
Include @param, @return, and @examples sections."
```

**Example output**:
```r
#' Load and clean election data
#'
#' @param file_path Character string with path to CSV file
#' @param min_votes Numeric minimum vote threshold (default: 100)
#' @return Data frame with cleaned election data
#' @examples
#' data <- load_and_clean_election_data("data/elections.csv")
load_and_clean_election_data <- function(file_path, min_votes = 100) {
  # Function implementation
}
```

### Python: NumPy Style
**Prompt**:
```
"Add NumPy-style docstrings to all functions.
Include Parameters, Returns, and Examples sections."
```

## Exercise 6: Creating a README

**Prompt**:
```
"Create a README.md for this project with: overview,
requirements, installation, usage, file structure, and functions."
```

**Key sections**:
- Overview: What and why
- Requirements: Dependencies
- Installation: Setup steps
- Usage: How to run
- File structure: Project organization
- Functions: API overview

## Exercise 7: Smart Comments

**Remember**: Comments explain *why*, not *what*

❌ `# Calculate mean` → ✅ `# Using median due to outliers in district 7`

**Prompt**:
```
"Add comments ONLY where logic is non-obvious.
Explain WHY, not WHAT. Remove redundant comments."
```

## Be Transparent About AI Use

Add to your README:
```markdown
## Development Notes
Code developed with AI assistance (Claude Code) for refactoring
and documentation. All output reviewed and tested by [Your Name].
```

# Part 5: Best Practices & Discussion (15 min)

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

## Discussion

**Share your experience:**
1. What worked well? What saved time?
2. What needed correction? When did AI misunderstand?
3. Concerns or hesitations?
4. Will you integrate AI into your workflow? How?

## Tools for Researchers

| Tool | Best For | Cost                              |
|------|----------|-----------------------------------|
| **GitHub Copilot** | Real-time coding | Free for students                 |
| **Claude Code** | Project refactoring | Subscription or pay-per-use (API) |
| **ChatGPT/Claude web** | Learning, explanations | Free tier, subscription           |

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
