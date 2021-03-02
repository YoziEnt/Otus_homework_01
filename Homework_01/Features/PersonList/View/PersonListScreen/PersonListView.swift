//
//  PersonListView.swift
//  Homework_01
//
//  Created by Олег on 01.03.2021.
//

import SwiftUI

struct PersonListView: View {
    
    @EnvironmentObject var environment: EnvironmentState
    
    @Binding var genderToShow: GenderPickerView.Case

    var body: some View {
        ForEach(environment.personList.persons) { person in
            switch genderToShow {
            case .all: PersonListCell(person: person)
            case .male: if person.gender == .male { PersonListCell(person: person) }
            case .female: if person.gender == .female { PersonListCell(person: person) }
            }
        }
    }

}

