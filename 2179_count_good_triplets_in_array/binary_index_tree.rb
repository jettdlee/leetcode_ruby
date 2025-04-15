class BinaryIndexTree
  attr_accessor :tree

  def initialize(n)
    @n = n + 2
    @tree = Array.new(@n, 0)
  end

  # Start at index position, then go back, summing the values into the result
  def get_sum(index)
    sum = 0
    index += 1 # BIT uses a dummy node
    while index > 0
      sum += @tree[index]
      # Bitwise 'AND'
      index -= index & -index
    end
    sum
  end

  def update(index, val)
    index += 1
    while index < @n
      @tree[index] += val
      index += index & -index
    end
  end
end
