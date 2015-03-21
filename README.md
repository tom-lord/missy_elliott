# MissyElliott

[![Missy Elliott](http://i.imgur.com/P23jxLq.jpg)](https://www.youtube.com/watch?v=zm28EEeyLek)

```ruby
MissyElliott.encode("Example") # => "\xAE\xF0\xBC\xA4\xF8\xE4\xAC"

#"Example"
#--> ["E", "x", "a", "m", "p", "l", "e"]
#--> [69, 120, 97, 109, 112, 108, 101]
#--> ["01000101", "01111000", "01100001", "01101101", "01110000", "01101100", "01100101"]
# Shift yo bits down
#--> ["10001010", "11110000", "11000010", "11011010", "11100000", "11011000", "11001010"]
# Flip it
#--> ["01110101", "00001111", "00111101", "00100101", "00011111", "00100111", "00110101"]
# And reverse it
#--> ["10101110", "11110000", "10111100", "10100100", "11111000", "11100100", "10101100"]
#--> [174, 240, 188, 164, 248, 228, 172]
#--> ["\xAE", "\xF0", "\xBC", "\xA4", "\xF8", "\xE4", "\xAC"]
#--> ["\xAE\xF0\xBC\xA4\xF8\xE4\xAC"]

MissyElliott.decode("\xAE\xF0\xBC\xA4\xF8\xE4\xAC") # => "Example"
```

This gem is a blatant rip-off of [an old XKCD comic](http://xkcd.com/153/):

![XKCD Comic](http://imgs.xkcd.com/comics/cryptography.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'missy_elliott'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install missy_elliott

## Contributing

1. Got a bug fix?
2. You'd better work on it    ( https://github.com/tom-lord/missy_elliott/fork )
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit it                  (`git commit -am 'Add some feature'`)
5. And converse it            (`git push origin my-new-feature`)
