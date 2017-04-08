# Only In America
# Pass in a string to the function and adds the phrase "only in America when" when called.

def only_in_America(string)
  string + ", only in America!"
end
puts " We have #{only_in_America("Socks")}"


#Max in Array
# While my num_idx is less than my array's length set my current_num to the first element of array. If the largest_num value is less than the current_num (which it is) set the current_num to the largest_num and move up one in the array. Compare largest_num value to current_num until index is no longer less than array length. Return largest_num

def max_in_array()
  my_array = [10,140,4,3,120, -7, 300]
  largest_num = nil
  num_idx = 0
  while num_idx < my_array.length
    current_num = my_array[num_idx]
      if largest_num == nil
        largest_num = current_num
      elsif largest_num < current_num
        largest_num = current_num
      end
    num_idx += 1
  end
  return largest_num
end
  puts "The largest number is #{max_in_array}"
#Combinging Arrays to new Hash
# For each index of first_array set each element as a key in the empty hash and assign each element of the second_array as value.

def combine(first_array, second_array)
  my_hash = {}
  first_array.each.with_index do |key, value|
    my_hash[key] = second_array[value]
  end
  return my_hash
end
array_one = ["animal", "legs", "age"]
array_two = ["cat", 4, 11]

puts "The new hash is #{combine(array_one, array_two)}"

#FizzBuzz. For each number in the range do the following: If number is a factor of 3 or 5 replace with "FizzBuzz". If number is a factor of 5 only replace with "Buzz" and if by 3 replace with "Fizz".
def fizz_buzz()
  (1..100).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "fizzBuzz"
    elsif i % 5 == 0
      puts "Buzz"
    elsif i % 3 == 0
        puts "Fizz"
    else puts i
    end
  end
end
fizz_buzz()
