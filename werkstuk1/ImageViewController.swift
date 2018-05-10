//
//  ImageViewController.swift
//  werkstuk1
//
//  Created by DIRIX Pieter (s) on 09/05/2018.
//  Copyright © 2018 DIRIX Pieter (s). All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    var img:UIImage = UIImage()
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imgView?.image = img
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
