//
//  HomeView.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-31.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    Image (systemName: "filemenu.and.cursorarrow")
                    Text("Home")
                }
                .tag(0)
            
           ResidentDataListView()
                .tabItem {
                    Image (systemName: "filemenu.and.selection")
                    Text("Add Resident Score")
                }
                .tag(1)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
