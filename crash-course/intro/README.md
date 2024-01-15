The folder [`crash-course/intro`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/intro) contains:

- slides as Markdown in [`crash-course/intro/intro.md`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/intro/intro.md) 
- slides as HTML in [`crash-course/intro/intro.html`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/intro/intro.html)
- all images used in [`crash-course/intro/images`](https://github.com/RISE-UNIBAS/clean-code/tree/main/crash-course/intro/images)

Pandoc was used to create HTML slides: `pandoc -s --webtex -i -t slidy in_file.md -o out_file.html`
