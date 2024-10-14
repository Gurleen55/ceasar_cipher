
# string = "abc"

# new_string = string.bytes.map {|number| number += 1}.pack("c*")
# puts new_string

def caesar_cipher(string, shift)
  new_array_of_ascii = string.bytes.map do |number|
    if number >= 65 && number <= 90
      number += shift
      number > 90 ? number - 26 : number 
    elsif  number >= 97 && number <=122
      number += shift
      number > 122 ? number - 26 : number
    else 
      number
    end
  end
  new_array_of_ascii.pack("c*")
end




# puts caesar_cipher "What a string!", 5