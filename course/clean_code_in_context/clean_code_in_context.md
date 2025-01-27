---
title: "WWZ Workshop: Clean Code in Context"
author: "Dr. Anthea Alberto (RISE)"
email: "antheajeanne.alberto@unibas.ch"
date: "February 3, 2025"
---

# WWZ Workshop: Clean Code in Context

## Agenda

- **13:00-13:30**: What is clean code and why should you use it?
- **13:30-14:15**: File Structure, Data Formats and More
- **14:15-14:30**: Break
- **14:30-15:15**: Exercise
- **15:15-16:00**: An intro to coding with AI

## Recap Crash Course

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

![scripts_structure](https://github.com/user-attachments/assets/f3d4f5af-db89-40d5-ba80-c3099b2ac580)


## File formats

- Strive to use universal formats across operating systems.
- Recommend `.rtf` (text) and `.csv` (spreadsheets).

## LaTeX

- LaTeX is independent of OS.
- The learning curve is steep, but worth it.
- Recommend **Overleaf** for online editing.

## File encoding

- Use **UTF-8** encoding to solve internationalization issues.
- Avoid special characters in names, which might cause issues.

## R Markdown

R Markdown is a tool to produce PDF or HTML documents with embedded code chunks. It is ideal for reports.

## Integrating GitHub with RStudio

Follow the [instructions here](https://happygitwithr.com/) for GitHub-RStudio integration. This integration allows making commits directly via RStudio.

![GitHub-RStudio Integration](commit_from_rstudio.png)

## Group Work

In groups of 3, make a checklist of considerations for starting a new project. Include personal experiences and course insights to aid future projects.

## Examples & Resources

- [Showcase for teaching purposes](https://github.com/RISE-UNIBAS/rheinschifffahrt-showcase)
- [Visualization project by RISE](https://github.com/RISE-UNIBAS/delille_viz)

---
