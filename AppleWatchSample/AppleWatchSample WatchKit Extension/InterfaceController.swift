//
//  InterfaceController.swift
//  AppleWatchSample WatchKit Extension
//
//  Created by hitting on 2016/03/27.
//  Copyright © 2016年 IOKA Masakazu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    private static let rows = [
        ActivityRingController.Identifiers.name,
        ImageButtonController.Identifiers.name,
        ImageFromCodeController.Identifiers.name,
        ImageFromStoryBoardController.Identifiers.name,
        MapController.Identifiers.name,
        MenuController.Identifiers.name,
        PickerController.Identifiers.name,
        SliderController.Identifiers.name,
        SwitchController.Identifiers.name,
        TransitionModalController.Identifiers.name,
        TransitionSegueController.Identifiers.name,
        TransitionSwipeController.Identifiers.name,
        TimerController.Identifiers.name,
                               ]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        self.initTable()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func initTable() {
        self.table.setNumberOfRows(InterfaceController.rows.count, withRowType: TableRow.className)
        for i in 0..<InterfaceController.rows.count {
            let row = self.table.rowControllerAtIndex(i) as! TableRow
            row.label.setText(InterfaceController.rows[i])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        if rowIndex == InterfaceController.rows.indexOf(TransitionSwipeController.Identifiers.name) {
            self.presentControllerWithNames([TransitionSwipeController.Identifiers.page1, TransitionSwipeController.Identifiers.page2, TransitionSwipeController.Identifiers.page3], contexts: nil)
            return
        }
        
        self.pushControllerWithName(InterfaceController.rows[rowIndex], context: InterfaceController.rows[rowIndex])
    }
    
}
