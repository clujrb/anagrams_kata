require "rubygems"
require "active_support"

class Array
  def permutations
    return [self] if size < 2
    perm = []
    each { |e| (self - [e]).permutations.each { |p| perm << ([e] + p) } }
    perm
  end
end

wordlist = []

"kinship".split('').permutations.each do |p|
  puts p.join
end

# File.read("../wordlist.txt").each_line do |line|
#   wordlist << line.strip.downcase
# end
# 
# File.open("../output.txt", "w") do |out|
#   File.read("../input.txt").each_line do |line|
#     puts "Processing #{line}"
#     
#     anagrams = []
#     
#     permutations = line.strip.split('').permutations
#     
#     permutations.each do |perm|
#       word = perm.join.downcase
#       anagrams << word if wordlist.include?(word)
#     end
#         
#     out.puts anagrams.uniq.join(' ') unless anagrams.empty?
#   end
# end
