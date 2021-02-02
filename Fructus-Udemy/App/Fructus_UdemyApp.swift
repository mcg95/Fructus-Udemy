//
//  Fructus_UdemyApp.swift
//  Fructus-Udemy
//
//  Created by Mewan on 01/02/2021.
//

import SwiftUI

@main
struct Fructus_UdemyApp: App {
    //----------------------------------------
    // MARK:- Properties
    //----------------------------------------

    @AppStorage("isOnboarding") var isOnboarding = true
    
    //----------------------------------------
    // MARK:- Body
    //----------------------------------------
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView(fruits: fruitsData)
            } else {
                ContentView(fruits: fruitsData)
            }
        }
    }
}
