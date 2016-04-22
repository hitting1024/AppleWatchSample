//
//  DetailControllre.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/22.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class DetailController: WKInterfaceController {
    
    struct Identifiers {
        static let detailController = "DetailController"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        print(context)
    }
    
}