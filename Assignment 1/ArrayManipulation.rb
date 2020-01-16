arr = []
n = 0
while true
  puts "Enter \n1. Add value \n2. minimum \n3. maximum \n4.sum \n5.average \n6. search \n7.display \n8.delete value by index \n9. delete value \n10. exit:"
  op = gets.chomp

  case op
  when "1"
    puts "Enter the element to be added to the array:"
    a = gets.chomp.to_f
    puts "Enter e to add element at the end \n b to add the element at the beginning:"
    ope = gets.chomp
    if ope == "e"
      puts "adding the element #{a} at the end....."
      arr.push a
    elsif ope == "b"
      puts "adding element #{a} at the beginning...."
      arr.unshif(a)
    else
      puts "Invalid option...\nadding the element #{a} at the end....."
      arr.push a
    end
  when "2"
    puts "The minimum value in the array is:#{arr.min()}"
  when "3"
    puts "The maximum value in the array is:#{arr.max()}"
  when "4"
    sum = 0
    arr.each do |a|
      sum = sum + a
    end
    puts "The Sum Is:#{sum}"
  when "5"
    sum = 0
    arr.each do |a|
      sum = sum + a
    end
    puts "The Average Is:#{sum / arr.length}"
  when "6"
    puts "Enter the element to be searched for:"
    s = gets.chomp.to_i
    if arr.include? s
      puts "The element #{s} is present in the array!!"
    else
      puts "The element #{s} is not present in the array!!"
    end
  when "7"
    if arr.length == 0
      puts "The array is empty...."
    else
      puts "The elements of the array are:"
      puts arr
    end
  when "8"
    puts "Enter the index of the element to be deleted:"
    i = gets.chomp.to_i
    if i > (arr.length - 1)
      puts "Index is out of bounds...."
    else
      puts "The element at index #{i}:#{arr[i]}is deleted...}"
      arr.delete(i)
    end
  when "9"
    if arr.length == 0
      puts "The array is empty....."
    else
      puts "The element at the end #{arr.pop} is deleted...."
    end
  when "9"
  when "10"
    puts "exiting..."
    break
  else
    puts "Wrong option..."
  end
end
