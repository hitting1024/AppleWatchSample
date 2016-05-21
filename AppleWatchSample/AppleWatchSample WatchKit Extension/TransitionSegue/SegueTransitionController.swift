//
//  DetailControllre.swift
//  AppleWatchSample
//
//  Created by hitting on 2016/04/22.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import Foundation
import WatchKit

class TransitionSegueController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    struct Identifiers {
        static let name = "TransitionSegue"
    }
    
    private static let rows = ["row1", "row2"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        self.initTable()
    }
    
    private func initTable() {
        self.table.setNumberOfRows(TransitionSegueController.rows.count, withRowType: TableRow.className)
        for i in 0..<TransitionSegueController.rows.count {
            let row = self.table.rowControllerAtIndex(i) as! TableRow
            row.label.setText(TransitionSegueController.rows[i])
        }
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        return TransitionSegueController.rows[rowIndex]
    }

    
}