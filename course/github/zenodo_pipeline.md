# Zenodo pipeline

- GitHub repositories can be published on [Zenodo](https://zenodo.org/) as releases. 
- A new release produces a new version on Zenodo. 
- The [documentation](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content#issuing-a-persistent-identifier-for-your-repository-with-zenodo) on issuing a persistent identifier for your repository with Zenodo is somewhat sparse; this file provides more explicit documentation.

## Steps required for initial release/publication

Releases before integration with Zenodo are not relevant here.

### Setup GitHub
- The repository must be public.
- Metadata about the repository can be automatically pushed to Zenodo via a CITATION.cff file in the main node of the repository.
- Note that your initial CITATION.cff file will not contain an "identifiers" section since the DOIs on Zenodo have not been created yet.
- Note that "version" indictes the version of the release on GitHub which we may not have created yet.
- Best practice is to add the ORCIDs of the authors, an abstract, and keywords (all of which will be displayed on Zenodo).

### Setup Zenodo
- Create a Zenodo account and/or login with your GitHub account.
- Make sure the repository you want to publish is enabled.

### Publish
- Create and publish a release for the repository on GitHub.
- On Zenodo, check that a repository with a DOI has been created (via Settings/GitHub or via Upload) for the release. 
  - Via Edit, check that the metadata is correct (especially "Upload type").
  - Add the repository to relevant communities.
  - Save and then publish.
- On GitHub, add the DOI-shield to the README.md file.

### Clean up
- On GitHub, update the CITATION.cff with an "identifiers" section including a DOI of all versions and a DOI of the specific release.
- On ORCID, add the publication to your account via Works/Add/Search & link/OpenAIRE Explore.

## Steps required for each further release
- Before the release, update CITATION.cff "version" with the target value.
- After the release, add the new DOI to CITATION.cff "identifiers".