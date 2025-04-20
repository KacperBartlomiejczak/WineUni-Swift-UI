//
//  QuestionView.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var quizSettings: QuizSettings
    
    var body: some View {
        NavigationStack(){
            
            VStack(spacing: 30){
                HStack(){
                    Text("Question \(quizSettings.answeredQuestions)/10").foregroundStyle(.blue)
                        .font(.system(.title2, design: .default, weight: .bold))
                    Spacer()
                    Button(action: {quizSettings.currentScreen = .welcome}){
                        Text("Quit test").foregroundStyle(.black)
                    }.font(.system(.title2, design: .default, weight: .light))
                    
                }
                
                Image("Dog").resizable().scaledToFit().frame(width: 370)
                Spacer()
              
                VStack(spacing: 20){
                    QuestionButton(AnswerTag: "A", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                    QuestionButton(AnswerTag: "B", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                    QuestionButton(AnswerTag: "C", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                    QuestionButton(AnswerTag: "D", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                        
                    
                }
            }.padding()
        }
    }
}

#Preview {
    QuestionView().environmentObject(QuizSettings())
}
