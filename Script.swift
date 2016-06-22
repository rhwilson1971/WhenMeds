//
//  Script.swift
//  WhenMeds
//
//  Created by Reuben Wilson on 6/21/16.
//  Copyright © 2016 Reuben Wilson. All rights reserved.
//

import Foundation
import RealmSwift

class Script: Object {
    
    dynamic var name = ""
    dynamic var dosage = ""
    dynamic var refills = 0;
    dynamic var sideEffects = ""
}
