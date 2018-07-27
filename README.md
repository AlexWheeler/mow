<pre>
                                                 .--.
                                                /-.  \
                                               < ^ `D/
                                                \_  (
                                                  )_/;.
                                              _ __|_, \\
                                            ,(_I_______)\
                                           //`-----\     \
                                          //        \____/\
                                         //         /     /
                                        // _____   /  /\  \
                            .---n-.    //'`     `\/  /  \  \
                       _____|_"_~_|___//         /\  \   \  \
                      / /  \      /  \ `\__...--' _\__\   \_/\
          \\\\\\\\\\\\'-\__/--===-\__/-'`,,,,,,,,(____\,,,(__/,,,,,,,,,,,,,,,
          \\\jgs\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
</pre>

# Mow

A command-line tool for transforming ruby files into one-liners that can be copy and pasted into a ruby repl
or really anywhere.

Useful for running local scripts in a Heroku rails console session, for example.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mow'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mow

## Usage

Print result to STDOUT

`mow ./path/to/file.rb`

Write result to file

`mow ./path/to/input_file.rb ./path_to_output_file.rb`

Copy results

`mow ./path/to/file.rb | pbcopy`

## Contributing

Bug reports and pull requests welcome!

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
