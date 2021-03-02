//
//  EnvironmentState.swift
//  Homework_01
//
//  Created by Олег on 01.03.2021.
//

import Combine

final class EnvironmentState : ObservableObject {
    
    @Published var selection: BottomBar.Tab = .welcome
    @Published var personLink: Person? = nil
    @Published var personList: PersonListViewModel = .init()
    
}
