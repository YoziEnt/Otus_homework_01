//
//  RootView.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct RootView: View {
    
    @StateObject private var environmentState: EnvironmentState = .init()
    
    var body: some View {
        BottomBar(environmentState: environmentState)
    }
    
}

struct RootView_Previews: PreviewProvider {
    
    static var previews: some View {
        RootView()
    }
    
}
