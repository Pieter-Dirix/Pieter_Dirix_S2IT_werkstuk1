//
//  PersoonListViewController.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 07/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import UIKit
import MapKit
class PersoonListViewController: UITableViewController {
    
    var PersSingle = PersonenSingleton.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        PersSingle.personen = [Persoon(voornaam: "Pieter", naam: "Dirix", foto: UIImage(named: "p1")!, adres: Adres(straat: "Droogstraat", huisnummer: 33, postcode: 3350, gemeente: "Linter"), gpscoordinaat: CLLocationCoordinate2D(latitude: 50.837623, longitude: 5.019277), telefoonnummer: "0487310090"), Persoon(voornaam: "Peter", naam: "Dircxks", foto: UIImage(named: "p2")!, adres: Adres(straat: "Droogstraat", huisnummer: 1, postcode: 3350, gemeente: "Linter"), gpscoordinaat: CLLocationCoordinate2D(latitude: 50.836875, longitude: 5.018869), telefoonnummer: "0497560483"), Persoon(voornaam: "Dieter", naam: "Dierickx", foto: UIImage(named: "p3")!, adres: Adres(straat: "Kwadeplasstraat", huisnummer: 40, postcode: 3350, gemeente: "Linter"), gpscoordinaat: CLLocationCoordinate2D(latitude: 50.833949, longitude: 5.021031), telefoonnummer: "+32465164789")]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
       
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PersSingle.personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let tempPersoon = self.PersSingle.personen[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = tempPersoon.voornaam + " " + tempPersoon.naam
        cell.imageView?.image = tempPersoon.foto
        cell.detailTextLabel?.text = ""

        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetail" {
            if let nextVC = segue.destination as? DetailViewController {
            
                let indexPath = self.tableView.indexPathForSelectedRow!
                
                nextVC.persoon = self.PersSingle.personen[indexPath.row]
            }
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
  

}
