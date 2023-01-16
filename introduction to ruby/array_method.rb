#Create an array from 1 to 10 and perform all methods on the array
#array from 1 to 10
array=(1..10).to_a
puts array.length #10 #.length will give len of array
puts array.first #1 #.first method accesses the first element of the array, the element at index 0:
puts array.last #10 #.last method accesses the last element of the array:
print array.take(3) #=> [1, 2, 3] #.take method returns the first n elements of the array:
print array.drop(5) #=> [6,7,8,9,10] #.drop method returns the elements after n elements of the array:
print array,"\n"
array.pop #.pop method will permantently remove the last element of an array:
print array # #=> [1,2,3,4,5,6,7,8,9]
puts array.shift # #=> 0  # #.shift method will permantently remove the first element of an array and return this element:
print array # #=> [2,3,4,5,6,7,8,9]
array.push(10) #.push method will allow you to add an element to the end of an array:
print(array,"\n") # #=> [2,3,4,5,6,7,8,9,10]
print array.unshift(1) # #=> [1,2,3,4,5,6,7,8,9,10] #.unshift method will allow you to add an element to the beginning of an array:
print array.delete(1) #.delete method removes a specified element from an array permanently:
print array # => [1,2,3,4,5,6,7,8,9,10]
puts array.delete_at(0) # .delete_at method allows you to permanently remove an element of an array at a specified index:
print array# => [1, 2, 3, 4]
print array.reverse # # => [10,9,8,7,6,5,4,3,2] .reverse method reverses the array but does not mutate it (the original array stays as is):
print array.select { |number| number > 4 } # => [5, 6, 7, 8, 9, 10] #.select method iterates over an array and returns a new array that includes any items that return true to the expression provided.
puts array.include?(3) # => true # The include? method checks to see if the argument given is included in the array:
array1 = [1, 2, [3, 4, 5], [6, 7]] # The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array:
print array1.flatten  # => [1, 2, 3, 4, 5, 6, 7]
print array.join # #=> "345678910"
print array.join("*") # #=> "3*4*5*6*7*8*9*10"
print array.join(" ") # #=> "3 4 5 6 7 8 9 10"
array.each do |element| #.each method iterates over each element of the array, allowing you to perform actions on them.
  puts element #print all the element one by one
end
print array.uniq #.uniq method takes in an array containing duplicate elements, and returns a copy of the array containing only unique elements—any duplicate elements are removed from the array.
print array.concat([5, 6, 7], [8, 9, 10]) #=> [3, 4, 5, 6, 7, 8, 9, 10, 5, 6, 7, 8, 9, 10]

str="color" ##Create an array with stings containing colors and perform various available array methods on it
array=str.split("")
print array,"\n"
puts array.length #5 #.length will give len of array 
puts array.first #c #.first method accesses the first element of the array, the element at index 0:
puts array.last #r #.last method accesses the last element of the array:
print array.take(3) #=> ["c", "o", "l"] #.take method returns the first n elements of the array:
print array.drop(3) #=> ["o","r"] #.drop method returns the elements after n elements of the array:
array.pop  #.pop method will permantently remove the last element of an array:
print array # #=> ["c", "o", "l","o"]
puts array.shift # #=> c  # #.shift method will permantently remove the first element of an array and return this element:
print array,"\n" # #=>  ["o", "l","o"]
array.push("r") #.push method will allow you to add an element to the end of an array:
print array,"\n" # #=> ["o", "l","o","r"]
print array.unshift("c") # #=> ["c", "o", "l","o","r"] #.unshift method will allow you to add an element to the beginning of an array:
print array.delete("l") #.delete method removes a specified element from an array permanently:
print array,"\n" # => ["c", "o","o","r"]
puts array.delete_at(0) # => ["o","o","r"] # .delete_at method allows you to permanently remove an element of an array at a specified index:
print array.reverse # => ["r","o","o"] # .reverse method reverses the array but does not mutate it (the original array stays as is):
puts array.include?("o") # => true # The include? method checks to see if the argument given is included in the array:
print array.join # #=> "oor"
print array.join("*") # #=> "o*o*r"
print array.join(" ") # #=> "o o r"
array.each do |element| #.each method iterates over each element of the array, allowing you to perform actions on them.
  puts element 
end
print array.uniq #.uniq method takes in an array containing duplicate elements, and returns a copy of the array containing only unique elements—any duplicate elements are removed from the array.
print array #["o"."r"]
print array.concat(["c","o","l"], ["v", "p", "n"]) #["o","r",c","o","l","v", "p", "n"]

require 'date'##Print the current date and time and date time after 30 days
current_time = DateTime.now
after30_time = current_time+30
cdt1 = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt1
cdt2 = after30_time.strftime "%d/%m/%Y %H:%M"
puts "After 30 Day Date and Time: "+cdt2

array=(1..10).to_a ##Practice various types of iterators available with the above arrays ( each, each_with_index, map etc.)
print array
array.each do |i| #iterate though array and get element
  puts i
end
array.each_with_index do |num,index| #it will get index and as well value
  print index
  print " #{num}"
end
b=array.collect{ |y| (y*5)} #collect 
puts b
7.times do |i|#using time we can define number of iteration
  puts i #here it will itrate 7 times
end
4.upto(7) do |n|   #it will iterate top to bottom
  puts n  
end  
7.downto(4) do |n|   #it will iterate bottom to top
  puts n  
end
(0..60).step(20) do|i| #step iterator is used to iterate where the user has to skip a specified range.
  puts i
end
"Welcome\nto\nSimform\nPortal".each_line do|i| #each line iterator is used to iterate in aeach line
  puts i
end

dictionary=Hash.new ##Create a Hash --> dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }, print value of dictionary[:one]
dictionary[:one]='uno'
dictionary[:two]='dos'
dictionary[:three]='tres'
puts dictionary[:one]#uno

def gen_times(factor) #Create a method that uses proc/lambda
    Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end
puts times3 = gen_times(3)
puts times5 = gen_times(5)
puts times3.call(12)               #=> 36
puts times5.call(5)                #=> 25
puts times3.call(times5.call(4))   #=> 60
add_10 = lambda { |num| num + 10 } #Lambda function to add 10 
multiply_2 = lambda { |num| num * 2 } # Lambda function to multiply with 2
def using_lambda_with_functions(lambda, number) # A Function using lambda
  puts lambda.call(number) 
end
using_lambda_with_functions(add_10, 10) # Passing lambda to function
using_lambda_with_functions(multiply_2, 20)
