//
//  WelcomeView.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct WelcomeView: View {
 

    var body: some View {
        NavigationStack{
            
      
        VStack {
            WelcomeText()
            Spacer()
            Spacer()
            VStack(){
                Text("Choose your level:")
                    .font(.title)
                    .padding()
                VStack(spacing: 25){
                    NavLink(destination: ChooseLevelView().environmentObject(QuizSettings()), title: "Novice", textColor: .white, bgColor: .blue, difficulty: .novice)
                    NavLink(destination: ChooseLevelView().environmentObject(QuizSettings()), title: "Intermediate ", textColor: .white, bgColor: .green, difficulty: .intermediate)
                    NavLink(destination: ChooseLevelView().environmentObject(QuizSettings()), title: "Expert", textColor: .white, bgColor: .red, difficulty: .expert)
                }
                
            }.padding()
            
            Spacer()
            }
        }
    }
}
#Preview {
    WelcomeView()
        .environmentObject(QuizSettings())
}
