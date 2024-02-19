# GitHub best practices

> **Warning**
> If your data contains personal data you may not use GitHub (neither public nor private repositories), see the [primer on personal rights issues](https://researchdata.unibas.ch/en/legal-issues/personal-rights/) by the University of Basel's Research Data Management-Network for more information.

## Documentation and FAIR data
<!-- Brief reminder about documentation and FAIR from crash course. -->
Documentation and FAIR data principles are crucial in research for ensuring transparency, reproducibility, and efficiency. Documentation provides clear records of research processes, while FAIR principles (Findability, Accessibility, Interoperability, Reusability) ensure data is easily shared and used. These practices collectively enhance the integrity and impact of research.

### README.md
_You can add a README file to your repository to tell other people why
your project is useful, what they can do with your project, and how they can use it._ 

From the [GitHub documentation](https://docs.githubcom/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes) on README files

#### Materials
- The README file of this course is [here](https://github.com/RISE-UNIBAS/clean-code/blob/main/README.md).
- README templates and suggestions on [https://www.makeareadme.com/](https://www.makeareadme.com/).

#### Questions
- What is `.md` for a file type?
- What should go into a README file? 
- How many README files does one need?

### LICENSE.md
_Public repositories on GitHub are often used to share open source software. For your repository to truly be open source, you'll need to license it so that others are free to use, change, and distribute the software._

From the [GitHub documentation](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository) on licensing a repository

#### Materials
- [Primer on intellectual property righs](https://researchdata.unibas.ch/en/legal-issues/intellectual-property-rights/) by the University of Basel's Research Data Management-Network.
- Choose a license with [https://choosealicense.com/](https://choosealicense.com/).

#### Questions
- Why do you need a license for research software or research data?
- What are suitable licenses in this context?

### CITATION.cff
_You can add a CITATION.cff file to the root of a repository to let others know how you would like them to cite your work. The citation file format is plain text with human- and machine-readable citation information._

From the [GitHub documentation](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files) on CITATION files

#### Materials
- The CITATION file of this course is [here](https://github.com/RISE-UNIBAS/clean-code/blob/main/CITATION.cff).
- You can youse the [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/#/) tool to create or update your CITATION file.

#### Questions
- What is an ORCID ID, what is a DOI?

### Releases
_GitHub's way of packaging and providing software to your users._

From [GitHub glossary/release](https://docs.github.com/en/get-started/learning-about-github/github-glossary#release)

#### Materials
- The releases of this course are [here](https://github.com/RISE-UNIBAS/clean-code/releases).
- Releases should adhere to [semantic versioning](https://semver.org/spec/v2.0.0.html).
- [GitHub documentation](https://docs.github.com/en/repositories/releasing-projects-on-github) on releases.

#### Questions
- What do I put in the release notes?

### Zenodo pipeline
GitHub repositories can be published to [Zenodo](https://zenodo.org/) as releases. 

#### Materials
-  [GitHub documentation](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content#issuing-a-persistent-identifier-for-your-repository-with-zenodo) on issuing a persistent identifier for your repository with Zenodo-
- A more detailed documentation is [here](zenodo_pipeline.md).

### CHANGELOG.md
_A changelog is a file which contains a curated, chronologically ordered list of notable changes for each version of a project._ 

From [https://keepachangelog.com/en/1.1.0/](https://keepachangelog.com/en/1.1.0/)

#### Materials
- The CHANGELOG file of this course is [here](https://github.com/RISE-UNIBAS/clean-code/blob/main/CHANGELOG.md).
- CHANGELOG templates and suggestions on [https://keepachangelog.com/en/1.1.0/](https://keepachangelog.com/en/1.1.0/).

#### Questions
- Why keep a changelog?
- Who needs a changelog?

### GitHub pages

_A static site hosting service designed to host your personal, organization, or project pages directly from a GitHub repository._

From [GitHub glossary/GitHub pages](https://docs.github.com/en/get-started/learning-about-github/github-glossary#github-pages)

#### Materials
- [GitHub pages documentation](https://docs.github.com/de/pages).
- [Guide](https://github.com/nicolas-van/easy-markdown-to-github-pages?tab=readme-ov-file) on how to turn Markdown files in your repo into a website.

#### Questions
- What's the advantage of having your documentation on GitHub pages?

## Security

### Secrets

- login credentials, API keys...
- 

## Collaboration

- pull requests
- branch protection
- forking
- issues
- project management tools

## Automation

- [Documentation](https://docs.github.com/en/actions) on GitHub actions

## Getting help

- Documentation (see links below)
- Google is your friend
- [Stackoverflow](https://stackoverflow.com/)
- GPTs

## Useful links

- [GitHub glossary](https://docs.github.com/en/get-started/learning-about-github/github-glossary#commit)
- [GitHub documentation](https://docs.github.com)
- [GitHub Desktop documentation](https://docs.github.com/en/desktop)
- [GitHub template for FAIR and open research data](https://github.com/maehr/open-research-data-template) by Moritz Maehr
- [Research Data Management-Network University of Basel](https://researchdata.unibas.ch/en/)