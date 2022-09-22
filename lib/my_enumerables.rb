module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in 0...self.length
      yield self[i], i
    end
    self
  end

  def my_select
    select_array = Array.new
    for i in 0...self.length
      if yield self[i]
        select_array.push(self[i])
      end
    end
    select_array
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in 0...self.length
      yield self[i]
    end
    return self
  end
end
