# Substitute

[![Build Status](https://travis-ci.org/errm/substitute.svg?branch=master)](https://travis-ci.org/errm/substitute)
[![Gem Version](https://badge.fury.io/rb/substitute.svg)](http://badge.fury.io/rb/substitute)
[![Code Climate](https://codeclimate.com/github/errm/substitute/badges/gpa.svg)](https://codeclimate.com/github/errm/substitute)
[![Test Coverage](https://codeclimate.com/github/errm/substitute/badges/coverage.svg)](https://codeclimate.com/github/errm/substitute)

Converts from Adobe Encore Text Scripts to [WebVTT](http://dev.w3.org/html5/webvtt/) format

## Installation

Install it with:

    $ gem install substitute

## Usage

Substitute reads from standard in and writes to standard out.

For example:

```
$ substitute < example/subtitles.txt
WEBVTT

2
00:02:47.080 --> 00:02:49.360
Open the pod bay doors, please, HAL.
Open the pod bay doors, please, HAL.
Hello, HAL. Do you read me?
Hello, HAL. Do you read me?
Do you read me, HAL?

3
00:02:49.840 --> 00:02:52.320
Affirmative, Dave. I read you.

4
00:03:17.480 --> 00:03:19.200
Open the pod bay doors, HAL.

5
00:03:19.600 --> 00:03:21.000
I'm sorry, Dave. I'm afraid I can't do that.

6
00:03:23.960 --> 00:03:25.240
What's the problem?

7
00:05:09.400 --> 00:05:10.400
I think you know what the problem is just as well as I do.

8
00:05:12.880 --> 00:05:13.880
What are you talking about, HAL? 
```

Or write to a file
   
`$ substitute < subtitles.txt > subtitles.vtt`

## Development

After checking out the repo, run `bundle install` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/substitute/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
