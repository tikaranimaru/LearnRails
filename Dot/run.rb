#
=begin
print "Hello world"
puts "Hello put"
p "hello world p"

# 変数
# 英小文字 or _開始
msg = "hello world"
puts msg

#　定数
# 英大文字
VERSION = 1.1
puts VERSION

VERSION = 1.3
puts VERSION

# 数値オブジェクト
# p 4.8.class
# p 4.8.methods

p 10 + 3
p 10 * 3
p 20 - 39
p 10 % 3
p 10.0 / 3

p Retinal(2, 5) + Retinal(3, 5)

p 3/4r + 3/4r


# 文字列
#puts "hello\nss world"

puts "hello #{3000 + 10 - 20}"
puts 'hello #{3000 + 10 - 20}'




name = "yamaguchi"
puts "hello #{name}"

name = "yamaguchi"
puts name.upcase
puts name
puts name.upcase!
puts name
# 真偽値
name = "yamaguchi"
p name.empty?
p name.include?("g")

# 配列
colors = ["red", "blue", "yellow"]
p colors[0]
p colors[-1]
p colors[0..2]
p colors[0...2]
p colors[4]

colors = ["red", "blue", "yellow"]
colors[0] = "pink"
colors[1..2] = ["white", "black"]
colors.push("gold")
colors << "silver"

p colors.size
p colors.sort
p colors


# ハッシュオブジェクト
#scores = {"taguchi" => 200, "rikimaru" => 400}
#scores = {:taguchi => 200, :rikimaru => 400}
scores = {taguchi: 200, rikimaru: 400}

p scores[:taguchi]
scores[:rikimaru] = 10000
p scores

p scores.size
p scores.keys
p scores.values
p scores.has_key?(:rikimaru)


# 変換
x = 50
y = "3"

p y.to_i
p y.to_f
p x + y.to_i

scores = {taguchi: 200, rikimaru: 400}
p scores.to_a.to_h

# %記法
puts "hello"
puts "he\'llo"


p %Q(he`llo)
p %(he`llo)
p %q(hel`lo)

p %W(red, blue)

p "name: %s" % "taguchi"
p "name: %10s" % "taguchi"
p "name: %-10s" % "taguchi"

p "id: %05d, rate:%10.2f" % [10, 20]


score = gets.to_i
if score > 80 then
    puts "great!"
else
  puts "so so ..."
end



puts "great" if score > 80


sgnal = gets.chomp

case sgnal
when "red"
  puts "stop"
when "green" ,"gre"
  puts "まつ"
when "blue"
  puts "すすめ"
else
  puts "なんだ？"
end


i = 0
while i < 10 do
  puts "#{i} Hello"
  i += 1
end

TEN = 10

TEN.times do |i|
  puts "#{i} hello"
end

10.times {|i| puts "#{i} hello"  }

for i in 15..20 do
  p i
end


for color in ["red", "blue"] do
  p color
end


for name, score in {riki:100, maru:200} do
  p "#{name}: #{score}"
end

i = 0
loop do
  p i
  i += 1
end


10.times do |i|
  if i == 7 then
    next
  end
  p i
end


# メソッド
def sayHi(name, age)
  puts "Hi! #{name} #{age}age"
  return "bibi"
end

p sayHi "rikimaru", 12

class User
  # setter getter
  attr_accessor :name
  attr_reader :nameee

  VERSION = 1.1
  @@count = 0
  def initialize(name)
    @@count += 1
    @name = name
  end

  def sayHi
    puts "Hi! #{name}"
  end

  def self.info
    puts "User Class, #{@@count} instance is"
  end
end

tom = User.new("Eikimaru")
tom.name = "yamaguci"
p tom.name
tom.sayHi

bob = User.new("Bob")
tom.sayHi
p User::VERSION
User.info


class User

  def initialize(name)
    @name = name
  end

  def sayHi
    puts "Hi! #{@name}"
  end
end

class AdminUser < User
  def sayHello
    puts "hello #{@name}"
  end

  def sayHi
    puts "Hi!!! #{@name}"
  end
end

tom = AdminUser.new("Eikimaru")
tom.sayHi
tom.sayHello


class User
  def initialize(name)
    @name = name
  end

  def sayHi
    puts "hi"
    sayPri
  end
  private
    def sayPri
      puts "private"
    end

end

class AdminUser < User
  def sayHello
    puts "hello #{@name}"
  end

  def sayPri
    puts "AdminUser pri"
  end
end

tom = AdminUser.new("Eikimaru")
tom.sayPri


# module
# - 名前空間

module Movie
  def self.encode
    puts "encoding..."
  end

  def self.export
    puts "expotting..."
  end
end

Movie.encode
Movie.export

module Debug
  def info
    puts "#{self.class} debug info ..."
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info
=end

# 例外
x = gets.to_i
class MyError < StandardError; end

begin
  if x == 3 then
    raise MyError
  end
  p 100 / x
rescue MyError
  puts "not 3"
rescue => ex
  p ex.message
  p ex.class
ensure
  puts "-----end------"
end











# aaa
