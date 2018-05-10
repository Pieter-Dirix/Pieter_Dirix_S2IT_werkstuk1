//
//  PersonenSingleton.swift
//  werkstuk1
//
//  Created by Pieter on 10/05/18.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import Foundation
import UIKit
import MapKit
class PersonenSingleton {
    
    private init() {}
    
    static let shared = PersonenSingleton()
    
    var personen:[Persoon] = []
    
    
}
