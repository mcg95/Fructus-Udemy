//
//  FruitNutrientsView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    var fruit: Fruit
    
    let nutrients = ["Energy","Sugar","Fat","Proteins","Vitamins","Minerals"]
    
    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: GROUP BOX
    }
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
