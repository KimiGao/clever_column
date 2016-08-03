# CleverColumn

枚举指定字段的值，并对具体值增加描述。

## Installation

Add this line to your application's Gemfile:

    gem 'clever_column'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clever_column

## Usage

Define

``` ruby
class Book < ActiveRecord::Base
  clever_column :star, config: {
    one:    { value: 1, desc: 'one star' },
    two:    { value: 2, desc: 'two star' },
    three:  { value: 3, desc: 'three star' },
    four:   { value: 4, desc: 'four star' },
    five:   { value: 5, desc: 'five star' }
  }
end
```

Call

``` ruby
book = Book.create(title: 'Working With Unix Processes', star: 3)

book.star_config => { key: :three, value: 3, desc: 'three star' }
book.star_desc   => 'three star'
book.star_name   => :three
book.star_two!   => set book.star to 2

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
