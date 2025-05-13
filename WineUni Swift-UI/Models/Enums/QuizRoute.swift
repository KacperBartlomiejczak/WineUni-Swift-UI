//
//  QuizRoute.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 11/05/2025.
//

import Foundation

enum QuizRoute: Hashable{
    case chooseLevel
    case question
    case summary
    
    var id: Self {self}
}
