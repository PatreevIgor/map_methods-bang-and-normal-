class Array
  def my_map(&block)
    return self unless block_given?
    new_massive = []
    self.each do |x| 
      new_massive << block.call(x)
    end
    return new_massive
  end
end

m = [2,3,5,6,9]
puts m.my_map{|a| a+1}
puts m.inspect 

#------------------------------------------------------------

class Array
  def my_map!(&block)
    return self unless block_given?
    self.each_with_index do |value,index| 
      self[index] = block.call(value)
    end
    self
  end
end

m = [2,3,5,6,9]
puts m.my_map!{|a| a+1}
puts m.inspect 
