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
               Section(header: Text("Total Applicable Items").foregroundColor(Color("ColorBackGround")).bold()) {
                   Slider(value: $drivingTest.totalApplicableItems, in: 1...30, step: 1)
                   Text("Number of Applicable Items: \(Int(drivingTest.totalApplicableItems))")
                                        .font(.headline)
                                }
               Section(header: Text("Bedroom").foregroundColor(Color("ColorBackGround")).bold()) {
                   Picker("Access Bed-Right", selection: $drivingTest.accessBedRight) {
                       Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                       Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                       Text("Bumps People Objects could cause harm. (2)").tag(2)
                       Text("Unable to Complete requires assistance (1)").tag(1)
                       Text("No Applicable").tag(0)

                  }
                  Picker("Access Bed-Left", selection: $drivingTest.accessBedLeft) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Dresser", selection: $drivingTest.approachingDresser) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Closet", selection: $drivingTest.approachingCloset) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)
                  }
               }
                
               Section(header: Text("Bathroom").foregroundColor(Color("ColorBackGround")).bold()) {
                  Picker("Into Bathroom", selection: $drivingTest.intoBathroom) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Sink", selection: $drivingTest.approachingSink) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Toilet", selection: $drivingTest.approachingToilet) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Exit Bathrrom", selection: $drivingTest.exitBathroom) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
               }
                
               Section(header: Text("Doors").foregroundColor(Color("ColorBackGround")).bold()) {
                  Picker("Into Bathroom", selection: $drivingTest.slidingDoors) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Approaching Sink", selection: $drivingTest.swingOpenDoors) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)
                  }
                  Picker("Approaching Toilet", selection: $drivingTest.automaticDoors) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
                  Picker("Exit Bathroom", selection: $drivingTest.regularDoors) {
                     Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                     Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                     Text("Bumps People Objects could cause harm. (2)").tag(2)
                     Text("Unable to Complete requires assistance (1)").tag(1)
                     Text("No Applicable").tag(0)

                  }
               }
                
                Section(header: Text("Elevators").foregroundColor(Color("ColorBackGround")).bold()) {
                   Picker("Entering Elevator", selection: $drivingTest.enteringElevator) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                   Picker("Spacing in Elevator", selection: $drivingTest.spacingInElevator) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)
                   }
                   Picker("Exiting Elevator", selection: $drivingTest.exitingElevator) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                  
                }

                Section(header: Text("Parking").foregroundColor(Color("ColorBackGround")).bold()) {
                   Picker("Parking Under Table", selection: $drivingTest.parkingUnderTable) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                   Picker("Parking Beside Table", selection: $drivingTest.parkingBesideTable) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)
                   }
                   Picker("Back In Parking", selection: $drivingTest.backInParking) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                   Picker("Parallel Parking", selection: $drivingTest.parallelParking) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requieres assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                }
                Section(header: Text("Skilled Driving").foregroundColor(Color("ColorBackGround")).bold()) {
                   Picker("Turning Right", selection: $drivingTest.turningRight) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                   Picker("Turning Left", selection: $drivingTest.turningLeft) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)
                   }
                   Picker("180 Turn", selection: $drivingTest.halfwayTurn) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                   Picker("Driving Backward", selection: $drivingTest.drivingBackwards) {
                      Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                      Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                      Text("Bumps People Objects could cause harm. (2)").tag(2)
                      Text("Unable to Complete requires assistance (1)").tag(1)
                      Text("No Applicable").tag(0)

                   }
                    Picker("Manipulating Congested Area", selection: $drivingTest.manipulatingCongestedArea) {
                       Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                       Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                       Text("Bumps People Objects could cause harm. (2)").tag(2)
                       Text("Unable to Complete requires assistance (1)").tag(1)
                       Text("No Applicable").tag(0)
                    }
                    Picker("Maneuverability", selection: $drivingTest.maneuverability) {
                       Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                       Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                       Text("Bumps People Objects could cause harm. (2)").tag(2)
                       Text("Unable to Complete requires assistance (1)").tag(1)
                       Text("No Applicable").tag(0)

                    }
                    Picker("Obstacles Unexpected", selection: $drivingTest.obstaclesUnexpected) {
                       Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                       Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                       Text("Bumps People Objects could cause harm. (2)").tag(2)
                       Text("Unable to Complete requires assistance (1)").tag(1)
                       Text("No Applicable").tag(0)

                    }
                    Picker("Speed Selection", selection: $drivingTest.speedSelection) {
                       Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                       Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                       Text("Bumps People Objects could cause harm. (2)").tag(2)
                       Text("Unable to Complete requires assistance (1)").tag(1)
                       Text("No Applicable").tag(0)

                    }
                    Picker("Sharing Public Space", selection: $drivingTest.sharingPublicSpace) {
                       Text("Completely Indep: one attempt smoothly safely(4)").tag(4)
                       Text("Completes Hesitantly: #tries,no harm (3)").tag(3)
                       Text("Bumps People Objects could cause harm. (2)").tag(2)
                       Text("Unable to Complete requires assistance (1)").tag(1)
                       Text("No Applicable").tag(0)

                    }
                }
              

                Section(header: Text("Total Score").foregroundColor(Color("ColorBackGround")).bold()) {
                    Text("Total Score: \(drivingTest.totalScore)")
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
