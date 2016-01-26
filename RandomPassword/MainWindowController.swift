//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by André Simões on 13/11/15.
//  Copyright © 2015 André Simões. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!

    override func windowDidLoad() {
        super.windowDidLoad()
        print("Window loaded from Nib named \(windowNibName).")

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    deinit {
        print("\(self) will be deallocated.")
    }
    
    @IBAction func generatePassword(sender: AnyObject) {
        
        
        let lenght = 8
        let password = generateRandomString(lenght)
        
        textField.stringValue = password
    }
    
}
