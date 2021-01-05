# Git Cheat Sheet #

## Git-Github Configuration ##
- From terminal, enter the following commands
	- `git config --global user.name <github username>`
	- `git config --global user.email <email used to set up gmail account>`
- On personal devices it is helpful to set up ssh keys to communicate with github rather than the default HTTPS protocol. To do so see [here.](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh)

## Setting up a Repository ##
- Set up a repository from an existing project/folder stored locally
	- In terminal, navigate to the project/folder and run:
		- `git init`
		- `git add *`
		- `git commit -m "First Commit"`
	- Only run the second two commands if you would like to initialize the repository with all current files saved 
	- To link local repository to an empty remote github repository, run:
		- `git remote add origin <link to remote repository>`
		- `git push --set-upstream origin master`
- Clone an existing repository from github to a local machine
	- In a browser, navigate to the repository you would like to clone and click on the green code download option
	- If you have set up SSH, copy the SSH link to clipboard. Otherwise copy the HTTPS link.
	- Run:
		- `git clone <link copied from github>`
	- The repository should now be copied to the local device with the cloned repository set as the upstream repository.


## Adding, Committing, and Pushing ##
- There is a 3-part process to save local changes to a remote github repository
	- `git add <file>`
		- Running the preceding command on the terminal will tell git to locally take note of recent changes to the specified file. This is known as staging.
		- If the specified file had not yet been tracked by git, then running this command will make git set up version tracking for that file.
	- `git commit`
		- Running this command in terminal will tell git to add all changes staged with `git add` to the local version control history (more specifically, file version tree). 
	- `git push`
		- Running this command in terminal tells git to "push" the current version of the project to github. This will update the remote repository to match the local repository.
		- If a default upstream branch is not set up, this command will fail with git complaining that no remote repository has been specified.

## View Repository History ##
- To view repository history, run `git log`
- To view history of a single file, run `git log <filename>`
- To see difference between 2 commits:
	- `git diff HEAD~2`
	- `git diff HEAD~2 <filename>`
	- `git diff <commitid>`
- To view a file version from a past commit, run `git checkout commitid filename`
- To revert unstaged changes, run `git checkout --<filename>`
- To undo a commit, run `git revert <commitid>`

## Branching ##
- Often, you want to try an experimental feature on a program, or otherwise want to debug a project which has a lot of development and completed features.
- Other times, you may be collaborating others on a project, with each member responsible for different features of a project.
- In these cases it is inconvenient to have a single master remote repository where any change could break the entire project.
- The solution is Branches, where different versions of the same github repository exist, which can be safely merged together at a later time.
- It is possible to create a new branch on Github using a browser, but creating it locally is much easier:
	- Run `git checkout -b [name of new branch]`
	- Run `git push origin [name of new branch]`
	- Running these commands will create a new branch on your local machine, then push this new branch to github.
	- The new branch will contain a copy of the master branch, but subsequent changes in this new branch will be pushed to the new branch rather than master.
- Switching Branches:
	- To switch branches, use `git checkout <branch you want to switch to>`
- Merging Branches:
	- To merge branches on github first [create a pull request](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
	- Next, [merge the pull request](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/merging-a-pull-request).
