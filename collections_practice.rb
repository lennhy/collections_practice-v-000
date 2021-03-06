def sort_array_asc(integer_arr)
  integer_arr.sort  #ascending order
end

def sort_array_desc(integer_arr)
  integer_arr.sort {|x, y| y <=> x} #descending
end

def sort_array_char_count(integer_arr)
   #sort by length of word
   integer_arr.sort do |a, b|
     if a.length == b.length
       0
     elsif a.length < b.length
       -1
     elsif a.length > b.length
       1
     end
   end
end

def swap_elements(integer_arr)
  integer_arr[1], integer_arr[2] = integer_arr[2], integer_arr[1] #swap the second with the third element
  integer_arr
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(string_arr)
  	new_arr=[] #create an empty array to use later
  	string_arr.each do | string |
  	string[2] = "$" #replace the third character in each string with a dolar sign
  	new_arr << string
  end
end

def find_a(array)
  array.find_all { |words| words[0] == "a" }
end

def sum_array(integer_arr)
  sum = 0 #use this as a base to add all the integers to and not to each other
  integer_arr.each { |integer| sum+=integer}
  sum
end

def add_s(string_arr)
	string_arr.each_with_index.collect do |string, index| #this method allows you to single out the index to control it.
		if index !=1 #control what happens to the second string item
		 	string + "s"
		else
			string
		end
	end
end

#advanced section
def swap_elements_from_to(array, index, destination_index)
   array[index], array[destination_index] = array[destination_index], array[index]
   array
end
