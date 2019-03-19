# Getting started with contributions on this repo

We thank you for your contributions. To help you get started, we have put together the following steps:

## Initial setup

1. Install node.js by following the instructions [here](https://nodejs.org/en/download/).
2. [Fork](https://help.github.com/articles/fork-a-repo/) the p5.js-website repository to your Github account. Click the *Fork* button on the upper-right side of the p5.js-website Github repo. This will automatically open your fork repo on Github.
![processing/p5.js-website repository menu. At the right bottom of the menu the "fork" button is highlighted](https://github.com/processing/p5.js-website/raw/master/contributor_docs/assets/fork.png)
3. On your fork click the green *Clone or download* button. It will display a bar from where you can copy your `repo_URL`.

    ![processing/p5.js-website repository menu. The "Clone or download" button is pressed and a tab is displayed under it from which the repository's link can be copied.](https://github.com/processing/p5.js-website/raw/master/contributor_docs/assets/clone.png)

4. Open your command-line interface (CLI) and [clone](https://help.github.com/articles/cloning-a-repository/) your fork of the `p5.js-website` repository to `your_directory` on your laptop by typing:

    ```bash
    git clone repo_URL
    ```

5. Go to the repository's directory `[your_directory]/p5.js-website/` and install all the packages and dependencies for the website by typing (if you work on Mac it should be like `Users/[your_user]/[your_directory]/p5.js-website/`):

    ```bash
    npm install
    ```

6. Check if the packages are correctly installed by typing:

    ```bash
    npm run watch
    ```

7. This should open a window in your browser with the site running at http://localhost:9000.
8. Set `github.com/processing/p5.js-website` as the upstream of your local. Type the following to list the configured remote for your fork (or follow this [tutorial](https://help.github.com/articles/configuring-a-remote-for-a-fork/)):

    ```bash
    $ git remote -v
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
    ```

Then specify a new remote upstream for your fork (don't forget that by doing this you are setting the upstream for your local fork, but not for your fork on Github):

    ```bash
    $ git remote add upstream github.com/processing/p5.js-website
    ```

Finally verify if your remote upstream has been set (it should look like this):

    ```bash
    $ git remote -v
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
      origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
      upstream  https://github.com/processing/p5.js-website.git (fetch)
      upstream  https://github.com/processing/p5.js-website.git (push)
    ```

## Before submitting a Pull Request

1. Sync your fork to keep it up-to-date with the upstream repository following the next commands or this [tutorial](https://help.github.com/articles/syncing-a-fork/). First fetch the upstream repo and its commits -commits will be stored on your local fork- and then merge changes from upstream to your local:

    ```bash
    git fetch upstream
    git merge upstream/master
    ```

2. Make changes only at files under the `src/` directory.
3. Check if your changes are correct and don't break the website render by typing `npm run watch`.
4. Commit the files you have changed, type:

    ```bash
    git add -A
    git commit -m "add a message to your commit"
    git push
    ```

5. Commit to your repository at your github account and create a new [Pull Request](https://github.com/processing/p5.js-website/wiki/Pull-requests). Click the *Pull Reques* tab on your fork page and then click the green button *New Pull Request*.
![processing/p5.js-website repository menu. "Pull requests" tab is opened and a green button with the text "New pull request" is displayed a the right bottom of the menu.](https://github.com/processing/p5.js-website/tree/master/contributor_docs/assets/pull_request.png)