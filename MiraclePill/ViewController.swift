//
//  ViewController.swift
//  MiraclePill
//
//  Created by Richard Bryant on 8/11/16.
//  Copyright © 2016 Joopkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var zip: UILabel!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var succesImage: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buyNowButtonPressed(_ sender: AnyObject) {
        succesImage.isHidden = false
        buyNowButton.isHidden = true
        stateButton.isHidden = true
        statePicker.isHidden = true
        state.isHidden = true
        name.isHidden = true
        street.isHidden = true
        city.isHidden = true
        nameField.isHidden = true
        streetField.isHidden = true
        cityField.isHidden = true
        zip.isHidden = true
        zipField.isHidden = true
        country.isHidden = true
        countryField.isHidden = true
        
    }
    
    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        zip.isHidden = true
        zipField.isHidden = true
        country.isHidden = true
        countryField.isHidden = true
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
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zip.isHidden = false
        zipField.isHidden = false
        country.isHidden = false
        countryField.isHidden = false
    }
}

