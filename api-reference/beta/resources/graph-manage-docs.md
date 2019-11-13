---
title: "Manage your documentation on GitHub"
description: "Manage your documentation on GitHub"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Manage your documentation on GitHub

## Working with Git, GitHub and the Microsoft Graph repo

::: tip
Most of the information in this section can be found in [**GitHub Help**](http://help.github.com/) articles
:::

If you're familiar with Git + GitHub, skip to the **Contribute and edit content** section for the particulars of the code/content flow of the Microsoft Graph repo.

## Setting up your fork of the repository

- Set up a GitHub account so you can contribute to this project.
- Set up your machine with Git by following the instructions in the [Setting up Git Tutorial](https://help.github.com/articles/set-up-git/)
- Create your own fork of the [microsoft-graph-docs](https://github.com/microsoftgraph/microsoft-graph-docs) repo by clicking the **Fork** button at the top of the page
- Copy the fork to your local machine by entering at the command prompt

```batch
git clone https://github.com/{your user name}/microsoft-graph-docs.git
```

- Next, create a reference to the root repository by entering these commands

```batch
cd microsoft-graph-docs
git remote add upstream https://github.com/microsoftgraph/microsoft-graph-docs.git
git fetch upstream
```

Congratulations! You've now set up your repository. You won't need to repeat these steps again.

## Contribute and edit content

Limit each branch to a single concept/article to streamline the workflow and reduce the chance of merge conflicts. The following types of contribution are appropriate for a new branch:

- A new article (and associated images)
- Spelling and grammar edits on an article
- Applying a single formatting change across a large set of articles (e.g., applying a new copyright footer)

Next, to make the contribution process as seamless as possible for you, follow the steps below:

## Create a new branch

- Open your git console
- Type `git pull upstream master:<new branch name>` at the prompt. This creates a new branch locally that's copied from the latest `microsoftgraph` master branch

::: tip
For internal contributors, replace `master` in the command with the branch for the publishing date you're targeting
:::

- Type `git push origin <new branch name>` at the prompt. This will alert GitHub to the new branch. You should now see the new branch in your fork of the repository on GitHub
- Type `git checkout <new branch name>` to switch to your new branch

## Add new content or edit existing content

You navigate to the repository on your local machine by using File Explorer. The repository files are in:

```batch
C:\Users\<yourusername>\microsoft-graph-docs
```

To edit files, open them in an editor of your choice and modify them. To create a new file, use the editor of your choice and save the new file in the appropriate location in your local copy of the repository. While working, be sure to save your work frequently.

The files in `C:\Users\<yourusername>\microsoft-graph-docs` are a working copy of the new branch that you created in your local repository. Changing anything in this folder doesn't affect the local repository until you commit a change.

To commit a change to the local repository, type the following commands in your git console:

```batch
git add .
git commit -v -a -m "<Describe the changes made in this commit>"
```

The `add` command adds your changes to a staging area in preparation for committing them to the repository. The period after the `add` command specifies that you want to stage all of the files that you added or modified, checking subfolders recursively. (If you don't want to commit all of the changes, you can add specific files. You can also undo a commit. For help, type `git add -help` or `git status`.)

The `commit` command applies the staged changes to the repository. `-m` means you are providing the commit comment in the command line. If you aren't targeting a specific date for publishing, you can say "for publishing ASAP". The -v and -a switches can be omitted. The -v switch is for verbose output from the command, and -a does what you already did with the add command.)

You can commit multiple times while you are doing your work, or you can wait and commit only once when you're done.

## Submit a pull request to the main repository

When you're finished with your work and are ready to have it merged into the central repository, follow these steps:

- In your git console, type `git push origin <new branch name>` at the command prompt. In your local repository, `origin` refers to your GitHub repository that you cloned the local repository from. This command pushes the current state of your new branch, including all commits made in the previous steps, to your GitHub fork
- On the GitHub site, navigate in your fork to the new branch
- Click the **Pull Request** button at the top of the page
- Ensure that the Base branch is `microsoftgraph/microsoft-graph-docs@master` and the Head branch is `<your username>/microsoft-graph-docs@<branch name>`
- Click the **Update Commit Range** button
- Give your pull request a Title, and describe all the changes you're making. If your bug fixes a UserVoice item or GitHub issue, be sure to reference that issue in the description
- Submit the pull request

After your PR is submitted:

- One of the site administrators will now process your pull request
- Your pull request will surface on the `microsoftgraph/microsoft-graph-docs` site under Issues
- When the pull request is accepted, the issue will be resolved

## Create a new branch after merge

After a branch is successfully merged (i.e., your pull request is accepted), don't continue working in the local branch that was successfully merged upstream.
This can lead to merge conflicts if you submit another pull request. Instead, if you want to do another update, create a new local branch from the successfully merged upstream branch.

For example, suppose your local branch X was successfully merged into the `microsoftgraph/microsoft-graph-docs` master branch and you want to make additional updates to the content that was merged. Create a new local branch, X2, from the `microsoftgraph/microsoft-graph-docs` master branch.

To do this, open your git console and enter the following commands:

```batch
cd microsoft-graph-docs
git pull upstream master:X2
git push origin X2
```

You now have local copies (in a new local branch) of the work that you submitted in branch X.
The X2 branch also contains all the work other writers have merged, so if your work depends on others' work (e.g., shared images), it is available in the new branch.
You can verify that your previous work (and others' work) is in the branch by checking out the new branch...

```batch
git checkout X2
```

...and verifying the content. The `checkout` command updates the files in `C:\Users\<yourusername>\microsoft-graph-docs` to the current state of the X2 branch.
Once you check out the new branch, you can make updates to the content and commit them as usual.
However, to avoid working in the merged branch (X) by mistake, it's best to delete it (see the following **Delete a branch** section).

## Delete a branch

Once your changes are successfully merged into the central repository, you can delete the branch you used because you no longer need it. Any additional work requires a new branch.

To delete your branch follow these steps:

- In your git console type `git checkout master` at the command prompt. This ensures that you aren't in the branch to be deleted (which isn't allowed)
- Next, type `git branch -d <branch name>` at the command prompt. This deletes the branch on your local machine only if it has been successfully merged to the upstream repository. (You can override this behavior with the `D` flag, but first be sure you want to do this)
- Finally, type `git push origin :<branch name>` at the command prompt (a space before the colon and no space after it). This will delete the branch on your github fork

Congratulations, you have successfully contributed to our docs.
