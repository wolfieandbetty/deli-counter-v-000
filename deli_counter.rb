# Write your code here.

def line (katz_deli)
  if katz_deli.empty?#checks to see if the array passed to it has anything in it if not it puts
  puts "The line is currently empty."
  else
    current_line="The line is currently:"#the array was not empty so it creates the first part of the message that will be customized
    katz_deli.each_with_index do |name,linepos|#now it will shovel the name and position/ticket number into the back end of the message that will be output
      current_line << " #{linepos+1}. #{name}"# first will be the position number but because this is the "index value" you need to add 1 to it so that it doesn't start at 0
    end
    puts current_line #puts out the message that tells what the current line is - names and their positions
end
end

def take_a_number(katz_deli,name)#takes the existing array of names in the katz_deli array and also takes in the "new customer" name
katz_deli << name #shovels in the new name to the back of the katz_deli array of existing names
puts "Welcome, #{name}. You are number #{katz_deli.length} in line." #puts out a message to the new customer and tells them where they are in line - they are last so use .length
end

def now_serving(katz_deli)
  if katz_deli.empty? # checks to see if the katz_deli array has anything in it, if it's empty puts out a message to that affect
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}." #puts out a message with the first array element in katz_deli
    katz_deli.shift #drops the first element off of the katz_deli array. There is no need to reassign this change as .shift permanently alters the array
  end
end
