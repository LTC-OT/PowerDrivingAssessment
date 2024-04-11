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
    
    
   ) {
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
    
    

    var totalScore: Int {
        calculateTotalScore()
    }

    private func calculateTotalScore() -> Int {
        let sumOfScores =
       accessBedRight + accessBedLeft + approachingDresser + approachingCloset +
       intoBathroom + approachingSink + approachingToilet + exitBathroom +
       slidingDoors + swingOpenDoors + automaticDoors + regularDoors +
       enteringElevator + spacingInElevator + exitingElevator +
       parkingUnderTable + parkingBesideTable + backInParking + parallelParking +
       upRamp + downRamp +
       turningRight + turningLeft + halfwayTurn + drivingBackwards + manipulatingCongestedArea +
       maneuverability + obstaclesUnexpected +
       speedSelection + sharingPublicSpace
        return sumOfScores * 100 / (4 * (Int(totalApplicableItems)))
    }
}

