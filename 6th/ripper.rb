# https://docs.ruby-lang.org/ja/latest/method/Ripper/s/sexp.html
# https://ud-ike.hatenablog.com/entry/2022/05/13/142902

require 'ripper'

code = <<STR
case p(42)
when 0
  p(0)
when 1
  p(1)
else
  p(2)
end
STR
puts code
pp Ripper.sexp(code)