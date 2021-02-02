//
//  SettingsRowView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct SettingsRowView: View {
    
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    var name: String
    
    var content: String? = nil
    
    var linkLabel: String? = nil
    
    var destination: String? = nil

    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && destination != nil {
                    Link(linkLabel!, destination: URL(string: destination!)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Developer",
                            linkLabel: "Twitter",
                            destination: "https://twitter.com/mc_mewan95")
                .previewLayout(.fixed(width: 375, height: 60))
                .preferredColorScheme(.dark)
                .padding()
        }
    }
}
