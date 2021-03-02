//
//  AboutScreen.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct AboutScreen: View {
    
    @State var showCredits: Bool = false
    
    var body: some View {
        
        Button(action: { showCredits.toggle() }) {
            Text("Version 1.0.0")
        }.sheet(isPresented: $showCredits, content: {
            Text("Made by Me").font(.largeTitle)
        })
        
    }
    
}
