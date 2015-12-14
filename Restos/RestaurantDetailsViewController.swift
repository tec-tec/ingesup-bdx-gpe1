//
//  RestaurantDetailsViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 14/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!

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
    }

}
