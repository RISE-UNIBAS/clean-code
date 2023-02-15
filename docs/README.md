The folder [`clean-code/docs`](https://github.com/RISE-UNIBAS/clean-code/tree/main/docs) contains:

- slides as Markdown in [`clean-code/docs/docs.md`](https://github.com/RISE-UNIBAS/clean-code/tree/main/docs/docs.md) 
- slides as HTML in [`clean-code/docs/docs.html`](https://github.com/RISE-UNIBAS/clean-code/tree/main/docs/docs.html)
- all images used in [`clean-code/docs/images`](https://github.com/RISE-UNIBAS/clean-code/tree/main/docs/images)
- sample code used in [`clean-code/docs/sample_code`](https://github.com/RISE-UNIBAS/clean-code/tree/main/docs/sample_code)
- HTML documentation of sample code created with Sphinx in [`clean-code/docs/sphinx`](https://github.com/RISE-UNIBAS/clean-code/tree/main/docs/sphinx)

Pandoc was used to create HTML slides: `pandoc -s --webtex -i -t slidy in_file.md -o out_file.html`
