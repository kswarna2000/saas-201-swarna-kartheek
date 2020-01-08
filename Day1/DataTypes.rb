a="Welcome to Ruby...."
puts a
puts "Enter a String:"
a=gets
puts "\n You Entered #{a}"
puts '\n Hii I am Single quote!!! You Entered #{a}'
puts "Enter the number:"
a=gets.chomp.to_i
puts "You Entered #{a}"
puts "Enter another number:"
b=gets.chomp.to_i
puts "You Entered #{b}"
puts "The sum of the two numbers is #{a+b}"
puts "Enter a floating point number:"
f=gets.chomp.to_f
puts "The number is #{f*f}"

puts a,b
