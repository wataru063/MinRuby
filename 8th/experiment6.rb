require "minruby"

pp(minruby_parse("
def add(x,y)
  x + y
end
add(1,100)
"))
