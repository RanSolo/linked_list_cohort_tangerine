class LinkedList
  attr_accessor :first_item, :size
  def initialize(*args)
    @size = 0
    args.each {|payload| add_item(payload)}
  end
  #
  # def add_item(item)
  # puts self.payload
  # end
  #
  # def get(item)

  #
  #
  def add_item(payload)
    if @first_item.nil?
      @first_item = LinkedListItem.new(payload)
      @size += 1
    # else
    #    @first_item
    #   until item.last?
    #     item = item.next_list_item
    #   end
    #   item.next_list_item = LinkedListItem.new(payload)
    #   @size += 1
    end
  end
  #
  def get(index)
    # raise IndexError if index < 0
    item = @first_item
    index.times do
      raise IndexError if item.nil?
      item = item.next_list_item
    end
    item.payload
  end
  #
  #
end
