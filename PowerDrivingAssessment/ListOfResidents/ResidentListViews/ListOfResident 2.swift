//
//  ListOfResident.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-31.
//

import SwiftUI
import CoreData

struct ListOfResidents: View {
   @Environment(\.managedObjectContext) var moc
   @FetchRequest(sortDescriptors: []) var patients: FetchedResults<Patient>
   
   @State private var showingAddScreen = false
   
   var body: some View {
      ZStack {
         
          
          NavigationView {
              
            
            List {
               ForEach(patients) { patient in
                  
                  NavigationLink {
                     DetailView(patient: patient)
                  } label: {

                     VStack(alignment: .leading, spacing: 5) {
                        HStack {
                           Text("Name:")
                           Spacer()
                           Text(patient.name ?? "Unknown")
                              .font(.headline)
                        }
                        HStack {
                           Text("Total Score :")
                           Spacer()
                            Text(patient.totalScore ?? "Unknown")
                                                        .font(.title3).bold()
                        }
                     }
 
                  }
               }
               .onDelete(perform: deletePatients)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("List of Residents✏️")
            .toolbar {
               
               ToolbarItem(placement: .navigationBarLeading) {
                  EditButton()
               }
               ToolbarItem(placement: .navigationBarTrailing) {
                  Button {
                     showingAddScreen.toggle()
                  } label: {
                     Label("Add new patient", systemImage: "plus")
                  }
               }
            }
            .sheet(isPresented: $showingAddScreen) {
               AddPatientView()
            }
            
         }
      }
   }
   
   func deletePatients (at offsets: IndexSet) {
      for offset in offsets {
         let patient = patients [offset]
         moc.delete(patient)
      }
      try? moc.save()
   }
   
}

struct ListOfResidents_Previews: PreviewProvider {
   static var previews: some View {
      ListOfResidents()
   }
}
