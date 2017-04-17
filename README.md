# TIL

> Today I Learned

[![Build Status](https://travis-ci.org/acm-uiuc/til.svg?branch=master)](https://travis-ci.org/acm-uiuc/til)

This is ACM@UIUC's collection of lessons learned and results of hours of google searching. 


## About
This repo is based on 
[jbranchaud/til](https://github.com/jbranchaud/til)
[thoughtbot/til](https://github.com/thoughtbot/til)
and many of the intial TILs are from those repos. 

## Contributing
Contributions are welcome, checkout [CONTRIBUTING.md](CONTRIBUTING.md) but the basics are keep it short and file a Pull Request.

You can quickly html generation with 
```
rake html
```

You can quickly spell check with 
```
rake proof
```
Depending on your platform, words will be flagged that are correctly spelled (our baseline will be dictionary-common on Ubuntu 12.04)
So if you are 100% sure a word is correctly spelled then add it in all caps to ```mdspell.config``` so it will not be flagged.

To run the full test suite run 
```
rake test
```

All pull requests must pass the tests (which will be checked automatically with TravisCI)


## License

&copy; 2017 ACM@UIUC

This repository is distributed under the Creative Commons Attribution License. See `LICENSE` for
details.
