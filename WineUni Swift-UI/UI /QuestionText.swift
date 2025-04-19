//
//  QuestionText.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct QuestionText: View {
    let AnswerTag: String
    let AnswerText: String
    
    var body: some View {
        Button(action: {} ){
            HStack{
                Text("\(AnswerTag): ").font(.headline)
                Text(AnswerText).multilineTextAlignment(.leading).font(.callout).foregroundStyle(.black)
            }
            
        }
    }
}

#Preview {
    QuestionText(AnswerTag: "A", AnswerText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis et diam ut fringilla. Sed non orci sed lacus ullamcorper pellentesque")
}
