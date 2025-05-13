//
//  NavLink.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct NavLink: View {
    
    @Bindable var quizSettings: QuizSettings
    
    let title: String
    let textColor: Color
    let bgColor: Color
    let difficulty: Difficulty
    
    @Binding var currentRoute: QuizRoute?
    var body: some View {
        
        Button(action: {
            quizSettings.difficulty = difficulty
            quizSettings.startNewQuiz(forceReload: true)
            currentRoute = .chooseLevel
        }){
            Text(title)
                .font(.headline)
                .frame(width: 250, height: 50)
                .background(bgColor, in: RoundedRectangle(cornerRadius: 10))
                .foregroundColor(textColor)
        }
        
            
            
        }
        
        
    
    }



