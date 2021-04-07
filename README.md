lazy-git
========

Script for automating the most common git tasks.
If you are lazy, this may be for you :)

Install
-------

Clone the repo

    git clone https://github.com/onovaes/lazy-git.git

Make a alias in .profile (MAC) or .bash_aliases (LINUX) file (With corret directory :D)

    alias g='~/Documents/Sites/lazy-git/g' 

Usage
-----


**Commit and push to origin**

Commands you want:

- `git status` (if no changes, stop here)
- `git add --all`
- `git commit -m "...."` (ask for message)
- `git push`

With LazyGit:

```
g send
```

`g send` is interactive, it shows you the changes and prompts for a message.


**Check git status**

Commands you want:

- `git status`

With LazyGit:

```
g status
```

**Pull from origin**

Commands you want:
- ` git pull`

With LazyGit:

```
g pull
```

**Last commit log**

Commands you want:
- ` git log -1`

With LazyGit:

```
g log
```

