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
    @Published var errorMessage = ""
    
    init() {
        // Get path to the json file within the app bundle
        
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            let fileUrl = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: fileUrl)
                let decoder = JSONDecoder()
                let response = try decoder.decode([Pizza].self, from: data)

                self.pizzaArray = response
                
            }
            catch{
                print("could not serialize")
                print(error)
            }
            
        }
        else {
            self.errorMessage = "Could not load the json file"
        }
        
        
    }
    


    
}
