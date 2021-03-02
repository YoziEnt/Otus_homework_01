//
//  PersonListCell.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct PersonListCell: View {
    
    let person: Person
    
    var body: some View {
        
        NavigationLink(destination: PersonDetailScreen(person: person)) {
            Text("\(person.avatar)   \(person.name)")
        }
        
    }
    
}

