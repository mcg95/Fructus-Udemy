//
//  SourceLinkView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct SourceLinkView: View {
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    var fruit: Fruit
    
    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.m.wikipedia.org/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
        .font(.footnote)
    }
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
