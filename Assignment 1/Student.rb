class Student
  attr_accessor :rollno, :name, :state, :branch, :cgpa

  def initialize()
  end
end

arr = []
while 1
  puts "Enter 1. Add new student 2. display all students 3. display student by branch 4. display  students by state 5. Search students by roll number 6. search by part of the name, 7.delete by roll number 8. count and display number of students by state 9. count and display number of students by branch 10. exit"
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
    arr.push student
  when "2"
    i = 0
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
    i = 0
    flag = 0
    puts "Enter the branch:"
    br = gets.chomp
    arr.each do |stu|
      if stu.branch == br
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
    if flag==0
      puts "Invalid branch..."
  when "4"
    i = 0
    flag=0
    puts "Enter the state:"
    st = gets.chomp
    arr.each do |stu|
      if stu.state == st
        puts "Student no->#{i + 1}"
        puts "Name:#{stu.name}"
        puts "Register No:#{stu.rollno}"
        puts "State:#{stu.state}"
        puts "Branch:#{stu.branch}"
        puts "CGPA:#{stu.cgpa}"
        i = i + 1
        flag=1
      end
    end
    if flag==0
      puts "Invalid state...."
    when "5"
      i = 0
      flag=0
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
          flag=1
        end
      end
      if flag==0
        puts "Invalid rollno...."
      when "6"
        i = 0
        flag=0
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
            flag=1
          end
        end
        if flag==0
          puts "Invalid name...."
        end

      when "10"
    puts "exiting...."
    break
  else
    puts "Wrong option!!"
  end
end
