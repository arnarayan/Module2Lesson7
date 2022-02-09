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
        if (pizzaModel.errorMessage == "") {
            NavigationView{
                List(pizzaModel.pizzaArray, id: \.self) {pz in
                    NavigationLink(destination: PizzaView(pz: pz), label: {
                        VStack(alignment: .leading) {
                            Text(pz.name)
                        }
                    })

                }.navigationBarTitle("This is your pizza order")
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
