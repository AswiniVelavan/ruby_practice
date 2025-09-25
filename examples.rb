=begin def solution(number)
if number >= 0
  i = 0
  sum = 0
  while number > i
    if i % 3 == 0 || i % 5 == 0
      sum += i  
    end
      i += 1
  end
else
  return 0  
  
end
puts sum
      # put your solution here
end
  solution(10)
=end
def narcissistic?(value)
   sum = 0
 new_value = value.to_s.split("")
 length_value = new_value.length
 puts length_value
  new_value.each do|i|
   
    i_integer = i.to_i
    cube = i_integer ** length_value
    sum += cube 
 
    end
  sum == value
end
puts narcissistic?(5)




