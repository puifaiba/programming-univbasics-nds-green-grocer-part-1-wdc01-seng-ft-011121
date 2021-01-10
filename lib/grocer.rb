def find_item_by_name_in_collection(name, collection)
  collection.each_with_index do |items, index|
    if items[:item] == name
      return collection[index]
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_array = []
  cart
  cart.each do |items|
    if find_item_by_name_in_collection(cart[:item], cart)
      consolidated_array[:count] += 1
    else
      consolidated_array = [{
        :item => cart[:item],
        :price => cart[:price],
        :clearance => cart[:clearance],
        :count => 1
        }]
    end
  end
  return consolidated_array
end
