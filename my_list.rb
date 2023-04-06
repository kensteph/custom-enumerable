require_relative './my_enumerable.rb'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list.to_a
  end

  def each
    yield(@list)
  end
end

numbers = MyList.new(1,2,3,4)
# ALL
puts numbers.all? {|e| e < 5} # True
puts numbers.all? {|e| e > 5} # False
# ANY
puts numbers.any? {|e| e == 2} # True
puts numbers.any? {|e| e == 5} # False
# FILTER
print numbers.filter {|e| e.even?} # [2, 4]