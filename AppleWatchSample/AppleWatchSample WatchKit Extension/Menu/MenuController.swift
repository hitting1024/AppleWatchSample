//
//  MenuController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/05/16.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class MenuController: WKInterfaceController {
    
    struct Identifiers {
        static let name = "Menu"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
    }
    
    @IBAction func accept() {
        print("accept")
    }
    
    @IBAction func decline() {
        print("decline")
    }
    
    @IBAction func bulb() {
        print("bulb")
    }
    
}
