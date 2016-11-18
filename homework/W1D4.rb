class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove(el)
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue

  def initialize
    @queue = []
  end

  def enqueque(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    index = @map.find_index { |pair| pair.first == key }
    if index
      @map[index] = [key,value]
    else
      @map << [key, value]
    end
  end

  def lookup(key)
    value = nil
    @map.each { |pair| value = pair.last if pair.first == key }
    value
  end
end
