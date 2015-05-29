'a = [0,1,2,3]
a.each_with_index{
	|value, index| puts "#{index}: #{value + 1}"
}'


a = [1,1,2,3,4,4,5,6]
b = {}

a.each do |i|
	if.hash[i].nil?
	else
		hash[i] = hash[i] + 1
	end
end
puts hash




a = [0,1,1,2,4,4,5]
dict = {}
a.sort!
b = a.uniq
b.each do |i|
	dict[i] = a.count(i)
end
puts dict