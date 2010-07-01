anagrams = Hash.new([])  
IO.readlines('wordlist.txt').each{|word| anagrams[(anagram = word.chomp.downcase).split('').sort.to_s] |= [anagram]}
File.open('anagrams.txt', 'w'){|file| anagrams.values.each{|line| file.puts(line.join(', ')) if line.length > 1}}    
