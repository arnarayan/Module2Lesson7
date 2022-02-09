//
//  PizzaView.swift
//  Module2Lesson12
//
//  Created by Anand Narayan on 2022-02-08.
//

import SwiftUI

struct PizzaView: View {
    
    var pz: Pizza
    var body: some View {
        ScrollView {
            HStack{
                Image(pz.image).resizable().aspectRatio(contentMode: .fit).frame(width: 75.0, height: 75.0)
                Text(pz.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                    .multilineTextAlignment(.leading)
            }
            HStack{
                Text(pz.topping1)
                Text(pz.topping2)
                Text(pz.topping3)
            }
        }

    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PizzaModel()
        PizzaView(pz: model.pizzaArray[0])
    }
}
