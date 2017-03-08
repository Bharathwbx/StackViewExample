//
//  AppDelegate.swift
//  SwiftStackViewExample
//
//  Created by Bharatraj Rai on 06/03/17.
//  Copyright © 2017 Bharatraj Rai. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWC:MainWindowController!


    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        openMainWindow()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func openMainWindow() {
        self.mainWC = MainWindowController(windowNibName: "MainWindowController")
        self.mainWC.showWindow(self)
    }


}

