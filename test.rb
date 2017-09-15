require "rubygems"
require "bundler/setup"
require "oj"

data = {
  "foo" => "bar",
  "spam" => "ham"
}

puts Oj.dump(data)
