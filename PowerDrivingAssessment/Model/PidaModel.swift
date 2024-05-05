//
//  PidaModel.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-22.
//

import Foundation
import Observation

@Observable class PowerDrivingTest{
    var noApplicable: Int
    var totalApplicableItems: Double
    var accessBedRight: Int
    var accessBedLeft: Int
    var approachingDresser: Int
    var approachingCloset: Int
    var intoBathroom: Int
    var approachingSink: Int
    var approachingToilet: Int
    var exitBathroom: Int
    var slidingDoors: Int
    var swingOpenDoors: Int
    var automaticDoors: Int
    var regularDoors: Int
    var enteringElevator: Int
    var spacingInElevator: Int
    var exitingElevator: Int
    var parkingUnderTable: Int
    var parkingBesideTable: Int
    var backInParking: Int
    var parallelParking: Int
    var upRamp: Int
    var downRamp: Int
    var turningRight: Int
    var turningLeft: Int
    var halfwayTurn: Int
    var drivingBackwards: Int
    var manipulatingCongestedArea: Int
    var maneuverability : Int
    var obstaclesUnexpected: Int
    var speedSelection: Int
    var sharingPublicSpace: Int
    
   

   init(
      noApplicable: Int = 0,
      totalApplicableItems: Double = 1,
      accessBedRight: Int = 0,
      accessBedLeft: Int = 0,
      approachingDresser: Int = 0,
      approachingCloset: Int = 0,
      intoBathroom: Int = 0,
      approachingSink: Int = 0,
      approachingToilet: Int = 0,
      exitBathroom: Int = 0,
      slidingDoors: Int = 0,
      swingOpenDoors: Int = 0,
      automaticDoors: Int = 0,
      regularDoors: Int = 0,
      enteringElevator: Int = 0,
      spacingInElevator: Int = 0,
      exitingElevator: Int = 0,
      parkingUnderTable: Int = 0,
      parkingBesideTable: Int = 0,
      backInParking: Int = 0,
      parallelParking: Int = 0,
      upRamp: Int = 0,
      downRamp: Int = 0,
      turningRight: Int = 0,
      turningLeft: Int = 0,
      halfwayTurn: Int = 0,
      drivingBackwards: Int = 0,
      manipulatingCongestedArea: Int = 0,
      maneuverability : Int = 0,
      obstaclesUnexpected: Int = 0,
      speedSelection: Int = 0,
      sharingPublicSpace: Int = 0
     )
    
    {
      self.noApplicable = noApplicable
      self.totalApplicableItems = totalApplicableItems
      self.accessBedRight = accessBedRight
      self.accessBedLeft = accessBedLeft
      self.approachingDresser = approachingDresser
      self.approachingCloset = approachingCloset
      self.intoBathroom = intoBathroom
      self.approachingSink = approachingSink
      self.approachingToilet = approachingToilet
      self.exitBathroom = exitBathroom
      self.slidingDoors = slidingDoors
      self.swingOpenDoors = swingOpenDoors
      self.automaticDoors = automaticDoors
      self.regularDoors = regularDoors
      self.enteringElevator = enteringElevator
      self.spacingInElevator = spacingInElevator
      self.exitingElevator = exitingElevator
      self.parkingUnderTable = parkingUnderTable
      self.parkingBesideTable = parkingBesideTable
      self.backInParking = backInParking
      self.parallelParking = parallelParking
      self.upRamp = upRamp
      self.downRamp = downRamp
      self.turningRight = turningRight
      self.turningLeft = turningLeft
      self.halfwayTurn = halfwayTurn
      self.drivingBackwards = drivingBackwards
      self.manipulatingCongestedArea = manipulatingCongestedArea
      self.maneuverability = maneuverability
      self.obstaclesUnexpected = obstaclesUnexpected
      self.speedSelection = speedSelection
      self.sharingPublicSpace = sharingPublicSpace
       

   }
    
    
    var countAction: Int {
        countActivitiesPerformed()
    }
    
    func countActivitiesPerformed() -> Int {
        
         var total = 0
        
        total +=  (noApplicable != 0) ? 1 : 0
        total +=  (accessBedRight  != 0) ? 1 : 0
        total +=  (accessBedLeft  != 0) ? 1 : 0
        total +=  (approachingDresser  != 0) ? 1 : 0
        total +=  (approachingCloset  != 0) ? 1 : 0
        total +=  (intoBathroom  != 0) ? 1 : 0
        total +=  (approachingSink  != 0) ? 1 : 0
        total +=  (approachingToilet  != 0) ? 1 : 0
        total +=  (exitBathroom  != 0) ? 1 : 0
        total +=  (slidingDoors  != 0) ? 1 : 0
        total +=  (swingOpenDoors  != 0) ? 1 : 0
        total +=  (automaticDoors  != 0) ? 1 : 0
        total +=  (regularDoors  != 0) ? 1 : 0
        total +=  (enteringElevator  != 0) ? 1 : 0
        total +=  (spacingInElevator  != 0) ? 1 : 0
        total +=  (exitingElevator  != 0) ? 1 : 0
        total +=  (parkingUnderTable  != 0) ? 1 : 0
        total +=  (parkingBesideTable  != 0) ? 1 : 0
        total +=  (backInParking  != 0) ? 1 : 0
        total +=  (parallelParking  != 0) ? 1 : 0
        total +=  (upRamp  != 0) ? 1 : 0
        total +=  (downRamp  != 0) ? 1 : 0
        total +=  (turningRight  != 0) ? 1 : 0
        total +=  (turningLeft  != 0) ? 1 : 0
        total +=  (halfwayTurn  != 0) ? 1 : 0
        total +=  (drivingBackwards  != 0) ? 1 : 0
        total +=  (manipulatingCongestedArea  != 0) ? 1 : 0
        total +=  (maneuverability  != 0) ? 1 : 0
        total +=  (obstaclesUnexpected  != 0) ? 1 : 0
        total += ( speedSelection  != 0) ? 1 : 0
        total +=  (sharingPublicSpace  != 0) ? 1 : 0
        
        return total
    }
    
    
    var totalPerformed: Int {
        totalScorePerformed()
    }
    
    
    func totalScorePerformed() -> Int {
        
        let multiplier = 100
        let divisor = 4
        
        if countAction == 0 {
            return 0 // or any default value you prefer
        }
        
        let score = numberOfActions * multiplier / (divisor * countAction)
        return score
    }
    
    var numberOfActions: Int {
        numberOfTasks()
    }
    func numberOfTasks() -> Int {
        let tasks =
       accessBedRight + accessBedLeft + approachingDresser + approachingCloset +
       intoBathroom + approachingSink + approachingToilet + exitBathroom +
       slidingDoors + swingOpenDoors + automaticDoors + regularDoors +
       enteringElevator + spacingInElevator + exitingElevator +
       parkingUnderTable + parkingBesideTable + backInParking + parallelParking +
       upRamp + downRamp +
       turningRight + turningLeft + halfwayTurn + drivingBackwards + manipulatingCongestedArea +
       maneuverability + obstaclesUnexpected +
       speedSelection + sharingPublicSpace
        return tasks
    }
}

