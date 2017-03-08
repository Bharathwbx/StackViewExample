//
//  NewRuleAttributeWindowController.swift
//  SwiftStackViewExample
//
//  Created by Bharatraj Rai on 07/03/17.
//  Copyright © 2017 Bharatraj Rai. All rights reserved.
//

import Cocoa

class NewRuleAttributeWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func onClickCancel(_ sender: NSButton) {
        self.window?.close()
    }
    
    @IBAction func onClickAdd(_ sender: NSButton) {
        self.window?.close()
    }
    
}
