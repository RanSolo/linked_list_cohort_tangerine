class LinkedListItem
  include Comparable
  attr_accessor :payload


  def initialize(item)
    @payload = item
    @next_item = nil
  end

  def <=>(item)
    return self.payload <=> item.payload if (self.payload.class == item.payload.class)
    puts "#{self.payload} = self\.payload"
    puts "#{item.payload} = item\.payload"
    class1 = self.payload.class
    class2 = item.payload.class
    puts "#{class1} = class1"
    puts "#{class2} = class2"
    return 1 if (class1 == Symbol) or (class1 == String and class2 == Fixnum)
    return -1 if (class1 == Fixnum) or (class1 == String and class2 == Symbol)
    end

# def === (item)
#  +    if self == item
#  +      return true
#  +    else return false
#  +    # item.size === anOther.item.size
#  +    end
#     end
  def === (item)
    puts "self.object_id = #{self.object_id}"
    puts "item.object_id = #{item.object_id}"
    if self.object_id == item.object_id
      return true
    else return false
    end
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




  # def <=> (item)
  #   comparison = self.size <=> item.size
  #
  #   if comparison == 0
  #     return self.size <=> item.size
  #   else return
  # #   if self.payload > item.length
  # #     return 1
  #  end
  # end



end
