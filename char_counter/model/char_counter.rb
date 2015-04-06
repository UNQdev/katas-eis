class CharCounter

    def self.count(string)
        
        if string.equal? nil
            {}
        else
            counted = Hash.new 0
            
            string.each_char do |char|
                counted[char] += 1
            end
            
            counted.default = nil
            counted
        end
        
    end
    
end