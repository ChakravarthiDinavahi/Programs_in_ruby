class Findimmmunity
  def initialize(a, max)
    @a = a
    @max = max
  end

  def process
    c = 0
    r= []
    l = @a.length
    (0..l - 1).each do |i|
      r << @a[i] if @a[i] < @max
      r << [@a[i], @a[i+1]] if i + 1 < l - 1 && @a[i] + @a[i + 1] < @max
      # c += 1 if i + 1 <= l - 1 && i + 2 <= l - 1 && @a[i] + @a[i + 1] + @a[i + 2] < @max
    end
    puts 'count'
    print r
  end
end
Findimmmunity.new([1, 11, 2, 3, 15], 10).process
