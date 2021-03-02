//
//  BottomBar.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct BottomBar: View {

    @StateObject var environmentState: EnvironmentState
    
    var body: some View {
        
        TabView(selection: $environmentState.selection) {
            WelcomeScreen().tabItem {
                Image(systemName: "1.circle")
                Text("First")
            }.tag(Tab.welcome)
            
            PersonListScreen().tabItem {
                Image(systemName: "2.circle")
                Text("Second")
            }.tag(Tab.personList)
            
            AboutScreen().tabItem {
                Image(systemName: "3.circle")
                Text("Third")
            }.tag(Tab.about)
        }.environmentObject(environmentState)
        
    }
    
    enum Tab : String {
        case welcome
        case personList
        case about
    }
    
}

