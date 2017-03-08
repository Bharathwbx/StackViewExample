//
//  MainViewController.swift
//  SwiftStackViewExample
//
//  Created by Bharatraj Rai on 06/03/17.
//  Copyright © 2017 Bharatraj Rai. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    let titleList:[String] = ["Country", "Language", "Section", "Segments"]

    @IBOutlet weak var ruleIdentifierView: NSView!
    var newRuleAttributeWC:NewRuleAttributeWindowController!

    
    var ruleIdentifierList:[NSView] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        createStackView()
    }
    
    func createStackView() {
        for item in self.titleList {
            let ruleIdentifierView = createRuleIdentifierView(title: item)
            ruleIdentifierList.append(ruleIdentifierView.view)
        }
        let stackView:NSStackView = NSStackView(views: ruleIdentifierList)

        stackView.orientation = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.wantsLayer = true
        stackView.layer?.backgroundColor = NSColor.lightGray.cgColor
        ruleIdentifierView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.trailingAnchor.constraint(equalTo: self.ruleIdentifierView.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: self.ruleIdentifierView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.ruleIdentifierView.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.ruleIdentifierView.leadingAnchor).isActive = true
        
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.white.cgColor
    }
    
    func createRuleIdentifierView(title: String) -> RuleIdentifierViewController {
        let ruleIdentifierVC = RuleIdentifierViewController(nibName: "RuleIdentifierViewController", bundle: nil)
        ruleIdentifierVC?.makeViewWithIdentifier(identifier: title)
        ruleIdentifierVC?.addRuleAttributeButton.target = self
        ruleIdentifierVC?.addRuleAttributeButton.identifier = title
        ruleIdentifierVC?.addRuleAttributeButton.action = #selector(addNewAttributeToRule)
        ruleIdentifierVC?.removeRuleAttributeButton.identifier = title
        ruleIdentifierVC?.removeRuleAttributeButton.action = #selector(removeAttributeFromRule)
        return (ruleIdentifierVC)!
    }
    
    func addNewAttributeToRule(_ sender: NSButton) {
        print("addNewAttributeToRule: \(sender.identifier)")
        self.newRuleAttributeWC = NewRuleAttributeWindowController(windowNibName: "NewRuleAttributeWindowController")
        self.view.window?.beginSheet(self.newRuleAttributeWC.window!, completionHandler: nil)
    }
    
    func removeAttributeFromRule(_ sender: NSButton) {
        print("removeAttributeFromRule: \(sender.identifier)")
    }

    
}
