//
//  FruitHeaderView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    @State private var isAnimating = false
    
    var fruit: Fruit
    
    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some View {
        ZStack {
          LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
          
          Image(fruit.image)
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .padding(.vertical, 20)
            .scaleEffect(isAnimating ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
          }
        }
      }
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
