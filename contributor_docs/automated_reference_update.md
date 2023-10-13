## Automated Reference update

The p5.js documentation needs to be updated every time a new p5.js release gets published.
This process is done by the `update-enJSON` [grunt task](https://github.com/processing/p5.js-website/blob/main/Gruntfile.js). 
The task: 
- clones the p5.js repository in a tmp folder
- generates the updated data.json file with the command `npm run grunt yui`
- commits the data.json in the p5.js-website repository
- generates the updated en.json with the getenJSON() function
- commits the en.json in the p5.js-website repository
- deletes the tmp folder

This task is run by a GitHub workflow in the p5.js-website repository that [gets triggered by another workflow](https://docs.github.com/en/actions/reference/events-that-trigger-workflows#repository_dispatch) in the p5.js repository.

Every time a new p5.js release gets published, the update-p5jswebsite workflow (in the p5.js repository) gets triggered and in turn triggers the update-documentation workflow (in the p5.js-website repository) that runs the `update-enJSON` task.

When the update-documentation workflow commits the updated Reference files, the commit message will show both the p5.js release tag and the commit's sha.

### Notes:
- For the repository_dispatch event of the update-p5jswebsite workflow, [this GitHub action](https://github.com/peter-evans/repository-dispatch) was used.
- In order for the update-p5jswebsite workflow to trigger the update-documentation workflow, **it requires a repo scoped Personal Access Token created on a user with write access to the p5.js-website repository**. The Personal Access Token needs to be stored as secret in the p5.js repository.
