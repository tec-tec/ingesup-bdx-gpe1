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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

        print(nameTextField.text)
    }

    @IBAction func alreadyVisitedSwitchValueChanged(sender: UISwitch) {

        gradeSlider.enabled = sender.on
    }
}

