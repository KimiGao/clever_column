# encoding: utf-8
class Book < ActiveRecord::Base

  clever_column :star, {
    one:    { value: 1, desc: '一星' },
    two:    { value: 2, desc: '二星' },
    three:  { value: 3, desc: '三星' },
    four:   { value: 4, desc: '四星' },
    five:   { value: 5, desc: '五星' }
  }
end
