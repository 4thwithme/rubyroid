module Enumerable
  def my_each_with_index
    return self unless block_given?

    for i in (0...length) do
      yield(self[i], i)

    end

    self
  end

  def my_all?
    return false unless block_given?

    res = true
    for i in (0...length) do
      unless yield(self[i])
        res = false
        break
      end

    end

    res
  end

  def my_select
    return self unless block_given?

    filtered = []

    for i in (0...length) do
      filtered.push(self[i]) if yield(self[i])
    end

    filtered
  end

  def my_any?
    return false unless block_given?

    res = true
    for i in (0...length) do
      unless yield(self[i])
        res = false
        break
      end

    end

    res
  end

  def my_none?
    return false unless block_given?

    res = true
    for i in (0...length) do
      if yield(self[i])
        res = false
        break
      end

    end

    puts res

    res
  end

  def my_map
    return self unless block_given?

    new_arr = []

    for i in (0...length) do
      new_arr << yield(self[i])
    end

    new_arr
  end
end

class Array
  def my_each
    return self unless block_given?

    for i in (0...length) do
      yield(self[i])

    end

    self
  end
end
