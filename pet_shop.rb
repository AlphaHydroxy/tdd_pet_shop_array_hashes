def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  dog_found = []
  for pet in pet_shop[:pets]
    if pet [:breed] == breed
    dog_found.push(pet)
    end
  end
  return dog_found
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
    pet_shop[:pets].delete(pet)
    end
  # end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
    return customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
  return customers[:pets].push(new_pet)
end

def customer_can_afford_pet(customers, new_pet)
  available = customers[:cash]
  pet_price = new_pet[:price]
  if available >= pet_price
    return true
  end
  return false
end
end
