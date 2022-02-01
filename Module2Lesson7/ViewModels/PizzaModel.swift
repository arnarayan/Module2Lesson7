//
//  PizzaModel.swift
//  Module2Lesson7
//
//  Created by Anand Narayan on 2022-01-30.
//

import Foundation
import SwiftUI

class PizzaModel: ObservableObject {
    
    @Published var pizzaArray:[Pizza] = [Pizza]()
    
    init() {
        self.createMenu()
    }
    

    
    func addPizza(_ name: String, _ topping1: String, _ topping2: String, _ topping3: String) {
        self.pizzaArray.append(Pizza(name, topping1, topping2, topping3))
    }
    
    func addPinnapple() {
        for (index,_) in self.pizzaArray.enumerated() {
            self.pizzaArray[index].Topping1 = "Pinnapple"

        }
    }
    
    func createMenu() {
        self.pizzaArray.append(Pizza("pizza 1", "cheese", "pepporoni","olives"))
        self.pizzaArray.append(Pizza("pizza 2", "cheese", "chicken","pinnapple"))
        self.pizzaArray.append(Pizza("pizza 3", "cheese", "salami","red onions"))
    }
    
}
