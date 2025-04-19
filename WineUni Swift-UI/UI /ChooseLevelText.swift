//
//  ChooseLevelText.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 19/04/2025.
//

import SwiftUI

struct ChooseLevelText: View {
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                Text("What do you want")
                HStack( spacing: 1){
                    Text("to do ")
                    Text("today?").foregroundStyle(.blue)
                }
            }.font(.system(.title, design: .default, weight: .bold))
            Spacer()
        }.padding()
    }
}

#Preview {
    ChooseLevelText()
}
