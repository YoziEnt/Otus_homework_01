//
//  GenderPickerView.swift
//  Homework_01
//
//  Created by Олег on 28.02.2021.
//

import SwiftUI

struct GenderPickerView: View {
    
    @Binding var choosenItem: Case
    
    var title: String
    
    var body: some View {
        Picker(selection: $choosenItem, label: Text(title)) {
            Text("All").tag(Case.all)
            Text("Male").tag(Case.male)
            Text("Female").tag(Case.female)
        }
        .pickerStyle(SegmentedPickerStyle())
    }
    
    enum Case {
        case all
        case male
        case female
    }
    
}
