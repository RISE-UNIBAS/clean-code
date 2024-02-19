---
title: GitHub best practices
author: Dr. Maximilian Hindermann
institute: RISE and UB
theme: Metropolis
date: March 4, 2024
---

# GitHub best practices

# Documentation and FAIR data

<!-- Brief reminder about documentation and FAIR from crash course. -->
Documentation and FAIR data principles are crucial in research for ensuring transparency, reproducibility, and efficiency. Documentation provides clear records of research processes, while FAIR principles (Findability, Accessibility, Interoperability, Reusability) ensure data is easily shared and used. These practices collectively enhance the integrity and impact of research.

## README.md

_You can add a README file to your repository to tell other people why your project is useful, what they can do with your project, and how they can use it._

From [GitHub documentation](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes) on READMEs

## LICENSE.md

https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository



## CITATION.cff

https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files

https://citation-file-format.github.io/cff-initializer-javascript/#/

https://github.com/RISE-UNIBAS/rheinschifffahrt-showcase/blob/master/CITATION.cff

## Releases

https://docs.github.com/en/repositories/releasing-projects-on-github

## Zenodo pipeline

GitHub repositories can be published on [Zenodo](https://zenodo.org/) as releases. A new release produces a new version on Zenodo. The [documentation](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content#issuing-a-persistent-identifier-for-your-repository-with-zenodo) on issuing a persistent identifier for your repository with Zenodo is somewhat sparse. Here is a more explicit guide:

### Steps required for initial release/publication

Releases before integration with Zenodo are not relevant here.

#### Setup GitHub
- The repository must be public.
- Metadata about the repository can be automatically pushed to Zenodo via a CITATION.cff file in the main node of the repository.
- Note that your initial CITATION.cff file will not contain an "identifiers" section since the DOIs on Zenodo have not been created yet.
- Note that "version" indictes the version of the release on GitHub which we may not have created yet.
- Best practice is to add the ORCIDs of the authors, an abstract, and keywords (all of which will be displayed on Zenodo).

#### Setup Zenodo
- Create a Zenodo account and/or login with your GitHub account.
- Make sure the repository you want to publish is enabled.

#### Publish
- Create and publish a release for the repository on GitHub.
- On Zenodo, check that a repository with a DOI has been created (via Settings/GitHub or via Upload) for the release. 
  - Via Edit, check that the metadata is correct (especially "Upload type").
  - Add the repository to relevant communities.
  - Save and then publish.
- On GitHub, add the DOI-shield to the README.md file.

#### Clean up
- On GitHub, update the CITATION.cff with an "identifiers" section including a DOI of all versions and a DOI of the specific release.
- On ORCID, add the publication to your account via Works/Add/Search & link/OpenAIRE Explore.

### Steps required for each further release
- Before the release, update CITATION.cff "version" with the target value.
- After the release, add the new DOI to CITATION.cff "identifiers".

## CHANGELOG.md

https://keepachangelog.com/en/1.1.0/

## GitHub pages

https://docs.github.com/en/pages

# Security

## Secrets

- login credentials, API keys...
- 

# Collaboration

- pull requests
- branch protection
- forking
- issues
- project management tools

# Automation

- [Documentation](https://docs.github.com/en/actions) on GitHub actions

# Getting help

- Documentation (see links below)
- Google is your friend
- [Stackoverflow](https://stackoverflow.com/)
- GPTs

# Useful links

- [GitHub glossary](https://docs.github.com/en/get-started/learning-about-github/github-glossary#commit)
- [GitHub documentation](https://docs.github.com)
- [GitHub Desktop documentation](https://docs.github.com/en/desktop)
- [GitHub template for FAIR and open research data](https://github.com/maehr/open-research-data-template) by Moritz Maehr
- [Research Data Management-Network University of Basel](https://researchdata.unibas.ch/en/)