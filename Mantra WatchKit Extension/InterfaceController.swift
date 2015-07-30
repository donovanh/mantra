//
//  InterfaceController.swift
//  Mantra WatchKit Extension
//
//  Created by Donovan Hutchinson on 30/07/2015.
//  Copyright (c) 2015 Donovan Hutchinson. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var btnActive: WKInterfaceButton!
    
    @IBAction func btnToggleActiveStatus() {
        let defaults = NSUserDefaults(suiteName: "group.hopie.mantra")
        
        if (defaults?.objectForKey("currentActiveStatus") != nil) {
            let currentActiveStatus = defaults!.boolForKey("currentActiveStatus")
            
            if currentActiveStatus {
                btnActive.setTitle("Inactive")
                defaults?.setBool(false, forKey: "currentActiveStatus")
            } else {
                btnActive.setTitle("Active")
                defaults?.setBool(true, forKey: "currentActiveStatus")
            }
            
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let defaults = NSUserDefaults(suiteName: "group.hopie.mantra")
        
        if (defaults?.objectForKey("currentActiveStatus") != nil) {
            let currentActiveStatus = defaults!.boolForKey("currentActiveStatus")
            
            if currentActiveStatus {
                btnActive.setTitle("Active")
            } else {
                btnActive.setTitle("Inactive")
            }
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
