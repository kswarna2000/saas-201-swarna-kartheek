puts "Number:"
a=gets.chomp.to_i
fact=1
for i in 1..a
    fact=fact*i
end
puts "The factorial of #{a} is #{fact}"
a=[10,20,30,40]
sum=0
for i in a
   sum+=i
end
puts "Sum of the numbers is #{sum}"
