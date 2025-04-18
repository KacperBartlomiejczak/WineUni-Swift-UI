//
//  ChooseLevel.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct ChooseLevel: View {
    var body: some View {
        NavigationStack{
            VStack{
                ChooseLevelText()
                Spacer()
                VStack(spacing: 20){
                NavigationLink(destination: Text("")){
                    Image("Test by Category")
                }
                NavigationLink(destination: Text("")){
                    Image("Test All")
                }
                }.padding(.horizontal, 20)
            }
                
        }
        
    }
}

#Preview {
    ChooseLevel()
}
