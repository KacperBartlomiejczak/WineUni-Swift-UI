//
//  NavLink.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct NavLink<Destination: View>: View {
    
    let destination: Destination
    let title: String
    let textColor: Color
    let bgColor: Color
    let difficulty: Difficulty
    
    @EnvironmentObject var quizSettings : QuizSettings
    
    var body: some View {
        NavigationLink(destination: destination) {
                    Text(title)
                        .font(.headline)
                        .frame(width: 250, height: 60)
                        .background(bgColor, in: RoundedRectangle(cornerRadius: 10))
                        .foregroundColor(textColor)
                        
                        
                }
        .simultaneousGesture(TapGesture().onEnded{
            quizSettings.difficulty = difficulty
        })
    }
}

#Preview {
    NavLink(destination: Text("My Text"), title: "Novice", textColor: .white, bgColor: .green, difficulty: .novice)
}
