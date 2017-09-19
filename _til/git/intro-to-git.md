---
title: Introduction to Git
category: git
---
## What is Git
Git is a distributed version control system. Version control is a system used to track changes in a file or a set of files over time. Version control is most commonly used to track code changes on software projects. Git is different than most version control systems as it is distributed, so every user has every change that is ever made. 

### Creating a New Repository
A repository is simply a collection of objects being tracked by git.
1. Create or navigate to the directory you want under version control
2. Run ```git init``` to start tracking changes

### Checking out a Remote Repository
A remote repository is one that is hosted on a server outside of your local machine. Most repositories you will work with are hosted on GitHub or GitLab, and you then access that remote repo on your local machine to make your changes.
1. Navigate to the location you want to clone the repo into
2. Run ```git clone [username@host:repo]``` to clone the repo
3. Run ```cd [repo]``` to access the repo

### Adding and Committing Files
Adding and committing files is the concept of adding and changes made and then commiting them to a git head which can then be pushed up to a remote repo.
1. Make any changes to ```[filename]```
2. Run ```git add [filename]``` to add the changes to the index
3. Alternatively, run ```git add *``` to add all changed files to the index
4. To commit these changes to the head, run ```git commit -m '[message]'```

### Push Commits to Remote Repository
After committing a change, the changes are still only on your local machine, so you need to push the changes up to the remote repository.
* To send the changes from the head, run ```git push origin [branch name]```
* If you did not clone an existing remote repo and want to push to one, add it by running ```git remote add origin [server]```

### Branching
Branching is the idea of splitting off of the master branch to implement a feature or bug fix. The branch will allow you to make your changes at a specific stage of the master branch and then merge it back in at a later time.
* Create a new branch for features or bug fixes by running ```git checkout -b [branch name]```
* Switch branches by running ```git checkout [branch name]```
* Delete branch by running ```git checkout -d [branch name]```
* Make a branch available to others on a remote server by running ```git push origin [branch name]```

### Update and Merge
Merging is the concept of bringing together sets of changes. Git has the ability to automatically merge if there are no conflicts, however if there is a conflict you will have to manually decide which changes to keep, or amend the conflicting files. 
* Update your local repo by running ```git pull```
* Merge another branch into your current branch by running ```git merge [branch name]```

### Stashing
If you aren't quite ready to commit changes or need to switch branches without merging, git stash becomes useful.
* Run ```git stash``` to stash away changes
* Run ```git stash pop``` to re-apply stashed changes and clear the stash
* Run ```git stash apply``` to re-apply changes and keep them in the stash
