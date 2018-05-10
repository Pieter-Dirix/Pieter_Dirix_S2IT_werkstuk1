//
//  LocatieViewController.swift
//  werkstuk1
//
//  Created by Pieter on 10/05/18.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocatieViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    
    let persSingle = PersonenSingleton.shared
    var annotations:[Annotation] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        for persoon in persSingle.personen {
            let naam = persoon.voornaam
            
            let coordinate:CLLocationCoordinate2D = persoon.gpscoordinaat
            let annotation:Annotation = Annotation(coordinate: coordinate, title: naam)
            annotations.append(annotation)
        }
        
        mapView.addAnnotations(annotations)
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
