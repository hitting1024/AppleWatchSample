//
//  SwitchController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/05/03.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class SwitchController: WKInterfaceController {
    
    @IBOutlet weak var img: WKInterfaceImage!
    
    struct Identifiers {
        static let name = "Switch"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
        
    @IBAction func changeSwitch(value: Bool) {
        self.img.setHidden(!value)
    }
}
