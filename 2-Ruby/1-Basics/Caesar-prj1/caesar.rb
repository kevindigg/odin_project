def caesar_cipher (str, num)
    upperShift = ('A'..'Z').to_a.rotate!(num).join
    lowerShift = ('a'..'z').to_a.rotate!(num).join  

    str.tr!('a-z',lowerShift)
    str.tr!('A-Z',upperShift)

    puts str
end



caesar_cipher("What a string!", 5)
