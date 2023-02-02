require "minruby"

pp(minruby_parse("
ary = [1]
ary[0]

hsh = { 1 => 10, 2 => 20, 3 => 30 }
hsh[1] = 100
"))
