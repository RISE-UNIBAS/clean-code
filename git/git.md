---
title: Brief introduction to version control with Git
author: Dr. Maximilian Hindermann
institute: RISE and UB
theme: Metropolis
date: February 17, 2023
---

# This section's goal

![](images/title_image.png "'An expressive oil painting of a programmer failing to use Git' by Maximilian Hindermann and DALLE-2")

Get you in a position to decide if Git might be useful for your work.

# What is Git?

- Git is a distributed version control system (VCS).
- A VCS is "a system that records changes to a file or set of files over time so that specific versions can be recalled later" (Chacon & Straub 2014: 10).
- Git is very well suited for text-like data such as code, but of course also for text-like data such as:
    - an ALTO-XML file encoding the transcript of a medieval manuscript
    - a CSV file recording numerical weather data for Basel
    - a JSON-LD file containing a Tropy database
    - an SVG file of a research project's fancy new logo
    - a TXT file containing a novel from Project Gutenberg
- Git is less well suited for binary data such as audio data, images or video (changes in these files are opaque), especially if these files are large (>100MB); use [Git Large File Storage extension ](https://git-lfs.com/)in such cases.

# Local version control

![](images/local.png "Local version control")

- Solves the problem of error-prone manual versioning of files.

# Centralized version control

![](images/centralized.png "Centralized version control")

- Solves the problem of how to work on the same files together on different computers.

# Distributed version control

![](images/distributed.png "Distributed version control")

- Solves the problem of being dependent on central server for work and backup.

# Using Git

![](images/use.png "Snapshots of Git used in a command line and an IDE")

After installation on your computer, you can use Git:

- via the command line
- via one of many [GUI-clients](https://git-scm.com/downloads/guis)
- via most common IDEs

# Git repository hosting services

But where do I host my Git repository? Do I have to configure a server myself? 

- No. In practice, most users rely on a commercial Git repository hosting service such as [GitHub](https://github.com/), [GitLab](https://gitlab.com/), [Bitbucket](https://bitbucket.org/), or others.
![](images/logos.png "GitHub, GitLab and Bitbucket logos")
- Git repository hosting services do not replace but extend Git!

# GitLab at Unibas

In contrast to GitHub, GitLab can be installed on your own infrastructure (e.g., required for sensitive data).

There are several GitLab instances at Unibas but none run as official university-wide service:

- [https://git.scicore.unibas.ch/](https://git.scicore.unibas.ch/)
- [https://gitlab.psychologie.unibas.ch/](https://gitlab.psychologie.unibas.ch/)
- [https://gitlab.switch.ch/ub-unibas/](https://gitlab.switch.ch/ub-unibas/)
- [https://gitlab.its.unibas.ch/](https://gitlab.its.unibas.ch/)

# National infrastructure

Switch offers a GitLab instance, c4science supports Git:

- [https://gitlab.switch.ch/](https://gitlab.switch.ch/)
- [https://c4science.ch/](https://c4science.ch/)

# Looking at a sample GitHub repository

![](images/inception.png "Alex Eylar, 'Inception', CC BY-NA-SA 2.0")

GitHub repo for these slides: [https://github.com/RISE-UNIBAS/clean-code/git](https://github.com/RISE-UNIBAS/clean-code/tree/main/git)

Image credit: [Alex Eylar, "Inception", CC BY-NA-SA 2.0](https://www.flickr.com/photos/hoyvinmayvin/4829301976).

# Further reading

![](images/books.png "Selection of Git book covers")

- [Tons of material online and in print](https://git-scm.com/doc/ext)
- [Scott Chacon and Ben Straub (2014): Pro Git, Apress](https://git-scm.com/book/en/v2)
- Bernd Öggl and Michael Kofler (2022): Git. Projektverwaltung für Entwickler und DevOps-Teams, Rheinwerk Computing

# Sample section in course

Bla