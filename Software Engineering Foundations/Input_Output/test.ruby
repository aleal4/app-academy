p 'Enter your name:'
name = gets.chomp
p 'hello ' + name


puts 'enter yes or no'

response = gets.chomp 

if response == 'yes'
  puts 'you said yes!'
end

puts 'enter number:'

num = gets.chomp.to_i

puts 2 * num