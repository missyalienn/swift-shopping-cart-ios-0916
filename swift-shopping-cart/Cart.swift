//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    
    var items: [Item] = []

    
    
 //1
    func totalPriceInCents() -> Int {
        var totalPrice = 0
        for item in items {
         totalPrice += item.priceInCents
        }
       return totalPrice
    }
    
//2
    
    func add(item: Item) {
        items.append(item)
    }
    
    
// 3. Write a method named remove(item:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.
    
    
    func remove(item: Item) {
        for (index, a) in items.enumerated() {
            if item.name == a.name {
                items.remove(at: index)
            }
        }
    
    }
    

   //4. Write a method named items(withName:) that takes one string argument (called name) and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.
    
    // loop through items property array
    // if item's name property matches name,
    // append item to return array
    
    func items(withName name: String) -> [Item] {
        var nameArray: [Item] = []
        for item in items{
            if item.name == name{
                nameArray.append(item)
            }
        }
        return nameArray
    }
    
   
    //5. Write a method named items(withMinPrice:) that takes one integer argument (called price) and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
    
    //loop through items property array
    // if item.priceInCents >= price {
    // append to priceArray
    // return priceArray
    
    func items (withMinPrice price: Int) -> [Item] {

        var priceArray: [Item] = []
        for item in items {
            if item.priceInCents >= price {
                priceArray.append(item)
            }
        }
        
        return priceArray
    }
    
    
    
    //6. Write a method named items(withMaxPrice:) that take one integer argument (called price) and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.
    
  
    func items(withMaxPrice price: Int) -> [Item] {
        
        var maxPriceArray: [Item] = []
        
        for item in items{
            if item.priceInCents <= price{
                maxPriceArray.append(item)
            }
        }
        return maxPriceArray
    }
    
    
    
    
}


