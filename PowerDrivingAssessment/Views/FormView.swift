//
//  FormView.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-22.
//

import SwiftUI
import Observation

struct FormView: View {
   
 @State var drivingTest: PowerDrivingTest
   
    var body: some View {
        NavigationStack {
            Form {
                Section (header: Text ("Score Chart").foregroundColor(Color(.colorBackGround)).bold()) {
                    Text(" (4)Completely Indep: one attempt smoothly safely")
                    Text(" (3)Completes Hesitantly: #tries,no harm")
                    Text("(2)Bumps People Objects could cause harm.")
                    Text("(1)Unable to Complete requires assistance")

                }
                
              
                Section(header: Text("Bedroom").foregroundColor(Color(.colorBackGround)).bold()) {
                   Picker("Access Bed-Right", selection: $drivingTest.accessBedRight) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                  }
                  Picker("Access Bed-Left", selection: $drivingTest.accessBedLeft) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Dresser", selection: $drivingTest.approachingDresser) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Closet", selection: $drivingTest.approachingCloset) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)
                  }
               }
                
                Section(header: Text("Bathroom").foregroundColor(Color(.colorBackGround)).bold()) {
                  Picker("Into Bathroom", selection: $drivingTest.intoBathroom) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Sink", selection: $drivingTest.approachingSink) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Toilet", selection: $drivingTest.approachingToilet) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Exit Bathroom", selection: $drivingTest.exitBathroom) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
               }
                
                Section(header: Text("Doors").foregroundColor(Color(.colorBackGround)).bold()) {
                  Picker("Sliding Doors", selection: $drivingTest.slidingDoors) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Swing Open Doors", selection: $drivingTest.swingOpenDoors) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)
                  }
                  Picker("Automatic Doors", selection: $drivingTest.automaticDoors) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
                  Picker("Regular Doors", selection: $drivingTest.regularDoors) {
                      Text("(4)").tag(4)
                      Text("(3)").tag(3)
                      Text("(2)").tag(2)
                      Text("(1)").tag(1)
                      Text("No Applicable").tag(0)

                  }
               }
                
                Section(header: Text("Elevators").foregroundColor(Color(.colorBackGround)).bold()) {
                   Picker("Entering Elevator", selection: $drivingTest.enteringElevator) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                   Picker("Spacing in Elevator", selection: $drivingTest.spacingInElevator) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)
                   }
                   Picker("Exiting Elevator", selection: $drivingTest.exitingElevator) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                  
                }

                Section(header: Text("Parking").foregroundColor(Color(.colorBackGround)).bold()) {
                   Picker("Parking Under Table", selection: $drivingTest.parkingUnderTable) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                   Picker("Parking Beside Table", selection: $drivingTest.parkingBesideTable) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)
                   }
                   Picker("Back In Parking", selection: $drivingTest.backInParking) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                   Picker("Parallel Parking", selection: $drivingTest.parallelParking) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                }
                Section(header: Text("Skilled Driving").foregroundColor(Color(.colorBackGround)).bold()) {
                   Picker("Turning Right", selection: $drivingTest.turningRight) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                   Picker("Turning Left", selection: $drivingTest.turningLeft) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)
                   }
                   Picker("180 Turn", selection: $drivingTest.halfwayTurn) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                   Picker("Driving Backward", selection: $drivingTest.drivingBackwards) {
                       Text("(4)").tag(4)
                       Text("(3)").tag(3)
                       Text("(2)").tag(2)
                       Text("(1)").tag(1)
                       Text("No Applicable").tag(0)

                   }
                    Picker("Manipulating Congested Area", selection: $drivingTest.manipulatingCongestedArea) {
                        Text("(4)").tag(4)
                        Text("(3)").tag(3)
                        Text("(2)").tag(2)
                        Text("(1)").tag(1)
                        Text("No Applicable").tag(0)
                    }
                    Picker("Maneuverability", selection: $drivingTest.maneuverability) {
                        Text("(4)").tag(4)
                        Text("(3)").tag(3)
                        Text("(2)").tag(2)
                        Text("(1)").tag(1)
                        Text("No Applicable").tag(0)

                    }
                    Picker("Obstacles Unexpected", selection: $drivingTest.obstaclesUnexpected) {
                        Text("(4)").tag(4)
                        Text("(3)").tag(3)
                        Text("(2)").tag(2)
                        Text("(1)").tag(1)
                        Text("No Applicable").tag(0)

                    }
                    Picker("Speed Selection", selection: $drivingTest.speedSelection) {
                        Text("(4)").tag(4)
                        Text("(3)").tag(3)
                        Text("(2)").tag(2)
                        Text("(1)").tag(1)
                        Text("No Applicable").tag(0)

                    }
                    Picker("Sharing Public Space", selection: $drivingTest.sharingPublicSpace) {
                        Text("(4)").tag(4)
                        Text("(3)").tag(3)
                        Text("(2)").tag(2)
                        Text("(1)").tag(1)
                        Text("No Applicable").tag(0)

                    }
                }
//                Section(header: Text("Total Applicable Items").foregroundColor(Color(.colorBackGround)).bold()) {
//                    Slider(value: $drivingTest.totalApplicableItems, in: 1...30, step: 1)
//                    Text("Number of Applicable Items: \(Int(drivingTest.totalApplicableItems))")
//                                         .font(.headline)
//                                 }
                Section(header: Text("Total Activities Performed").foregroundColor(Color(.colorBackGround)).bold()) {
                    
                    let totalNumberOfActivities = drivingTest.countActivitiesPerformed()
                    Text("Total activities performed: \(Int(totalNumberOfActivities))")
                        .font(.headline)
                }

                Section(header: Text("Total Score").foregroundColor(Color(.colorBackGround)).bold()) {
                    Text("Total Score: \(drivingTest.totalPerformed)%")
                        .font(.headline)
                }
            }
            .navigationTitle("Power Mobility Assessment")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {

       FormView(drivingTest: PowerDrivingTest())
    }
}
