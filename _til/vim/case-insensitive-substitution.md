---
title: Case-Insensitive Substitution
category: vim
---

Use the `i` `s-flag` to perform a case-insensitive substitution (search and
replace).

For instance, `:%s/blog/article/gi` will turn

```
blog bLOg BLOG Blog
```

into

```
article article article article
```

See `:h s_flags` for more details.
