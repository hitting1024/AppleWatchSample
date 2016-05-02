//
//  SliderController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/05/02.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class SliderController: WKInterfaceController {
    
    @IBOutlet weak var img: WKInterfaceImage!
    
    struct Identifiers {
        static let name = "Slider"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    @IBAction func changeValue(value: Float) {
        self.img.setAlpha(CGFloat(value))
    }

}
