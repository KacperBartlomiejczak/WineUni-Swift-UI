//
//  ChooseLevel.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct ChooseLevelView: View {
    @EnvironmentObject var settings: QuizSettings
    
    var body: some View {
        NavigationStack{
            VStack{
                ChooseLevelText()
                Spacer()
                VStack(spacing: 20){
                NavigationLink(destination: Text("")){
                    Image("Test by Category")
                }
                    Button(action: {
                        settings.currentScreen = .question
                        print(settings.currentScreen)
                    }){
                        Image("Test All")
                    }
                }.padding(.horizontal, 20)
            }
                
        }
        
    }
}

#Preview {
    ChooseLevelView().environmentObject(QuizSettings())
}
