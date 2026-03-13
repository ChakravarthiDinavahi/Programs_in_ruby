# class LRUCache
#   attr_accessor :size, :data
#   def initialize(size)
#     @size = size
#     @data = {}
#   end

#   def put(key,val)
#       if overflowed?
#         @data.delete(@data.keys.first)
#       end
#       @data[key] = val
#   end

#   def get(key)
#       val = @data[key]
#       @data.delete(key)
#       @data[key] = val
#   end

#   def overflowed?
#     @data.keys.size >= size
#   end

# end
# l = LRUCache.new(2)

# l.put("a",1)
# l.put("b",2)
# l.get("a")
# l.put("c",2)


# LRU Cache with O(1) get and put.
# Uses Ruby's Hash insertion order (Ruby 1.9+) for LRU tracking.
#
# Big data: Memory is bounded by capacity (size). Behavior is identical for
# large capacities; only more entries are kept. Use a reasonable size for your
# environment.
#
# Key types: Any object that works as a Hash key (hash + eql?). Prefer
# immutable keys (String, Symbol, Integer, frozen objects). Mutable keys
# (e.g. Array, Hash) are fine only if you do not mutate them after using
# them as cache keys, or lookups can break.
#
# Value types: Any object. nil is stored and returned like any other value.
# Not thread-safe.
class LRUCache
  attr_reader :size

  def initialize(size)
    raise ArgumentError, "size must be positive" unless size.is_a?(Integer) && size > 0
    @size = size
    @data = {}
  end

  def put(key, val)
    if @data.key?(key)
      # Update existing: move to most-recently-used (end)
      @data.delete(key)
    elsif full?
      # Evict least-recently-used (first key in insertion order)
      @data.shift
    end
    @data[key] = val
  end

  def get(key)
    return nil unless @data.key?(key)

    val = @data.delete(key)
    @data[key] = val
    val
  end

  def full?
    @data.size >= @size
  end
end

# Example usage and verification for different types and larger capacity
if __FILE__ == $PROGRAM_NAME
  puts "=== Basic (size 2) ==="
  l = LRUCache.new(2)
  l.put("a", 1)
  l.put("b", 2)
  p l.get("a")   # => 1
  l.put("c", 3)  # evicts "b"
  p l.get("b")   # => nil (evicted)
  p l.get("c")   # => 3

  puts "\n=== All key/value types ==="
  c = LRUCache.new(4)
  c.put("string", "value")
  c.put(:symbol, :val)
  c.put(42, 100)
  c.put(nil, "nil as key")
  raise "string" unless c.get("string") == "value"
  raise "symbol" unless c.get(:symbol) == :val
  raise "integer" unless c.get(42) == 100
  raise "nil key" unless c.get(nil) == "nil as key"
  c.put("big", "x" * 10_000)
  raise "big value" unless c.get("big").size == 10_000
  c.put("obj", [1, 2, { a: 3 }])
  raise "object" unless c.get("obj") == [1, 2, { a: 3 }]
  puts "OK: string, symbol, integer, nil key, large value, object value"

  puts "\n=== Larger capacity (10k entries) ==="
  big = LRUCache.new(10_000)
  10_000.times { |i| big.put(i, i * 2) }
  raise "big get" unless big.get(0) == 0 && big.get(9999) == 19_998
  # After those gets, 0 and 9999 are MRU; oldest is 1. Next put evicts 1.
  big.put(10_000, 20_000)
  raise "eviction" if big.get(1)
  raise "new" unless big.get(10_000) == 20_000
  raise "mru intact" unless big.get(0) == 0 && big.get(9999) == 19_998
  puts "OK: 10k put/get, eviction order correct"
  puts "Done."
end
