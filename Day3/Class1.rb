class Book
  	def initialize(aName,aAuthor)
       		@name=aName
		@author=aAuthor
  	end
  	def initialize()
   	end    
	def  title=(aName)
 		@name =aName
	end
	def name 
   		return @name
	end
	def author=(aAuthor)
		@author=aAuthor
	end
	def author
     		return @author
	end
end
book1=Book.new
book1.title=("The Davinci Code")
book1.author="Me"
puts book1.name
puts book1.author
