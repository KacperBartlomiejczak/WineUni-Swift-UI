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
                    NavigationLink(destination: QuestionView().environmentObject(settings))
                    {
                        Image("Test All")
                    }
                }
                
            }
            
        }}
}

#Preview {
    ChooseLevelView().environmentObject(QuizSettings())
}
