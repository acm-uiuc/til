---
title: Introduction to Git
category: git
---
### Creating a New Repository
1. Create or navigate to the directory you want under version control
2. Run ```git init``` to start tracking changes

### Checking out a Remote Repository
1. Navigate to the location you want to clone the repo into
2. Run ```git clone [username@host:repo]``` to clone the repo
3. Run ```cd [repo]``` to access the repo

### Adding and Committing Files
1. Make any changes to ```[filename]```
2. Run ```git add [filename]``` to add the changes to the index
3. Alternatively, run ```git add *``` to add all changed files to the index
4. To commit these changes to the head, run ```git commit -m '[message]'```

### Push Commits to Remote Repository
1. To send the changes from the head, run ```git push origin [branch name]```
2. If you did not clone an existing remote repo and want to push to one, add it by running ```git remote add origin [server]```

### Branching
1. Create a new branch for features or bug fixes by running ```git checkout -b [branch name]```
2. Switch branches by running ```git checkout [branch name]```
3. Delete branch by running ```git checkout -d [branch name]```
4. Make a branch available to others on a remote server by running ```git push origin [branch name]```

### Update and Merge
1. Update your local repo by running ```git pull```
2. Merge another branch into your current branch by running ```git merge [branch name]```
