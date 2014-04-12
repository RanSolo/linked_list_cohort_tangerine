class LinkedListItem
  include Comparable

  # include Comparable
  # def === (anOther)
  #   item.size === anOther.item.size
  # end
  # # attr_accessor :item, :next_item
  #called by LinkedListItem.new
  def initialize(item)
    @item = item
    @next_item = nil
  end
  def <=> (anOther)
    item.size > anOther.item.size
  end

  def payload
    @item
  end

  def next_list_item=(item)
    if item === self
      raise ArgumentError
    end
    @next_item = item
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



end
