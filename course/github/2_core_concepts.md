---
title: GitHub core concepts
author: Dr. Maximilian Hindermann
institute: RISE and UB
theme: Metropolis
date: March 4, 2024
---

# GitHub core concepts

<!-- Recall the distinction between Git and GitHub? Most of the core concepts discussed here are really Git core concepts. -->

# Repository

_A repository is the most basic element of GitHub. They're easiest to imagine as a project's folder. A repository contains all of the project files (including documentation), and stores each file's revision history. Repositories can have multiple collaborators and can be either public or private._

From [GitHub glossary/repository](https://docs.github.com/en/get-started/learning-about-github/github-glossary#repository)

## Task 3: Create a repository on with the Github web-interface

- read the [documentation](https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop#cloning-a-repository) on how to create a new repository with the GitHub web-interface
- create a new public "test"-repository and include a README file with the web-interface

# Commit

_A commit, or "revision", is an individual change to a file (or set of files). When you make a commit to save your work, Git creates a unique ID (a.k.a. the "SHA" or "hash") that allows you to keep record of the specific changes committed along with who made them and when. Commits usually contain a commit message which is a brief description of what changes were made._

From [GitHub glossary/commit](https://docs.github.com/en/get-started/learning-about-github/github-glossary#commit)

## Task 4: Commit to a repository with the GitHub web-interface
- add some text to the README file and commit the changes with the GitHub web-interface

# Clone

_A clone is a copy of a repository that lives on your computer instead of on a website's server somewhere, or the act of making that copy. When you make a clone, you can edit the files in your preferred editor and use Git to keep track of your changes without having to be online. The repository you cloned is still connected to the remote version so that you can push your local changes to the remote to keep them synced when you're online._

From [GitHub glossary/clone](https://docs.github.com/en/get-started/learning-about-github/github-glossary#clone)

## Task 5: Sign in to GitHub Desktop
- read the [documentation](https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop#cloning-a-repository) on how to sign in to GitHub Desktop
- sign in to GitHub Desktop

## Task 6: Clone a repository with GitHub Desktop
- read the [documentation](https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop#cloning-a-repository) on how to clone a repository with GitHub Desktop
- clone the "test"-repository with GitHub Desktop

# Push

_To push means to send your committed changes to a remote repository on GitHub.com. For instance, if you change something locally, you can push those changes so that others may access them._

From [GitHub glossary/push](https://docs.github.com/en/get-started/learning-about-github/github-glossary#push)

## Task 7: Push a commit to remote with GitHub Desktop
- open the README file on the local "test"-repository, add some text, and save the file
- read the [documentation](https://docs.github.com/en/desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project-in-github-desktop#write-a-commit-message-and-push-your-changes) on how to commit and push your changes with GitHub Desktop
- commit your changes to the "main"-branch of the "test"-repository with GitHub Desktop
- push your changes to the remote "test"-repository with GitHub Desktop

# Branches

_A branch is a parallel version of a repository. It is contained within the repository, but does not affect the primary or main branch allowing you to work freely without disrupting the "live" version. When you've made the changes you want to make, you can merge your branch back into the main branch to publish your changes._

From [GitHub glossary/branch](https://docs.github.com/en/get-started/learning-about-github/github-glossary#branch)

## Task 8: Create a "new"-branch with the GitHub web-interface
- read the [documentation](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository#creating-a-branch) on creating branches with the web-interface
- create a branch called "new" with the web-interface

## Task 9: Commit to "new"-branch with the GitHub web-interface
- read the [documentation](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/viewing-branches-in-your-repository) on viewing branches with the web-interface
- commit a new TXT file called "hello.txt" to the "new"-branch with the web-interface

# Pull

_Pull refers to when you are fetching in changes and merging them. For instance, if someone has edited the remote file you're both working on, you'll want to pull in those changes to your local copy so that it's up to date._

From [GitHub glossary/pull](https://docs.github.com/en/get-started/learning-about-github/github-glossary#pull)

## Task 10: Switch to "new"-branch with GitHub Desktop
- read the [documentation](https://docs.github.com/en/desktop/making-changes-in-a-branch/managing-branches-in-github-desktop#switching-between-branches) on switching branches with GitHub Desktop
- switch to "new"-branch with GitHub Desktop

# Merge and pull requests

_Merging takes the changes from one branch (in the same repository or from a fork), and applies them into another. This often happens as a "pull request" (which can be thought of as a request to merge), or via the command line. A merge can be done through a pull request via the GitHub.com web interface if there are no conflicting changes, or can always be done via the command line._

From [GitHub glossary/merge](https://docs.github.com/en/get-started/learning-about-github/github-glossary#merge)

## Task 11: Merge "new"-branch into main via a pull request
- read the [documentation](https://docs.github.com/en/desktop/working-with-your-remote-repository-on-github-or-github-enterprise/creating-an-issue-or-pull-request-from-github-desktop#creating-a-pull-request) on creating a pull request with GitHub Desktop
- create a pull request from "new"-branch into "main"-branch with GitHub Desktop
- read the [documentation](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request#merging-a-pull-request) on merging pull requests with the web-interface
- merge the pull request with the web-interface

## Task 12: Delete the "new"-branch with the GitHub web-interface
- read the [documentation](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/deleting-and-restoring-branches-in-a-pull-request#deleting-a-branch-used-for-a-pull-request) on deleting branches with the web-interface
- delete the "new"-branch with the web-interface

# Optional tasks

## Task 13: Commit to "x"-branch and push to remote with GitHub Desktop 
- take some image, add it to "x"-branch, and push to remote with GitHub Desktop 

## Task 14: clone repo x and make a pull request with a change to file y

## Task 15: review a pull request from x to your repo

# Useful links

- [GitHub glossary](https://docs.github.com/en/get-started/learning-about-github/github-glossary#commit)
- [GitHub documentation](https://docs.github.com)
- [GitHub Desktop documentation](https://docs.github.com/en/desktop)
