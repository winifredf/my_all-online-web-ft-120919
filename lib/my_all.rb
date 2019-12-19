require 'pry'

def my_all?(collection)
  index = 0
  
  while index < collection.length
    if yield(collection[index]) == false
      return false
    end
    
    index += 1
  end
  
  true

end

collection = [1, 2, 3]

my_all?(collection) do |1|
  1 < 3
end

my_all?(collection) do |1|
  1 < 4
end