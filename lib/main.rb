def cipher(str, shift)
  result_string = ''
  str.each_char do |char|
    result_string += if char.ord.between?(65, 90)
                       (((char.ord - 65 + shift) % 26) + 65).chr
                     elsif char.ord.between?(97, 122)
                       (((char.ord - 97 + shift) % 26) + 97).chr
                     elsif char.ord.between?(48, 57)
                       (((char.ord - 48 + shift) % 26) + 48).chr
                     else
                       char
                     end
  end
  result_string
end

p cipher('AbC xYz 123', -1)
