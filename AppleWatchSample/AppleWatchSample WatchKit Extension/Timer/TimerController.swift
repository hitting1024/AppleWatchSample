//
//  TimerController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/29.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class TimerController: WKInterfaceController {
    
    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var startButton: WKInterfaceButton!
    @IBOutlet weak var stopButton: WKInterfaceButton!
    
    struct Identifiers {
        static let name = "Timer"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.timer.setDate(NSDate.init(timeIntervalSinceNow: 90))
        self.startTimer()
    }
    
    @IBAction func startTimer() {
        self.timer.start()
        
        self.startButton.setEnabled(false)
        self.stopButton.setEnabled(true)
    }
    
    @IBAction func stopTimer() {
        self.timer.stop()

        self.startButton.setEnabled(true)
        self.stopButton.setEnabled(false)
    }
    
}
