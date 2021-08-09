class A
  def initialize
    @name ='om'
  end
  def print_name
    puts @name
  end
end

class B < A
  def initialize
    super
    @name ='om'
    @ini ='kar'
  end
  def printini
    puts @ini
  end
end

n=B.new()
n.print_name
n.printini
