time=Time.now
hashi={
  'a'=>0, 
  'b'=>0,
  'c'=>0,
  'd'=>0,
  'e'=>0,
  'f'=>0,
  'g'=>0,
  'h'=>0,
  'i'=>0,
  'j'=>0,
  'k'=>0,
  'l'=>0,
  'm'=>0,
  'n'=>0,
  'o'=>0,
  'p'=>0,
  'q'=>0,
  'r'=>0,
  's'=>0,
  't'=>0,
  'u'=>0,
  'v'=>0,
  'w'=>0,
  'x'=>0,
  'y'=>0,
  'z'=>0,
  '-'=>0,
  '\''=>0,
  '2'=>0,
  '3'=>0
 }
 hashj={
  'a'=>0, 
  'b'=>0,
  'c'=>0,
  'd'=>0,
  'e'=>0,
  'f'=>0,
  'g'=>0,
  'h'=>0,
  'i'=>0,
  'j'=>0,
  'k'=>0,
  'l'=>0,
  'm'=>0,
  'n'=>0,
  'o'=>0,
  'p'=>0,
  'q'=>0,
  'r'=>0,
  's'=>0,
  't'=>0,
  'u'=>0,
  'v'=>0,
  'w'=>0,
  'x'=>0,
  'y'=>0,
  'z'=>0,
  '-'=>0,
  '\''=>0,
  '2'=>0,
  '3'=>0
 }

def countLetters word,hash  #reads each variable .... increments number of letter apparition ex:abb a=1 b=2 
hash={
  'a'=>0, 
  'b'=>0,
  'c'=>0,
  'd'=>0,
  'e'=>0,
  'f'=>0,
  'g'=>0,
  'h'=>0,
  'i'=>0,
  'j'=>0,
  'k'=>0,
  'l'=>0,
  'm'=>0,
  'n'=>0,
  'o'=>0,
  'p'=>0,
  'q'=>0,
  'r'=>0,
  's'=>0,
  't'=>0,
  'u'=>0,
  'v'=>0,
  'w'=>0,
  'x'=>0,
  'y'=>0,
  'z'=>0,
  '-'=>0,
  '\''=>0,
  '2'=>0,
  '3'=>0
 }
  word.chomp.downcase.each_char do |i|
#    puts i
  hash[i]=hash[i]+1 

end
return hash
end  

def isAnagram(word1,word2,hash1,hash2) 
  h1=countLetters(word1,hash1) #h1... first word abb a=1 b=2 
#   h1.each  do |key, value| 
#     if (h1[key] !=0)
#      puts "#{key} is #{value}" 
#     end
#            end

   h2=countLetters(word2,hash2) #h2 ...second word bba a=1 b=2
#   h2.each  do |key, value| 
#     if (h2[key] !=0)
#      puts "#{key} is #{value}" 
#     end
#            end
 if h1.values==h2.values 
    return true
  else
    return false
  end
end
   
f = File.open("Output.txt","r") 
  myArray=[]  
  f.each_line {|line|
    myArray.push line 
              } #transforms into array



myArray.each do |i|
    myArray.each do |j| #parcurgere
    if i !=j
      if isAnagram(i,j,hashi,hashj)
      puts "#{i} is an anagram of #{j} "
      puts " "
      end
    end
  end
end
time=Time.now-time



