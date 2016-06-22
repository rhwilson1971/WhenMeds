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
        s1.name = "May cause dizzyness"
        s1.refills = 2
        s1.sideEffects = "Crying, sleepiness, and help"
        s1.size = "40 mg"
        
        let s2 = Script()
        
        s2.dosage = "300 mg"
        s2.name = "Trileptal"
        s2.refills = 1
        s2.sideEffects = "Drowsiness, dizzyness"
        s2.size = "300 mg"
        
        let s3 = Script()
        s3.dosage = "0.5 mg"
        s3.name = "Klonopin"
        s3.refills = 2
        s3.sideEffects = "Drowsiness, dizzyness"
        s3.size = "1 mg"
        
        scripts.append(s1)
        scripts.append(s2)
        scripts.append(s3)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scripts.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(self.scriptCellIdentifier, forIndexPath: indexPath)
        
        let row = indexPath.row
        
        
        let script = self.scripts[row]
        
        
        // let rowUi = tableView.dequeueReusableCellWithIdentifier()
        
        
        cell.textLabel?.text = script.name
        cell.detailTextLabel!.text = script.sideEffects
        
        return cell;
    }
}