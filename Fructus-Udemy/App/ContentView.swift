//
//  ContentView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct ContentView: View {
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    @State private var isShowingSettings = false
    
    var fruits: [Fruit] = fruitsData
    
    //----------------------------------------
    // MARK:- Body
    //----------------------------------------

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: BUTTON
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
            .navigationTitle("Fruits")
        } //:  NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
