//
//  ContentView.swift
//  Project02Restart
//
//  Created by Kayque Dos anjos on 25/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("Onboarding") var isOnboardingViewActive : Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive{
                OnboardingView()
            } else{
                HomeView()
            }

        }
    }
}

#Preview {
    ContentView()
}
