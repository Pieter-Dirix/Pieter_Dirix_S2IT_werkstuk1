//
//  DetailViewController.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 07/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class DetailViewController: UIViewController, MKMapViewDelegate {
    
    var persoon = Persoon()
    
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var telLabel: UILabel!
    @IBOutlet weak var straatNrLabel: UILabel!
    @IBOutlet weak var postGemeenteLabel: UILabel!
    @IBOutlet weak var imgLabel: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.naamLabel.text = persoon.voornaam + " " + persoon.naam
        self.telLabel.text = persoon.telefoonnummer
        self.straatNrLabel.text = persoon.adres.straat + " " + String(persoon.adres.huisnummer)
        self.postGemeenteLabel.text = String(persoon.adres.postcode) + " " + persoon.adres.gemeente
        self.imgLabel.image = persoon.foto
        
        let coordinate:CLLocationCoordinate2D = persoon.gpscoordinaat
        let annotation:Annotation = Annotation(coordinate: coordinate)
        
        self.mapView.addAnnotation(annotation)
        self.mapView.selectAnnotation(annotation, animated: true)
        
        let center = CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        
        mapView.setRegion(region, animated: true)
        // Do any additional setup after loading the view.
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tapImg" {
            if let nextVC = segue.destination as? ImageViewController {
                nextVC.img = persoon.foto
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
