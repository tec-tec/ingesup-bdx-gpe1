//
//  RestaurantDetailsViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 14/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class RestaurantDetailsViewController: UIViewController {

    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!

    var currentRestaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpUI() {

        self.title = currentRestaurant.name
        addressLabel.text = currentRestaurant.address

        if let grade = currentRestaurant.grade {
            gradeLabel.text = "\(grade)"
        } else {
            gradeLabel.text = "Non noté"
        }

        geocode(currentRestaurant.address)
    }

    func geocode(address: String) {

        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address) { (placemarkArray, error) -> Void in

            guard error == nil else {
                return
            }

            guard placemarkArray != nil && placemarkArray!.count > 0 else {
                return
            }

            let mapPlaceMark = MKPlacemark(placemark: placemarkArray!.first!)

            self.mapView.addAnnotation(mapPlaceMark)
            
        }
    }

}
