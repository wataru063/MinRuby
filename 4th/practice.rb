require "minruby"

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    evaluate(tree[1]) + evaluate(tree[2])
  when "-"
    evaluate(tree[1]) - evaluate(tree[2])
  when "*"
    evaluate(tree[1]) * evaluate(tree[2])
  when "/"
    evaluate(tree[1]) / evaluate(tree[2])
  when "%"
    evaluate(tree[1]) % evaluate(tree[2])
  when "**"
    evaluate(tree[1]) ** evaluate(tree[2])
  when "<"
    evaluate(tree[1]) < evaluate(tree[2])
  when ">"
    evaluate(tree[1]) > evaluate(tree[2])
  when "=="
    evaluate(tree[1]) == evaluate(tree[2])
  end
end

def max(tree)
  tree.flatten.select{|e| e.is_a?(Integer)}.max
end

str = gets

tree = minruby_parse(str)
pp max(tree)
answer = evaluate(tree)
p(answer)
