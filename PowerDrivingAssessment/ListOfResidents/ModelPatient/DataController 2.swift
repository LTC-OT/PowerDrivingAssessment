//
//  DataController.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-31.
//

import CoreData
import Foundation


class DataController: ObservableObject {
   let container = NSPersistentContainer(name: "PatientModel")
   init () {
      container.loadPersistentStores { description, error in
         if let error = error {
            print("CoreData failed to load: \(error.localizedDescription)")
         }
      }
   }
}
