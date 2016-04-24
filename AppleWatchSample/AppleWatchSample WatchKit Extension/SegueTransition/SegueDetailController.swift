//
//  SegueDetailController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/24.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class SegueDetailController: WKInterfaceController {

    @IBOutlet weak var label: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.label.setText(context as? String)
    }
    
}
