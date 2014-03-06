def to_binary(number)
  working_number = number
  binary = []
  until working_number == 0 do
    binary.push(working_number % 2)
    working_number = (working_number / 2).floor    
  end
  binary.join('').reverse
end

def to_base_ten(binary_string)
  binary_digits = binary_string.split('').reverse.collect{ |a| a.to_i}
  result = 0

  binary_digits.each_with_index do |digit, index|
    result += 2**index * digit
  end

  result
end

def to_ternary(number)
  working_number = number
  binary = []
  until working_number == 0 do
    binary.push(working_number % 3)
    working_number = (working_number / 3).floor    
  end
  binary.join('').reverse
end

def to_base_ten_ternary(binary_string)
  binary_digits = binary_string.split('').reverse.collect{ |a| a.to_i}
  result = 0

  binary_digits.each_with_index do |digit, index|
    result += 3**index * digit
  end

  result
end

def to_hex(number)
  hex_numbers = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9", 10 => "a", 11 => "b", 12 => "c", 13 => "d", 14 => "e", 15 => "f"}
   
  working_number = number
  hex = []
  until working_number == 0 do
    key = working_number % 16
    hex.push(hex_numbers[key])
    working_number = (working_number / 16).floor
  end 
  hex.join('').reverse
end 

def to_base_ten_hex(hex_string)
  hex_numbers = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9", 10 => "a", 11 => "b", 12 => "c", 13 => "d", 14 => "e", 15 => "f"}
  base_ten_numbers = hex_numbers.invert

  hex_characters = hex_string.split('').reverse
  result = 0

  hex_characters.each_with_index do |character, index|
    result += 16**index * base_ten_numbers[character]
  end

  result
end


