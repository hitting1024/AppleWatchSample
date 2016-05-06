//
//  ActivityRingController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/05/06.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit
import HealthKit

class ActivityRingController: WKInterfaceController {
    
    @IBOutlet weak var activityRing: WKInterfaceActivityRing!
    
    struct Identifiers {
        static let name = "ActivityRing"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let summary = HKActivitySummary()
        summary.activeEnergyBurnedGoal = HKQuantity(unit: HKUnit(fromEnergyFormatterUnit: .Calorie), doubleValue: 1000)
        summary.activeEnergyBurned = HKQuantity(unit: HKUnit(fromEnergyFormatterUnit: .Calorie), doubleValue: 550)
        summary.appleExerciseTimeGoal = HKQuantity(unit: HKUnit(fromString: "min"), doubleValue: 180)
        summary.appleExerciseTime = HKQuantity(unit: HKUnit(fromString: "min"), doubleValue: 150)
        summary.appleStandHoursGoal = HKQuantity(unit: HKUnit(fromString: "count"), doubleValue: 100)
        summary.appleStandHours = HKQuantity(unit: HKUnit(fromString: "count"), doubleValue: 40)
        self.activityRing.setActivitySummary(summary, animated: true)
    }

}
