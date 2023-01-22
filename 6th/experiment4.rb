require "minruby"
# pp(minruby_parse("
# if 0 == 0
#   p(42)
# else
#   p(43)
# end
# "))
#
# pp(minruby_parse("
# i = 0
# while i < 10
#   p(i)
#   i = i + 1
# end
# "))

pp(minruby_parse("
case p(42)
when 0
  p(0)
when 1
  p(1)
else
  p(2)
end
"))

# pp(minruby_parse("
# i = 10
# begin
#   p(i)
#   i = i - 1
# end while i > 0
# "))