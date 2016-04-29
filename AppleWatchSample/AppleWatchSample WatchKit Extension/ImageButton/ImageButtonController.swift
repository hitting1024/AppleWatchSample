//
//  ImageButtonController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/29.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class ImageButtonController: WKInterfaceController {
    
    @IBOutlet weak var imageButton: WKInterfaceButton!
    
    struct Identifiers {
        static let name = "ImageButton"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    @IBAction func tapButton() {
        self.imageButton.setBackgroundImageNamed("alarm-clock")
    }
}
