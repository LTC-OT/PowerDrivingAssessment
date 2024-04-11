//
//  DetailView.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-31.
//

import SwiftUI

struct DetailView: View {
   
   let patient : Patient
   
   var body: some View {
      
           ScrollView  {
               Section {
                   VStack (alignment: .leading, spacing: 10) {
                       Section (header: Text("Resident Current Score") .font(.subheadline).bold()) {
                           VStack (alignment: .leading, spacing: 10) {
                               Text("Resident Score:")
                               
                               Text( patient.totalScore ?? "Total Score")
                                                           .font(.title3).bold()
                               
                           }
                           .padding()
                       }
                       
                       
                   }
               }
                   .navigationTitle(patient.name ?? "")
                   .navigationBarTitleDisplayMode(.inline)
           }
       
       }
}



