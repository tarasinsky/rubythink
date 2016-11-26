abc=('a'..'z').to_a
voice_letters=["a","e","i","o","u"]
voice_letters_hash = Hash.new
abc.each do |letter|
  if voice_letters.include?(letter)
    voice_letters_hash[letter]=abc.index(letter)
  end
end
puts voice_letters_hash