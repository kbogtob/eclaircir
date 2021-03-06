# Eclaircir
Eclaircir is a french synonym for 'Clarify' and seemed relevant as a name for the gem.

This gem aims to be a Clarifai APIv2 wrapper that is complete, tested and covered.

[![Build Status](https://travis-ci.org/kbogtob/eclaircir.svg?branch=master)](https://travis-ci.org/kbogtob/eclaircir)
[![Coverage Status](https://coveralls.io/repos/github/kbogtob/eclaircir/badge.svg?branch=master)](https://coveralls.io/github/kbogtob/eclaircir?branch=master)

## Install

```sh
gem install eclaircir
```

## Requirements
* Ruby 2.0.0 or higher
* HTTParty
* Virtus

## Examples

...

## Contributing
* Fork the project
* Run `bundle install --path .bundle`
* Run `bundle exec rake spec`
* Add tests for your feature (the TDD way!)
* Implement your feature
* Run tests again
* Commit (excluding the `Rakefile` or the `Version.rb` if you want to be merged)
* Send a pull request

## How can I help?

The Roadmap for V1 is to provide a completely usable API wrapper to do common tasks on Clarifai.

Here's an extract from the TODO:

# V1.0
- [x] Authentication
  - [x] API Key Management
  - [x] Authorization
- [x] Status Management
  - [x] Modelization: Response
  - [x] Modelization: Status
  - [x] Modelization: Output
  - [x] General Errors
  - [x] Specific Errors
  - [ ] Fully manage statuses using the statuses cheatsheet
  - [x] Response Parsing
- [x] Predict
  - [x] Modelization: Input
  - [x] Modelization: Data
  - [x] Modelization: Concept
  - [x] Modelization: Model
  - [x] Support URL Requests for Images
  - [x] Response Parsing
  - [ ] Support base 64 Requests for Images
  - [ ] Support of multiple inputs (max 128)
  - [ ] Modelization: Frame
  - [ ] Video support
- [ ] Search
  - [ ] Add Images to search index
  - [ ] Search by concept
  - [ ] Search by image
- [ ] Train
  - [ ] Add image with concepts
  - [ ] Model Creation
  - [ ] Model Training
