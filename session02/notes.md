name = "Mario"


def name.add_title
	return "super #{self}"
end

puts name.add_title







class String
	def add_prefix(prefix)
		return "#{prefix} #{self}"
	end
end

name = "Mario"
a = "Hola"

puts name.add_prefix(a)
puts a.add_prefix("super")






class Complejo
	def initialize(a,b)
		@a = a
		@b = b
	end


	def get_a()
		return @a
	end

	def set_a(a)
		@a = a
	end

	def to_s
		return "#{@a} + #{@b}i"
	end
end

a = Complejo.new(6,1)

puts a.get_a
puts a.to_s











def a()
		return @a
	end
	def a=(a)
		@a = a
	end















class Complejo
	attr_accessor :a
	attr_accessor :b

	def initialize(a, b)
		@a = a
		@b = b
	end

	def +(complejo)
		return Complejo.new(@a + complejo.a, @b +complejo.b)
	end

	def to_s
		return "#{@a} + #{@b}i"
	end
end

puts x = Complejo.new(1,2)
puts y = Complejo.new(2,4)

puts x + y