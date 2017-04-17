# Contributing

> Contribution Guide from https://github.com/thoughtbot/til

When you learn something,
add a Markdown file to
this repo explaining it in concise terms.
Place the file in a directory
which best describes
the content of the tip.
Create a new directory if no existing one fits.

Open a pull request for review.

For help submitting, just clicking on the new file icon, putting in the content and following the steps to create a Pull Request should work. A more indepth guide should be comming soon. 


## Writing a good a TIL

TIL's should be a focused and concise piece of knowledge that's interesting and
worth sharing with others.

Here's some guidelines on how to write a great TIL:

* Avoid writing more than 60 lines of content.
* Avoid writing more than 2 examples.
* Avoid going into too much detail.

If you find TIL straying from these guidelines consider narrowing the scope of
your TIL or writing a blog post on the subject.

## Testing
You can quickly html generation with

```
rake html
```

You can quickly spell check with

```
rake proof
```

Depending on your platform, words will be flagged that are correctly spelled (our baseline will be dictionaries-common on Ubuntu 12.04). So if you are 100% sure a word is correctly spelled then add it in all caps to mdspell.config so it will not be flagged.

To run the full test suite run

```
rake test
```

All pull requests must pass the tests (which will be checked automatically with TravisCI)
