//
//  RuleIdentifierViewController.swift
//  Swift_MacStackViewExample
//
//  Created by Bharatraj Rai on 06/03/17.
//  Copyright © 2017 Bharatraj Rai. All rights reserved.
//

import Cocoa

class RuleIdentifierViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {
    
    let dict1:[String:String] = ["name":"1001","value":"1002"]
    let dict2:[String:String] = ["name":"2001","value":"2002"]
    let dict3:[String:String] = ["name":"3001","value":"3002"]
    let dict4:[String:String] = ["name":"4001","value":"4002"]
    var dictList:[[String:String]] = []

    @IBOutlet weak var ruleIdentifierTableView: NSTableView!
    @IBOutlet weak var addRuleAttributeButton: NSButton!
    @IBOutlet weak var removeRuleAttributeButton: NSButton!

    var identifierTitleValue:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        self.dictList.append(dict1)
        self.dictList.append(dict2)
        self.dictList.append(dict3)
        self.dictList.append(dict4)
        ruleIdentifierTableView.reloadData()
    }
    
    func makeViewWithIdentifier(identifier:String) {
        self.identifierTitleValue = identifier
        self.view.identifier = identifier
        self.ruleIdentifierTableView.identifier = identifier
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return dictList.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        let dict = self.dictList[row]
        let cellView:NSTableCellView = tableView.make(withIdentifier: (tableColumn?.identifier)!, owner: self) as! NSTableCellView
        
        if tableColumn?.identifier == "name" {
            cellView.textField?.stringValue = dict["name"]!
        }
        else {
            cellView.textField?.stringValue = dict["value"]!
        }
        return cellView

    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        print("tableViewSelectionDidChange")
    }
    
    
}
