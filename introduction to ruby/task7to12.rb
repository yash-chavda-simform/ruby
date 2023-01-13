#Create an array from 1 to 10 and perform all methods on the array
#array from 1 to 10
array=(1..10).to_a

#.length will give len of array 
puts array.length #10

#.first method accesses the first element of the array, the element at index 0:
puts array.first #1

#.last method accesses the last element of the array:
puts array.last #10

#.take method returns the first n elements of the array:
print array.take(3)
#=> [1, 2, 3]

#.drop method returns the elements after n elements of the array:
print array.drop(5)
#=> [6,7,8,9,10]
print array
puts
#.pop method will permantently remove the last element of an array:
array.pop
print array
# #=> [1,2,3,4,5,6,7,8,9]


# #.shift method will permantently remove the first element of an array and return this element:
puts array.shift
# #=> 0  
print array
# #=> [2,3,4,5,6,7,8,9]
puts
#.push method will allow you to add an element to the end of an array:
array.push(10)
print(array)
# #=> [2,3,4,5,6,7,8,9,10]
#.unshift method will allow you to add an element to the beginning of an array:
puts
print array.unshift(1)
# #=> [1,2,3,4,5,6,7,8,9,10]


#.delete method removes a specified element from an array permanently:

print array.delete(1)
puts
print array
# => [1,2,3,4,5,6,7,8,9,10]

# .delete_at method allows you to permanently remove an element of an array at a specified index:

puts array.delete_at(0)
# => [1, 2, 3, 4]

# .reverse method reverses the array but does not mutate it (the original array stays as is):

print array.reverse
# => [10,9,8,7,6,5,4,3,2]

#.select method iterates over an array and returns a new array that includes any items that return true to the expression provided.

print array.select { |number| number > 4 }
puts
# => [5, 6, 7, 8, 9, 10]

# The include? method checks to see if the argument given is included in the array:
puts array.include?(3) 
# => true

# The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array:

array1 = [1, 2, [3, 4, 5], [6, 7]]
print array1.flatten
# => [1, 2, 3, 4, 5, 6, 7]

puts
print array.join
puts
# #=> "345678910"
print array.join("*")
# #=> "3*4*5*6*7*8*9*10"
print array.join(" ")
# #=> "3 4 5 6 7 8 9 10"


#.each method iterates over each element of the array, allowing you to perform actions on them.

array.each do |element|
  puts element
end

#.uniq method takes in an array containing duplicate elements, and returns a copy of the array containing only unique elements—any duplicate elements are removed from the array.

print array.uniq
puts 
print array

puts
print array.concat([5, 6, 7], [8, 9, 10])
#=> [3, 4, 5, 6, 7, 8, 9, 10, 5, 6, 7, 8, 9, 10]



##Create an array with stings containing colors and perform various available array methods on it
str="color"
array=str.split("")
print array
puts


#.length will give len of array 
puts array.length #5

#.first method accesses the first element of the array, the element at index 0:
puts array.first #c

#.last method accesses the last element of the array:
puts array.last #r

#.take method returns the first n elements of the array:
print array.take(3)
#=> ["c", "o", "l"]

#.drop method returns the elements after n elements of the array:
print array.drop(3)
#=> ["o","r"]
puts
#.pop method will permantently remove the last element of an array:
array.pop 
print array
# #=> ["c", "o", "l","o"]


# #.shift method will permantently remove the first element of an array and return this element:
puts array.shift
# #=> c  
print array
# #=>  ["o", "l","o"]
puts
#.push method will allow you to add an element to the end of an array:
array.push("r")
print(array)
# #=> ["o", "l","o","r"]
#.unshift method will allow you to add an element to the beginning of an array:
puts
print array.unshift("c")
# #=> ["c", "o", "l","o","r"]


#.delete method removes a specified element from an array permanently:

print array.delete("l")
puts
print array
# => ["c", "o","o","r"]

# .delete_at method allows you to permanently remove an element of an array at a specified index:

puts array.delete_at(0)
# => ["o","o","r"]

# .reverse method reverses the array but does not mutate it (the original array stays as is):

print array.reverse
# => ["r","o","o"]

# The include? method checks to see if the argument given is included in the array:
puts array.include?("o") 
# => true

print array.join
puts
# #=> "oor"
print array.join("*")
# #=> "o*o*r"
print array.join(" ")
# #=> "o o r"


#.each method iterates over each element of the array, allowing you to perform actions on them.
array.each do |element|
  puts element
end

#.uniq method takes in an array containing duplicate elements, and returns a copy of the array containing only unique elements—any duplicate elements are removed from the array.

print array.uniq
puts 
print array
#["o"."r"]
puts
print array.concat(["c","o","l"], ["v", "p", "n"])



##Print the current date and time and date time after 30 days
require 'date'
current_time = DateTime.now
after30_time = current_time+30
cdt1 = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt1
cdt2 = after30_time.strftime "%d/%m/%Y %H:%M"
puts "After 30 Day Date and Time: "+cdt2



##Practice various types of iterators available with the above arrays ( each, each_with_index, map etc.)
array=(1..10).to_a
print array
puts

#iterate though array and get element
array.each do |i|
  puts i
end

#it will get index and as well value
array.each_with_index do |num,index|
  print index
  print " #{num}"
  puts
end


#collect 
b=array.collect{ |y| (y*5)}
puts b


#using time we can define number of iteration
#here it will itrate 7 times
7.times do |i|
  puts i
end
puts
#it will iterate top to bottom
4.upto(7) do |n|  
  puts n  
end   

puts

#it will iterate bottom to top
7.downto(4) do |n|  
  puts n  
end


#step iterator is used to iterate where the user has to skip a specified range.
(0..60).step(20) do|i|
  puts i
end

#each line iterator is used to iterate in aeach line
"Welcome\nto\nSimform\nPortal".each_line do|i|
  puts i
end


##Create a Hash --> dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }, print value of dictionary[:one]
dictionary=Hash.new
dictionary[:one]='uno'
dictionary[:two]='dos'
dictionary[:three]='tres'

puts dictionary[:one]#uno


#Create a method that uses proc/lambda
def gen_times(factor)
    Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end
  
puts times3 = gen_times(3)
puts times5 = gen_times(5)
  
puts times3.call(12)               #=> 36
puts times5.call(5)                #=> 25
puts times3.call(times5.call(4))   #=> 60

#Lambda function to add 10
add_10 = lambda { |num| num + 10 }
 
# Lambda function to multiply with 2
multiply_2 = lambda { |num| num * 2 }
 
# A Function using lambda
def using_lambda_with_functions(lambda, number)
  puts lambda.call(number)
end
# Passing lambda to function
using_lambda_with_functions(add_10, 10)
 
using_lambda_with_functions(multiply_2, 20)