## Pull requests

The src files are the ones that you should contribute to.

The dist files get generated from the src files, so it is normally correct to check in both the modified src and dist files.

If you do a pull request, include the files you modified in src. If you run `npm run watch`, the corresponding dist files (plus p5-reference.zip) will be modified. If you also include the dist files on your pull request, the changes will get pushed to the live site. If you don't include the dist files it's no problem, they will get generated next time `npm run watch` is run. You shouldn't see dist files modified that you didn't touch at all.
