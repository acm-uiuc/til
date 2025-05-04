---
title: Introduction to Git
category: git
---
## Version Control
When you write a word document, you tend to want to keep old copies around just in case you want to grab a snipit or go back. You also may be working with other people on the document, so you and your partner will both have a copy and at the end will try to merge the two documents into a single one. 

Writing code (especially in groups) is the same way. People have developed pieces of software to manage code changes. This is called Version Control. 

For example:

Ann has some changes to file called `x.py` that she wants to share with other developers on a project. So she puts the file on a server for others to get. 

Bob wants to work on a new function in `x.py` called `my_function` so he downloads Ann's `x.py` and starts writing.
At the same time, Ann wants to add a function called `my_function` in `x.py` as well. 
Ann gets done first and uploads the new version of `x.py`. 
But now Bob wants to submit his `x.py`, however now there are two different `my_function`s
So Ann and Bob now need to agree which version to use

What version control allows you to do is to resolve these sort of issues easily. 

Some common version control systems include:

- Git
- Mercuiral 
- SVN 
- CVS
- Perforce

## What is Git
Git is a distributed version control system. So unlike what is described above where Ann uploads her new changes to a server which keeps a master copy of all the code (this is how SVN works), everyone maintains their own master copy and developers grab changes from other developers directly. 

For example:

Ann has some changes to file called `x.py`. She `"commits"` her new code to her local master copy and keeps working.

Bob wants to work on a new function in `x.py` called `my_function` so he `"pulls"` Ann's latests master copy which includes her `x.py` changes directly and starts writing.

At the same time, Ann wants to add a function called `my_function` in `x.py` as well. 
Ann gets done first and `"commits"` the new version of `x.py` to her local master copy. 

Bob gets done `"commits"` the his version of `x.py` to his local master copy. 

Now Bob and Ann decide they want to use Bob's `my_function`. All that needs to be done is for Ann to `"pull"` Bobs master copy.

Sometimes it is convenint to have a place to discuss code changes and do planning, and this is what Git Hosting Services like Github and Gitlab are. The nice thing about git is you can also `"push"` your changes to another developer, so many groups will `"push"` their changes to github to get feedback.

### Creating a New Repository
A project in git is called a repository and it looks like a simple folder at first glance. All the code for a project should be in the repository
1. Create or navigate to the directory you want under version control (e.g. `mkdir groot-git-service`)
2. Run ```git init``` to start tracking changes

What will happen is git will create a folder .git to hold old copies (you can see this folder with `ls -a` but you can just ignore it for the most part)

### Checking out a Remote Repository
What happens if you are not the creator of the project and you download everything to start developing?

This is called `"cloning"` in git.

All that is required to get a copy of the project is to know where to copy it from. Usually, if you host your code on a site like GitHub, your project will have a URL (just like any other website e.g. https://github.com/acm-uiuc/arbor). 

To get a copy of arbor you can just run:

```
git clone https://github.com/acm-uiuc/arbor.git
```

URLs are one way to get your project, what ACM recommends is to use ssh, where you will login to a remote server and copy the code that way. 

_This requires to have ssh access to the remote server. Instructions on how to do this for GitHub are here: //TODO insert_

Then you can just tell Git how to login:

```
git clone [username@host:repo]

e.g: git clone git@github.com:acm-uiuc/arbor.git
```

After this you should see a directory where your project files will be. 

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
