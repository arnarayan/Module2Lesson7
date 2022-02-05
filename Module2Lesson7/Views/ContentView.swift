//
//  ContentView.swift
//  Module2Lesson7
//
//  Created by Anand Narayan on 2022-01-30.
//

import SwiftUI

struct ContentView: View {
    
    
   var model = RecipeModel()
   @ObservedObject var pizzaModel = PizzaModel()
    
    var body: some View {
        Text("This is your pizza Order!")
        if (pizzaModel.errorMessage == "") {
            List(pizzaModel.pizzaArray, id: \.self) {pz in
                
                VStack(alignment: .leading) {
                    Text(pz.name)
                        .font(.largeTitle)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.leading)
                    HStack{
                        Text(pz.topping1)
                        Text(pz.topping2)
                        Text(pz.topping3)
                    }
                }
            }
        }
        else {
            Text(pizzaModel.errorMessage)
        }



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
