---
title: Documentation
author: Dr. Maximilian Hindermann
institute: RISE and UB
theme: Metropolis
date: February 17, 2023
---

# Goal of this section on documentation

![](images/title_image.png "'An oil painting of a programmer cleaning code' by Maximilian Hindermann and DALLE-2")

Get you in a position to start writing great documentation.

# Why is documentation important?

Without documentation your future self (let alone other people) won't be able to easily read your code and your code won't be FAIR ([Chue Hong et al. 2022: 13](https://doi.org/10.15497/RDA00068)): 

> "Software, including its documentation and license, should meet domain-relevant community
standards and coding practices (e.g., choice of programming language, standards for testing,
usage of file formats, accessibility [...]) that
enable reuse."

In addition, apart from the time and money spent (re)understanding your undocumented code, this potentially means many missed out opportunities, including:

- Publications (results not reproducible or black boxed)
- Collaboration
- Funding

# Different levels of documentation

![](images/documents.png "xkcd, 'Documents', CC BY-NA 2.5")

Documentation is required at different levels of your research project:

1. Project level
2. User level
3. Systems level

Image credit: [xkcd, "Documents", CC BY-NA 2.5](https://xkcd.com/1459/).

# Project level documentation

A readme file provides information about your files (code, data, and others) and how they are interrelated. The structure of a readme file should include:

- General information
- File overview
- Sharing and access information
- Methodological information
- File-specific information

[RDMN provides more resources on data and file organization](https://researchdata.unibas.ch/en/planning/data-organisation/).

# User level documentation

"IEEE Standard for Software User Documentation" in IEEE Std 1063-1987: 1-20, [10.1109/IEEESTD.1988.121943](10.1109/IEEESTD.1988.121943).

In order to create good user software documentation, answer the following questions:

1. What part(s) of the software need to be documented?
2. Who is the audience of the documentation? 
3. What is the information required by the target audience?
4. What is the usage mode of the documentation?

# Systems level documentation with Python

# Docstrings

# Annotations

# Automatic formatting

# Documenting versus commenting

# Sphinx

# test

```
class Client:
    """ Standalone client.
    :param gold_standard: the gold standard, defaults to None
    :param model_dir: the directory of the custom NER model, defaults to None
    :param model: the loaded custom NER model, defaults to None
    """

    def __init__(self,
                 gold_standard: GoldStandard = None,
                 model_dir: TemporaryDirectory = None,
                 model: Language = None,
                 input_text: DataFrame = None,
                 result: DataFrame = None,
                 ) -> None:
        self.gold_standard = gold_standard
        self.model_dir = model_dir
        self.model = model
        self.input_text = input_text
        self.result = result
        self.setup()
```

# Further reading

