//
//  FruitDetailView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct FruitDetailView: View {
    
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    var fruit: Fruit

    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // Sub headline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView(fruit: fruit)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //:  VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //:  VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL VIEW
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION VIEW
    }
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}
