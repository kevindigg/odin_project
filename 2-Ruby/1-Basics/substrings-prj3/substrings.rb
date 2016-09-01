
def substrings(phrase, dictionary)
    results = Hash.new(0)

    phrase.downcase.split(' ').each do |word|
        dictionary.each do |item|
            results[item] += 1 if word.include?(item)
        end
    end
    results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
