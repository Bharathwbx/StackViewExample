//
//  MainWindowController.swift
//  SwiftStackViewExample
//
//  Created by Bharatraj Rai on 06/03/17.
//  Copyright © 2017 Bharatraj Rai. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    var mainVC:MainViewController!


    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        self.mainVC = MainViewController(nibName: "MainViewController", bundle: nil)
        self.window?.setContentSize(self.mainVC.view.fittingSize)
        self.window?.contentViewController = self.mainVC
    }
    
}
