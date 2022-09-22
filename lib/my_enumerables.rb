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

  def my_all?
    for i in 0...self.length
      unless yield self[i]
        return false
      end
    end
    true
  end

  def my_any?
    for i in 0...self.length
      if yield self[i]
        return true
      end
    end
    false
  end

  def my_none?
    for i in 0...self.length
      if yield self[i]
        return false
      end
    end
    true
  end

  def my_count
    return self.length unless block_given?

    value = 0
    for i in 0...self.length
      if yield self[i]
        value += 1
      end
    end
    value
  end

  def my_map
    result = Array.new

    for i in 0...self.length
      result.push(yield self[i])
    end

    result
  end

  def my_inject(initial)
    for i in 0...self.length
      initial = yield initial,self[i]
    end
    initial
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
