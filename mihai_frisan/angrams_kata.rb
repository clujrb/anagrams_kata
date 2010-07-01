anagrams = Hash.new([])  
words = IO.readlines('input.txt').collect{|word|  word.chomp.downcase.split('').sort.to_s}
IO.readlines('wordlist.txt').each{|word| anagrams[(anagram = word.chomp.downcase).split('').sort.to_s] |= [anagram]}
File.open('anagrams.txt', 'w'){|file| words.each{|word| file.puts(anagrams.delete(word).join(', ')) if anagrams[word].length > 1}}    
