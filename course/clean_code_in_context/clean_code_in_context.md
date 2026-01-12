---
title: "WWZ Workshop: Clean Code in Context"
author: "Dr. Anthea Alberto (RISE)"
email: "antheajeanne.alberto@unibas.ch"
date: "January 19, 2026"
---

# WWZ Workshop: Clean Code in Context

## Agenda

- **09:00-10:15**: Introduction, core concepts of clean code and some best practices
- **10:15-10:30**: Break
- **10:30-11:15**: Some general input on cooperation and exercise
- **11:15-12:00**: Buffer for technical setup
- **12:00-13:00**: Lunch break
- **13:00-16:00**: AI Tools for Coding

Slides can be found here: https://docs.google.com/presentation/d/1wf3FP_v7sqW1RSylroPCfVG85T3AHYlgoBkHe7cIsNQ/edit?usp=sharing 

## An Introduction to Clean Code

“I like my code to be **elegant and efficient.** The logic should be straightforward to make it hard for bugs to hide, the dependencies minimal to ease maintenance, error handling complete according to an articulated strategy, and performance close to optimal so as not to tempt people to make the code messy with unprincipled optimizations. **Clean code does one thing well.**”

*— Bjarne Stroustrup, inventor of C++*

Reference: Martin, R. (2015): Clean Code. Upper Saddle River, NJ: Prentice Hall.

## Why you should use clean code

- **It saves time & increases efficiency**
  - Clean code reduces the effort of trying to understand a script later.
- **It makes collaboration easier**
  - No need for project partners to explain their code when it's clean.
- **Well-organized scripts make it easier for reference**
  - You’ll likely reuse your code a lot during your career.
- **Reproducibility**
  - Saves time when putting together reproduction materials.

## Recap

- Code for people, not machines
- Use the right names
- Adhere to standards and be consistent
- Use comments & avoid unnecessary ones
- Use a lab journal for different parameters, models, etc.
- **DRY**: Don’t Repeat Yourself
- **YAGNI**: You Ain’t Gonna Need It
- **KISS**: Keep It Simple, Stupid

## Clean Code in Context: File Structure

![file_structure](https://github.com/user-attachments/assets/8614c642-fa81-4b88-848e-ba8c7b6017f8)

*A good start, but not ideal.*

### Why File Structure?

Based on the [MIT Communication Lab](https://mitcommlab.mit.edu/broad/commkit/file-structure/):

Why do it? The arguments for clean code apply here as well:

- **It simplifies cooperation**
    - Create a more streamlined analysis workflow
    - No time wasted when trying to understand project structure
    - Reproducibility
- **Future you will be grateful**
    - Copy-paste structure for future projects
    - Less time needed to refamiliarize yourself with an older project \& its code

### General Good Practices

- One main folder per project
- Subfolders: number and type depend on the project
- Separate raw data from edited data
- Consistent naming for subfolders and files

## Naming conventions

- Use underscores, hyphens, or periods as delimiters
- **Avoid spaces**
- CamelCase: e.g., `firstNameLastName`

### Examples

Instead of confusing names like `final_final_thisone`, consider: `v1`, `v2`, etc. Use `YYYYMMDD` for dates.

![phd_comics](https://github.com/user-attachments/assets/ff1db5b9-7dcb-43e1-8408-ce85429f5a2c)


## Folder structure

![basic_folder_structure](https://github.com/user-attachments/assets/758793d0-4380-4238-8cf9-eedbf2a82906)

*Source: [Claire Duvallet](https://cduvallet.github.io/phdchat-philosophies/)*

- Separate raw data from edited data.
- I also recommend this for coding in general: rename a data frame when you edit (subset, aggregate...) it.
- If you mess up or want to do something differently, you won’t have to reload the data.

<img width="1221" alt="simple_hierarchy" src="https://github.com/user-attachments/assets/54419935-167e-4ee8-aafc-1e4dcf879e36" />

*Source: [Case studies from mitcommlab](https://github.com/mitcommlab/Coding-Documentation/blob/master/File-Structure-Case-Studies.md)*

<!--![scripts_structure](https://github.com/user-attachments/assets/f3d4f5af-db89-40d5-ba80-c3099b2ac580) -->


## File formats

- Strive to use universal formats across operating systems.
- Recommend `.rtf` (text) and `.csv` (spreadsheets).

### LaTeX

- LaTeX is independent of OS.
- The learning curve is steep, but worth it.
- I recommend [Overleaf](https://www.overleaf.com/) for online editing.

### File encoding

- Use **UTF-8** encoding to solve internationalization issues.
- Avoid special characters in names, which might cause issues.

## R Markdown

- R Markdown is a tool to produce PDF or HTML documents with embedded code chunks. 
- It is ideal for reports, for others or for yourself.

## Integrating GitHub with RStudio

Follow the [instructions here](https://happygitwithr.com/) for GitHub-RStudio integration. This integration allows making commits directly via RStudio.

![commit_from_rstudio](https://github.com/user-attachments/assets/27021753-f960-42e1-9f63-884d8c84333d)

## Resources
- [tidyverse style guide](https://style.tidyverse.org/)
- [PEP 8 - Style Guide for Python Code](https://peps.python.org/pep-0008/)
- [Project-oriented workflow](https://tidyverse.org/blog/2017/12/workflow-vs-script/) by Jenny Bryan
- [Tips, tricks, and philosophies on computational work](https://cduvallet.github.io/phdchat-philosophies/) by Claire Duvallet

---
