//
//  WelcomeText.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct WelcomeText: View {
    var body: some View {
        HStack( spacing: 50){
            
            VStack(alignment:.leading){
                Text("Welcome")
                HStack(spacing: 2){
                    Text("To ")
                    Text("WineUni").foregroundStyle(Color.red)
                }
                
            }.font(.system(.title, design: .default, weight: .bold))
            
            Image("Logo")
        }
    }
}

#Preview {
    WelcomeText()
}
