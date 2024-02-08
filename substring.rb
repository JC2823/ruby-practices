dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    result = Hash.new(0)

    dictionary.each do |char|
        result[char] = string.downcase.scan(char).length
        result.delete(char) if result[char] == 0
    end
    
    return result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)