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
    static let sharedInstance = PersonenSingleton()
    
    let personen:[Persoon] = [Persoon(voornaam: "Pieter", naam: "Dirix", foto: UIImage(named: "p1")!, adres: Adres(straat: "Droogstraat", huisnummer: 33, postcode: 3350, gemeente: "Linter"), gpscoordinaat: CLLocationCoordinate2D(latitude: 50.837623, longitude: 5.019277), telefoonnummer: "0487310090"), Persoon(voornaam: "Peter", naam: "Dircxks", foto: UIImage(named: "p2")!, adres: Adres(straat: "Droogstraat", huisnummer: 1, postcode: 3350, gemeente: "Linter"), gpscoordinaat: CLLocationCoordinate2D(latitude: 50.836875, longitude: 5.018869), telefoonnummer: "0497560483"), Persoon(voornaam: "Dieter", naam: "Dierickx", foto: UIImage(named: "p3")!, adres: Adres(straat: "Kwadeplasstraat", huisnummer: 40, postcode: 3350, gemeente: "Linter"), gpscoordinaat: CLLocationCoordinate2D(latitude: 50.833949, longitude: 5.021031), telefoonnummer: "+32465164789")]
    
}
