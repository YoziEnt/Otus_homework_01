//
//  Entity.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

struct Person {
    
    let name: String
    let avatar: String
    let gender: Gender
    
    enum Gender {
        case male
        case female
    }
    
}

extension Person: Identifiable {
    
    var id: String { name }
    
}
