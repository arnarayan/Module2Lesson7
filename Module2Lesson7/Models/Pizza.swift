//
//  Pizza.swift
//  Module2Lesson7
//
//  Created by Anand Narayan on 2022-01-30.
//

import Foundation

struct Pizza: Hashable {

    
    private var name: String
    private var topping1: String
    private var topping2: String
    private var topping3: String
    
    init(_ name: String, _ topping1: String,_ topping2: String, _ topping3: String) {
        self.name = name
        self.topping1 = topping1
        self.topping2 = topping2
        self.topping3 = topping3
    }
    
    var Name: String {
        get {
            return self.name
        }
    }
    
    var Topping1: String {
        get {
            return self.topping1
        }
        set(topping) {
            self.topping1 = topping
        }
    }
    
    var Topping2: String {
        get {
            return self.topping2
        }
    }
    
    var Topping3: String {
        get {
            return self.topping3
        }
    }
}
