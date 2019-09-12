def consolidate_cart(cart)
  hash = Hash.new 
  cart.each {|item|
    item.each {|i, price|
      if !hash[i]
        hash[i] = price
        hash[i][:count] = 1 
      else 
        hash[i][:count] += 1
    end
    }
  }
hash
end

def apply_coupons(cart, coupons)
  coupons.each{|items|
        items.each{
            thing = items[:item]
        if cart[thing] && cart[thing][:count] <= items[:num]
            cart["#{thing} W/COUPON"] = 
            {:price => (items[:cost]-2.5), :clearance => cart[thing][:clearance], :count => 2}
        elsif cart["#{thing} W/COUPON"]
            cart["#{thing} W/COUPON"][:count] += 1
        end
        cart[thing][:count] = items[:num] - 2
        
        }
    }
    cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
