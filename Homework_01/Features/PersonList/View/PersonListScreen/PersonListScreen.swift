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
    
    @State private var showLink = false
    
    @State private var personLink: Person?
    
    var body: some View {
        let link = NavigationLink("", destination: PersonDetailScreen(person: personLink), isActive: $showLink)
        
        NavigationView {
            List {
                GenderPickerView(choosenItem: $genderToShow, title: "Filter")
                PersonListView(genderToShow: $genderToShow)
            }
            .background(link)
            .navigationTitle(Text("Persons"))
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                showLink = (environment.personLink != nil)
                personLink = environment.personLink
                environment.personLink = nil
            }
        }

    }

}
