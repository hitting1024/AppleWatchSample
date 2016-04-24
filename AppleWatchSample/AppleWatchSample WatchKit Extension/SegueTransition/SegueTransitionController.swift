//
//  DetailControllre.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/22.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class SegueTransitionController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    struct Identifiers {
        static let segueTransition = "SegueTransition"
    }
    
    private static let rows = ["row1", "row2"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        self.initTable()
    }
    
    private func initTable() {
        self.table.setNumberOfRows(SegueTransitionController.rows.count, withRowType: TableRow.className)
        for i in 0..<SegueTransitionController.rows.count {
            let row = self.table.rowControllerAtIndex(i) as! TableRow
            row.label.setText(SegueTransitionController.rows[i])
        }
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        return SegueTransitionController.rows[rowIndex]
    }

    
}