//
//  ScriptsViewController.swift
//  WhenMeds
//
//  Created by Reuben Wilson on 6/21/16.
//  Copyright © 2016 Reuben Wilson. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class ScriptsViewController: UITableViewController{
    
    let scriptCellIdentifier: String = "ScriptCellId"
    
    var scripts: Array<Script> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s1 = Script()
        
        s1.dosage = "20 mg"
        s1.name = "Lisonipril"
        s1.refills = 2
        s1.sideEffects = "Crying, sleepiness, and help"
        
        scripts.append(s1)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scripts.count;
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    
        let row = indexPath.row
    
        
        let script = self.scripts[row]
        
        
        let rowUi = tableView.dequeueReusableCellWithIdentifier(self.scriptCellIdentifier)
            
        
        rowUi?.textLabel?.text = script.name
        rowUi?.detailTextLabel!.text = script.description
        
    }
    
    
}