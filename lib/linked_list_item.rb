class LinkedListItem
  include Comparable
  attr_accessor :payload
  # include Comparable
  # # attr_accessor :item, :next_item
  #called by LinkedListItem.new
  def initialize(item)
    @payload = item
    @next_item = nil
  end

  def next_list_item=(item)
    if item === self
      raise ArgumentError
    end
      @next_item = item
    end
  end

  def next_list_item
    @next_item
  end

  def last?
    if @next_item === nil
      return true
    else return false
    end
  end

  def === (item)
    if self == item
      return true
    else return false
    # item.size === anOther.item.size
    end
  end

  def <=> (item)
    comparison = self.size <=> item.size

    if comparison == 0
      return self.size <=> item.size
    else return comparison
  #   if self.payload > item.length
  #     return 1
  #   end
  # end



end
