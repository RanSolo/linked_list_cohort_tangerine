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
    # index.times do
      # raise IndexError if item.nil?
      # item = item.next_list_item
    # end
    item.payload
  end
  #
  # def last
  #   item = @first_item
  #   return item if item.nil?
  #   until item.last?
  #     item = item.next_list_item
  #   end
  #   item.payload
  # end
  #
  # def to_s
  #   item = @first_item
  #   return "| |" if item.nil?
  #   string = "#{item.payload}"
  #   until item.last?
  #     item = item.next_list_item
  #     new_load = item.payload
  #     string = "#{string}, #{new_load}"
  #   end
  #   "| #{string} |"
  # end
  #
  # def [](index)
  #   get(index)
  # end
  #
  # def []=(index, value)
  #   item = @first_item
  #   index.times do
  #     item = item.next_list_item
  #   end
  #   item.payload = value
  # end
  #
  # def remove(index)
  #   return @first_item = @first_item.next_list_item if index == 0
  #   item = @first_item
  #   (index - 1).times do
  #     item = item.next_list_item
  #   end
  #   raise IndexError if item.nil?
  #   item.next_list_item = item.next_list_item.next_list_item
  #   @size -= 1
  # end
  #
  # def indexOf(payload)
  #   item = @first_item
  #   index = 0
  #   return nil if item.nil?
  #   until item.payload == payload
  #     return nil if item.last?
  #     item = item.next_list_item
  #     index += 1
  #   end
  #   index
  # end
end
