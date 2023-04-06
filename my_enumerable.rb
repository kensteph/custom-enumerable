module MyEnumerable
  def all?
    @list.each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    @list.each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    new_list = []
    @list.each do |element|
      new_list << element if yield(element)
    end
    new_list
  end

end