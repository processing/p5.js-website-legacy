## WIP

## TODO
1. A tracking system for references
2. A system that can work with examples as well

## For contributors not doing translations
1. Make changes as usual.
2. Commit as usual, the precommit step will run and diff/add the changes.
3. Push or create PR as usual.

## For contributors working on translation
1. Make sure `git status` is clean, otherwise run `grunt` first to update checklist.
2. Check `i18n-tracking.yml` file for pending translations entries.
3. Translate said entries (or leave as it if translation doesn't need amending).
4. Remove translated entries from `i18n-tracking.yml` file.
5. Run `grunt` to generate translated files.
6. Commit everything into git.

## Detailed description and goal of this setup
The main goal of this setup is to provide a way to track progress of translation and in particular to mark entries and needing attention when said entry is changed in English. To prevent the translated versions from getting outdated when the English version is updated, we need to know what changed and track the changes accordingly.

Following are a few requirements for this setup:
  * it needs to be able to keep track of what changed in English source and mark it as pending translation
  * it needs to accept that sometimes the translation doesn't need to be changed (eg. English had a typo)
  * it needs to not be an extra burden for contributors that are not doing translations
  * it should be relatively human-friendly

This is still a work in progress, some more tests still need to be done to make sure it works as intended.