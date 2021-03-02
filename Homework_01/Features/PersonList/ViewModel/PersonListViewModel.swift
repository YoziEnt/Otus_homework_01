//
//  PersonListViewModel.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import Combine

final class PersonListViewModel: ObservableObject {
    
    @Published private(set) var persons = [
        Person(name: "Gerard", avatar: "👦", gender: .male, age: 22),
        Person(name: "Alex", avatar: "👴🏽", gender: .male, age: 45),
        Person(name: "Monica", avatar: "👩🏻‍🦳", gender: .female, age: 21),
        Person(name: "Britney", avatar: "👩🏾‍🦰", gender: .female, age: 28),
        Person(name: "Salah", avatar: "👲🏿", gender: .male, age: 35),
        Person(name: "Harry", avatar: "👶🏽", gender: .male, age: 4),
        Person(name: "Ben", avatar: "👷🏻‍♂️", gender: .male, age: 31),
        Person(name: "Sara", avatar: "🧕", gender: .female, age: 30),
        Person(name: "Olga", avatar: "👧🏻", gender: .female, age: 12),
        Person(name: "Sofia", avatar: "👩🏼‍🎤", gender: .female, age: 16)
    ]
    
    var random: Person {
        let fallback = Person(name: "<No person>", avatar: "🙁", gender: .male, age: 0)
        return persons.randomElement() ?? fallback
    }
    
}
