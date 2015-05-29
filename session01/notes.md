a = [9,1,2,3,1,9,4,2,4,1,8]
hash = {} 
a.each do |i|
	if hash[i].nil?
    hash[i] = 1
  else
    hash[i] = hash[i] +1
  end
end
puts hash

a = [9,1,2,3,1,9,4,2,4,1,8]
dict = {}
b = a.uniq
b.each do |i|
 	dict[i] = a.count(i)
end 
puts dict