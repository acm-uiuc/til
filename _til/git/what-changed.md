---
title: What Changed?
category: git
---
If you want to know what has changed at each commit in your Git history,
then just ask `git whatchanged`.

```bash
$ git whatchanged

commit e961c93a0ef1f59d56cdf740fd400470bd47d504
Author: Naren <naren@narendasan.com>
Date:   Wed Apr 12 15:30:17 2017 -0700

    a attribution

:100644 100644 bb1ad6c... 0bd0aa8... M  index.md

commit ae3683134c485a9ad42268179047a1bf71b50b53
Author: Naren <naren@narendasan.com>
Date:   Wed Apr 12 15:28:26 2017 -0700

    a Jekyll site

:000000 100644 0000000... c442299... A  .gitignore
:000000 100644 0000000... aa65c1c... A  404.md
:000000 100644 0000000... 1090241... A  CONTRIBUTING.md
...
```

This is an old command that is mostly equivalent to `git-log`. In fact, the
man page for `git-whatchanged` says:

> New users are encouraged to use git-log(1) instead.

The difference is that `git-whatchanged` shows you the changed files in
their raw format which can be useful if you know what you are looking for.

See `man git-whatchanged` for more details.
