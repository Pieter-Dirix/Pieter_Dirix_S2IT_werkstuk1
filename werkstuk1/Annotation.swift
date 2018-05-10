//
//  Annotation.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 09/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Annotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    
    override init() {
        coordinate = CLLocationCoordinate2D()
    }
    
    init(coordinate:CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
