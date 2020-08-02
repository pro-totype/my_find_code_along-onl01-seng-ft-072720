require 'pry'
install pry gem

def my_find(collection)
  i = 0 
  while i < collection.length 
    if yield(collection[i])
      binding.pry
      return collection[i]
    end
    i = i + 1
  end
end