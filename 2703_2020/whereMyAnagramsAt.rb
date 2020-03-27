def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

def anagrams(word, words)
  m = word.chars.sort
  words.select { |w| w.chars.sort == m }
end
# def anagrams(word, words)
#   result = []
#   anagram = word.chars.sort
#   words.each do |w|
#     result << w if anagram == w.chars.sort
#   end
#   result
# end