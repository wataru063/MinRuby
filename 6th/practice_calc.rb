# i = 10
# begin
#   p(i)
#   i = i - 1
# end while i > 0

case p(42)
when 0
  p(0)
when 1
  p(1)
else
  p("others")
end

# 3. の回答
# minruby_parse された値を見ると、when の値と比較する際に毎回 "func_call" で p が呼び出されるようになっているから
# ["if",
#  ["==", ["func_call", "p", ["lit", 42]], ["lit", 0]],
#  ["func_call", "p", ["lit", 0]],
#  ["if", ["==", ["func_call", "p", ["lit", 42]], ["lit", 1]], ["func_call", "p", ["lit", 1]], ["func_call", "p", ["lit", 2]]]]
# おそらく Ruby では 条件の式は1度しか評価されない