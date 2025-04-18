//
//  ContentView.swift
//  WineUni Swift-UI
//
//  Created by Kacper Bartlomiejczak on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        NavigationView {
            VStack {
                WelcomeText()
                Spacer()
                Spacer()
                VStack(){
                    Text("Choose your level:")
                        .font(.title)
                        .padding()
                    VStack(spacing: 25){
                        NavLink(destination: Text("View"), title: "Novice", textColor: .white, bgColor: .blue)
                        NavLink(destination: Text("View"), title: "Intermediate ", textColor: .white, bgColor: .green)
                        NavLink(destination: Text("View"), title: "Expert", textColor: .white, bgColor: .red)
                    }
                   
                }.padding()
                
                Spacer()
                
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
