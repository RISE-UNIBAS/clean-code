The folder [`clean-code/intro`](https://github.com/RISE-UNIBAS/clean-code/tree/main/intro) contains:

- slides as Markdown in [`clean-code/intro/intro.md`](https://github.com/RISE-UNIBAS/clean-code/tree/main/intro/intro.md) 
- slides as HTML in [`clean-code/intro/intro.html`](https://github.com/RISE-UNIBAS/clean-code/tree/main/intro/intro.html)
- all images used in [`clean-code/intro/images`](https://github.com/RISE-UNIBAS/clean-code/tree/main/intro/images)

Pandoc was used to create HTML slides: `pandoc -s --webtex -i -t slidy in_file.md -o out_file.html`
