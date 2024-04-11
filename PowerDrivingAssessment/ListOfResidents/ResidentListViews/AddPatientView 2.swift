//
//  AddPatientView.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-31.
//

import SwiftUI

struct AddPatientView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var totalScore = ""
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("New Patient")) {
                    TextField("Name", text: $name)
                }
                
                Section(header: Text("Total Score")) {
                    TextField("Total Score", text: $totalScore)
                }
                
                Section {
                    Button("SAVE") {
                        let newPatient = Patient (context: moc)
                        
                        newPatient.name = name
                        newPatient.totalScore = totalScore

                        try? moc.save()
                        dismiss()
                    }
                    
                }
                
            }
            .navigationTitle("Add a patient record")
        }
    }
}

struct AddPatientView_Previews: PreviewProvider {
    static var previews: some View {
        AddPatientView()
    }
}
