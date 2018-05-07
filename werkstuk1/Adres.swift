//
//  Adres.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 07/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import Foundation
class Adres {
    var straat: String
    var huisnummer: Int
    var postcode: Int
    var gemeente: String
    
    init() {
        self.straat = ""
        self.huisnummer = 0
        self.postcode = 0
        self.gemeente = ""
    }
    
    init(straat: String, huisnummer: Int, postcode: Int, gemeente: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
