def WordToArraySort filename
  wordToPrint=Hash.new
  file=File.open(filename,"r")
  file.each_line do |word|
    wordToPrint[word]=word.downcase.chars.to_a.sort!.join
  end
  wordToPrint
end

hashFromFile=WordToArraySort("initial.txt")
hashFromDictionary=WordToArraySort("wordlist.txt")
var=0
anagrams=Hash.new 
hashFromFile.each_pair do |word1,sort1|
  hashFromDictionary.each_pair do |word2,sort2|
    if word1 != word2
      if sort1 == sort2
        var+=1
        if anagrams[word1]!=nil
          anagrams[word1]+=", ".chomp
          anagrams[word1]+=word2.chomp
        else
          anagrams[word1]=word2.chomp
        end
      end
    end
  end 
  if anagrams[word1]!=nil
    puts ("#{word1.chomp} : #{anagrams[word1]} ")
  end
end
puts var
 
