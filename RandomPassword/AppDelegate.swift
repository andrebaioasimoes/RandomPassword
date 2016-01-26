//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by André Simões on 13/11/15.
//  Copyright © 2015 André Simões. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindowController: NSWindowController?

    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {

    
        let mainWindowController = MainWindowController(windowNibName: "MainWindowController")

        mainWindowController.showWindow(self);
        
        self.mainWindowController = mainWindowController;
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

