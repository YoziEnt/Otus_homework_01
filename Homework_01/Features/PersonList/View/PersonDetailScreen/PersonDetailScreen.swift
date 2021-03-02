//
//  PersonDetailScreen.swift
//  Homework_01
//
//  Created by Олег on 01.03.2021.
//

import SwiftUI

struct PersonDetailScreen: View {
    
    let person: Person?
    
    var body: some View {
        let personToShow = person ?? Person(name: "Something went wrong", avatar: "🙁", gender: .male, age: 0)
        Text(personToShow.name).font(Font.system(size: 40))
        Text(personToShow.avatar).font(Font.system(size: 120))
        Text("Age: \(personToShow.age)").font(Font.system(size: 40))
    }
    
    
}
