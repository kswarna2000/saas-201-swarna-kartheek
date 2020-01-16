while true
  puts "num1->"
  a = gets.chomp.to_f
  puts "num2->"
  b = gets.chomp.to_f
  puts "operator->\n + \t - \t * \t / \tc(to cancel):"
  op = gets.chomp

  case op
  when "+"
    puts "a + b=#{a + b}"
  when "-"
    puts "a - b=#{a - b}"
  when "*"
    puts "a * b=#{a * b}"
  when "/"
    puts "a / b=#{a / b}"
  else
    puts "Wrong otion!!"
  end
  puts "Enter c to cancel or press enter to continue->"
  op = gets.chomp
  if op == "c"
    puts "exiting..."
    break
  end
end
