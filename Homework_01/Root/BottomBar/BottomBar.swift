//
//  BottomBar.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct BottomBar: View {
    
    var body: some View {
        
        TabView {
            
            FirstFeatureScreen().tabItem {
                Image(systemName: "1.circle")
                Text("First")
            }.tag("firstFeatureScreen")
            
            SecondFeatureScreen().tabItem {
                Image(systemName: "2.circle")
                Text("Second")
            }.tag("secondFeatureScreen")
            
            ThirdFeatureScreen().tabItem {
                Image(systemName: "3.circle")
                Text("Third")
            }.tag("thirdFeatureScreen")
            
        }
        
    }
}
