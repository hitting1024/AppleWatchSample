//
//  PickerListController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/05/05.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class PickerController: WKInterfaceController {
    
    @IBOutlet weak var picker: WKInterfacePicker!
    
    struct Identifiers {
        static let name = "Picker"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var items = Array<WKPickerItem>()
        for i in 0..<10 {
            let item = WKPickerItem()
            item.title = "title\(i)"
            item.caption = "caption\(i)"
            items.append(item)
        }
        
        self.picker.setItems(items)
    }
    
}
