//
//  DisplayImageByCode.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/26.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class ImageFromCodeController: WKInterfaceController {
    
    @IBOutlet weak var image: WKInterfaceImage!
    
    struct Identifiers {
        static let name = "ImageFromCode"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.image.setImageNamed("alarm-clock")
    }
    
}