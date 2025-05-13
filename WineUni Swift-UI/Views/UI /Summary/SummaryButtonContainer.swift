//
//  ButtonContainer.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 13/05/2025.
//

import SwiftUI

struct ButtonContainer: View {
    var body: some View {
        VStack(spacing: 20){
            Button(action: {}){
                Text("Try again")
                    .padding()
                    .frame(width: 250, height: 50)
                    .background(.blue.gradient, in: RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.white)
                    
            }
            Button(action: {}){
                Text("Thanks I am done")
                    .foregroundStyle(.black)
                    .frame(width: 250, height: 50)
            }
        }    }
}

#Preview {
    ButtonContainer()
}
