The folder [`crash-course/docs`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/docs) contains:

- slides as Markdown in [`crash-course/docs/docs.md`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/docs/docs.md) 
- slides as HTML in [`crash-course/docs/docs.html`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/docs/docs.html)
- all images used in [`crash-course/docs/images`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/docs/images)
- sample code used in [`crash-course/docs/sample_code`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/docs/sample_code)
- HTML documentation of sample code created with Sphinx in [`crash-course/docs/sphinx`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/docs/sphinx)

Pandoc was used to create HTML slides: `pandoc -s --webtex -i -t slidy in_file.md -o out_file.html`
