//
//  Persoon.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 07/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import Foundation
import UIKit
import MapKit


class Persoon {
    var voornaam: String?
    var naam: String?
    var foto: UIImage
    var adres: Adres
    var gpscoordinaat: CLLocationCoordinate2D
    var telefoonnummer: Int?
    
    init() {
        self.voornaam = ""
        self.naam = ""
        self.foto = UIImage()
        self.adres = Adres()
        self.gpscoordinaat = CLLocationCoordinate2D()
        self.telefoonnummer = 0
    }
    
    init(voornaam: String, naam: String,foto: UIImage, adres: Adres, gpscoordinaat: CLLocationCoordinate2D, telefoonnummer: Int){
        self.voornaam = voornaam
        self.naam = naam
        self.foto = foto
        self.adres = adres
        self.gpscoordinaat = gpscoordinaat
        self.telefoonnummer = telefoonnummer
    }
    
}
