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
        ZStack{
            switch settings.currentScreen{
            case .welcome:
                WelcomeView()
                    
            case .chooseLevel:
                ChooseLevelView()
                    
            case .question:
                QuestionView()
                    
                
            }
        }
    }
}

#Preview {
    ContentView().environmentObject(QuizSettings())
}
