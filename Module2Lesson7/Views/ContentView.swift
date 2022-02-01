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
        List(model.recipes, id:\.self) { rec in
            VStack {
                HStack {
                    Text(rec.name)
                    Text("--")
                    Text(rec.cuisine)
                }
            }
        }

        List(pizzaModel.pizzaArray, id: \.self) {pz in
            
            VStack(alignment: .leading) {
                Text(pz.Name)
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                    .multilineTextAlignment(.leading)
                HStack{
                    Text(pz.Topping1)
                    Text(pz.Topping2)
                    Text(pz.Topping3)
                }
            }
        }
        HStack{
            Button(action: {
                self.pizzaModel.addPizza("Pizza 4", "Beans", "Beans", "Beans")
            }, label: {
                Text("Stink Me!")
            })
            Button(action: {
                self.pizzaModel.addPinnapple()
            }, label: {
                Text("Pinapple me!")
            })
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
