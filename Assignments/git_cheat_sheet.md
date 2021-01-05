# Git Cheat Sheet #

## Git-Github Configuration ##
- From terminal, enter the following commands
	- `git config --global user.name <github username>`
	- `git config --global user.email <email used to set up gmail account>`
- On personal devices it is helpful to set up ssh keys to communicate with github rather than the default HTTPS protocol. To do so see [here](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh)

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
