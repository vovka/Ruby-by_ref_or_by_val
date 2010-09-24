class A
  attr_accessor :b
end

class B
  attr_accessor :val
end

a = A.new
b = B.new
b.val = 20
a.b = b
b.val = 25

puts "В Руби \"всё -- объект\". "

puts "-> b.class # => #{b.class}\n-> a.b = b"
if a.b.val == 25
  puts "Поле 'b' объекта 'a' является ссылкой на объект 'b' класса '#{a.b.class}'"
else
  puts "Поле 'b' объекта 'a' является копией объекта 'b' класса '#{a.b.class}'"
end


c = :q
b.val = c
c = :w

puts "-> c.class # => #{c.class}\n-> b.val = c"
if b.val == :w
  puts "Поле 'val' объекта 'b' является ссылкой на объект 'c' класса '#{b.val.class}'"
else
  puts "Поле 'val' объекта 'b' является копией объекта 'c' класса '#{b.val.class}'"
end

puts "\n\e[1;33;40mВ чём разница между объектами класса '#{a.b.class}' и класса '#{b.val.class}'?\e[0m\n\n"
