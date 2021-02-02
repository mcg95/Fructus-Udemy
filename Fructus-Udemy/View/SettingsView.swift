//
//  SettingsView.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

struct SettingsView: View {
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------
    
    @Environment (\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding = false
    
    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //----------------------------------------
                    // MARK:- Section 1
                    //----------------------------------------
                    
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "FRUCTUS",
                            labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essesial nutrients, including Pottasium, dietary fibre, vitamins and much more.")
                                .font(.footnote)
                        } //: HSTACK
                    } //: GROUP BOX
                    
                    //----------------------------------------
                    // MARK:- Section 2
                    //----------------------------------------
                    
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Customisation",
                            labelImage: "paintbrush")) {
                        
                        Divider().padding(.vertical, 4)
                        
                        Text("Toggle button to reset app and access onboarding screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Divider().padding(.vertical, 4)

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted")
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                            } else {
                                Text("Restart")
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(
                                            cornerRadius: 8.0,
                                            style: .continuous)
                                ))
                    }
                    
                    //----------------------------------------
                    // MARK:- Section 3
                    //----------------------------------------

                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Application",
                            labelImage: "apps.iphone")) {
                        SettingsRowView(name: "Developer",
                                        content: "Mewan Chathuranga")

                        SettingsRowView(name: "Designer",
                                        content: "Robert Petras")
                        
                        SettingsRowView(name: "Compatibility",
                                        content: "iOS 14")

                        SettingsRowView(name: "Twitter",
                                        linkLabel: "@Mc_mewan",
                                        destination: "https://twitter.com/mc_mewan")
                        
                        SettingsRowView(name: "SwiftUI",
                                        content: "2.0")
                        
                        SettingsRowView(name: "Version",
                                        content: "1.0.0")
                    }// : GROUP BOX
                }// : VSTACK
            }
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .padding()
        } //: SCROLL VIEW
    } //: NAVIGATION VIEW
}

//----------------------------------------
// MARK:- Preview
//----------------------------------------

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
