## pushpop-file

A Pushpop plugin for reading file contents.

### Installation

Add the `pushpop-file` gem to your Gemfile:

``` ruby
gem 'pushpop-file'
```

or install it directly:

``` shell
$ gem install pushpop-file
```

### Usage

Here's a simple job that reads a `usernames.txt` file and prints each line:

``` ruby
require 'pushpop-file'

job do

  # emit the file contents as an array of lines
  file do
    path 'usernames.txt'
  end

  # print each line to show the output
  step 'print each line' do |last_response|
    last_response.each do |line|
      puts line
    end
  end

end
```

### Contributing

Code and documentation issues and pull requests are welcome. Help us make this template as
useful as possible!
