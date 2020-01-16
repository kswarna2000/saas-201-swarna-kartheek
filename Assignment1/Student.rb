require "set"

class Student
  attr_accessor :rollno, :name, :state, :branch, :cgpa

  def initialize()
  end
end

stat = Set.new()
branc = Set.new()
arr = []
while 1
  puts "Enter 1. Add new student 2. display all students 3. display student by branch 4. display  students by state 5. Search students by roll number 6. search by part of the name, 7.delete by roll number 8. count and display number of students by state 9. count and display number of students by branch 10. exit:"
  op = gets.chomp
  case op
  when "1"
    student = Student.new
    puts "Enter the student roll no:"
    student.rollno = gets.chomp.to_i
    puts "Enter the student name:"
    student.name = gets.chomp
    puts "Enter the state:"
    student.state = gets.chomp
    puts "Enter the branch:"
    student.branch = gets.chomp
    puts "Enter current cgpa:"
    student.cgpa = gets.chomp.to_f
    stat.add(student.state)
    branc.add(student.branch)
    arr.push student
  when "2"
    i = 0
    if arr.length == 0
      puts "No student record found....."
    end
    arr.each do |stu|
      puts "Student no->#{i + 1}"
      puts "Name:#{stu.name}"
      puts "Register No:#{stu.rollno}"
      puts "State:#{stu.state}"
      puts "Branch:#{stu.branch}"
      puts "CGPA:#{stu.cgpa}"
      i = i + 1
    end
  when "3"
    flag = 0
    bran = branc.to_a
    bran.each do |br|
      puts "THE STUDENTS IN THE BRANCH #{br} ARE \n\n"
      arr.each do |stu|
        if stu.branch == br
          puts "Name:#{stu.name}"
          puts "Register No:#{stu.rollno}"
          puts "State:#{stu.state}"
          puts "Branch:#{stu.branch}"
          puts "CGPA:#{stu.cgpa}"
          flag = 1
        end
      end
    end
    if flag == 0
      puts "No records found..."
    end
  when "4"
    flag = 0
    sta = stat.to_a
    sta.each do |st|
      puts "THE STUDENTS OF THE STATE #{st} ARE:\n\n"
      arr.each do |stu|
        if stu.state == st
          puts "Name:#{stu.name}"
          puts "Register No:#{stu.rollno}"
          puts "State:#{stu.state}"
          puts "Branch:#{stu.branch}"
          puts "CGPA:#{stu.cgpa}"
          flag = 1
        end
      end
    end
    if flag == 0
      puts "No records found...."
    end
  when "5"
    i = 0
    flag = 0
    puts "Enter the roll no:"
    rno = gets.chomp.to_i
    arr.each do |stu|
      if stu.rollno == rno
        puts "Student no->#{i + 1}"
        puts "Name:#{stu.name}"
        puts "Register No:#{stu.rollno}"
        puts "State:#{stu.state}"
        puts "Branch:#{stu.branch}"
        puts "CGPA:#{stu.cgpa}"
        i = i + 1
        flag = 1
      end
    end
    if flag == 0
      puts "Invalid rollno...."
    end
  when "6"
    i = 0
    flag = 0
    puts "Enter the name:"
    na = gets.chomp.to_i
    arr.each do |stu|
      if stu.name == na
        puts "Student no->#{i + 1}"
        puts "Name:#{stu.name}"
        puts "Register No:#{stu.rollno}"
        puts "State:#{stu.state}"
        puts "Branch:#{stu.branch}"
        puts "CGPA:#{stu.cgpa}"
        i = i + 1
        flag = 1
      end
    end
    if flag == 0
      puts "Invalid name...."
    end
  when "7"
    i = 0
    flag = 0
    puts "Enter the roll no:"
    rno = gets.chomp.to_i
    pos = 0
    arr.each do |stu|
      if stu.rollno == rno
        flag = 1
        pos = i
      end
      i = i + 1
    end
    if flag == 0
      puts "Invalid rollno...."
    else
      puts "The student #{arr[pos].name} is deleted......"
      arr.delete_at(pos)
    end
  when "8"
    flag = 0
    sta = stat.to_a
    sta.each do |st|
      count = 0
      arr.each do |stu|
        if stu.state == st
          flag = 1
          count = count + 1
        end
      end
      puts "THE NUMBER OF STUDENTS OF THE STATE #{st} ARE: #{count}"
    end
    if flag == 0
      puts "No records found...."
    end
  when "9"
    flag = 0
    bran = branc.to_a
    bran.each do |br|
      count = 0
      arr.each do |stu|
        if stu.branch == br
          flag = 1
          count = count + 1
        end
      end
      puts "THE NUMBER OF STUDENTS OF THE BRANCH #{br} ARE: #{count}"
    end
    if flag == 0
      puts "No records found..."
    end
  when "10"
    puts "exiting...."
    break
  else
    puts "Wrong option!!"
  end
end
