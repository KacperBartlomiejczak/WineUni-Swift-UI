//
//  WineUni_Swift_UIApp.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 15/04/2025.
//

import SwiftUI

@main
struct WineUni_Swift_UIApp: App {
    @StateObject var settings = QuizSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
        }
    }
}
