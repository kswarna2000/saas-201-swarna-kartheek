require "set"
array = []
mails = Set.new
while 1
  puts "1. Add mail id 2. display all 3. display only edu mail ids 4. search 5. delete mail id by value 6. display unique domains of all mail ids 7. count mail ids in given domain 8. exit"
  op = gets.chomp
  case op
  when "1"
    puts "Enter the mail is to be added:"
    mail = gets.chomp
    pos = mail.index("@")
    mails.add(mail[pos + 1..-1])
    array.push mail
  when "2"
    i = 0
    array.each do |s|
      puts "#{i + 1}.#{s}"
      i = i + 1
    end
  when "3"
    puts "THE EDU MAILS ARE:\n\n"
    array.each do |s|
      pos = s.index(".")
      str = s[pos + 1..-1]
      if str == "edu"
        puts "#{s}"
      end
      #puts "#{str}"
    end
  when "4"
    puts "Enter the email to be searched:"
    mail = gets.chomp
    array.each do |s|
      if s.include?(mail)
        puts "#{s}"
      end
    end
  when "5"
    i = 0
    puts "Enter the email to be deleted:"
    mail = gets.chomp
    array.each do |s|
      if s == mail
        pos = i
      end
      i = i + 1
    end
    puts "The email #{array[pos]} is deleted...."
    array.delete_at(pos)
  when "6"
    ma = mails.to_a
    mails.each do |m|
      puts "#{m}"
    end
  when "7"
    puts "Enter the domain:"
    domain = gets.chomp
    array.each do |s|
      pos = s.index("@")
      if s[pos + 1..-1] == domain
        puts "#{s}"
      end
    end
  when "8"
    puts "exiting...."
    break
  else
    puts "Wrong option...."
  end
end
