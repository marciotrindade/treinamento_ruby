#### Examples ####
##  http://www.tutorialspoint.com/ruby/ruby_loops.htm  ##
array = [1, 2, 3, 4, 5]  ### 1..100

for i in array
   puts "Value of local variable is #{i}"
end

(0..5).each do |i|
   puts "Value of local variable is #{i}"
end