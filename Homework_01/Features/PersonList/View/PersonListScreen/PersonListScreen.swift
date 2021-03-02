//
//  PersonListScreen.swift
//  Homework_01
//
//  Created by Олег on 26.02.2021.
//

import SwiftUI

struct PersonListScreen: View {

    @EnvironmentObject var environment: EnvironmentState
    
    @State private var genderToShow: GenderPickerView.Case = .all
    
    @State var showSecondView = false
    
    var body: some View {
        
        NavigationView {
            List {
                GenderPickerView(choosenItem: $genderToShow, title: "Filter")
                PersonListView(genderToShow: $genderToShow)
            }.background(NavigationLink("", destination: PersonDetailScreen(person: environment.personLink!), isActive: $showSecondView))
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                
                showSecondView = (environment.personLink != nil)
            }
        }

    }

}


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
