a = [1,2,3,4,5]
c = []

a.each do |i|
	b = (i * 2)
	c << b
end


puts c




a.each do |i|
	if i < 10
		b << i
	end
end



a = [6, 12, 18, 24, 32]
b = []




b = a.select{|i|
	i > 10
}


puts b





a = [6, 12, 18, 24, 32]
b = 0



a.each do |i|
	b = b + i
end

puts b







f = File.open("data.html", "r")
data = f.read

new_data = data.split
new_data.each do |p|
	r = /href="(.*)"/.match p
	puts r.captures[0] if r
end

#puts /<a href.*>/.match data2

#puts data.scan(/<a href.*>/)





require 'open-uri'
web_contents  = open('http://www.en1mes.com') {|f| f.read }

lines = web_contents.split
lines.each do |p|
  r = /style="(.*)"/.match p
  puts r.captures[0] if r
end





require 'open-uri'
web_contents  = open('http://www.en1mes.com') {|f| f.read }

lines = web_contents.split("\n")
lines.each_with_index do |p, i|
  r = /style="(.*)"/.match p
  puts "linea #{i} #{r.captures[0]}" if r
end







require 'open-uri'

pages = ['http://www.en1mes.com','http://www.desafiolatam.com', 'http://blog.en1mes.com']

pages.each do |page|
  web_contents  = open(page) {|f| f.read }
  lines = web_contents.split("\n")
  lines.each_with_index do |p, i|
    r = /style="(.*)"/.match p
    puts "linea #{i} #{r.captures[0]}" if r
  end

end





require 'open-uri'

f = open('http://www.en1mes.com'){|f| f.read}

new_data = f.split
new_data.each do |p|
	t = /<title>(.*)/.match p
	h1 = /<h1>(.*)/.match p
	puts t.captures[0] if t
	puts h1.captures[0] if h1
end







require 'open-uri'

f = open('https://www.en1mes.com'){|f| f.read}

new_data = f.split
new_data.each do |p|
	t = /title="(.*)"/.match p
	h1 = /h1="(.*)"/.match p
	puts t.captures[0] if t
	puts h1.captures[0] if h1
end