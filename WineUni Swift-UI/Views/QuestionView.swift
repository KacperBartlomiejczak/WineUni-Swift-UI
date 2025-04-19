//
//  QuestionView.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct QuestionView: View {
    @ObservedObject var quizSettings: QuizSettings
    
    var body: some View {
        NavigationStack(){
            
            VStack(spacing: 30){
                HStack(){
                    Text("Question \(quizSettings.answeredQuestions)/10").foregroundStyle(.blue)
                        .font(.system(.title2, design: .default, weight: .bold))
                    Spacer()
                    NavigationLink(destination: ContentView()){
                        Text("Quit test").foregroundStyle(.black)
                    }.font(.system(.title2, design: .default, weight: .light))
                    
                }
                
                Image("Dog").resizable().scaledToFit().frame(width: 370)
                Spacer()
              
                VStack(spacing: 20){
                    QuestionText(AnswerTag: "A", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                    QuestionText(AnswerTag: "B", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                    QuestionText(AnswerTag: "C", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                    QuestionText(AnswerTag: "D", AnswerText: "To jest wymiar na iphone5. Tu mozesz wpisac odpowiedí, która nie bedzie przekracza 276pt width")
                        
                    
                }
            }.padding()
        }
    }
}

#Preview {
    QuestionView(quizSettings: QuizSettings())
}
