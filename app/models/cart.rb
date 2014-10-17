class Cart < Array

  def add(id,quantity=1)
      id = id.to_i
      quantity = quantity.to_i
      if get(id)
        update(id,get(id)[:quantity] + quantity)
      else
        self << {id: id, quantity: quantity}
      end
  end

  def get(id)
    id = id.to_i
    self.each do |element|
      if element[:id] == id
        return element
      end
    end
    return
  end

  def update(id,quantity)
    id = id.to_i
    quantity = quantity.to_i
    for i in 0...self.size do
      if self[i] && self[i][:id] == id
        self[i] = {id: id,quantity: quantity}
      end
    end
  end

  def remove(id)
    id = id.to_i
    for i in 0...self.size do
      if self[i] && self[i][:id] == id
        self.delete_at(i)
      end
    end
  end

  def total_price
    sum = 0
    self.each do |cart|
      sum += (Item.find(cart[:id]).unit_price * cart[:quantity])
    end
    return sum
  end
  
  def isEmpty
    self.size == 0
  end

end