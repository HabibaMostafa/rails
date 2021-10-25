require "./A1_Classes.rb"

p1 = Player.new("Hiro")

h1 = Hand.new
h1.store_all [Die.new(6, :white), Die.new(10, :black), Coin.new(0.05), Coin.new(2)]

c1 = Coin.new(0.1).flip
d1 = Die.new(6, :white).roll
c2 = Coin.new(0.05).flip
d2 = Die.new(5, :blue).roll
h1.store_all [c1, d1, c2, d2]

h2 = h1.duplicate

p1.move_all h2
p1.load({ item:  :coin })
th1 = p1.throw
p1.load({ item:  :coin })
th2 = p1.throw
p1.load({ item:  :die })
th3 = p1.throw

th1.results
th2.results
th3.results
th1.sum
th2.sum
th3.sum

p1.sum
p1.sum.sum
p1.results
p1.results.sum
