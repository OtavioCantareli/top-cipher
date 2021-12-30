def cipher(str, shift)
  result_string = ''
  str.each_char do |char|
    result_string += if char.ord.between?(65, 90)
                       (((char.ord - 65 + shift) % 26) + 65).chr
                     elsif char.ord.between?(97, 122)
                       (((char.ord - 97 + shift) % 26) + 97).chr
                     else
                       char
                     end
  end
  p result_string
end

cipher('AbC xYz 123', 1)
