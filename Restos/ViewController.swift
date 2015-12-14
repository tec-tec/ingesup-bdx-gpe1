//
//  ViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var styleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var alreadyVisitedSwitch: UISwitch!
    @IBOutlet weak var gradeSlider: UISlider!
    @IBOutlet weak var gradeLabel: UILabel!

    var restoManager = RestaurantManager()

    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

//        view.backgroundColor = color

        styleSegmentedControl.removeAllSegments()

        for (i, type) in Restaurant.RestoStyle.allCase.enumerate() {

            styleSegmentedControl.insertSegmentWithTitle(type, atIndex: i, animated: false)
        }
        styleSegmentedControl.selectedSegmentIndex = 0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveRestaurant(sender: UIButton) {

        guard nameTextField.text?.isEmpty == false else {
            return
        }

        guard addressTextField.text?.isEmpty == false else {
            return
        }

        let selectedSegmentIndex = styleSegmentedControl.selectedSegmentIndex
        let styleString = styleSegmentedControl.titleForSegmentAtIndex(selectedSegmentIndex)!

        let resto: Restaurant

        if alreadyVisitedSwitch.on {
            resto = Restaurant(name: nameTextField.text!, address: addressTextField.text!, style: Restaurant.RestoStyle(rawValue: styleString)!, alreadyVisited: alreadyVisitedSwitch.on, grade:Int(gradeSlider.value))
        } else {

            resto = Restaurant(name: nameTextField.text!, address: addressTextField.text!, style: Restaurant.RestoStyle(rawValue: styleString)!)
        }

        restoManager.addRestaurant(resto)
    }

    @IBAction func alreadyVisitedSwitchValueChanged(sender: UISwitch) {

        gradeSlider.enabled = sender.on
    }
    @IBAction func gradeValueChanged(sender: UISlider) {

        gradeLabel.text = "\(Int(gradeSlider.value))"
    }
}

