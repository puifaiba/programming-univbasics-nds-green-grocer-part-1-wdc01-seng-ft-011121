def find_item_by_name_in_collection(name, collection)
  collection.each_with_index do |items, index|
    if items[:item] == name
      return collection[index]
    end
  end
  return nil
end

def consolidate_cart(cart)
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_array = []
  cart_item = find_item_by_name_in_collection(items[:item], consolidated_array)
  cart_item.each do |items|
    if cart_item !== nil
      cart_item[:count] += 1
    else
      cart_item = [{
        :item => cart[:item],
        :price => cart[:price],
        :clearance => cart[:clearance],
        :count => 1
        }]
        consolidated_array.push(cart_item)
    end
  end
  return consolidated_array
end
