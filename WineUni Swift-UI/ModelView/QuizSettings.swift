//
//  QuizSettings.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import Foundation
import SwiftUI

class QuizSettings: ObservableObject {

    @Published var difficulty: Difficulty = .novice
    @Published var userScore: Int = 0
    @Published var answeredQuestions: Int = 0
    
    func nextQuestion(){
        answeredQuestions += 1
        
    }
    
}
