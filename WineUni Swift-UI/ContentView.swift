//
//  ContentView.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: QuizSettings
    
    var body: some View {
        NavigationStack{
            ZStack{
                WelcomeView().environmentObject(settings)
            }
        }.navigationBarBackButtonHidden(true)
    }
        
}

#Preview {
    ContentView().environmentObject(QuizSettings())
}
