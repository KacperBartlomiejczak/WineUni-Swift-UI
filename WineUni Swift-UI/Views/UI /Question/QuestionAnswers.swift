//
//  QuestionAnswers.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 12/05/2025.
//

import SwiftUI

struct QuestionAnswers: View {
    @Bindable var settings: QuizSettings

    var body: some View {
        if let question = settings.currentQuestion {
            VStack(spacing: 20) {
                ForEach(0..<question.answers.count, id: \.self) { index in
                    QuestionButton(
                        AnswerTag: String(UnicodeScalar(65 + index)!),
                        AnswerText: question.answers[index],
                        isSelected: settings.selectedAnswerIndex == index,
                        onSelected: {
                            settings.selectedAnswerIndex = index
                        }
                    )
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
        } else {
            Text("No question available")
                .padding(.horizontal, 10)
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    QuestionAnswers(settings: QuizSettings())
}
