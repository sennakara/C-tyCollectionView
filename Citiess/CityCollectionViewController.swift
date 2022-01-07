//
//  CityCollectionViewController.swift
//  Citiess
//
//  Created by user209479 on 1/7/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CityCollectionViewController: UICollectionViewController {

    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        
    }
    
    private var cities : [City] = [ City(image: "Ankara", name: "Ankara"),
                                    City(image: "Antalya", name: "Antalya"),
                                    City(image: "Aydin", name: "Aydin"),
                                    City(image: "Bodrum", name: "Bodrum"),
                                    City(image: "Canakkale", name: "Canakkale"),
                                    City(image: "Efes", name: "Efes"),
                                    City(image: "Eskisehir", name: "Eskisehir"),
                                    City(image: "Istanbul", name: "Istanbul")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
        override func numberOfSections(in collectionView: UICollectionView) -> Int {

            return 1
        }


        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return cities.count
        }

        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! CityCollectionViewCell
        
            
            
            let city = cities[indexPath.row]
            cell.cityImageView.image = UIImage(named: city.image)
            cell.cityNameLabel.text = city.name
        
            return cell
        }
        
        override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showDetail", sender: nil)
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showDetail" {
                if let indexPaths = collectionView.indexPathsForSelectedItems{
                    let destinationController = segue.destination as! CityDetailViewController
                    destinationController.city = cities[indexPaths[0].row]
                    collectionView.deselectItem(at: indexPaths[0], animated: false)
                }
        }
    }
        
}

