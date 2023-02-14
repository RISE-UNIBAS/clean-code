---
title: Documentation
author: Dr. Maximilian Hindermann
institute: RISE and UB
theme: Metropolis
date: February 17, 2023
---

# Goal of this section on documentation

![](images/git.png "'An expressive oil painting of a programmer failing to use Git' by Maximilian Hindermann and DALLE-2")

Get you in a position to start writing great documentation.

# Why is documentation important?

Without documentation your future self (let alone other people) won't be able to easily read your code and your code won't be FAIR. Apart from the time and money spent (re)understanding your code, this potentially means many missed out opportunities, including:

- Publications (results not reproducible or black boxed)
- Collaboration
- Funding


# High-level view

"IEEE Standard for Software User Documentation," in IEEE Std 1063-1987: 1-20, [10.1109/IEEESTD.1988.121943](10.1109/IEEESTD.1988.121943).

In order to create good user software documentation, answer the following questions:

1. What part(s) of the software need to be documented?
2. Who is the audience of the documentation? 
3. What is the information required by the target audience?
4. What is the usage mode of the documentation?

# Example in Python (implementation side if you will)
- documenting versus commenting
- docstrings
- hints/annotations
- documentation with sphinx
- readme
- file structure

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

