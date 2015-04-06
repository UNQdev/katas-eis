class CharCounter
    
    def self.count(string)
       counted = Hash.new 0
       
       string.each_char do |char|
           counted[char] += 1
       end
       
       counted
    end
end