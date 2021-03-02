//
//  WelcomeScreen.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @EnvironmentObject var environment: EnvironmentState
    
    var body: some View {
        let randomPerson = environment.personList.random

        VStack {
            Text("EmojiBook").font(Font.system(size: 50))
            Spacer().frame(height: 40)
            Text("⭐️ You might be interested").font(Font.system(size: 25))
            Spacer().frame(height: 10)
            Button(action: {
                environment.personLink = randomPerson
                environment.selection = .personList
            }) {
                Text(randomPerson.avatar).font(Font.system(size: 50))
            }
            
            Spacer().frame(height: 10)
            Text(randomPerson.name).font(Font.system(size: 20))
        }
        
    }
    
}
