//
//  ViewController.swift
//  Mantra
//
//  Created by Donovan Hutchinson on 30/07/2015.
//  Copyright (c) 2015 Donovan Hutchinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblActive: UILabel!
    @IBOutlet weak var switchActive: UISwitch!
    
    @IBAction func switchPressed(sender: AnyObject) {
        
        let defaults = NSUserDefaults(suiteName: "group.hopie.mantra")
        
        if switchActive.on {
            defaults?.setBool(true, forKey: "currentActiveStatus")
            lblActive.text = "Active"
        } else {
            defaults?.setBool(false, forKey: "currentActiveStatus")
            lblActive.text = "Not active"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults(suiteName: "group.hopie.mantra")
        
        if (defaults?.objectForKey("currentActiveStatus") != nil) {
            switchActive.on = defaults!.boolForKey("currentActiveStatus")
            
            if switchActive.on {
                lblActive.text = "Active"
            } else {
                lblActive.text = "Not active"
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

