puts "Enter numbers a and b:"
a=gets.chomp.to_i
b=gets.chomp.to_i
if a>b
  puts "The Number #{a} is greater than number #{b} "
else
  puts "The Number #{b} is greater than number #{a}"
end
puts "Enter another number c:"
c=gets.chomp.to_i
if a>b && a>c
   puts "#{a} is the largest number!!! "
elsif b>a && b>c
   puts "#{b} is the largest number!!!"
else
    puts "#{c} is the largest number!!!"
end

puts "Hii!!!" if a>0

