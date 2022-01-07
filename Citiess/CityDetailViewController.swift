//
//  CityDetailViewController.swift
//  Citiess
//
//  Created by user209479 on 1/7/22.
//

import UIKit

class CityDetailViewController: UIViewController{
    
    var city: City?
    
    @IBOutlet var cityImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        cityImageView.image = UIImage(named: city?.image ?? "")
    }
    

}

