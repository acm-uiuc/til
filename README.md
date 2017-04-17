# TIL

> Today I Learned

[![Build Status](https://travis-ci.org/acm-uiuc/til.svg?branch=master)](https://travis-ci.org/acm-uiuc/til)

This is ACM@UIUC's collection of lessons learned and results of hours of google searching. 


## About
This repo is based on 
[jbranchaud/til](https://github.com/jbranchaud/til)
[thoughtbot/til](https://github.com/thoughtbot/til)
and many of the intial TILs are from those repos. 

## Run a Local Copy

To install dependencies install Ruby (v2.3.3) using you prefered method (checkout [Install Ruby with rbenv](_til/ruby/install-ruby-with-rbenv.md) if you want a guide)

Then run 
```sh
bundle install 
```
to install dependencies.

If you want to use the built in spell check functionality then you also need to install GNU Aspell
```sh
#[macOS]
brew install aspell 

#[Ubuntu]
sudo apt install aspell
```

Run with 
```sh
bundle exec jekyll serve --baseurl ''
```

## Contributing
Contributions are welcome, checkout [CONTRIBUTING.md](CONTRIBUTING.md) but the basics are keep it short and file a Pull Request.
All pull requests must pass the tests (which will be checked automatically with TravisCI)


## License

&copy; 2017 ACM@UIUC

This repository is distributed under the Creative Commons Attribution License. See `LICENSE` for
details.
