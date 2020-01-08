class Book
  	def initialize(aName,aAuthor)
       		@name=aName
		@author=aAuthor
  	end
  	def initialize()
   	end    
	def set_name(aName)
 		@name =aName
	end
	def get_name 
   		return @name
	end
	def set_author(aAuthor)
		@author=aAuthor
	end
	def get_author
     		return @author
	end
end
book1=Book.new
book1.set_name("Wind Mills Of God")
book1.set_author("Me")
puts book1.get_name
puts book1.get_author
