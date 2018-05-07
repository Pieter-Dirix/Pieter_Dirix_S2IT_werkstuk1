//
//  DetailViewController.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 07/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var persoon = Persoon()
    var personen:[Persoon]?
    
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var telLabel: UILabel!
    @IBOutlet weak var straatNrLabel: UILabel!
    @IBOutlet weak var postGemeenteLabel: UILabel!
    @IBOutlet weak var imgLabel: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.naamLabel.text = persoon.voornaam + " " + persoon.naam
        self.telLabel.text = persoon.telefoonnummer
        self.straatNrLabel.text = persoon.adres.straat + " " + String(persoon.adres.huisnummer)
        self.postGemeenteLabel.text = String(persoon.adres.postcode) + " " + persoon.adres.gemeente
        self.imgLabel.image = persoon.foto

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
