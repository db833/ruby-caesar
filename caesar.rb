def caesar(string, shiftInt)

    #Check string is String and shiftInt is Integer
    if (string.class != String || shiftInt.class != Integer)
        puts "Enter string and integer"
        return
    end

    #Make shiftNumber between 0-26
    shiftIntSmall = shiftInt%26

    #Get each letter in string into an array.
    string.split

    #Cycle through each letter.
    arrayConverted = string.chars.map do |letter|

        #Method to determine type
        def charType(char)
            if ('a'..'z').include?(char)
                return "lower"
            elsif ('A'..'Z').include?(char)
                return "higher"
            else
                return "other"
            end
        end

         #Determine upper, lower or something else.
         type = charType(letter)

         #Add shift to upper and lower.
         if type=="lower"
            (letter.ord+shiftIntSmall).between?(97,122) ? (letter.ord+shiftIntSmall).chr : (letter.ord+shiftIntSmall -26).chr
         elsif type=="higher"
            (letter.ord+shiftIntSmall).between?(65,90) ? (letter.ord+shiftIntSmall).chr : (letter.ord+shiftIntSmall -26).chr
         else
            letter
         end
     end

     #Return joined up string
     arrayConverted.join
end