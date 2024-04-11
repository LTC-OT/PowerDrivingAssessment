//
//  ResidentDataListView.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2024-01-04.
//

import SwiftUI
import SwiftData

struct ResidentDataListView: View {
    
    @Environment(\.modelContext) var context
    @State private var isShowingItemSheet = false
    @Query (sort: \Resident.date) var residents: [Resident]
    @State private var residentToEdit: Resident?
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(residents){ resident in
                    ResidentCell(resident: resident)
                        .onTapGesture {
                            residentToEdit = resident
                        }
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        context.delete(residents[index])
                    }
                }
            }
            .navigationTitle("Residents")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $isShowingItemSheet) {AddResidentSheet()}
            .sheet(item: $residentToEdit){ resident in
                UpdateResidentSheet(resident: resident)
            }
            .toolbar{
                if !residents.isEmpty {
                    Button("Add New Residents",systemImage: "plus" ){
                        isShowingItemSheet = true
                    }
                    .buttonStyle(.bordered)
                }
            }
            .overlay {
                if residents.isEmpty{
                    ContentUnavailableView(label: {
                        Label("No residents", systemImage: "list.bullet.rectangle.portrait")
                    }, description: {
                        Text("Start adding residents to see your list")
                    }, actions: {
                        Button("Add Residents") {isShowingItemSheet = true}
                            .buttonStyle(.borderedProminent)
                    })
                    .offset(y: -60)
                }
            }
        }
    }
}

#Preview {
    ResidentDataListView()
}



//ResidentCellView

struct ResidentCell: View{
    let resident: Resident
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            HStack {
                Text("Name:")
                
                Text (resident.name).bold()
            }
            HStack {
                Text("Date of the Test:")
                
                Text(resident.date, format: .dateTime.month(.abbreviated).day())
                    .frame(width: 70, alignment: .leading).bold()
            }
            
            HStack {
                Text ("Resident's Score:")
                
                Text(resident.totalScore).bold()
            }
        }
        

    }
}




//AddResidentSheetView

struct AddResidentSheet: View {
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) private var dismiss
    @State private var name: String = ""
    @State private var date: Date = .now
    @State private var totalScore: String = ""
    @State private var comments: String = ""
    
    var body: some View {
        
        NavigationStack {
            Form {
                Section (header: Text ("Resident Initial Data").fontWeight(.heavy)) {
                    VStack {
                        TextField("Resident Name", text: $name)
                        DatePicker("Date of Test", selection: $date, displayedComponents: .date)
                    }
                    
                }
                Section(header: Text ("Score Obtained in the Test").fontWeight(.heavy)) {
                    TextField("Total Score", text: $totalScore)
                }

                
                Text ("Comments:  Test Performance")
                ScrollView {
                    TextEditor(text: $comments)
                        .frame(minHeight: 300)
                }
                    
                
            }
            .navigationTitle("New Residents")
            .navigationBarTitleDisplayMode(.large)
            
           
            
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Cancel") {dismiss()}
                }
                ToolbarItemGroup(placement: .topBarTrailing){
                    Button ("Save") {
                        let resident = Resident(name: name, date: date, totalScore: totalScore, comments: comments)
                        context.insert(resident)
                        dismiss()
                        
                    }
                }
            }
        }
    }
}



//UpdateResidentSheetView

struct UpdateResidentSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    @Bindable var resident: Resident
    
    var body: some View {
        NavigationStack {
            Form {
                Section (header: Text ("Resident Initial Data").fontWeight(.heavy)) {
                    VStack {
                        TextField("Resident Name", text: $resident.name)
                        DatePicker("Date of Test", selection: $resident.date, displayedComponents: .date)
                    }
                    
                }
                Section(header: Text ("Score Obtained in the Test").fontWeight(.heavy)) {
                    TextField("Total Score", text: $resident.totalScore)
                }

                Text ("Comments:  Test Performance")
                ScrollView {
                    TextEditor(text: $resident.comments)
                        .frame(minHeight: 300)
                }
                
            }
            .navigationTitle("New Residents")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Cancel") {dismiss()}
                }
            }
        }
    }
}

