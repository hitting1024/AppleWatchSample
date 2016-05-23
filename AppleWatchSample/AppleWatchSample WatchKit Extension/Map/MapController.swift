//
//  MapController.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/05/23.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class MapController: WKInterfaceController {
    
    @IBOutlet var map: WKInterfaceMap!
    
    struct Identifiers {
        static let name = "Map"
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
       
        let coordinate = CLLocationCoordinate2DMake(37.331667, -122.030833)
        let span = MKCoordinateSpanMake(1.0, 1.0)
        let region = MKCoordinateRegionMake(coordinate, span)
        map.setRegion(region)
        map.addAnnotation(coordinate, withPinColor: .Red)
    }
    
}
