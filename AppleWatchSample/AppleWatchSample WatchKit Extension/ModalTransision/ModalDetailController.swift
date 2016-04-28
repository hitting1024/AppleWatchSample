//
//  ModalDetailController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/28.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class ModalDetailController: WKInterfaceController {
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    @IBAction func dismiss() {
        self.dismissController()
    }
}
