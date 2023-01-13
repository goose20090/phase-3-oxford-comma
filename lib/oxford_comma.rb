require 'pry'
# takes an array of strings
def oxford_comma(array)
    # returns a string
    modArr = array.map.with_index do |str, index| 
        # for all but last add comma and space to string
        if array.length == 1
            return str
        elsif index == array.length - 1
            "and #{str}"
        elsif array.length == 2
            str + ' '
        else
        str + ', '
        end
    end
    modArr.join
end

# binding.pry
# oxford_comma(["fiddleheads", "okra", "kohlrabi"])
# => "fiddleheads, okra, and kohlrabi"