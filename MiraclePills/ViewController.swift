//
//  ViewController.swift
//  MiraclePills
//
//  Created by Gareth O'Sullivan on 20/07/2017.
//  Copyright © 2017 Locust Redemption. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indianna", "Iowa", "Kansas", "Kentucky", "Louisianna", "Maine", "Maryland", "Massachucetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        statePicker.isHidden = true
        successImage.isHidden = true
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        button.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        button.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        button.isHidden = false
    }
    
    @IBAction func buyNowButton(_ sender: AnyObject) {
        for view in self.view.subviews {
            view.isHidden = true
        }
        successImage.isHidden = false
    }

}

